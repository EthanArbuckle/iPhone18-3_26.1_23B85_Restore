@interface UIViewController(SKUIScrollingTabBarControllerNestedPagingScrollViewUpdate)
- (void)setNeedsNestedPagingScrollViewUpdate;
@end

@implementation UIViewController(SKUIScrollingTabBarControllerNestedPagingScrollViewUpdate)

- (void)setNeedsNestedPagingScrollViewUpdate
{
  selfCopy = self;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = selfCopy;

    selfCopy = [v3 parentViewController];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [selfCopy _viewControllerNeedsNestedPagingScrollViewUpdate:v3];
}

@end