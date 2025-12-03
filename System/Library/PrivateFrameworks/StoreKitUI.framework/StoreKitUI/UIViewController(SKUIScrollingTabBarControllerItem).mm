@interface UIViewController(SKUIScrollingTabBarControllerItem)
- (id)scrollingTabBarController;
@end

@implementation UIViewController(SKUIScrollingTabBarControllerItem)

- (id)scrollingTabBarController
{
  selfCopy = self;
  do
  {
    v2 = selfCopy;
    selfCopy = [selfCopy parentViewController];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);

  return selfCopy;
}

@end