@interface PUAssetExplorerReviewScreenActionPerformer
- (id)_setupProgressControllerForProgress:(id)a3;
- (void)_handleProgressControllerCanceled:(id)a3;
- (void)_handleReviewAssetRequestCompletedWithSuccess:(BOOL)a3 canceled:(BOOL)a4 error:(id)a5 reviewAsset:(id)a6 completionHandler:(id)a7;
- (void)_showFailedReviewAssetRequestAlert;
- (void)executePerformUserInteractionTaskBlock;
- (void)performUserInteractionTask;
- (void)requestReviewAssetForDisplayAsset:(id)a3 reviewAssetProvider:(id)a4 completionHandler:(id)a5;
- (void)setPerformUserInteractionTaskBlock:(id)a3;
@end

@implementation PUAssetExplorerReviewScreenActionPerformer

- (void)_showFailedReviewAssetRequestAlert
{
  v8 = [(PUAssetActionPerformer *)self presentedViewController];
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

- (void)_handleProgressControllerCanceled:(id)a3
{
  v9 = a3;
  v5 = [(PUAssetExplorerReviewScreenActionPerformer *)self _requestProgressController];

  v6 = v9;
  if (v5 != v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:144 description:@"Not expecting multiple progress controllers"];

    v6 = v9;
  }

  v7 = [v6 progress];
  [v7 cancel];
}

- (id)_setupProgressControllerForProgress:(id)a3
{
  v4 = a3;
  v5 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_TITLE");
  v6 = objc_alloc_init(MEMORY[0x1E69C3308]);
  [v6 setTitle:v5];
  [v6 setProgress:v4];
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

- (void)_handleReviewAssetRequestCompletedWithSuccess:(BOOL)a3 canceled:(BOOL)a4 error:(id)a5 reviewAsset:(id)a6 completionHandler:(id)a7
{
  v9 = a4;
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(PUAssetExplorerReviewScreenActionPerformer *)self _requestProgressController];
  [v13 hideAnimated:1 allowDelay:0];
  [(PUAssetExplorerReviewScreenActionPerformer *)self _setRequestProgressController:0];
  if (v11)
  {
    (*(v12 + 2))(v12, 1, 0, 0, v11);
  }

  else
  {
    if (!v9)
    {
      [(PUAssetExplorerReviewScreenActionPerformer *)self _showFailedReviewAssetRequestAlert];
    }

    (*(v12 + 2))(v12, 0, v9, v14, 0);
  }
}

- (void)requestReviewAssetForDisplayAsset:(id)a3 reviewAssetProvider:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(v10 + 2))(v10, 1, 0, 0, v8);
  }

  else
  {
    v11 = [v9 reviewAssetProviderRequestForDisplayAsset:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 progress];
      v14 = [(PUAssetExplorerReviewScreenActionPerformer *)self _setupProgressControllerForProgress:v13];
      [v14 showAnimated:1 allowDelay:1];
      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __118__PUAssetExplorerReviewScreenActionPerformer_requestReviewAssetForDisplayAsset_reviewAssetProvider_completionHandler___block_invoke;
      v15[3] = &unk_1E7B75500;
      objc_copyWeak(&v17, &location);
      v16 = v10;
      [v12 requestReviewAssetWithCompletionHandler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUAssetExplorerReviewScreenActionPerformer *)self _showFailedReviewAssetRequestAlert];
      (*(v10 + 2))(v10, 0, 0, 0, 0);
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:51 description:@"Should only execute performUserInteractionTaskBlock when in user interaction state"];
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

- (void)setPerformUserInteractionTaskBlock:(id)a3
{
  v9 = a3;
  if ([(PUAssetActionPerformer *)self state])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionPerformer.m" lineNumber:35 description:@"Can only set performUserInteractionTaskBlock when in ready state"];
  }

  v5 = v9;
  if (self->_performUserInteractionTaskBlock != v9)
  {
    v6 = [v9 copy];
    performUserInteractionTaskBlock = self->_performUserInteractionTaskBlock;
    self->_performUserInteractionTaskBlock = v6;

    v5 = v9;
  }
}

@end