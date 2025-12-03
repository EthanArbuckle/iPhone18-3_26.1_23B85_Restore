@interface UIKitCardTransitioningDelegate
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation UIKitCardTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_1D7E3A290(controllerCopy, viewController);

  return v12;
}

@end