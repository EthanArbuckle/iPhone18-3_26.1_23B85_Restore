@interface TVCollectionView
@end

@implementation TVCollectionView

void __50___TVCollectionView_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  LOBYTE(v3) = [v5 collectionView:*(a1 + 32) shouldHandleLongPressForItemAtIndexPath:v4];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __39___TVCollectionView__playButtonAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 collectionView:*(a1 + 32) didReceivePhysicalPlayForItemAtIndexPath:v4];
}

void __38___TVCollectionView__longPressAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 collectionView:*(a1 + 32) didReceiveLongPressForItemAtIndexPath:v4];
}

id __37___TVCollectionView_setContentInset___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _TVCollectionView;
  return objc_msgSendSuper2(&v2, sel_setContentInset_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

@end