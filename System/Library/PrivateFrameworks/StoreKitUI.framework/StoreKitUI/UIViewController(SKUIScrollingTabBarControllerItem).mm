@interface UIViewController(SKUIScrollingTabBarControllerItem)
- (id)scrollingTabBarController;
@end

@implementation UIViewController(SKUIScrollingTabBarControllerItem)

- (id)scrollingTabBarController
{
  v1 = a1;
  do
  {
    v2 = v1;
    v1 = [v1 parentViewController];

    if (!v1)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);

  return v1;
}

@end