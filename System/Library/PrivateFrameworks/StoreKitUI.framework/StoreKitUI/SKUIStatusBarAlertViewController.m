@interface SKUIStatusBarAlertViewController
@end

@implementation SKUIStatusBarAlertViewController

uint64_t __88___SKUIStatusBarAlertViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateLabelFrame];
  v2 = *(*(a1 + 32) + 992);

  return [v2 setHidden:0];
}

@end