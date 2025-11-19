@interface PUPhotoKitSlideShowActionPerformer
- (void)_startSlideshow;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitSlideShowActionPerformer

- (void)_startSlideshow
{
  v4 = [(PUAssetActionPerformer *)self assets];
  v17 = [v4 firstObject];

  v5 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [v5 allKeys];
  v7 = [v6 firstObject];

  v8 = [(PUPhotoKitActionPerformer *)self photosDataSource];
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1944 description:@"Share performer should have a photosDataSource set."];
  }

  v9 = [v8 indexPathForAsset:v17 inCollection:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v9, "section")}];
    v12 = [v8 assetsStartingAtIndexPath:v11];

    v13 = -[PUSlideshowSession initWithFetchResult:assetCollection:startIndex:]([PUSlideshowSession alloc], "initWithFetchResult:assetCollection:startIndex:", v12, v7, [v10 item]);
    v14 = [[PUSlideshowViewController alloc] initWithSession:v13];
    v15 = [(PUAssetActionPerformer *)self presentViewController:v14];
  }

  else
  {
    v15 = 0;
  }

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:v15 error:0];
}

- (void)performUserInteractionTask
{
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1934 description:@"There can be only one asset when starting a SlideShow action"];
  }

  [(PUPhotoKitSlideShowActionPerformer *)self _startSlideshow];
}

@end