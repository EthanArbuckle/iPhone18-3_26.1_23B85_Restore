@interface PXPhotoKitEditLocationActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)_presentLocationEditViewControllerWithAssets:(id)assets;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitEditLocationActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  if ([assetCopy canPerformEditOperation:3] && !objc_msgSend(assetCopy, "isTrashed"))
  {
    LOBYTE(v7) = 1;
  }

  else if ([assetCopy px_isUnsavedSyndicatedAsset])
  {
    v7 = [assetCopy px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PXPhotoKitEditLocationActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(assets, presentationEnvironment, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__PXPhotoKitEditLocationActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _presentLocationEditViewControllerWithAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)_presentLocationEditViewControllerWithAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:assetsCopy title:0];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:0];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __86__PXPhotoKitEditLocationActionPerformer__presentLocationEditViewControllerWithAssets___block_invoke;
  v12 = &unk_1E7747EB0;
  objc_copyWeak(&v13, &location);
  v7 = [PXPhotosDetailsLocationSearchUIFactory searchViewControllerWithAssets:v6 delegate:self completion:&v9];
  if (![(PXActionPerformer *)self presentViewController:v7, v9, v10, v11, v12])
  {
    v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present Edit Location view controller"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v8];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __86__PXPhotoKitEditLocationActionPerformer__presentLocationEditViewControllerWithAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end