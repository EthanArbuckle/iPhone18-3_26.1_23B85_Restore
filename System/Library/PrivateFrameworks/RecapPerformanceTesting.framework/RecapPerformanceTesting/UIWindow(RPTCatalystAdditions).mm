@interface UIWindow(RPTCatalystAdditions)
- (double)nsWindowFrame;
- (id)nsScreen;
- (id)nsWindowProxy;
@end

@implementation UIWindow(RPTCatalystAdditions)

- (id)nsWindowProxy
{
  v1 = [self valueForKeyPath:@"_hostWindow"];

  return v1;
}

- (double)nsWindowFrame
{
  v1 = [self valueForKeyPath:@"nsWindowProxy.attachedWindow.frame"];
  [v1 CGRectValue];
  v3 = v2;

  return v3;
}

- (id)nsScreen
{
  v1 = [self valueForKeyPath:@"nsWindowProxy.attachedWindow.screen"];

  return v1;
}

@end