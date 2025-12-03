@interface _PortraitOnlyNavigationController
- (void)dealloc;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation _PortraitOnlyNavigationController

- (void)viewWillMoveToWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    v5 = 1;
  }

  else
  {
    presentedViewController = [(_PortraitOnlyNavigationController *)self presentedViewController];
    v5 = presentedViewController != 0;
  }

  [MEMORY[0x1E69DF6F0] enablePortraitLock:v5];
  v7.receiver = self;
  v7.super_class = _PortraitOnlyNavigationController;
  [(_PortraitOnlyNavigationController *)&v7 viewWillMoveToWindow:windowCopy];
}

- (void)dealloc
{
  [MEMORY[0x1E69DF6F0] enablePortraitLock:0];
  v3.receiver = self;
  v3.super_class = _PortraitOnlyNavigationController;
  [(_PortraitOnlyNavigationController *)&v3 dealloc];
}

@end