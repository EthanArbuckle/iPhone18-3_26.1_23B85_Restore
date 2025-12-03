@interface PXPhotoKitHideAssetsActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (void)_setupActionWithAssets:(id)assets;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitHideAssetsActionPerformer

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = [PXPhotoKitAssetActionManager selectedAssetForActionManager:manager];
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

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = [PXPhotoKitAssetActionManager selectedAssetForActionManager:manager];
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
  _action = [(PXPhotoKitHideAssetsActionPerformer *)self _action];
  undoManager = [(PXActionPerformer *)self undoManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXPhotoKitHideAssetsActionPerformer_performBackgroundTask__block_invoke;
  v5[3] = &unk_1E774C5C0;
  v5[4] = self;
  [_action executeWithUndoManager:undoManager completionHandler:v5];
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
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PXPhotoKitHideAssetsActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(assets, presentationEnvironment, v5);

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

- (void)_setupActionWithAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [[PXHideAssetsAction alloc] initWithAssets:assetsCopy];
  [(PXPhotoKitHideAssetsActionPerformer *)self set_action:v5];
  if ([(PXHideAssetsAction *)v5 isHidden])
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PXPhotoKitHideAssetsActionPerformer__setupActionWithAssets___block_invoke;
    v8[3] = &unk_1E77482A0;
    v9 = assetsCopy;
    selfCopy = self;
    v7 = [presentationEnvironment presentAlertWithConfigurationHandler:v8];

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