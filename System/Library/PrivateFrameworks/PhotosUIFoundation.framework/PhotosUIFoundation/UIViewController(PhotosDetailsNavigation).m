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
  objc_setAssociatedObject(a1, v2, v3, 1);
}

- (uint64_t)shouldUseSystemSwipeToDismiss
{
  v2 = objc_getAssociatedObject(a1, ShouldUseSystemSwipeToDismissAssociationKey);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [a1 parentViewController];
    v4 = [v5 shouldUseSystemSwipeToDismiss];
  }

  return v4;
}

- (id)representedItem
{
  v2 = [a1 explicitRepresentedItem];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 childViewControllerForRepresentedItem];
    v4 = [v5 representedItem];
  }

  return v4;
}

@end