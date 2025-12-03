@interface PUPhotoKitReviewActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (void)_enterReviewMode;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitReviewActionPerformer

- (void)_enterReviewMode
{
  assets = [(PUAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];

  pl_managedAsset = [firstObject pl_managedAsset];
  burstIdentifier = [firstObject burstIdentifier];
  if (!burstIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1905 description:@"Current asset must have an avalanche UUID"];
  }

  if ([firstObject sourceType] == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = objc_alloc(MEMORY[0x1E69BE2B0]);
  photoLibrary = [pl_managedAsset photoLibrary];
  v10 = [v8 initWithUUID:burstIdentifier sourceType:v7 photoLibrary:photoLibrary];

  v11 = objc_alloc_init(PUAvalancheReviewControllerSpec);
  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject2 = [allKeys firstObject];
  pl_assetContainer = [firstObject2 pl_assetContainer];

  v16 = [PUAvalancheReviewController alloc];
  photoLibrary2 = [firstObject photoLibrary];
  v18 = [(PUAvalancheReviewController *)v16 initWithSpec:v11 startingAtAsset:pl_managedAsset inAvalanche:v10 currentAssetContainer:pl_assetContainer photoLibrary:photoLibrary2];

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:[(PUAssetActionPerformer *)self presentViewController:v18] error:0];
}

- (void)performUserInteractionTask
{
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = [assets count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1897 description:@"There can be only one asset in a Review action"];
  }

  [(PUPhotoKitReviewActionPerformer *)self _enterReviewMode];
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([asset representsBurst])
  {
    canShowAvalancheStacks = [collectionCopy canShowAvalancheStacks];
  }

  else
  {
    canShowAvalancheStacks = 0;
  }

  return canShowAvalancheStacks;
}

@end