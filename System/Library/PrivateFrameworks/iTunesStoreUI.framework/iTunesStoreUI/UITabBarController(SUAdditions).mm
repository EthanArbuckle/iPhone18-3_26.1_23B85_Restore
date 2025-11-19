@interface UITabBarController(SUAdditions)
- (void)selectedNavigationController;
@end

@implementation UITabBarController(SUAdditions)

- (void)selectedNavigationController
{
  v2 = [a1 selectedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [v2 navigationController];
  }

  if (v2)
  {
    v3 = [a1 moreNavigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [a1 allViewControllers];
      v6 = [v5 indexOfObjectIdenticalTo:v2];
      if (v6 >= [v5 indexOfObjectIdenticalTo:v4])
      {
        return v4;
      }
    }
  }

  return v2;
}

@end