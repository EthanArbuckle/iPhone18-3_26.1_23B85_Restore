@interface PUPhotoKitDestructiveActionsPerformer
- (int64_t)destructivePhotosAction;
- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitDestructiveActionsPerformer

- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController
{
  if (![(PUAssetActionPerformer *)self presentViewController:viewController])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Failed to present delete confirmation. User must confirm to perform removal.", v7, 2u);
    }

    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present delete confirmation"];
    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)performUserInteractionTask
{
  destructivePhotosAction = [(PUPhotoKitDestructiveActionsPerformer *)self destructivePhotosAction];
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = objc_alloc(MEMORY[0x1E69C37F8]);
  undoManager = [(PUAssetActionPerformer *)self undoManager];
  v7 = [v5 initWithAction:destructivePhotosAction assets:assets undoManager:undoManager delegate:self];

  [v7 setShouldSkipDeleteConfirmation:{-[PUPhotoKitDestructiveActionsPerformer shouldConfirmDestructiveAction](self, "shouldConfirmDestructiveAction") ^ 1}];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUPhotoKitDestructiveActionsPerformer_performUserInteractionTask__block_invoke;
  v13[3] = &unk_1E7B800C8;
  v13[4] = self;
  v13[5] = v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PUPhotoKitDestructiveActionsPerformer_performUserInteractionTask__block_invoke_2;
  v9[3] = &unk_1E7B7BA78;
  v11 = v14;
  v9[4] = self;
  v8 = assets;
  v10 = v8;
  v12 = destructivePhotosAction;
  [v7 performWithWillDeleteHandler:v13 completionHandler:v9];

  _Block_object_dispose(v14, 8);
}

uint64_t __67__PUPhotoKitDestructiveActionsPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 10)
  {
    [*(a1 + 32) instantlyExcludeAssetsFromDataSource];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = *(a1 + 32);

    return [v3 completeUserInteractionTaskWithSuccess:1 error:0];
  }

  return result;
}

void __67__PUPhotoKitDestructiveActionsPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
  }

  v4 = [*(a1 + 32) state];
  v5 = *(a1 + 32);
  if (v4 == 10)
  {
    [v5 completeUserInteractionTaskWithSuccess:a2 error:0];
  }

  else if ([v5 state] == 20)
  {
    [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:0];
  }

  if (a2 && [*(a1 + 40) count])
  {
    v6 = PXCPAnalyticsEventNameForDeletePhotosAction();
    if (v6)
    {
      v7 = MEMORY[0x1E6991F28];
      v11[0] = *MEMORY[0x1E6991E20];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11[1] = *MEMORY[0x1E6991E18];
      v12[0] = v9;
      v12[1] = *(a1 + 40);
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v7 sendEvent:v6 withPayload:v10];
    }
  }
}

- (int64_t)destructivePhotosAction
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:843 description:{@"Concrete subclass must implement %@", v5}];

  return 0;
}

@end