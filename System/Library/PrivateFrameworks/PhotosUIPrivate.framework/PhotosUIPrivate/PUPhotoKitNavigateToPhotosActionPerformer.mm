@interface PUPhotoKitNavigateToPhotosActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitNavigateToPhotosActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PUAssetActionPerformer *)self assets];
  v4 = [v3 lastObject];

  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PUPhotoKitNavigateToPhotosActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E7B7FA30;
  objc_copyWeak(&v7, &location);
  [v5 px_navigateToMomentsViewRevealingAsset:v4 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __71__PUPhotoKitNavigateToPhotosActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end