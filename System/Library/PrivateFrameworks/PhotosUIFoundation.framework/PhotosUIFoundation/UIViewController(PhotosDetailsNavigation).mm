@interface UIViewController(PhotosDetailsNavigation)
- (id)representedItem;
- (uint64_t)shouldUseSystemSwipeToDismiss;
- (void)setShouldUseSystemSwipeToDismiss:()PhotosDetailsNavigation;
@end

@implementation UIViewController(PhotosDetailsNavigation)

- (void)setShouldUseSystemSwipeToDismiss:()PhotosDetailsNavigation
{
  v2 = ShouldUseSystemSwipeToDismissAssociationKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

- (uint64_t)shouldUseSystemSwipeToDismiss
{
  v2 = objc_getAssociatedObject(self, ShouldUseSystemSwipeToDismissAssociationKey);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    parentViewController = [self parentViewController];
    bOOLValue = [parentViewController shouldUseSystemSwipeToDismiss];
  }

  return bOOLValue;
}

- (id)representedItem
{
  explicitRepresentedItem = [self explicitRepresentedItem];
  v3 = explicitRepresentedItem;
  if (explicitRepresentedItem)
  {
    representedItem = explicitRepresentedItem;
  }

  else
  {
    childViewControllerForRepresentedItem = [self childViewControllerForRepresentedItem];
    representedItem = [childViewControllerForRepresentedItem representedItem];
  }

  return representedItem;
}

@end