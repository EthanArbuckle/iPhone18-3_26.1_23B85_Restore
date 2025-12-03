@interface PXEditBatchRotateAction
- (PXEditBatchRotateAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets;
- (void)_syncRotateDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)performAction:(id)action;
@end

@implementation PXEditBatchRotateAction

- (void)_syncRotateDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler
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
    direction = [(PXEditBatchRotateAction *)self direction];
    asyncProgress = [(PXEditBatchAction *)self asyncProgress];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PXEditBatchRotateAction__syncRotateDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v15[3] = &unk_1E7742CE8;
    v16 = resultsCopy;
    objc_copyWeak(&v18, &location);
    v17 = handlerCopy;
    [manager rotateAssets:v11 direction:direction async:1 progress:asyncProgress completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __87__PXEditBatchRotateAction__syncRotateDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
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
  if ([assets count])
  {
    manager = [(PXEditBatchAction *)self manager];
    if ([manager isBusyWithBatchAction])
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchRotateAction: Edit manager is busy.", buf, 2u);
      }

      (*(actionCopy + 2))(actionCopy, 0, 0);
    }

    else
    {
      syncAssets = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [syncAssets count]);
      objc_initWeak(buf, self);
      direction = [(PXEditBatchRotateAction *)self direction];
      syncProgress = [(PXEditBatchAction *)self syncProgress];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__PXEditBatchRotateAction_performAction___block_invoke;
      v12[3] = &unk_1E7742CC0;
      objc_copyWeak(&v14, buf);
      v13 = actionCopy;
      [manager rotateAssets:syncAssets direction:direction async:0 progress:syncProgress completion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchRotateAction: No asset found", buf, 2u);
    }

    (*(actionCopy + 2))(actionCopy, 0, 0);
  }
}

void __41__PXEditBatchRotateAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncRotateDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

- (PXEditBatchRotateAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets
{
  v8.receiver = self;
  v8.super_class = PXEditBatchRotateAction;
  return [(PXEditBatchAction *)&v8 initWithPresetManager:manager syncProgress:progress asyncProgress:asyncProgress asyncLoadingStatusManager:statusManager forAssets:assets];
}

@end