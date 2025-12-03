@interface PXExpungeAssetsAction
- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler;
@end

@implementation PXExpungeAssetsAction

- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  v8 = PLUIActionsGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ExpungeAssets", "", buf, 2u);
  }

  [(PXAction *)self removeAllActionsFromUndoManager:managerCopy];
  v12 = objc_alloc_init(MEMORY[0x1E69786A0]);
  [v12 setExpungeSource:3];
  v13 = MEMORY[0x1E6978648];
  assets = [(PXAssetsAction *)self assets];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PXExpungeAssetsAction_executeWithUndoManager_completionHandler___block_invoke;
  v18[3] = &unk_1E7746F80;
  v19 = v11;
  selfCopy = self;
  v21 = handlerCopy;
  v22 = v9;
  v16 = handlerCopy;
  v17 = v11;
  [v13 performBatchExpungeWithAssets:assets deleteOptions:v12 photoLibrary:photoLibrary completionHandler:v18];
}

void __66__PXExpungeAssetsAction_executeWithUndoManager_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PXExpungeAssetsAction_executeWithUndoManager_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7748E58;
  v6 = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v5;
  v9 = *(a1 + 40);
  v16 = v7;
  v14 = v9;
  v15 = v8;
  v17 = a2;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __66__PXExpungeAssetsAction_executeWithUndoManager_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ExpungeAssets", "", &v9, 2u);
  }

  if (*(a1 + 40))
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 48) assets];
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable to expunge assets:%@ error:%@", &v9, 0x16u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

@end