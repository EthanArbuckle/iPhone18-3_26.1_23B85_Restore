@interface UIViewController(VUIControllerPresenter)
- (BOOL)isPresentingRoute;
- (uint64_t)isPresentingAlert;
- (void)presentViewController:()VUIControllerPresenter modalPresentationStyle:animated:completion:;
@end

@implementation UIViewController(VUIControllerPresenter)

- (void)presentViewController:()VUIControllerPresenter modalPresentationStyle:animated:completion:
{
  v10 = a6;
  v11 = a3;
  [v11 setModalPresentationStyle:a4];
  [self presentViewController:v11 animated:a5 completion:v10];
}

- (uint64_t)isPresentingAlert
{
  presentationController = [self presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isPresentingRoute
{
  presentingViewController = [self presentingViewController];
  v2 = presentingViewController != 0;

  return v2;
}

@end