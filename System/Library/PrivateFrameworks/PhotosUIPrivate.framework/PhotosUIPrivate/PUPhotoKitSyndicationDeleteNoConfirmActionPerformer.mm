@interface PUPhotoKitSyndicationDeleteNoConfirmActionPerformer
- (void)performBackgroundTask;
@end

@implementation PUPhotoKitSyndicationDeleteNoConfirmActionPerformer

- (void)performBackgroundTask
{
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = objc_alloc(MEMORY[0x1E69C32F0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithSourceIdentifier:v7 assetCount:objc_msgSend(assets userConfirmation:{"count"), 3}];

  v9 = [MEMORY[0x1E69C3448] actionWithAssets:assets record:v8];
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2269 description:{@"Invalid parameter not satisfying: %@", @"deleteAssetsAction != nil"}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PUPhotoKitSyndicationDeleteNoConfirmActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E7B80280;
  v11[4] = self;
  [v9 executeWithUndoManager:0 completionHandler:v11];
}

void __76__PUPhotoKitSyndicationDeleteNoConfirmActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PUPhotoKitSyndicationDeleteNoConfirmActionPerformer_performBackgroundTask__block_invoke_2;
  block[3] = &unk_1E7B805E8;
  v6 = *(a1 + 32);
  v10 = a2;
  block[4] = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end