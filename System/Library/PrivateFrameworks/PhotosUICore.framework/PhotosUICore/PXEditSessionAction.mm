@interface PXEditSessionAction
- (PXEditSessionAction)initWithPresetManager:(id)manager asset:(id)asset sourcePreset:(id)preset targetPreset:(id)targetPreset syncProgress:(id)progress asyncLoadingStatusManager:(id)statusManager;
- (void)_applyPreset:(id)preset actionName:(id)name completionHandler:(id)handler;
- (void)registerWithUndoManager:(id)manager;
@end

@implementation PXEditSessionAction

- (void)_applyPreset:(id)preset actionName:(id)name completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  nameCopy = name;
  handlerCopy = handler;
  assets = [(PXEditBatchAction *)self assets];
  if ([assets count])
  {
    assets2 = [(PXEditBatchAction *)self assets];
    firstObject = [assets2 firstObject];

    if (presetCopy && firstObject)
    {
      v14 = [(PXEditBatchAction *)self shouldRenderSynchronouslyForAsset:firstObject]^ 1;
      uuid = [firstObject uuid];
      v25 = uuid;
      v26[0] = presetCopy;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

      [(PXEditBatchAction *)self willBeginActionWithLocalizedTitle:nameCopy isAsync:v14 itemCount:1];
      if (v14)
      {
        [(PXEditBatchAction *)self asyncProgress];
      }

      else
      {
        [(PXEditBatchAction *)self syncProgress];
      }
      v18 = ;
      manager = [(PXEditBatchAction *)self manager];
      v24 = firstObject;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__PXEditSessionAction__applyPreset_actionName_completionHandler___block_invoke;
      v21[3] = &unk_1E77431B8;
      v22 = handlerCopy;
      [manager replacePresets:v16 onAssets:v20 async:v14 progress:v18 completion:v21];

      goto LABEL_12;
    }
  }

  else
  {

    firstObject = 0;
  }

  v17 = PLUIGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Could not complete PXEditSessionAction: No asset or preset found", buf, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_12:
}

void __65__PXEditSessionAction__applyPreset_actionName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 error];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)registerWithUndoManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = PXEditSessionAction;
  managerCopy = manager;
  [(PXAction *)&v9 registerWithUndoManager:managerCopy];
  undoMenuItemTitle = [managerCopy undoMenuItemTitle];
  undoMenuItemTitle = self->_undoMenuItemTitle;
  self->_undoMenuItemTitle = undoMenuItemTitle;

  redoMenuItemTitle = [managerCopy redoMenuItemTitle];

  redoMenuItemTitle = self->_redoMenuItemTitle;
  self->_redoMenuItemTitle = redoMenuItemTitle;
}

- (PXEditSessionAction)initWithPresetManager:(id)manager asset:(id)asset sourcePreset:(id)preset targetPreset:(id)targetPreset syncProgress:(id)progress asyncLoadingStatusManager:(id)statusManager
{
  v25[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  presetCopy = preset;
  targetPresetCopy = targetPreset;
  v25[0] = assetCopy;
  v16 = MEMORY[0x1E695DEC8];
  statusManagerCopy = statusManager;
  progressCopy = progress;
  managerCopy = manager;
  v20 = [v16 arrayWithObjects:v25 count:1];
  v24.receiver = self;
  v24.super_class = PXEditSessionAction;
  v21 = [(PXEditBatchAction *)&v24 initWithPresetManager:managerCopy syncProgress:progressCopy asyncProgress:0 asyncLoadingStatusManager:statusManagerCopy forAssets:v20];

  if (v21)
  {
    objc_storeStrong(&v21->_sourcePreset, preset);
    objc_storeStrong(&v21->_targetPreset, targetPreset);
  }

  return v21;
}

@end