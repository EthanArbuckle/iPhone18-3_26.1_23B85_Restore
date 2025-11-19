@interface SBStatusBarWindowRootViewController
@end

@implementation SBStatusBarWindowRootViewController

uint64_t __91___SBStatusBarWindowRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _statusBarWillAnimateRotation];
  [*(a1 + 40) _setStatusBarWindowOrientation:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setOrientation:v3];
}

@end