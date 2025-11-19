@interface UICollectionViewListAccessoryControl
@end

@implementation UICollectionViewListAccessoryControl

void __65___UICollectionViewListAccessoryControl__updateImageViewIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[57];
  if (v2[59] == 2)
  {
    v5 = [v2 isSelected];

    _UICollectionTableSetImageForMultiselectAccessoryImageViewWithAnimation(v4, v3, v5);
  }

  else
  {
    v6 = v2[57];
    v7 = *(a1 + 40);

    [v6 setImage:v7];
  }
}

@end