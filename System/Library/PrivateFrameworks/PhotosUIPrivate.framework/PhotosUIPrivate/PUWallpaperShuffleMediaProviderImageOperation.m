@interface PUWallpaperShuffleMediaProviderImageOperation
@end

@implementation PUWallpaperShuffleMediaProviderImageOperation

void __72___PUWallpaperShuffleMediaProviderImageOperation__handleRenderResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultHandler];
  v2[2](v2, *(a1 + 48), 0, *(a1 + 40));

  [*(a1 + 32) px_finishIfPossible];
  v3 = *(a1 + 48);

  CGImageRelease(v3);
}

void __58___PUWallpaperShuffleMediaProviderImageOperation_px_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRenderResponse:v3];
}

@end