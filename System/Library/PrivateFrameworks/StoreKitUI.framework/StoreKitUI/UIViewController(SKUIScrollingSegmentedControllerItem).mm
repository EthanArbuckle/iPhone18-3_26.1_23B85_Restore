@interface UIViewController(SKUIScrollingSegmentedControllerItem)
- (id)scrollingSegmentedController;
- (void)setNeedsScrollingSegmentContentScrollViewUpdate;
@end

@implementation UIViewController(SKUIScrollingSegmentedControllerItem)

- (id)scrollingSegmentedController
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

- (void)setNeedsScrollingSegmentContentScrollViewUpdate
{
  v1 = a1;
  v3 = 0;
  do
  {
    v2 = v3;
    v3 = v1;

    v1 = [v3 parentViewController];

    if (!v1)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  [v1 _viewControllerNeedsContentScrollViewUpdates:v3];
}

@end