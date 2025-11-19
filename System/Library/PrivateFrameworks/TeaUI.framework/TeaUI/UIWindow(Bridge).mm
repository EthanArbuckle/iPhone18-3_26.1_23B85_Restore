@interface UIWindow(Bridge)
- (void)ts_installDebugMenuHandler:()Bridge;
@end

@implementation UIWindow(Bridge)

- (void)ts_installDebugMenuHandler:()Bridge
{
  v4 = a3;
  v6 = [a1 windowScene];
  v5 = [v6 statusBarManager];
  [v5 setDebugMenuHandler:v4];
}

@end