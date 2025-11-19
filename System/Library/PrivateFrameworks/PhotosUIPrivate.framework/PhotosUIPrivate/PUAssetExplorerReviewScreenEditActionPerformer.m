@interface PUAssetExplorerReviewScreenEditActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4;
- (PUPhotoEditViewControllerSessionDelegate)photoDelegate;
- (void)_presentEditViewControllerForReviewAsset:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PUAssetExplorerReviewScreenEditActionPerformer

+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  v5 = [v4 isTemporaryPlaceholder];
  v6 = [v4 isAnimatedImage];

  return ((v5 | v6) & 1) == 0;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  v5 = [v4 mediaType];
  v6 = [v4 mediaSubtypes];

  if (v5 == 1)
  {
    v7 = (v6 >> 10) & 1;
    return v7 ^ 1;
  }

  if (v5 == 2)
  {
    LOBYTE(v7) = 0;
    return v7 ^ 1;
  }

  return 0;
}

- (PUPhotoEditViewControllerSessionDelegate)photoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photoDelegate);

  return WeakRetained;
}

- (void)_presentEditViewControllerForReviewAsset:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:v5];

  v7 = objc_alloc_init(PUReviewAssetsMediaProvider);
  v8 = [[PUReviewAssetsMediaDestination alloc] initWithOutputDirectory:v6 mediaProvider:v7];
  v9 = [v4 playbackStyle];
  if (v9 <= 5 && ((1 << v9) & 0x3A) != 0)
  {
    v10 = [[PUPhotoEditViewController alloc] initWithPhoto:v4 mediaProvider:v7 mediaDestination:v8];
    v11 = [(PUAssetExplorerReviewScreenEditActionPerformer *)self photoDelegate];
    [(PUPhotoEditViewController *)v10 setSessionDelegate:v11];

    v12 = [(PUAssetActionPerformer *)self presentViewController:v10];
    v13 = self;
    v14 = 0;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid playback style for editing: %lu", v9, *MEMORY[0x1E696A578]];
    v19[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v15 errorWithDomain:@"com.apple.PUAssetExplorerReviewScreen" code:-1 userInfo:v17];

    v13 = self;
    v12 = 0;
    v14 = v10;
  }

  [(PUAssetActionPerformer *)v13 completeUserInteractionTaskWithSuccess:v12 error:v14];
}

- (void)performUserInteractionTask
{
  [(PUAssetExplorerReviewScreenActionPerformer *)self executePerformUserInteractionTaskBlock];
  v4 = [(PUAssetActionPerformer *)self assets];
  if ([v4 count] != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenEditActionPerformer.m" lineNumber:50 description:@"There can be only one asset in an edit action"];
  }

  v5 = [v4 firstObject];
  v6 = [(PUAssetExplorerReviewScreenEditActionPerformer *)self reviewAssetProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PUAssetExplorerReviewScreenEditActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7B755D8;
  v8[4] = self;
  [(PUAssetExplorerReviewScreenActionPerformer *)self requestReviewAssetForDisplayAsset:v5 reviewAssetProvider:v6 completionHandler:v8];
}

uint64_t __76__PUAssetExplorerReviewScreenEditActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a5)
  {
    return [v5 _presentEditViewControllerForReviewAsset:a5];
  }

  else
  {
    return [v5 completeUserInteractionTaskWithSuccess:0 error:?];
  }
}

@end