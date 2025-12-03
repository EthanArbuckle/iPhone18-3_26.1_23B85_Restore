@interface PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  v9 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v9 canShowInternalUI];

  if (canShowInternalUI)
  {
    photoLibrary = [assetCopy photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

    if ([v12 hasSharedLibraryOrPreview])
    {
      assetCollectionSubtype = [collectionCopy assetCollectionSubtype];
      LOBYTE(canShowInternalUI) = assetCollectionSubtype == 1000000205 || assetCollectionSubtype == 1000000301;
    }

    else
    {
      LOBYTE(canShowInternalUI) = 0;
    }
  }

  return canShowInternalUI;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __88__PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer_performUserInteractionTask__block_invoke;
  v8 = &unk_1E7747EB0;
  objc_copyWeak(&v9, &location);
  v4 = PXFileRadarViewControllerForSharedLibraryAssets(assets, &v5);

  [(PXActionPerformer *)self presentViewController:v4, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __88__PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end