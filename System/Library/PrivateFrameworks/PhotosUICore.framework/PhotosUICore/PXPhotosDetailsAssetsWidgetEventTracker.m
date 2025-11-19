@interface PXPhotosDetailsAssetsWidgetEventTracker
@end

@implementation PXPhotosDetailsAssetsWidgetEventTracker

void __67___PXPhotosDetailsAssetsWidgetEventTracker__invalidateVisibleState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 setNeedsUpdateOf:sel__updateVisibleState];
}

@end