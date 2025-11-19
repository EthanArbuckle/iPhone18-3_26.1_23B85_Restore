@interface PXDestructiveAssetsAction
+ (id)actionWithAssets:(id)a3 record:(id)a4;
- (PXDestructiveAssetsAction)initWithAsset:(id)a3 record:(id)a4;
- (PXDestructiveAssetsAction)initWithAssets:(id)a3;
- (PXDestructiveAssetsAction)initWithAssets:(id)a3 record:(id)a4;
- (void)performChanges:(id)a3 completionHandler:(id)a4;
@end

@implementation PXDestructiveAssetsAction

- (PXDestructiveAssetsAction)initWithAsset:(id)a3 record:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v14[0] = v7;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a4;
  v10 = [v8 arrayWithObjects:v14 count:1];
  v11 = [(PXDestructiveAssetsAction *)self initWithAssets:v10 record:v9];

  if (!v11)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:0 file:@"PXDestructiveAssetsAction.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"self != nil"}];
  }

  return v11;
}

- (void)performChanges:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = PXActionPhaseDescription([(PXAction *)self phase]);
  v10 = [(PXAction *)self actionIdentifier];
  v11 = [v8 stringWithFormat:@"%@ %@", v9, v10];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXDestructiveAssetsAction_performChanges_completionHandler___block_invoke;
  aBlock[3] = &unk_1E774BD88;
  aBlock[4] = self;
  v12 = v7;
  v26 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(PXDestructiveAssetsAction *)self record];
  v15 = [(PXAssetsAction *)self assets];
  v16 = [v15 count];

  v17 = [v14 userConfirmation];
  if (v17 == 1)
  {
    if ([v14 assetCount] != v16)
    {
      [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"confirmed asset count %ti doesn't match %ti for destructive action %@", objc_msgSend(v14, "assetCount"), v16, v11}];
      goto LABEL_9;
    }
  }

  else if (v17 == 2)
  {
    [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"user denied destructive action %@, record: %@", v11, v14, v21}];
    v20 = LABEL_9:;
    v13[2](v13, 0, v20);
    goto LABEL_10;
  }

  v18 = PLUIActionsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v14 publicDescription];
    *buf = 134218754;
    v28 = self;
    v29 = 2114;
    v30 = v11;
    v31 = 2048;
    v32 = v16;
    v33 = 2114;
    v34 = v19;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "%p %{public}@ on %ti asset(s), record: %{public}@", buf, 0x2Au);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__PXDestructiveAssetsAction_performChanges_completionHandler___block_invoke_17;
  v23[3] = &unk_1E7747648;
  v24 = v13;
  v22.receiver = self;
  v22.super_class = PXDestructiveAssetsAction;
  [(PXPhotosAction *)&v22 performChanges:v6 completionHandler:v23];
  v20 = v24;
LABEL_10:
}

void __62__PXDestructiveAssetsAction_performChanges_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIActionsGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 134217984;
      v16 = v8;
      v9 = "%p succeeded";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v15 = 134218242;
    v16 = v13;
    v17 = 2114;
    v18 = v5;
    v9 = "%p failed: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v14);
}

- (PXDestructiveAssetsAction)initWithAssets:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXDestructiveAssetsAction.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXDestructiveAssetsAction initWithAssets:]"}];

  abort();
}

- (PXDestructiveAssetsAction)initWithAssets:(id)a3 record:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXDestructiveAssetsAction;
  v8 = [(PXAssetsAction *)&v11 initWithAssets:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, a4);
  }

  return v9;
}

+ (id)actionWithAssets:(id)a3 record:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAssets:v7 record:v6];

  if (!v8)
  {
    v8 = objc_alloc_init(PXNoOpAction);
  }

  return v8;
}

@end