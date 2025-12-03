@interface UIWindow(Bridge)
- (void)ts_installDebugMenuHandler:()Bridge;
@end

@implementation UIWindow(Bridge)

- (void)ts_installDebugMenuHandler:()Bridge
{
  v4 = a3;
  windowScene = [self windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager setDebugMenuHandler:v4];
}

@end