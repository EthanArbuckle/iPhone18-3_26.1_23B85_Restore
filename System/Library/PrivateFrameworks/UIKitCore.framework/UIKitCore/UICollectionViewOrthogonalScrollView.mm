@interface UICollectionViewOrthogonalScrollView
@end

@implementation UICollectionViewOrthogonalScrollView

uint64_t __67___UICollectionViewOrthogonalScrollView__existingFocusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  if (_IsKindOfUIView(a2))
  {
    return [a2 _isHiddenForReuse] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end