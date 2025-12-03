@interface PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer.m" lineNumber:39 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v21}];
LABEL_20:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer.m" lineNumber:39 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v21, px_descriptionForAssertionMessage}];

    goto LABEL_20;
  }

LABEL_3:
  estimatedPhotosCount = [assetCollection estimatedPhotosCount];
  estimatedVideosCount = [assetCollection estimatedVideosCount];
  if (estimatedPhotosCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = estimatedVideosCount;
    if (estimatedVideosCount != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = estimatedVideosCount + estimatedPhotosCount;
      if (v10 + estimatedPhotosCount >= 1)
      {
        v12 = v10 == 0;
        v13 = v12 || estimatedPhotosCount != 0;
        v14 = !v13;
        v15 = 2;
        if (!v14)
        {
          v15 = 0;
        }

        if (estimatedPhotosCount != 0 && v12)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        PXLocalizedSharedLibraryAssetCountForUsage(v11, v16, 0, 17);
      }
    }
  }

  v17 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_Action_MoveToSharedLibrary");

  return v17;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  assetCollection = [referenceCopy assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    assetCollection2 = [referenceCopy assetCollection];
    if ([assetCollection2 px_isSharedLibrarySharingSuggestionsSmartAlbum])
    {
      px_isSharedLibrarySharingSuggestion = 1;
    }

    else
    {
      px_isSharedLibrarySharingSuggestion = [assetCollection2 px_isSharedLibrarySharingSuggestion];
    }
  }

  else
  {
    px_isSharedLibrarySharingSuggestion = 0;
  }

  return px_isSharedLibrarySharingSuggestion;
}

- (void)performBackgroundTask
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "Attempting remove sharing suggestions. Calling PXSharedLibraryRemoveSharingSuggestions()", buf, 2u);
  }

  assetsDataSource = [(PXAssetCollectionActionPerformer *)self assetsDataSource];
  v5 = assetsDataSource;
  if (!assetsDataSource)
  {
    v9 = MEMORY[0x1E6978630];
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    allItemsEnumerator = [v9 fetchAssetsInAssetCollection:assetCollection options:0];

    if (allItemsEnumerator)
    {
      goto LABEL_5;
    }

LABEL_7:
    PXAssertGetLog();
  }

  allItemsEnumerator = [assetsDataSource allItemsEnumerator];
  if (!allItemsEnumerator)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = [[PXMoveAssetsToSharedLibraryAction alloc] initWithAssets:allItemsEnumerator];
  undoManager = [(PXActionPerformer *)self undoManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [(PXAction *)v7 executeWithUndoManager:undoManager completionHandler:v11];
}

@end