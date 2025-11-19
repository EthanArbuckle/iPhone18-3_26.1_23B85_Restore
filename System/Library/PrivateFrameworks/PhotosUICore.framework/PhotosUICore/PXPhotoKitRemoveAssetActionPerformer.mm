@interface PXPhotoKitRemoveAssetActionPerformer
- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitRemoveAssetActionPerformer

- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(PXActionPerformer *)self state]== 10)
  {
    v7.receiver = self;
    v7.super_class = PXPhotoKitRemoveAssetActionPerformer;
    [(PXActionPerformer *)&v7 completeUserInteractionTaskWithSuccess:v4 error:v6];
  }
}

- (void)performBackgroundTask
{
  [(PXPhotoKitAssetActionPerformer *)self instantlyExcludeAssetsFromDataSource];
  v3 = [PXRemoveAssetsFromAssetCollectionAction alloc];
  v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v5 = [(PXAssetsSelectionAction *)v3 initWithSelectionSnapshot:v4];

  v6 = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXPhotoKitRemoveAssetActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXAction *)v5 executeWithUndoManager:v6 completionHandler:v7];
}

void __61__PXPhotoKitRemoveAssetActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXPhotoKitRemoveAssetActionPerformer_performBackgroundTask__block_invoke_2;
  block[3] = &unk_1E774B368;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__PXPhotoKitRemoveAssetActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1;
  }

  else
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
    v2 = *(a1 + 48);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 completeBackgroundTaskWithSuccess:v2 & 1 error:v4];
}

- (void)performUserInteractionTask
{
  if ([(PXPhotoKitAssetActionPerformer *)self shouldSkipUserConfirmation])
  {

    [(PXPhotoKitRemoveAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
    v4 = [(PXActionPerformer *)self presentationEnvironment];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PXPhotoKitRemoveAssetActionPerformer_performUserInteractionTask__block_invoke;
    v9[3] = &unk_1E77482A0;
    v10 = v3;
    v11 = self;
    v5 = v3;
    v6 = [v4 presentAlertWithConfigurationHandler:v9];

    if (!v6)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to present remove confirmation. User must confirm to perform removal.", v8, 2u);
      }

      [(PXPhotoKitRemoveAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }
}

void __66__PXPhotoKitRemoveAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLocalizedStringForAction();
  [v3 setTitle:v4];
  [v3 setStyle:0];
  v5 = PXLocalizedStringFromTable(@"PXPhotoKitRemoveAssetActionPerformer_CancelButtonTitle", @"PhotosUICore");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXPhotoKitRemoveAssetActionPerformer_performUserInteractionTask__block_invoke_2;
  v8[3] = &unk_1E774C648;
  v8[4] = *(a1 + 40);
  [v3 addActionWithTitle:v5 style:1 action:v8];
  v6 = PXLocalizedStringFromTable(@"PXPhotoKitRemoveAssetActionPerformer_RemoveButtonTitle", @"PhotosUICore");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXPhotoKitRemoveAssetActionPerformer_performUserInteractionTask__block_invoke_3;
  v7[3] = &unk_1E774C648;
  v7[4] = *(a1 + 40);
  [v3 addActionWithTitle:v6 style:0 action:v7];
}

@end