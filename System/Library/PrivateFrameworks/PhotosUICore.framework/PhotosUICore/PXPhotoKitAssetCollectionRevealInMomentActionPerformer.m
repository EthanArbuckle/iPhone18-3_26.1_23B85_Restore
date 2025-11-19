@interface PXPhotoKitAssetCollectionRevealInMomentActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)_assetToRevealInAssetCollection:(id)a3;
+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionRevealInMomentActionPerformer

- (void)performUserInteractionTask
{
  v3 = objc_opt_class();
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v5 = [v3 _assetToRevealInAssetCollection:v4];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__PXPhotoKitAssetCollectionRevealInMomentActionPerformer_performUserInteractionTask__block_invoke;
    v8[3] = &unk_1E7749D00;
    objc_copyWeak(&v9, &location);
    [v6 px_navigateToMomentsViewRevealingAsset:v5 completionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1012 debugDescription:@"Failed to locate an asset to reveal"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v7];
  }
}

void __84__PXPhotoKitAssetCollectionRevealInMomentActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];

  if (a2)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"PXPhotoKitShowInLibraryActionPerformerCompleted" object:0];
  }
}

+ (id)_assetToRevealInAssetCollection:(id)a3
{
  v3 = MEMORY[0x1E6978830];
  v4 = a3;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:v4];
  [v5 setReverseSortOrder:1];
  [v5 setFetchLimit:1];
  [v5 setIncludeGuestAssets:1];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v5];

  v7 = [v6 firstObject];

  if ([v7 sourceType] == 8)
  {
    v8 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v9 = PXAssetToRevealForMomentSharedAsset(v7, 0, v8);

    v7 = v8;
  }

  else
  {
    v10 = [v7 photoLibrary];
    v11 = [v10 wellKnownPhotoLibraryIdentifier];

    if (v11 != 3)
    {
      goto LABEL_6;
    }

    v9 = PXAssetToRevealForSyndicationLibraryAsset(v7);
  }

  v7 = v9;
LABEL_6:

  return v7;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  if (a3 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionManagerStandardActionTitle_RevealInMoment", @"PhotosUICore");
  }

  return v6;
}

+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a4;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:4 target:v7 action:a5];

  return v8;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v7 = a4;
  v8 = [a3 assetCollection];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v8 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1502 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v22, v24}];
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1502 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v22}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 people];
  }

  else
  {
    v9 = 0;
  }

  if ([v8 estimatedAssetCount] == 1 && !objc_msgSend(v9, "count"))
  {
    v12 = [v7 assetsFetchResult];
    v13 = [v12 firstObject];

    v14 = v13;
    if (v13 || ([a1 _assetToRevealInAssetCollection:v8], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (([v14 isHidden] & 1) == 0)
      {
        v15 = [v14 isTrashed];
        v10 = v15 ^ 1;
        if (!v13 || (v15 & 1) != 0)
        {
          goto LABEL_14;
        }

        if ([v14 sourceType] == 8)
        {
          v10 = PXCanAttemptToRevealMomentSharedAsset(v14, 0);
          goto LABEL_14;
        }

        v16 = [v14 photoLibrary];
        v17 = [v16 wellKnownPhotoLibraryIdentifier];

        if (v17 != 3)
        {
          goto LABEL_14;
        }

        [v14 fetchPropertySetsIfNeeded];
        if (([v14 isSyndicatedAssetSavedToUserLibrary] & 1) != 0 || objc_msgSend(v14, "isGuestAsset"))
        {
          v18 = [off_1E7721948 standardUserDefaults];
          v19 = [v18 includeSharedWithYou];
          v10 = [v19 BOOLValue];

          goto LABEL_14;
        }
      }
    }

    v10 = 0;
LABEL_14:

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end