@interface PUAssetExplorerReviewScreenActionPerformer
- (id)_setupProgressControllerForProgress:(id)progress;
- (void)_handleProgressControllerCanceled:(id)canceled;
- (void)_handleReviewAssetRequestCompletedWithSuccess:(BOOL)success canceled:(BOOL)canceled error:(id)error reviewAsset:(id)asset completionHandler:(id)handler;
- (void)_showFailedReviewAssetRequestAlert;
- (void)executePerformUserInteractionTaskBlock;
- (void)performUserInteractionTask;
- (void)requestReviewAssetForDisplayAsset:(id)asset reviewAssetProvider:(id)provider completionHandler:(id)handler;
- (void)setPerformUserInteractionTaskBlock:(id)block;
@end

@implementation PUAssetExplorerReviewScreenActionPerformer

- (void)_showFailedReviewAssetRequestAlert
{
  presentedViewController = [(PUAssetActionPerformer *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = PULocalizedString(@"OK");
    v4 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_ERROR_TITLE");
    v5 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_ERROR_MESSAGE");
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
    v7 = [MEMORY[0x1E69DC648] actionWithTitle:v3 style:0 handler:&__block_literal_global_9107];
    [v6 addAction:v7];

    [(PUAssetActionPerformer *)self presentViewController:v6];
  }
}

- (void)_handleProgressControllerCanceled:(id)canceled
{
  canceledCopy = canceled;
  _requestProgressController = [(PUAssetExplorerReviewScreenActionPerformer *)self _requestProgressController];

  v6 = canceledCopy;
  if (_requestProgressController != canceledCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:144 description:@"Not expecting multiple progress controllers"];

    v6 = canceledCopy;
  }

  progress = [v6 progress];
  [progress cancel];
}

- (id)_setupProgressControllerForProgress:(id)progress
{
  progressCopy = progress;
  v5 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_TITLE");
  v6 = objc_alloc_init(MEMORY[0x1E69C3308]);
  [v6 setTitle:v5];
  [v6 setProgress:progressCopy];
  [(PUAssetExplorerReviewScreenActionPerformer *)self _setRequestProgressController:v6];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PUAssetExplorerReviewScreenActionPerformer__setupProgressControllerForProgress___block_invoke;
  v8[3] = &unk_1E7B76F10;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [v6 setCancellationHandler:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void __82__PUAssetExplorerReviewScreenActionPerformer__setupProgressControllerForProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProgressControllerCanceled:v2];
}

- (void)_handleReviewAssetRequestCompletedWithSuccess:(BOOL)success canceled:(BOOL)canceled error:(id)error reviewAsset:(id)asset completionHandler:(id)handler
{
  canceledCopy = canceled;
  errorCopy = error;
  assetCopy = asset;
  handlerCopy = handler;
  _requestProgressController = [(PUAssetExplorerReviewScreenActionPerformer *)self _requestProgressController];
  [_requestProgressController hideAnimated:1 allowDelay:0];
  [(PUAssetExplorerReviewScreenActionPerformer *)self _setRequestProgressController:0];
  if (assetCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, assetCopy);
  }

  else
  {
    if (!canceledCopy)
    {
      [(PUAssetExplorerReviewScreenActionPerformer *)self _showFailedReviewAssetRequestAlert];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, canceledCopy, errorCopy, 0);
  }
}

- (void)requestReviewAssetForDisplayAsset:(id)asset reviewAssetProvider:(id)provider completionHandler:(id)handler
{
  assetCopy = asset;
  providerCopy = provider;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, assetCopy);
  }

  else
  {
    v11 = [providerCopy reviewAssetProviderRequestForDisplayAsset:assetCopy];
    v12 = v11;
    if (v11)
    {
      progress = [v11 progress];
      v14 = [(PUAssetExplorerReviewScreenActionPerformer *)self _setupProgressControllerForProgress:progress];
      [v14 showAnimated:1 allowDelay:1];
      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __118__PUAssetExplorerReviewScreenActionPerformer_requestReviewAssetForDisplayAsset_reviewAssetProvider_completionHandler___block_invoke;
      v15[3] = &unk_1E7B75500;
      objc_copyWeak(&v17, &location);
      v16 = handlerCopy;
      [v12 requestReviewAssetWithCompletionHandler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUAssetExplorerReviewScreenActionPerformer *)self _showFailedReviewAssetRequestAlert];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
    }
  }
}

void __118__PUAssetExplorerReviewScreenActionPerformer_requestReviewAssetForDisplayAsset_reviewAssetProvider_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleReviewAssetRequestCompletedWithSuccess:a2 canceled:a3 error:v10 reviewAsset:v9 completionHandler:*(a1 + 32)];
}

- (void)executePerformUserInteractionTaskBlock
{
  if ([(PUAssetActionPerformer *)self state]!= 10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:51 description:@"Should only execute performUserInteractionTaskBlock when in user interaction state"];
  }

  performUserInteractionTaskBlock = self->_performUserInteractionTaskBlock;
  if (performUserInteractionTaskBlock)
  {
    performUserInteractionTaskBlock[2]();
    v5 = self->_performUserInteractionTaskBlock;
    self->_performUserInteractionTaskBlock = 0;
  }
}

- (void)performUserInteractionTask
{
  [(PUAssetExplorerReviewScreenActionPerformer *)self executePerformUserInteractionTaskBlock];

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)setPerformUserInteractionTaskBlock:(id)block
{
  blockCopy = block;
  if ([(PUAssetActionPerformer *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:35 description:@"Can only set performUserInteractionTaskBlock when in ready state"];
  }

  v5 = blockCopy;
  if (self->_performUserInteractionTaskBlock != blockCopy)
  {
    v6 = [blockCopy copy];
    performUserInteractionTaskBlock = self->_performUserInteractionTaskBlock;
    self->_performUserInteractionTaskBlock = v6;

    v5 = blockCopy;
  }
}

@end