@interface PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v7 = [a4 assetCollection];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer.m" lineNumber:39 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v21}];
LABEL_20:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v7 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer.m" lineNumber:39 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v21, v23}];

    goto LABEL_20;
  }

LABEL_3:
  v8 = [v7 estimatedPhotosCount];
  v9 = [v7 estimatedVideosCount];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9 + v8;
      if (v10 + v8 >= 1)
      {
        v12 = v10 == 0;
        v13 = v12 || v8 != 0;
        v14 = !v13;
        v15 = 2;
        if (!v14)
        {
          v15 = 0;
        }

        if (v8 != 0 && v12)
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

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = a3;
  v5 = [v4 assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 assetCollection];
    if ([v7 px_isSharedLibrarySharingSuggestionsSmartAlbum])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 px_isSharedLibrarySharingSuggestion];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)performBackgroundTask
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "Attempting remove sharing suggestions. Calling PXSharedLibraryRemoveSharingSuggestions()", buf, 2u);
  }

  v4 = [(PXAssetCollectionActionPerformer *)self assetsDataSource];
  v5 = v4;
  if (!v4)
  {
    v9 = MEMORY[0x1E6978630];
    v10 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v6 = [v9 fetchAssetsInAssetCollection:v10 options:0];

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    PXAssertGetLog();
  }

  v6 = [v4 allItemsEnumerator];
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = [[PXMoveAssetsToSharedLibraryAction alloc] initWithAssets:v6];
  v8 = [(PXActionPerformer *)self undoManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PXPhotoKitMoveAssetCollectionToSharedLibraryActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [(PXAction *)v7 executeWithUndoManager:v8 completionHandler:v11];
}

@end