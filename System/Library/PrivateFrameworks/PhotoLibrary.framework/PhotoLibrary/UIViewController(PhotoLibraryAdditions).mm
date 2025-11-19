@interface UIViewController(PhotoLibraryAdditions)
- (uint64_t)pl_visitControllerHierarchyWithBlock:()PhotoLibraryAdditions;
@end

@implementation UIViewController(PhotoLibraryAdditions)

- (uint64_t)pl_visitControllerHierarchyWithBlock:()PhotoLibraryAdditions
{
  v5 = [a1 childViewControllers];
  v6 = [a1 presentedViewController];
  if (v6)
  {
    v7 = v6;
    if ([v6 presentingViewController] == a1 && (objc_msgSend(v5, "containsObject:", v7) & 1) == 0)
    {
      v5 = [v5 arrayByAddingObject:v7];
    }
  }

  v8 = [v5 count] - 1;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v9 = [objc_msgSend(v5 objectAtIndex:{v8--), "pl_visitControllerHierarchyWithBlock:", a3}];
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 16);

  return v11(a3, a1);
}

@end