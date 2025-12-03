@interface PXPhotoKitShowInLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)_assetToRevealFromAsset:(id)asset;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitShowInLibraryActionPerformer

+ (id)_assetToRevealFromAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier == 3)
  {
    v6 = PXAssetToRevealForSyndicationLibraryAsset(assetCopy);
  }

  else
  {
    if ([assetCopy sourceType] == 8)
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v8 = PXAssetToRevealForMomentSharedAsset(assetCopy, 2, px_deprecated_appPhotoLibrary);

      goto LABEL_7;
    }

    v6 = assetCopy;
  }

  v8 = v6;
LABEL_7:

  return v8;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  if (([collection px_isAllPhotosSmartAlbum] & 1) != 0 || (objc_msgSend(assetCopy, "isHidden") & 1) != 0 || (objc_msgSend(assetCopy, "isTrashed") & 1) != 0 || (objc_msgSend(assetCopy, "isRecoveredAsset") & 1) != 0 || (objc_msgSend(assetCopy, "px_isSharedAlbumAsset") & 1) != 0 || objc_msgSend(assetCopy, "px_isSyndicatedAsset") && (objc_msgSend(assetCopy, "px_wasSavedThroughSyndication") & 1) == 0 && (objc_msgSend(off_1E7721948, "standardUserDefaults"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "includeSharedWithYou"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, !v13))
  {
    v9 = 0;
  }

  else
  {
    v14 = [self _assetToRevealFromAsset:assetCopy];
    v9 = v14 != 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = objc_opt_class();
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  lastObject = [assets lastObject];
  v6 = [v3 _assetToRevealFromAsset:lastObject];

  objc_initWeak(&location, self);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PXPhotoKitShowInLibraryActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7749D00;
  objc_copyWeak(&v9, &location);
  [mEMORY[0x1E69DC668] px_navigateToMomentsViewRevealingAsset:v6 completionHandler:v8];

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