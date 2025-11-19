@interface UIKeyShortcutHUDCollectionViewManager
@end

@implementation UIKeyShortcutHUDCollectionViewManager

uint64_t __98___UIKeyShortcutHUDCollectionViewManager_client_flashCellIfPossibleAtIndexPath_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFlashing:0];
  [*(a1 + 40) _collectionView:*(a1 + 48) updateSeparatorVisibilityForCellAtIndexPath:*(a1 + 56)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

@end