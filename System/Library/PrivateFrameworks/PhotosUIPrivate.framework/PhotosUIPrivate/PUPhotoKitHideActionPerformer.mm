@interface PUPhotoKitHideActionPerformer
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitHideActionPerformer

- (void)performBackgroundTask
{
  [(PUPhotoKitActionPerformer *)self instantlyExcludeAssetsFromDataSource];
  [(PUAssetActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  v3 = [(PUPhotoKitHideActionPerformer *)self hideActionController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PUPhotoKitHideActionPerformer_performBackgroundTask__block_invoke;
  v4[3] = &unk_1E7B80280;
  v4[4] = self;
  [v3 performActionWithCompletionHandler:v4];
}

uint64_t __54__PUPhotoKitHideActionPerformer_performBackgroundTask__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) stopExcludingAssetsFromDataSource];
  }

  return result;
}

- (void)performUserInteractionTask
{
  v3 = [PUHidePhotosActionController alloc];
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = [(PUAssetActionPerformer *)self undoManager];
  v6 = [(PUHidePhotosActionController *)v3 initWithAssets:v4 undoManager:v5];

  [(PUPhotoKitHideActionPerformer *)self setHideActionController:v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PUPhotoKitHideActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7B7F020;
  v8[4] = self;
  v7 = [(PUHidePhotosActionController *)v6 alertControllerForTogglingAssetsVisibilityWithCompletionHandler:v8];
  if (v7)
  {
    if ([(PUAssetActionPerformer *)self presentViewController:v7])
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(PUPhotoKitHideActionPerformer *)self setIsHiding:0];
  }

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:v7 == 0 error:0];
LABEL_6:
}

uint64_t __59__PUPhotoKitHideActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIsHiding:1];
  v4 = *(a1 + 32);

  return [v4 completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end