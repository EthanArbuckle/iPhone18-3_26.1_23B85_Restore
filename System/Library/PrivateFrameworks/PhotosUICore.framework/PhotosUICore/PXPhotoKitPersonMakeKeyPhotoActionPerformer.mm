@interface PXPhotoKitPersonMakeKeyPhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitPersonMakeKeyPhotoActionPerformer

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PXPhotoKitPersonMakeKeyPhotoActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  if (asset)
  {
    v6 = person == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (void)performBackgroundTask
{
  v3 = [PXChangePersonKeyFaceAction alloc];
  person = [(PXPhotoKitAssetActionPerformer *)self person];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];
  v7 = [(PXChangePersonKeyFaceAction *)v3 initWithPerson:person asset:firstObject];

  undoManager = [(PXActionPerformer *)self undoManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PXPhotoKitPersonMakeKeyPhotoActionPerformer_performBackgroundTask__block_invoke;
  v9[3] = &unk_1E774C5C0;
  v9[4] = self;
  [(PXAction *)v7 executeWithUndoManager:undoManager completionHandler:v9];
}

void __68__PXPhotoKitPersonMakeKeyPhotoActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v14 = 138412290;
      v15 = v8;
      v9 = "[%@] Make Key Photo succeeded.";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v8 = NSStringFromClass(v13);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v9 = "[%@] Make Key Photo failed: %@.";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_6;
    }
  }

  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:v5];
}

@end