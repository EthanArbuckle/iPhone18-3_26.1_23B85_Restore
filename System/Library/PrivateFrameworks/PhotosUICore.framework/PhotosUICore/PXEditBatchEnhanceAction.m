@interface PXEditBatchEnhanceAction
- (PXEditBatchEnhanceAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7;
- (void)_syncEnhanceDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5;
- (void)performAction:(id)a3;
@end

@implementation PXEditBatchEnhanceAction

- (void)_syncEnhanceDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5
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
    v13 = [(PXEditBatchEnhanceAction *)self enabled];
    v14 = [(PXEditBatchAction *)self asyncProgress];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__PXEditBatchEnhanceAction__syncEnhanceDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v15[3] = &unk_1E7742CE8;
    v16 = v8;
    objc_copyWeak(&v18, &location);
    v17 = v9;
    [v12 autoEnhanceAssets:v11 enabled:v13 async:1 progress:v14 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __89__PXEditBatchEnhanceAction__syncEnhanceDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
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
  if ([v5 count])
  {
    v6 = [(PXEditBatchAction *)self manager];
    if ([v6 isBusyWithBatchAction])
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchEnhanceAction: Edit manager is busy.", buf, 2u);
      }

      (*(v4 + 2))(v4, 0, 0);
    }

    else
    {
      v9 = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [v9 count]);
      objc_initWeak(buf, self);
      v10 = [(PXEditBatchEnhanceAction *)self enabled];
      v11 = [(PXEditBatchAction *)self syncProgress];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__PXEditBatchEnhanceAction_performAction___block_invoke;
      v12[3] = &unk_1E7742CC0;
      objc_copyWeak(&v14, buf);
      v13 = v4;
      [v6 autoEnhanceAssets:v9 enabled:v10 async:0 progress:v11 completion:v12];

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
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchEnhanceAction: No asset found", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

void __42__PXEditBatchEnhanceAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncEnhanceDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

- (PXEditBatchEnhanceAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7
{
  v8.receiver = self;
  v8.super_class = PXEditBatchEnhanceAction;
  return [(PXEditBatchAction *)&v8 initWithPresetManager:a3 syncProgress:a4 asyncProgress:a5 asyncLoadingStatusManager:a6 forAssets:a7];
}

@end