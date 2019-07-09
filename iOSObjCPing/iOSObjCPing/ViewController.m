//
//  ViewController.m
//  iOSObjCPing
//
//  Created by YukiOkudera on 2019/07/10.
//  Copyright © 2019 YukiOkudera. All rights reserved.
//

#import "ViewController.h"
#import "SimplePingHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 疎通確認
    [self tapPingTo:@"www.google.com"];
}

- (void)tapPingTo:(NSString *)host {
    NSLog(@"-----------");
    NSLog(@"Tapped Ping");
    [SimplePingHelper ping:host target:self sel:@selector(pingResult:)];
}

- (void)pingResult:(NSNumber*)success {

    if (success.boolValue) {
        NSLog(@"SUCCESS");
    } else {
        NSLog(@"FAILURE");
    }
}


@end
