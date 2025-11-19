@interface PXPhotoKitRemoveSharingSuggestionAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveSharingSuggestionAssetActionPerformer

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PXPhotoKitRemoveSharingSuggestionAssetActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = v7;
  v9 = v7;
  v10 = [v8 actionWithTitle:a3 image:a4 identifier:0 handler:v12];
  [v10 setAttributes:2];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a4;
  if ([v6 px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 px_isSharedLibrarySharingSuggestion];
  }

  return v7;
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
  v5 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v6 = [(PXAssetsAction *)v4 initWithAssets:v5];

  v7 = [(PXActionPerformer *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotoKitRemoveSharingSuggestionAssetActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E774C5C0;
  v8[4] = self;
  [(PXAction *)v6 executeWithUndoManager:v7 completionHandler:v8];
}

@end