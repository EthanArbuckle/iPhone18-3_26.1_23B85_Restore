@interface PNPPlatterTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation PNPPlatterTransitioningDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = objc_alloc_init(PNPPlatterAnimator);
  [(PNPPlatterAnimator *)v5 setIsPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = objc_alloc_init(PNPPlatterAnimator);
  [(PNPPlatterAnimator *)v3 setIsPresenting:0];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[PNPPlatterPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

@end