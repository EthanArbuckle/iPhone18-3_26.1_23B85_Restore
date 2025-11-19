@interface PUPhotoKitDuplicateActionPerformer
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)setNewStillImageTime:(id *)a3;
@end

@implementation PUPhotoKitDuplicateActionPerformer

- (void)setNewStillImageTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_newStillImageTime.value = *&a3->var0;
  self->_newStillImageTime.epoch = var3;
}

- (void)performBackgroundTask
{
  objc_initWeak(&location, self);
  v3 = [(PUPhotoKitDuplicateActionPerformer *)self duplicateActionController];
  v4 = [(PUPhotoKitDuplicateActionPerformer *)self action];
  [(PUPhotoKitDuplicateActionPerformer *)self newStillImageTime];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PUPhotoKitDuplicateActionPerformer_performBackgroundTask__block_invoke;
  v5[3] = &unk_1E7B7F988;
  objc_copyWeak(&v6, &location);
  [v3 performDuplicateAction:v4 newStillImageTime:v7 completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__PUPhotoKitDuplicateActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeBackgroundTaskWithSuccess:a2 error:0];
}

- (void)performUserInteractionTask
{
  v3 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v4 = MEMORY[0x1E69C37D0];
  v5 = [v3 allKeys];
  v6 = [v4 dataSourceWithAssetCollections:v5];

  v7 = [v6 selectionSnapshotForAssetsByAssetCollection:v3];
  v8 = objc_alloc(MEMORY[0x1E69C3808]);
  v9 = [(PUAssetActionPerformer *)self undoManager];
  v10 = [v8 initWithSelectionSnapshot:v7 undoManager:v9];

  [(PUPhotoKitDuplicateActionPerformer *)self setDuplicateActionController:v10];
  if ([v10 shouldUseAlertController])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PUPhotoKitDuplicateActionPerformer_performUserInteractionTask__block_invoke;
    v15[3] = &unk_1E7B7BBB8;
    v15[4] = self;
    v11 = [v10 alertConfigurationForDuplicateActionWithUserConfirmationHandler:v15];
    v12 = [objc_alloc(MEMORY[0x1E69C4468]) initWithConfiguration:v11];
    v13 = [v12 alertController];
    v14 = [(PUAssetActionPerformer *)self presentViewController:v13];

    if (!v14)
    {
      [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }

  else
  {
    [(PUPhotoKitDuplicateActionPerformer *)self setAction:1];
    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __64__PUPhotoKitDuplicateActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAction:?];
  v4 = *(a1 + 32);

  return [v4 completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end