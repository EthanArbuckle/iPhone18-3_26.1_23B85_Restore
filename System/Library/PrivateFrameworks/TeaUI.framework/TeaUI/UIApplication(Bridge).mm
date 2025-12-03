@interface UIApplication(Bridge)
- (double)defaultStatusBarHeight;
- (id)ts_statusBarWindow;
@end

@implementation UIApplication(Bridge)

- (double)defaultStatusBarHeight
{
  statusBar = [self statusBar];
  [statusBar defaultHeight];
  v3 = v2;

  return v3;
}

- (id)ts_statusBarWindow
{
  statusBar = [self statusBar];
  _window = [statusBar _window];

  return _window;
}

@end