@interface PXPhotoKitHideAssetsActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (void)_setupActionWithAssets:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitHideAssetsActionPerformer

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = [PXPhotoKitAssetActionManager selectedAssetForActionManager:a3];
  if ([v3 isHidden])
  {
    v4 = @"eye";
  }

  else
  {
    v4 = @"eye.slash";
  }

  v5 = v4;

  return v4;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [PXPhotoKitAssetActionManager selectedAssetForActionManager:a4];
  if ([v4 isHidden])
  {
    v5 = @"UNHIDE_ASSET_SHORTCUT";
  }

  else
  {
    v5 = @"HIDE_ASSET_SHORTCUT";
  }

  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");

  return v6;
}

- (void)performBackgroundTask
{
  [(PXPhotoKitAssetActionPerformer *)self instantlyExcludeAssetsFromDataSource];
  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  v3 = [(PXPhotoKitHideAssetsActionPerformer *)self _action];
  v4 = [(PXActionPerformer *)self undoManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXPhotoKitHideAssetsActionPerformer_performBackgroundTask__block_invoke;
  v5[3] = &unk_1E774C5C0;
  v5[4] = self;
  [v3 executeWithUndoManager:v4 completionHandler:v5];
}

uint64_t __60__PXPhotoKitHideAssetsActionPerformer_performBackgroundTask__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) stopExcludingAssetsFromDataSource];
  }

  return result;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PXPhotoKitHideAssetsActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(v3, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__PXPhotoKitHideAssetsActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _setupActionWithAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)_setupActionWithAssets:(id)a3
{
  v4 = a3;
  v5 = [[PXHideAssetsAction alloc] initWithAssets:v4];
  [(PXPhotoKitHideAssetsActionPerformer *)self set_action:v5];
  if ([(PXHideAssetsAction *)v5 isHidden])
  {
    v6 = [(PXActionPerformer *)self presentationEnvironment];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PXPhotoKitHideAssetsActionPerformer__setupActionWithAssets___block_invoke;
    v8[3] = &unk_1E77482A0;
    v9 = v4;
    v10 = self;
    v7 = [v6 presentAlertWithConfigurationHandler:v8];

    if (!v7)
    {
      PXAssertGetLog();
    }
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

void __62__PXPhotoKitHideAssetsActionPerformer__setupActionWithAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLSuffixForItems();
  [*(a1 + 32) count];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXPhotoKitHideAssetsActionConfirmationMessage_%@", v4];
  PXLocalizedStringFromTable(v5, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

@end