@interface UIViewController
@end

@implementation UIViewController

uint64_t __127__UIViewController_OFUIViewControllerExtensions__switchViewController_toViewController_duration_options_animations_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  [*(a1 + 48) removeFromParentViewController];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

@end