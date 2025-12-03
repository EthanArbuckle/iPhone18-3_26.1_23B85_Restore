@interface PUAssetExplorerReviewScreenMarkupActionPerformer
+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection;
- (PUPhotoMarkupViewControllerObserver)markupObserver;
- (void)_presentMarkupViewControllerForReviewAsset:(id)asset;
- (void)performUserInteractionTask;
@end

@implementation PUAssetExplorerReviewScreenMarkupActionPerformer

+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  isTemporaryPlaceholder = [assetCopy isTemporaryPlaceholder];
  isAnimatedImage = [assetCopy isAnimatedImage];
  playbackStyle = [assetCopy playbackStyle];
  mediaType = [assetCopy mediaType];
  mediaSubtypes = [assetCopy mediaSubtypes];

  v11 = (mediaSubtypes & 0x400) == 0 && mediaType != 2;
  if (playbackStyle == 5)
  {
    v11 = 0;
  }

  if (isAnimatedImage)
  {
    v11 = 0;
  }

  return (isTemporaryPlaceholder & 1) == 0 && v11;
}

- (PUPhotoMarkupViewControllerObserver)markupObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_markupObserver);

  return WeakRetained;
}

- (void)_presentMarkupViewControllerForReviewAsset:(id)asset
{
  assetCopy = asset;
  v7 = objc_alloc_init(PUReviewAssetsMediaProvider);
  v5 = [[PUPhotoMarkupViewController alloc] initWithReviewAsset:assetCopy mediaProvider:v7];

  [(PUPhotoMarkupViewController *)v5 setModalPresentationStyle:0];
  markupObserver = [(PUAssetExplorerReviewScreenMarkupActionPerformer *)self markupObserver];
  if (markupObserver)
  {
    [(PUPhotoMarkupViewController *)v5 registerObserver:markupObserver];
  }

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:[(PUAssetActionPerformer *)self presentViewController:v5] error:0];
}

- (void)performUserInteractionTask
{
  [(PUAssetExplorerReviewScreenActionPerformer *)self executePerformUserInteractionTaskBlock];
  assets = [(PUAssetActionPerformer *)self assets];
  if ([assets count] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenMarkupActionPerformer.m" lineNumber:51 description:@"There can be only one asset in a markup action"];
  }

  firstObject = [assets firstObject];
  reviewAssetProvider = [(PUAssetExplorerReviewScreenMarkupActionPerformer *)self reviewAssetProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7B755D8;
  v8[4] = self;
  [(PUAssetExplorerReviewScreenActionPerformer *)self requestReviewAssetForDisplayAsset:firstObject reviewAssetProvider:reviewAssetProvider completionHandler:v8];
}

void __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    if ([v8 isSpatialMedia])
    {
      v10 = MEMORY[0x1E69DC650];
      v11 = PULocalizedString(@"MARKUP_DISABLES_SPATIAL_PHOTO_TITLE");
      v12 = PULocalizedString(@"PLUGIN_DISABLES_SPATIAL_PHOTO_MESSAGE");
      v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

      v14 = MEMORY[0x1E69DC648];
      v15 = PULocalizedString(@"OK");
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke_2;
      v36[3] = &unk_1E7B7E120;
      v36[4] = *(a1 + 32);
      v37 = v9;
      v16 = [v14 actionWithTitle:v15 style:0 handler:v36];
      [v13 addAction:v16];

      v17 = MEMORY[0x1E69DC648];
      v18 = PULocalizedString(@"CANCEL");
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke_3;
      v35[3] = &unk_1E7B7E148;
      v35[4] = *(a1 + 32);
      v19 = [v17 actionWithTitle:v18 style:1 handler:v35];
      [v13 addAction:v19];

      v20 = [*(a1 + 32) delegate];
      [v20 assetActionPerformer:*(a1 + 32) presentViewController:v13];

      v21 = v37;
LABEL_8:

      goto LABEL_9;
    }

    if (([v9 mediaSubtypes] & 8) != 0)
    {
      v22 = MEMORY[0x1E69DC650];
      v23 = PULocalizedString(@"MARKUP_DISABLES_LIVE_PHOTO_TITLE");
      v24 = PULocalizedString(@"PLUGIN_DISABLES_LIVE_PHOTO_MESSAGE");
      v13 = [v22 alertControllerWithTitle:v23 message:v24 preferredStyle:1];

      v25 = MEMORY[0x1E69DC648];
      v26 = PULocalizedString(@"OK");
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke_4;
      v33[3] = &unk_1E7B7E120;
      v33[4] = *(a1 + 32);
      v34 = v9;
      v27 = [v25 actionWithTitle:v26 style:0 handler:v33];
      [v13 addAction:v27];

      v28 = MEMORY[0x1E69DC648];
      v29 = PULocalizedString(@"CANCEL");
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __78__PUAssetExplorerReviewScreenMarkupActionPerformer_performUserInteractionTask__block_invoke_5;
      v32[3] = &unk_1E7B7E148;
      v32[4] = *(a1 + 32);
      v30 = [v28 actionWithTitle:v29 style:1 handler:v32];
      [v13 addAction:v30];

      v31 = [*(a1 + 32) delegate];
      [v31 assetActionPerformer:*(a1 + 32) presentViewController:v13];

      v21 = v34;
      goto LABEL_8;
    }

    [*(a1 + 32) _presentMarkupViewControllerForReviewAsset:v9];
  }

  else
  {
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:v7];
  }

LABEL_9:
}

@end