@interface UIViewController(SUSectionedViewControllerAdditions)
- (uint64_t)reloadForSectionsWithGroup:()SUSectionedViewControllerAdditions;
@end

@implementation UIViewController(SUSectionedViewControllerAdditions)

- (uint64_t)reloadForSectionsWithGroup:()SUSectionedViewControllerAdditions
{
  parentViewController = [self parentViewController];

  return [parentViewController reloadForSectionsWithGroup:a3];
}

@end