@interface PXEditSessionAction
- (PXEditSessionAction)initWithPresetManager:(id)a3 asset:(id)a4 sourcePreset:(id)a5 targetPreset:(id)a6 syncProgress:(id)a7 asyncLoadingStatusManager:(id)a8;
- (void)_applyPreset:(id)a3 actionName:(id)a4 completionHandler:(id)a5;
- (void)registerWithUndoManager:(id)a3;
@end

@implementation PXEditSessionAction

- (void)_applyPreset:(id)a3 actionName:(id)a4 completionHandler:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXEditBatchAction *)self assets];
  if ([v11 count])
  {
    v12 = [(PXEditBatchAction *)self assets];
    v13 = [v12 firstObject];

    if (v8 && v13)
    {
      v14 = [(PXEditBatchAction *)self shouldRenderSynchronouslyForAsset:v13]^ 1;
      v15 = [v13 uuid];
      v25 = v15;
      v26[0] = v8;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

      [(PXEditBatchAction *)self willBeginActionWithLocalizedTitle:v9 isAsync:v14 itemCount:1];
      if (v14)
      {
        [(PXEditBatchAction *)self asyncProgress];
      }

      else
      {
        [(PXEditBatchAction *)self syncProgress];
      }
      v18 = ;
      v19 = [(PXEditBatchAction *)self manager];
      v24 = v13;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__PXEditSessionAction__applyPreset_actionName_completionHandler___block_invoke;
      v21[3] = &unk_1E77431B8;
      v22 = v10;
      [v19 replacePresets:v16 onAssets:v20 async:v14 progress:v18 completion:v21];

      goto LABEL_12;
    }
  }

  else
  {

    v13 = 0;
  }

  v17 = PLUIGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Could not complete PXEditSessionAction: No asset or preset found", buf, 2u);
  }

  (*(v10 + 2))(v10, 0, 0);
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

- (void)registerWithUndoManager:(id)a3
{
  v9.receiver = self;
  v9.super_class = PXEditSessionAction;
  v4 = a3;
  [(PXAction *)&v9 registerWithUndoManager:v4];
  v5 = [v4 undoMenuItemTitle];
  undoMenuItemTitle = self->_undoMenuItemTitle;
  self->_undoMenuItemTitle = v5;

  v7 = [v4 redoMenuItemTitle];

  redoMenuItemTitle = self->_redoMenuItemTitle;
  self->_redoMenuItemTitle = v7;
}

- (PXEditSessionAction)initWithPresetManager:(id)a3 asset:(id)a4 sourcePreset:(id)a5 targetPreset:(id)a6 syncProgress:(id)a7 asyncLoadingStatusManager:(id)a8
{
  v25[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v23 = a5;
  v15 = a6;
  v25[0] = v14;
  v16 = MEMORY[0x1E695DEC8];
  v17 = a8;
  v18 = a7;
  v19 = a3;
  v20 = [v16 arrayWithObjects:v25 count:1];
  v24.receiver = self;
  v24.super_class = PXEditSessionAction;
  v21 = [(PXEditBatchAction *)&v24 initWithPresetManager:v19 syncProgress:v18 asyncProgress:0 asyncLoadingStatusManager:v17 forAssets:v20];

  if (v21)
  {
    objc_storeStrong(&v21->_sourcePreset, a5);
    objc_storeStrong(&v21->_targetPreset, a6);
  }

  return v21;
}

@end