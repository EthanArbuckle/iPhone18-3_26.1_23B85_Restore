@interface UIViewController(PhotoLibraryAdditions)
- (uint64_t)pl_visitControllerHierarchyWithBlock:()PhotoLibraryAdditions;
@end

@implementation UIViewController(PhotoLibraryAdditions)

- (uint64_t)pl_visitControllerHierarchyWithBlock:()PhotoLibraryAdditions
{
  childViewControllers = [self childViewControllers];
  presentedViewController = [self presentedViewController];
  if (presentedViewController)
  {
    v7 = presentedViewController;
    if ([presentedViewController presentingViewController] == self && (objc_msgSend(childViewControllers, "containsObject:", v7) & 1) == 0)
    {
      childViewControllers = [childViewControllers arrayByAddingObject:v7];
    }
  }

  v8 = [childViewControllers count] - 1;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v9 = [objc_msgSend(childViewControllers objectAtIndex:{v8--), "pl_visitControllerHierarchyWithBlock:", a3}];
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 16);

  return v11(a3, self);
}

@end