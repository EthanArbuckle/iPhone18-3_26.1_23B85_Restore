@interface Transition
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation Transition

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = Transition.animationController(forPresented:presenting:source:)();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = Transition.animationController(forDismissed:)();

  return v6;
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  v3 = Transition.interactionControllerForDismissal(using:)();

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  Transition.presentationController(forPresented:presenting:source:)(v12, controllerCopy, viewController, sourceViewControllerCopy);
  v14 = v13;

  return v14;
}

@end