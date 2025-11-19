@interface UIViewController(UIViewController_TraitsArbiterTemp)
- (void)setNeedsUpdateOfSupportedInterfaceOrientations;
@end

@implementation UIViewController(UIViewController_TraitsArbiterTemp)

- (void)setNeedsUpdateOfSupportedInterfaceOrientations
{
  v1 = [a1 view];
  v7 = [v1 window];

  v2 = objc_opt_class();
  v3 = [v7 _sbWindowScene];
  v4 = SBSafeCast(v2, v3);

  if (v7 && v4)
  {
    v5 = [v7 _supportedInterfaceOrientationsForRootViewController];
    v6 = [v4 delegate];
    [v6 _windowScene:v4 window:v7 didUpdateSupportedInterfaceOrientations:v5 preferredOrientation:0];
  }
}

@end