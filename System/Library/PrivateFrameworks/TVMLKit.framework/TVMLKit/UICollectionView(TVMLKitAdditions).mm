@interface UICollectionView(TVMLKitAdditions)
- (uint64_t)tv_isFocusOnNonOwnedCell;
@end

@implementation UICollectionView(TVMLKitAdditions)

- (uint64_t)tv_isFocusOnNonOwnedCell
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  if (focusedView == self || ![focusedView isDescendantOfView:self])
  {
    v8 = 0;
  }

  else
  {
    v4 = focusedView;
    superview = [v4 superview];

    if (superview == self)
    {
      superview2 = v4;
    }

    else
    {
      do
      {
        superview2 = [v4 superview];

        v6Superview = [superview2 superview];

        v4 = superview2;
      }

      while (v6Superview != self);
    }

    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  return v8 & 1;
}

@end