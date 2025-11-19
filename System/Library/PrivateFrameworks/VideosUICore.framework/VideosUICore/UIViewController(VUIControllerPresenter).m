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
  [a1 presentViewController:v11 animated:a5 completion:v10];
}

- (uint64_t)isPresentingAlert
{
  v1 = [a1 presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isPresentingRoute
{
  v1 = [a1 presentingViewController];
  v2 = v1 != 0;

  return v2;
}

@end