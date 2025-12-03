@interface PUPXBarAppearanceImplementationDelegate
- (BOOL)barAppearanceIsStatusBarVisible:(id)visible;
@end

@implementation PUPXBarAppearanceImplementationDelegate

- (BOOL)barAppearanceIsStatusBarVisible:(id)visible
{
  viewController = [visible viewController];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

  navigationController = [viewController navigationController];
  pu_currentNavigationTransition = [navigationController pu_currentNavigationTransition];

  if (pu_currentNavigationTransition)
  {
    isStatusBarHidden = [pu_currentNavigationTransition wasStatusBarHiddenBeforeTransition];
  }

  return isStatusBarHidden ^ 1;
}

@end