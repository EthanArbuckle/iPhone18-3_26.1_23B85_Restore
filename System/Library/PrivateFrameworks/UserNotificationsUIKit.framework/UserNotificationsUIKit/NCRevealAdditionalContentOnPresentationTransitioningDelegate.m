@interface NCRevealAdditionalContentOnPresentationTransitioningDelegate
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation NCRevealAdditionalContentOnPresentationTransitioningDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = objc_alloc_init(NCRevealAdditionalContentOnPresentationTransitionAnimator);

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = objc_alloc_init(NCRevealAdditionalContentOnPresentationTransitionAnimator);

  return v3;
}

@end