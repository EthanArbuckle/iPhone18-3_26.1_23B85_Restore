@interface PXEditBatchPasteAction
- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)asset;
- (PXEditBatchPasteAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets;
- (void)_syncPasteDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)performAction:(id)action;
@end

@implementation PXEditBatchPasteAction

- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)asset
{
  assetCopy = asset;
  if (self->_target && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [self->_target isEligibleForAsyncProcessingOnAsset:assetCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_syncPasteDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  asyncAssets = [(PXEditBatchAction *)self asyncAssets];
  v11 = asyncAssets;
  if (cancel || ![asyncAssets count])
  {
    [(PXEditBatchAction *)self saveResults:resultsCopy completion:handlerCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 1, [v11 count]);
    manager = [(PXEditBatchAction *)self manager];
    target = self->_target;
    asyncProgress = [(PXEditBatchAction *)self asyncProgress];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__PXEditBatchPasteAction__syncPasteDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v15[3] = &unk_1E7742CE8;
    v16 = resultsCopy;
    objc_copyWeak(&v18, &location);
    v17 = handlerCopy;
    [manager pastePreset:target onAssets:v11 async:1 progress:asyncProgress completion:v15];

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

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXEditBatchAction *)self assets];
  v6 = assets;
  if (self->_target && [assets count])
  {
    manager = [(PXEditBatchAction *)self manager];
    if ([manager isBusyWithBatchAction])
    {
      v8 = PLUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Could not complete PXEditPasteAction: Edit manager is busy.", buf, 2u);
      }

      (*(actionCopy + 2))(actionCopy, 0, 0);
    }

    else
    {
      syncAssets = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [syncAssets count]);
      objc_initWeak(buf, self);
      target = self->_target;
      syncProgress = [(PXEditBatchAction *)self syncProgress];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40__PXEditBatchPasteAction_performAction___block_invoke;
      v13[3] = &unk_1E7742CC0;
      objc_copyWeak(&v15, buf);
      v14 = actionCopy;
      [manager pastePreset:target onAssets:syncAssets async:0 progress:syncProgress completion:v13];

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

    (*(actionCopy + 2))(actionCopy, 0, 0);
  }
}

void __40__PXEditBatchPasteAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncPasteDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

- (PXEditBatchPasteAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PXEditBatchPasteAction;
  v13 = [(PXEditBatchAction *)&v17 initWithPresetManager:managerCopy syncProgress:progress asyncProgress:asyncProgress asyncLoadingStatusManager:statusManager forAssets:assets];
  if (v13)
  {
    presetFromPasteboard = [managerCopy presetFromPasteboard];
    target = v13->_target;
    v13->_target = presetFromPasteboard;
  }

  return v13;
}

@end