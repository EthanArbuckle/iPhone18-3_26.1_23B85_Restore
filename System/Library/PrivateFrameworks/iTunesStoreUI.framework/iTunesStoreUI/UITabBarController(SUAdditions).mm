@interface UITabBarController(SUAdditions)
- (void)selectedNavigationController;
@end

@implementation UITabBarController(SUAdditions)

- (void)selectedNavigationController
{
  selectedViewController = [self selectedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selectedViewController = [selectedViewController navigationController];
  }

  if (selectedViewController)
  {
    moreNavigationController = [self moreNavigationController];
    if (moreNavigationController)
    {
      v4 = moreNavigationController;
      allViewControllers = [self allViewControllers];
      v6 = [allViewControllers indexOfObjectIdenticalTo:selectedViewController];
      if (v6 >= [allViewControllers indexOfObjectIdenticalTo:v4])
      {
        return v4;
      }
    }
  }

  return selectedViewController;
}

@end