@interface PUPhotoKitDuplicateActionPerformer
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)setNewStillImageTime:(id *)time;
@end

@implementation PUPhotoKitDuplicateActionPerformer

- (void)setNewStillImageTime:(id *)time
{
  var3 = time->var3;
  *&self->_newStillImageTime.value = *&time->var0;
  self->_newStillImageTime.epoch = var3;
}

- (void)performBackgroundTask
{
  objc_initWeak(&location, self);
  duplicateActionController = [(PUPhotoKitDuplicateActionPerformer *)self duplicateActionController];
  action = [(PUPhotoKitDuplicateActionPerformer *)self action];
  [(PUPhotoKitDuplicateActionPerformer *)self newStillImageTime];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PUPhotoKitDuplicateActionPerformer_performBackgroundTask__block_invoke;
  v5[3] = &unk_1E7B7F988;
  objc_copyWeak(&v6, &location);
  [duplicateActionController performDuplicateAction:action newStillImageTime:v7 completionHandler:v5];

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
  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v4 = MEMORY[0x1E69C37D0];
  allKeys = [assetsByAssetCollection allKeys];
  v6 = [v4 dataSourceWithAssetCollections:allKeys];

  v7 = [v6 selectionSnapshotForAssetsByAssetCollection:assetsByAssetCollection];
  v8 = objc_alloc(MEMORY[0x1E69C3808]);
  undoManager = [(PUAssetActionPerformer *)self undoManager];
  v10 = [v8 initWithSelectionSnapshot:v7 undoManager:undoManager];

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
    alertController = [v12 alertController];
    v14 = [(PUAssetActionPerformer *)self presentViewController:alertController];

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