@interface TVAppLauncher
- (void)configureAppWindow;
- (void)hideLoadingView;
- (void)showLoadingView;
@end

@implementation TVAppLauncher

- (void)showLoadingView
{
  v2 = self;
  TVAppLauncher.showLoadingView()();
}

- (void)hideLoadingView
{
  v2 = self;
  TVAppLauncher.hideLoadingView()();
}

- (void)configureAppWindow
{
  v2 = self;
  TVAppLauncher.configureAppWindow()();
}

@end