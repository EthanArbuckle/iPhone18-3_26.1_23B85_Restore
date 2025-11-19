@interface PXPhotoKitShowInLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)_assetToRevealFromAsset:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitShowInLibraryActionPerformer

+ (id)_assetToRevealFromAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 wellKnownPhotoLibraryIdentifier];

  if (v5 == 3)
  {
    v6 = PXAssetToRevealForSyndicationLibraryAsset(v3);
  }

  else
  {
    if ([v3 sourceType] == 8)
    {
      v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v8 = PXAssetToRevealForMomentSharedAsset(v3, 2, v7);

      goto LABEL_7;
    }

    v6 = v3;
  }

  v8 = v6;
LABEL_7:

  return v8;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v8 = a3;
  if (([a4 px_isAllPhotosSmartAlbum] & 1) != 0 || (objc_msgSend(v8, "isHidden") & 1) != 0 || (objc_msgSend(v8, "isTrashed") & 1) != 0 || (objc_msgSend(v8, "isRecoveredAsset") & 1) != 0 || (objc_msgSend(v8, "px_isSharedAlbumAsset") & 1) != 0 || objc_msgSend(v8, "px_isSyndicatedAsset") && (objc_msgSend(v8, "px_wasSavedThroughSyndication") & 1) == 0 && (objc_msgSend(off_1E7721948, "standardUserDefaults"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "includeSharedWithYou"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, !v13))
  {
    v9 = 0;
  }

  else
  {
    v14 = [a1 _assetToRevealFromAsset:v8];
    v9 = v14 != 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = objc_opt_class();
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [v4 lastObject];
  v6 = [v3 _assetToRevealFromAsset:v5];

  objc_initWeak(&location, self);
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PXPhotoKitShowInLibraryActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7749D00;
  objc_copyWeak(&v9, &location);
  [v7 px_navigateToMomentsViewRevealingAsset:v6 completionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__PXPhotoKitShowInLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PXPhotoKitShowInLibraryActionPerformerCompleted" object:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v7];
}

@end