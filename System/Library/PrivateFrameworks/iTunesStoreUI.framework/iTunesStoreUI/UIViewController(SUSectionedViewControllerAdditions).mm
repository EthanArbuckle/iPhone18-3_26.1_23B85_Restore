@interface UIViewController(SUSectionedViewControllerAdditions)
- (uint64_t)reloadForSectionsWithGroup:()SUSectionedViewControllerAdditions;
@end

@implementation UIViewController(SUSectionedViewControllerAdditions)

- (uint64_t)reloadForSectionsWithGroup:()SUSectionedViewControllerAdditions
{
  v4 = [a1 parentViewController];

  return [v4 reloadForSectionsWithGroup:a3];
}

@end