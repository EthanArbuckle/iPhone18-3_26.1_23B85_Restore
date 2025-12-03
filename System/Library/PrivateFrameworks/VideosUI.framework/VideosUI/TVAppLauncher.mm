@interface TVAppLauncher
- (void)configureAppWindow;
- (void)hideLoadingView;
- (void)showLoadingView;
@end

@implementation TVAppLauncher

- (void)showLoadingView
{
  selfCopy = self;
  TVAppLauncher.showLoadingView()();
}

- (void)hideLoadingView
{
  selfCopy = self;
  TVAppLauncher.hideLoadingView()();
}

- (void)configureAppWindow
{
  selfCopy = self;
  TVAppLauncher.configureAppWindow()();
}

@end