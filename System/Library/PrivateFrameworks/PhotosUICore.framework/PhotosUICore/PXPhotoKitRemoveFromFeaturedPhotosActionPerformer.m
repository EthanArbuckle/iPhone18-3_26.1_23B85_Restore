@interface PXPhotoKitRemoveFromFeaturedPhotosActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveFromFeaturedPhotosActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a4;
  if ([off_1E7721428 destructiveActionsEnabled])
  {
    if ([v6 px_isSuggestion])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 px_isFeaturedPhotosCollection];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performBackgroundTask
{
  v3 = [PXRemoveAssetsFromFeaturedPhotosAction alloc];
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [(PXAssetsAction *)v3 initWithAssets:v4];

  v6 = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXPhotoKitRemoveFromFeaturedPhotosActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXAction *)v5 executeWithUndoManager:v6 completionHandler:v7];
}

@end