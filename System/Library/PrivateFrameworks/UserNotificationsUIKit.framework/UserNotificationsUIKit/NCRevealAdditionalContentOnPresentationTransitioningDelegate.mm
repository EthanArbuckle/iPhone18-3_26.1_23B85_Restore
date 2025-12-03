@interface NCRevealAdditionalContentOnPresentationTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation NCRevealAdditionalContentOnPresentationTransitioningDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = objc_alloc_init(NCRevealAdditionalContentOnPresentationTransitionAnimator);

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = objc_alloc_init(NCRevealAdditionalContentOnPresentationTransitionAnimator);

  return v3;
}

@end