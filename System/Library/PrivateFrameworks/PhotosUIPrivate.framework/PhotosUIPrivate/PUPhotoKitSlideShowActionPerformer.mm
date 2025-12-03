@interface PUPhotoKitSlideShowActionPerformer
- (void)_startSlideshow;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitSlideShowActionPerformer

- (void)_startSlideshow
{
  assets = [(PUAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];

  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject2 = [allKeys firstObject];

  photosDataSource = [(PUPhotoKitActionPerformer *)self photosDataSource];
  if (!photosDataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1944 description:@"Share performer should have a photosDataSource set."];
  }

  v9 = [photosDataSource indexPathForAsset:firstObject inCollection:firstObject2];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v9, "section")}];
    v12 = [photosDataSource assetsStartingAtIndexPath:v11];

    v13 = -[PUSlideshowSession initWithFetchResult:assetCollection:startIndex:]([PUSlideshowSession alloc], "initWithFetchResult:assetCollection:startIndex:", v12, firstObject2, [v10 item]);
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
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = [assets count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1934 description:@"There can be only one asset when starting a SlideShow action"];
  }

  [(PUPhotoKitSlideShowActionPerformer *)self _startSlideshow];
}

@end