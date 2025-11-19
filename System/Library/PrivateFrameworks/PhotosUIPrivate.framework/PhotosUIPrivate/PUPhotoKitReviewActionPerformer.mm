@interface PUPhotoKitReviewActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
- (void)_enterReviewMode;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitReviewActionPerformer

- (void)_enterReviewMode
{
  v4 = [(PUAssetActionPerformer *)self assets];
  v20 = [v4 firstObject];

  v5 = [v20 pl_managedAsset];
  v6 = [v20 burstIdentifier];
  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1905 description:@"Current asset must have an avalanche UUID"];
  }

  if ([v20 sourceType] == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = objc_alloc(MEMORY[0x1E69BE2B0]);
  v9 = [v5 photoLibrary];
  v10 = [v8 initWithUUID:v6 sourceType:v7 photoLibrary:v9];

  v11 = objc_alloc_init(PUAvalancheReviewControllerSpec);
  v12 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v13 = [v12 allKeys];
  v14 = [v13 firstObject];
  v15 = [v14 pl_assetContainer];

  v16 = [PUAvalancheReviewController alloc];
  v17 = [v20 photoLibrary];
  v18 = [(PUAvalancheReviewController *)v16 initWithSpec:v11 startingAtAsset:v5 inAvalanche:v10 currentAssetContainer:v15 photoLibrary:v17];

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:[(PUAssetActionPerformer *)self presentViewController:v18] error:0];
}

- (void)performUserInteractionTask
{
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1897 description:@"There can be only one asset in a Review action"];
  }

  [(PUPhotoKitReviewActionPerformer *)self _enterReviewMode];
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v5 = a4;
  if ([a3 representsBurst])
  {
    v6 = [v5 canShowAvalancheStacks];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end