@interface PXPhotoKitRemoveSharingSuggestionAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveSharingSuggestionAssetActionPerformer

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PXPhotoKitRemoveSharingSuggestionAssetActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];
  [v10 setAttributes:2];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  collectionCopy = collection;
  if ([collectionCopy px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    px_isSharedLibrarySharingSuggestion = 1;
  }

  else
  {
    px_isSharedLibrarySharingSuggestion = [collectionCopy px_isSharedLibrarySharingSuggestion];
  }

  return px_isSharedLibrarySharingSuggestion;
}

- (void)performBackgroundTask
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "Attempting remove sharing suggestions. Calling PXRemoveLibrarySharingSuggestionAction", buf, 2u);
  }

  v4 = [PXRemoveLibrarySharingSuggestionAction alloc];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v6 = [(PXAssetsAction *)v4 initWithAssets:assets];

  undoManager = [(PXActionPerformer *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotoKitRemoveSharingSuggestionAssetActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E774C5C0;
  v8[4] = self;
  [(PXAction *)v6 executeWithUndoManager:undoManager completionHandler:v8];
}

@end