@interface PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v5 = [a4 assetCollection];
  v6 = [v5 px_isSharedLibrarySharingSuggestionsSmartAlbum];

  if (v6)
  {
    v7 = @"PXSharedLibrary_Action_RemoveAllSharingSuggestions";
  }

  else
  {
    v7 = @"PXSharedLibrary_Action_RemoveThisSharingSuggestion";
  }

  return PXLocalizedSharedLibraryString(v7);
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
  v7 = [(PXAssetsAction *)[PXRemoveLibrarySharingSuggestionAction alloc] initWithAssets:v6];
  v8 = [(PXActionPerformer *)self undoManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [(PXAction *)v7 executeWithUndoManager:v8 completionHandler:v11];
}

@end