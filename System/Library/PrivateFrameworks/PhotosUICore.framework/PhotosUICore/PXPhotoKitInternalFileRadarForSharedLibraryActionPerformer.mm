@interface PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = a3;
  v8 = a4;
  v9 = +[PXRootSettings sharedInstance];
  v10 = [v9 canShowInternalUI];

  if (v10)
  {
    v11 = [v7 photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v11];

    if ([v12 hasSharedLibraryOrPreview])
    {
      v13 = [v8 assetCollectionSubtype];
      LOBYTE(v10) = v13 == 1000000205 || v13 == 1000000301;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __88__PXPhotoKitInternalFileRadarForSharedLibraryActionPerformer_performUserInteractionTask__block_invoke;
  v8 = &unk_1E7747EB0;
  objc_copyWeak(&v9, &location);
  v4 = PXFileRadarViewControllerForSharedLibraryAssets(v3, &v5);

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