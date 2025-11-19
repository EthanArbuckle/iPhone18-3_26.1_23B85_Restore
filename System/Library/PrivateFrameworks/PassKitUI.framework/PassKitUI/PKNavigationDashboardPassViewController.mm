@interface PKNavigationDashboardPassViewController
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation PKNavigationDashboardPassViewController

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  if (a3 == self)
  {
    v5 = a4;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return 0;
}

- (id)animationControllerForDismissedController:(id)a3
{
  if (a3 == self)
  {
    v3 = [(PKNavigationDashboardPassViewController *)self presentingViewController];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return 0;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  if (a3 == self)
  {
    v7 = a4;
    v8 = a3;
    v5 = [[PKPresentationControllerForOverCurrentContextDestination alloc] initWithPresentedViewController:v8 presentingViewController:v7];

    v9 = [(PKPresentationControllerForOverCurrentContextDestination *)v5 traitOverrides];
    [v9 setUserInterfaceLevel:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end