@interface UICollectionViewCellForFocusItem
@end

@implementation UICollectionViewCellForFocusItem

void ___UICollectionViewCellForFocusItem_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(*(a1 + 32) + 2984);
    if (v6)
    {
      if ([(_UICollectionViewSubviewCollection *)*(v6 + 8) containsView:v7])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a3 = 1;
      }
    }
  }
}

@end