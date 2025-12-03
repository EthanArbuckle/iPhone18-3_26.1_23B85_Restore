@interface PXPhotoKitAssetCollectionRevealInMomentActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)_assetToRevealInAssetCollection:(id)collection;
+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionRevealInMomentActionPerformer

- (void)performUserInteractionTask
{
  v3 = objc_opt_class();
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v5 = [v3 _assetToRevealInAssetCollection:assetCollection];

  if (v5)
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__PXPhotoKitAssetCollectionRevealInMomentActionPerformer_performUserInteractionTask__block_invoke;
    v8[3] = &unk_1E7749D00;
    objc_copyWeak(&v9, &location);
    [mEMORY[0x1E69DC668] px_navigateToMomentsViewRevealingAsset:v5 completionHandler:v8];

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

+ (id)_assetToRevealInAssetCollection:(id)collection
{
  v3 = MEMORY[0x1E6978830];
  collectionCopy = collection;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:collectionCopy];
  [v5 setReverseSortOrder:1];
  [v5 setFetchLimit:1];
  [v5 setIncludeGuestAssets:1];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:v5];

  firstObject = [v6 firstObject];

  if ([firstObject sourceType] == 8)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v9 = PXAssetToRevealForMomentSharedAsset(firstObject, 0, px_deprecated_appPhotoLibrary);

    firstObject = px_deprecated_appPhotoLibrary;
  }

  else
  {
    photoLibrary = [firstObject photoLibrary];
    wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

    if (wellKnownPhotoLibraryIdentifier != 3)
    {
      goto LABEL_6;
    }

    v9 = PXAssetToRevealForSyndicationLibraryAsset(firstObject);
  }

  firstObject = v9;
LABEL_6:

  return firstObject;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  if (case > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionManagerStandardActionTitle_RevealInMoment", @"PhotosUICore");
  }

  return v6;
}

+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:4 target:targetCopy action:action];

  return v8;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1502 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v22, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1502 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v22}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    people = [inputsCopy people];
  }

  else
  {
    people = 0;
  }

  if ([assetCollection estimatedAssetCount] == 1 && !objc_msgSend(people, "count"))
  {
    assetsFetchResult = [inputsCopy assetsFetchResult];
    firstObject = [assetsFetchResult firstObject];

    v14 = firstObject;
    if (firstObject || ([self _assetToRevealInAssetCollection:assetCollection], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (([v14 isHidden] & 1) == 0)
      {
        isTrashed = [v14 isTrashed];
        bOOLValue = isTrashed ^ 1;
        if (!firstObject || (isTrashed & 1) != 0)
        {
          goto LABEL_14;
        }

        if ([v14 sourceType] == 8)
        {
          bOOLValue = PXCanAttemptToRevealMomentSharedAsset(v14, 0);
          goto LABEL_14;
        }

        photoLibrary = [v14 photoLibrary];
        wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

        if (wellKnownPhotoLibraryIdentifier != 3)
        {
          goto LABEL_14;
        }

        [v14 fetchPropertySetsIfNeeded];
        if (([v14 isSyndicatedAssetSavedToUserLibrary] & 1) != 0 || objc_msgSend(v14, "isGuestAsset"))
        {
          standardUserDefaults = [off_1E7721948 standardUserDefaults];
          includeSharedWithYou = [standardUserDefaults includeSharedWithYou];
          bOOLValue = [includeSharedWithYou BOOLValue];

          goto LABEL_14;
        }
      }
    }

    bOOLValue = 0;
LABEL_14:

    goto LABEL_9;
  }

  bOOLValue = 0;
LABEL_9:

  return bOOLValue;
}

@end