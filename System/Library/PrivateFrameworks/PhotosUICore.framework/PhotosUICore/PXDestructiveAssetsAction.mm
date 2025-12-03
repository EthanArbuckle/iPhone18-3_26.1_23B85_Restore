@interface PXDestructiveAssetsAction
+ (id)actionWithAssets:(id)assets record:(id)record;
- (PXDestructiveAssetsAction)initWithAsset:(id)asset record:(id)record;
- (PXDestructiveAssetsAction)initWithAssets:(id)assets;
- (PXDestructiveAssetsAction)initWithAssets:(id)assets record:(id)record;
- (void)performChanges:(id)changes completionHandler:(id)handler;
@end

@implementation PXDestructiveAssetsAction

- (PXDestructiveAssetsAction)initWithAsset:(id)asset record:(id)record
{
  v14[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v14[0] = assetCopy;
  v8 = MEMORY[0x1E695DEC8];
  recordCopy = record;
  v10 = [v8 arrayWithObjects:v14 count:1];
  v11 = [(PXDestructiveAssetsAction *)self initWithAssets:v10 record:recordCopy];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"PXDestructiveAssetsAction.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"self != nil"}];
  }

  return v11;
}

- (void)performChanges:(id)changes completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  handlerCopy = handler;
  v8 = MEMORY[0x1E696AEC0];
  v9 = PXActionPhaseDescription([(PXAction *)self phase]);
  actionIdentifier = [(PXAction *)self actionIdentifier];
  v11 = [v8 stringWithFormat:@"%@ %@", v9, actionIdentifier];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXDestructiveAssetsAction_performChanges_completionHandler___block_invoke;
  aBlock[3] = &unk_1E774BD88;
  aBlock[4] = self;
  v12 = handlerCopy;
  v26 = v12;
  v13 = _Block_copy(aBlock);
  record = [(PXDestructiveAssetsAction *)self record];
  assets = [(PXAssetsAction *)self assets];
  v16 = [assets count];

  userConfirmation = [record userConfirmation];
  if (userConfirmation == 1)
  {
    if ([record assetCount] != v16)
    {
      [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"confirmed asset count %ti doesn't match %ti for destructive action %@", objc_msgSend(record, "assetCount"), v16, v11}];
      goto LABEL_9;
    }
  }

  else if (userConfirmation == 2)
  {
    [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"user denied destructive action %@, record: %@", v11, record, v21}];
    v20 = LABEL_9:;
    v13[2](v13, 0, v20);
    goto LABEL_10;
  }

  v18 = PLUIActionsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    publicDescription = [record publicDescription];
    *buf = 134218754;
    selfCopy = self;
    v29 = 2114;
    v30 = v11;
    v31 = 2048;
    v32 = v16;
    v33 = 2114;
    v34 = publicDescription;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "%p %{public}@ on %ti asset(s), record: %{public}@", buf, 0x2Au);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__PXDestructiveAssetsAction_performChanges_completionHandler___block_invoke_17;
  v23[3] = &unk_1E7747648;
  v24 = v13;
  v22.receiver = self;
  v22.super_class = PXDestructiveAssetsAction;
  [(PXPhotosAction *)&v22 performChanges:changesCopy completionHandler:v23];
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

- (PXDestructiveAssetsAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDestructiveAssetsAction.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXDestructiveAssetsAction initWithAssets:]"}];

  abort();
}

- (PXDestructiveAssetsAction)initWithAssets:(id)assets record:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = PXDestructiveAssetsAction;
  v8 = [(PXAssetsAction *)&v11 initWithAssets:assets];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, record);
  }

  return v9;
}

+ (id)actionWithAssets:(id)assets record:(id)record
{
  recordCopy = record;
  assetsCopy = assets;
  v8 = [[self alloc] initWithAssets:assetsCopy record:recordCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(PXNoOpAction);
  }

  return v8;
}

@end