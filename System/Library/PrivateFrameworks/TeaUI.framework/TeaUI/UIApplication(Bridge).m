@interface UIApplication(Bridge)
- (double)defaultStatusBarHeight;
- (id)ts_statusBarWindow;
@end

@implementation UIApplication(Bridge)

- (double)defaultStatusBarHeight
{
  v1 = [a1 statusBar];
  [v1 defaultHeight];
  v3 = v2;

  return v3;
}

- (id)ts_statusBarWindow
{
  v1 = [a1 statusBar];
  v2 = [v1 _window];

  return v2;
}

@end