@interface PUWallpaperSmartAlbumPreviewReloadRequest
@end

@implementation PUWallpaperSmartAlbumPreviewReloadRequest

void __93___PUWallpaperSmartAlbumPreviewReloadRequest_passiveContentDataSourcePreviewAssetsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];
  v2 = [WeakRetained smartAlbumDataSource];
  v3 = [v2 previewAssets];

  [WeakRetained setCompletion:0];
  [WeakRetained setSmartAlbumDataSource:0];
  if (v1)
  {
    (v1)[2](v1, v3);
  }
}

@end