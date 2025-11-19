@interface PXEditBatchRevertAction
- (void)performAction:(id)a3;
@end

@implementation PXEditBatchRevertAction

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
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchRevertAction: Edit manager is busy.", buf, 2u);
      }

      (*(v4 + 2))(v4, 0, 0);
    }

    else
    {
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 1, [v5 count]);
      objc_initWeak(buf, self);
      v9 = [(PXEditBatchAction *)self asyncProgress];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__PXEditBatchRevertAction_performAction___block_invoke;
      v10[3] = &unk_1E7742CC0;
      objc_copyWeak(&v12, buf);
      v11 = v4;
      [v6 revertAdjustmentsOnAssets:v5 async:1 progress:v9 completion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchRevertAction: No assets found", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

void __41__PXEditBatchRevertAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveResults:v3 completion:*(a1 + 32)];
}

@end