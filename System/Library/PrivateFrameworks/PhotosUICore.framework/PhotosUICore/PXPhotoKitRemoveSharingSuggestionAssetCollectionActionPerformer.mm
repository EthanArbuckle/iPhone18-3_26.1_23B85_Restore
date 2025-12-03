@interface PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  px_isSharedLibrarySharingSuggestionsSmartAlbum = [assetCollection px_isSharedLibrarySharingSuggestionsSmartAlbum];

  if (px_isSharedLibrarySharingSuggestionsSmartAlbum)
  {
    v7 = @"PXSharedLibrary_Action_RemoveAllSharingSuggestions";
  }

  else
  {
    v7 = @"PXSharedLibrary_Action_RemoveThisSharingSuggestion";
  }

  return PXLocalizedSharedLibraryString(v7);
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
  v7 = [(PXAssetsAction *)[PXRemoveLibrarySharingSuggestionAction alloc] initWithAssets:allItemsEnumerator];
  undoManager = [(PXActionPerformer *)self undoManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PXPhotoKitRemoveSharingSuggestionAssetCollectionActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [(PXAction *)v7 executeWithUndoManager:undoManager completionHandler:v11];
}

@end