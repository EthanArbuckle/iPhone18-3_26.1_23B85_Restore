@interface VUISeasonPickerView
@end

@implementation VUISeasonPickerView

void __38___VUISeasonPickerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  v2 = [v1 collectionViewLayout];
  [v2 invalidateLayout];
}

@end