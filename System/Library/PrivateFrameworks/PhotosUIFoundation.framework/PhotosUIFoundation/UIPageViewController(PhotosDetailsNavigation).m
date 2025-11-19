@interface UIPageViewController(PhotosDetailsNavigation)
- (id)childViewControllerForRepresentedItem;
@end

@implementation UIPageViewController(PhotosDetailsNavigation)

- (id)childViewControllerForRepresentedItem
{
  v1 = [a1 viewControllers];
  v2 = [v1 firstObject];

  return v2;
}

@end