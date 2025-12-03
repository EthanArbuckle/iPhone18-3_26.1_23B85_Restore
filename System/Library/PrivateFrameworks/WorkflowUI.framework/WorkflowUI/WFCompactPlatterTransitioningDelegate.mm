@interface WFCompactPlatterTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation WFCompactPlatterTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (([controllerCopy conformsToProtocol:&unk_2883FB518] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCompactPlatterTransitioningDelegate.m" lineNumber:28 description:@"Tried to present a view controller that doesn't conform to WFCompactPlatterPresentation"];
  }

  v10 = controllerCopy;
  v11 = [[WFCompactPlatterPresentationController alloc] initWithPresentedViewController:v10 presentingViewController:viewControllerCopy];

  return v11;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[WFCompactPlatterPresentationAnimator alloc] initForPresenting:0];

  return v3;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[WFCompactPlatterPresentationAnimator alloc] initForPresenting:1];

  return v5;
}

@end