@interface PXEditBatchPasteAction
- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)a3;
- (PXEditBatchPasteAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7;
- (void)_syncPasteDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5;
- (void)performAction:(id)a3;
@end

@implementation PXEditBatchPasteAction

- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)a3
{
  v4 = a3;
  if (self->_target && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [self->_target isEligibleForAsyncProcessingOnAsset:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_syncPasteDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXEditBatchAction *)self asyncAssets];
  v11 = v10;
  if (a4 || ![v10 count])
  {
    [(PXEditBatchAction *)self saveResults:v8 completion:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 1, [v11 count]);
    v12 = [(PXEditBatchAction *)self manager];
    target = self->_target;
    v14 = [(PXEditBatchAction *)self asyncProgress];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__PXEditBatchPasteAction__syncPasteDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v15[3] = &unk_1E7742CE8;
    v16 = v8;
    objc_copyWeak(&v18, &location);
    v17 = v9;
    [v12 pastePreset:target onAssets:v11 async:1 progress:v14 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __85__PXEditBatchPasteAction__syncPasteDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mutableCopy];
  [v6 addObjectsFromArray:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained saveResults:v6 completion:*(a1 + 40)];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXEditBatchAction *)self assets];
  v6 = v5;
  if (self->_target && [v5 count])
  {
    v7 = [(PXEditBatchAction *)self manager];
    if ([v7 isBusyWithBatchAction])
    {
      v8 = PLUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Could not complete PXEditPasteAction: Edit manager is busy.", buf, 2u);
      }

      (*(v4 + 2))(v4, 0, 0);
    }

    else
    {
      v10 = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [v10 count]);
      objc_initWeak(buf, self);
      target = self->_target;
      v12 = [(PXEditBatchAction *)self syncProgress];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40__PXEditBatchPasteAction_performAction___block_invoke;
      v13[3] = &unk_1E7742CC0;
      objc_copyWeak(&v15, buf);
      v14 = v4;
      [v7 pastePreset:target onAssets:v10 async:0 progress:v12 completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Could not complete PXEditPasteAction: No asset or target found", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

void __40__PXEditBatchPasteAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncPasteDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

- (PXEditBatchPasteAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = PXEditBatchPasteAction;
  v13 = [(PXEditBatchAction *)&v17 initWithPresetManager:v12 syncProgress:a4 asyncProgress:a5 asyncLoadingStatusManager:a6 forAssets:a7];
  if (v13)
  {
    v14 = [v12 presetFromPasteboard];
    target = v13->_target;
    v13->_target = v14;
  }

  return v13;
}

@end