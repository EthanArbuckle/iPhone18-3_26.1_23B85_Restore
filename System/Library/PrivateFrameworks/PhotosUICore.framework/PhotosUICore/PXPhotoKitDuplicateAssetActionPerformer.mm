@interface PXPhotoKitDuplicateAssetActionPerformer
- (void)_setupActionControllerWithAssets:(id)assets updateSelection:(BOOL)selection;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)setStillImageTime:(id *)time;
@end

@implementation PXPhotoKitDuplicateAssetActionPerformer

- (void)setStillImageTime:(id *)time
{
  var3 = time->var3;
  *&self->_stillImageTime.value = *&time->var0;
  self->_stillImageTime.epoch = var3;
}

- (void)performBackgroundTask
{
  duplicateActionController = [(PXPhotoKitDuplicateAssetActionPerformer *)self duplicateActionController];
  action = [(PXPhotoKitDuplicateAssetActionPerformer *)self action];
  [(PXPhotoKitDuplicateAssetActionPerformer *)self stillImageTime];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PXPhotoKitDuplicateAssetActionPerformer_performBackgroundTask__block_invoke;
  v6[3] = &unk_1E77482F0;
  v6[4] = self;
  v6[5] = a2;
  [duplicateActionController performDuplicateAction:action newStillImageTime:v7 completionHandler:v6];
}

uint64_t __64__PXPhotoKitDuplicateAssetActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2)
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXPhotoKitDuplicateAssetActionPerformer.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  v4 = *(a1 + 32);

  return [v4 completeBackgroundTaskWithSuccess:a2 error:0];
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PXPhotoKitDuplicateAssetActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(assets, presentationEnvironment, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__PXPhotoKitDuplicateAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if ([v9 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setupActionControllerWithAssets:v9 updateSelection:a2 == 3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v7];
  }
}

- (void)_setupActionControllerWithAssets:(id)assets updateSelection:(BOOL)selection
{
  selectionCopy = selection;
  assetsCopy = assets;
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  if (selectionCopy)
  {
    v8 = PXContentSyndicationSelectionSnapshotForAssets(assetsCopy);

    selectionSnapshot = v8;
  }

  v9 = [PXPhotoKitDuplicateActionController alloc];
  undoManager = [(PXActionPerformer *)self undoManager];
  v11 = [(PXPhotoKitDuplicateActionController *)v9 initWithSelectionSnapshot:selectionSnapshot undoManager:undoManager];

  [(PXPhotoKitDuplicateAssetActionPerformer *)self setDuplicateActionController:v11];
  if ([(PXPhotoKitDuplicateActionController *)v11 shouldUseAlertController])
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__PXPhotoKitDuplicateAssetActionPerformer__setupActionControllerWithAssets_updateSelection___block_invoke;
    v14[3] = &unk_1E77482A0;
    v15 = v11;
    selfCopy = self;
    v13 = [presentationEnvironment presentAlertWithConfigurationHandler:v14];

    if (!v13)
    {
      PXAssertGetLog();
    }
  }

  else
  {
    [(PXPhotoKitDuplicateAssetActionPerformer *)self setAction:1];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __92__PXPhotoKitDuplicateAssetActionPerformer__setupActionControllerWithAssets_updateSelection___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__PXPhotoKitDuplicateAssetActionPerformer__setupActionControllerWithAssets_updateSelection___block_invoke_2;
  v4[3] = &unk_1E7748278;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 configureAlertConfiguration:a2 withUserConfirmationHandler:v4];
}

uint64_t __92__PXPhotoKitDuplicateAssetActionPerformer__setupActionControllerWithAssets_updateSelection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAction:?];
  v4 = *(a1 + 32);

  return [v4 completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end