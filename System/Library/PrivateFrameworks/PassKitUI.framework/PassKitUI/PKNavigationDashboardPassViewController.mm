@interface PKNavigationDashboardPassViewController
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation PKNavigationDashboardPassViewController

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if (controller == self)
  {
    presentingControllerCopy = presentingController;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return 0;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if (controller == self)
  {
    presentingViewController = [(PKNavigationDashboardPassViewController *)self presentingViewController];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return 0;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  if (controller == self)
  {
    viewControllerCopy = viewController;
    controllerCopy = controller;
    v5 = [[PKPresentationControllerForOverCurrentContextDestination alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

    traitOverrides = [(PKPresentationControllerForOverCurrentContextDestination *)v5 traitOverrides];
    [traitOverrides setUserInterfaceLevel:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end