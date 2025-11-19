@interface UIViewServiceRootViewController
@end

@implementation UIViewServiceRootViewController

void __78___UIViewServiceRootViewController_presentationControllerDidAttemptToDismiss___block_invoke(uint64_t a1)
{
  v1 = [[UIPresentationController alloc] initWithPresentedViewController:*(*(a1 + 32) + 992) presentingViewController:0];
  v2 = _MergedGlobals_1353;
  _MergedGlobals_1353 = v1;
}

@end