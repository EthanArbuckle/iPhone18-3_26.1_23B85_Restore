@interface UIPageViewController(PhotosDetailsNavigation)
- (id)childViewControllerForRepresentedItem;
@end

@implementation UIPageViewController(PhotosDetailsNavigation)

- (id)childViewControllerForRepresentedItem
{
  viewControllers = [self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

@end