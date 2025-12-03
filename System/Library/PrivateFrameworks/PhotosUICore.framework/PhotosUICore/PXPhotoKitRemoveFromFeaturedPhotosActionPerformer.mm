@interface PXPhotoKitRemoveFromFeaturedPhotosActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitRemoveFromFeaturedPhotosActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  collectionCopy = collection;
  if ([off_1E7721428 destructiveActionsEnabled])
  {
    if ([collectionCopy px_isSuggestion])
    {
      px_isFeaturedPhotosCollection = 1;
    }

    else
    {
      px_isFeaturedPhotosCollection = [collectionCopy px_isFeaturedPhotosCollection];
    }
  }

  else
  {
    px_isFeaturedPhotosCollection = 0;
  }

  return px_isFeaturedPhotosCollection;
}

- (void)performBackgroundTask
{
  v3 = [PXRemoveAssetsFromFeaturedPhotosAction alloc];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [(PXAssetsAction *)v3 initWithAssets:assets];

  undoManager = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXPhotoKitRemoveFromFeaturedPhotosActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXAction *)v5 executeWithUndoManager:undoManager completionHandler:v7];
}

@end