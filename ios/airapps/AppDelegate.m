//
//  AppDelegate.m
//  airapps
//
//  Created by guguyanhua on 16/9/12.
//  Copyright © 2016年 airapps. All rights reserved.
//

#import "AppDelegate.h"

#import "RCTBundleURLProvider.h"
#import "RCTRootView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    NSURLComponents *components = [NSURLComponents componentsWithURL:[NSURL URLWithString:@"http://192.168.201.241:8088"] resolvingAgainstBaseURL:NO];
    components.path = [NSString stringWithFormat:@"/%@.bundle", @"index.ios"];
    // When we support only iOS 8 and above, use queryItems for a better API.
    components.query = [NSString stringWithFormat:@"platform=ios&dev=%@&minify=%@",
                         @"true" ,
                        @"true"];
    
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:components.URL
                                                        moduleName:@"AirApps"
                                                 initialProperties:nil
                                                     launchOptions:launchOptions];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *rootViewController = [UIViewController new];
    rootViewController.view = rootView;
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
