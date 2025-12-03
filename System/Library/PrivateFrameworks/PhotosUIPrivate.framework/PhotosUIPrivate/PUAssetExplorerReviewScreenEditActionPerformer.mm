@interface PUAssetExplorerReviewScreenEditActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection;
- (PUPhotoEditViewControllerSessionDelegate)photoDelegate;
- (void)_presentEditViewControllerForReviewAsset:(id)asset;
- (void)performUserInteractionTask;
@end

@implementation PUAssetExplorerReviewScreenEditActionPerformer

+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  isTemporaryPlaceholder = [assetCopy isTemporaryPlaceholder];
  isAnimatedImage = [assetCopy isAnimatedImage];

  return ((isTemporaryPlaceholder | isAnimatedImage) & 1) == 0;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  mediaType = [assetCopy mediaType];
  mediaSubtypes = [assetCopy mediaSubtypes];

  if (mediaType == 1)
  {
    v7 = (mediaSubtypes >> 10) & 1;
    return v7 ^ 1;
  }

  if (mediaType == 2)
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

- (void)_presentEditViewControllerForReviewAsset:(id)asset
{
  v19[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  identifier = [assetCopy identifier];
  v6 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:identifier];

  v7 = objc_alloc_init(PUReviewAssetsMediaProvider);
  v8 = [[PUReviewAssetsMediaDestination alloc] initWithOutputDirectory:v6 mediaProvider:v7];
  playbackStyle = [assetCopy playbackStyle];
  if (playbackStyle <= 5 && ((1 << playbackStyle) & 0x3A) != 0)
  {
    v10 = [[PUPhotoEditViewController alloc] initWithPhoto:assetCopy mediaProvider:v7 mediaDestination:v8];
    photoDelegate = [(PUAssetExplorerReviewScreenEditActionPerformer *)self photoDelegate];
    [(PUPhotoEditViewController *)v10 setSessionDelegate:photoDelegate];

    v12 = [(PUAssetActionPerformer *)self presentViewController:v10];
    selfCopy2 = self;
    v14 = 0;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid playback style for editing: %lu", playbackStyle, *MEMORY[0x1E696A578]];
    v19[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v15 errorWithDomain:@"com.apple.PUAssetExplorerReviewScreen" code:-1 userInfo:v17];

    selfCopy2 = self;
    v12 = 0;
    v14 = v10;
  }

  [(PUAssetActionPerformer *)selfCopy2 completeUserInteractionTaskWithSuccess:v12 error:v14];
}

- (void)performUserInteractionTask
{
  [(PUAssetExplorerReviewScreenActionPerformer *)self executePerformUserInteractionTaskBlock];
  assets = [(PUAssetActionPerformer *)self assets];
  if ([assets count] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenEditActionPerformer.m" lineNumber:50 description:@"There can be only one asset in an edit action"];
  }

  firstObject = [assets firstObject];
  reviewAssetProvider = [(PUAssetExplorerReviewScreenEditActionPerformer *)self reviewAssetProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PUAssetExplorerReviewScreenEditActionPerformer_performUserInteractionTask__block_invoke;
  v8[3] = &unk_1E7B755D8;
  v8[4] = self;
  [(PUAssetExplorerReviewScreenActionPerformer *)self requestReviewAssetForDisplayAsset:firstObject reviewAssetProvider:reviewAssetProvider completionHandler:v8];
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