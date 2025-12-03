@interface PUPhotoKitSyndicationDeleteActionPerformer
- (void)_createRecord;
- (void)_recordUserConfirmation:(int64_t)confirmation;
- (void)_recordVariant:(id)variant;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitSyndicationDeleteActionPerformer

- (void)_recordVariant:(id)variant
{
  variantCopy = variant;
  record = self->_record;
  v10 = variantCopy;
  if (!record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2241 description:{@"Invalid parameter not satisfying: %@", @"_record != nil"}];

    variantCopy = v10;
    record = self->_record;
  }

  v7 = [(PXActionRecord *)record withVariant:variantCopy];
  v8 = self->_record;
  self->_record = v7;
}

- (void)_recordUserConfirmation:(int64_t)confirmation
{
  record = self->_record;
  if (!record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2236 description:{@"Invalid parameter not satisfying: %@", @"_record != nil"}];

    record = self->_record;
  }

  assets = [(PUAssetActionPerformer *)self assets];
  v6 = -[PXActionRecord withUserConfirmation:assetCount:](record, "withUserConfirmation:assetCount:", confirmation, [assets count]);
  v7 = self->_record;
  self->_record = v6;
}

- (void)_createRecord
{
  if (self->_record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2231 description:{@"Invalid parameter not satisfying: %@", @"_record == nil"}];
  }

  v3 = objc_alloc(MEMORY[0x1E69C32F0]);
  v4 = objc_opt_class();
  v10 = NSStringFromClass(v4);
  assets = [(PUAssetActionPerformer *)self assets];
  v6 = [v3 initWithSourceIdentifier:v10 assetCount:{objc_msgSend(assets, "count")}];
  record = self->_record;
  self->_record = v6;
}

- (void)performBackgroundTask
{
  mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
  preventActualRemoveSuggestionBehavior = [mEMORY[0x1E69C3408] preventActualRemoveSuggestionBehavior];

  if (preventActualRemoveSuggestionBehavior)
  {

    [(PUAssetActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    assets = [(PUAssetActionPerformer *)self assets];
    v7 = self->_record;
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2200 description:{@"Invalid parameter not satisfying: %@", @"record != nil"}];
    }

    v8 = [MEMORY[0x1E69C3448] actionWithAssets:assets record:v7];
    if (!v8)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:2202 description:{@"Invalid parameter not satisfying: %@", @"deleteAssetsAction != nil"}];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PUPhotoKitSyndicationDeleteActionPerformer_performBackgroundTask__block_invoke;
    v12[3] = &unk_1E7B7FB70;
    v12[4] = self;
    v13 = assets;
    v9 = assets;
    [v8 executeWithUndoManager:0 completionHandler:v12];
  }
}

void __67__PUPhotoKitSyndicationDeleteActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUPhotoKitSyndicationDeleteActionPerformer_performBackgroundTask__block_invoke_2;
  v8[3] = &unk_1E7B7DCD8;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __67__PUPhotoKitSyndicationDeleteActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) completeBackgroundTaskWithSuccess:*(a1 + 56) error:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = *(a1 + 48);
    v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v16 = *v18;
      v15 = *MEMORY[0x1E69C3F50];
      v5 = *MEMORY[0x1E6991E20];
      v6 = *MEMORY[0x1E6991E18];
LABEL_4:
      v7 = 0;
      if (v4 <= 9)
      {
        v8 = 9;
      }

      else
      {
        v8 = v4;
      }

      while (1)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + v7);
        v10 = MEMORY[0x1E6991F28];
        v21[0] = v5;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v21[1] = v6;
        v22[0] = v12;
        v22[1] = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        [v10 sendEvent:v15 withPayload:v13];

        if (v8 == v4)
        {
          break;
        }

        ++v4;
        v7 += 8;
        if (!--v3)
        {
          v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)performUserInteractionTask
{
  [(PUPhotoKitSyndicationDeleteActionPerformer *)self _createRecord];
  mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
  preventActualRemoveSuggestionBehavior = [mEMORY[0x1E69C3408] preventActualRemoveSuggestionBehavior];

  if (preventActualRemoveSuggestionBehavior)
  {
    v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Remove Suggestion Prevented" message:@"Remove Suggestion is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v16 addAction:v5];

    [(PUAssetActionPerformer *)self presentViewController:v16];
    [(PUPhotoKitSyndicationDeleteActionPerformer *)self _recordVariant:@"prevented"];
    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    assets = [(PUAssetActionPerformer *)self assets];
    v19[5] = 0;
    v19[6] = 0;
    v7 = PXContentSyndicationRemoveConfirmationTitleAndMessageLocalizedStrings();
    v8 = 0;
    v9 = 0;

    if (v7)
    {
      v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v9 preferredStyle:0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__PUPhotoKitSyndicationDeleteActionPerformer_performUserInteractionTask__block_invoke;
      v19[3] = &unk_1E7B7E148;
      v19[4] = self;
      v11 = [MEMORY[0x1E69DC648] actionWithTitle:v8 style:2 handler:v19];
      [v10 addAction:v11];

      v12 = MEMORY[0x1E69DC648];
      v13 = PXLocalizedString();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__PUPhotoKitSyndicationDeleteActionPerformer_performUserInteractionTask__block_invoke_2;
      v18[3] = &unk_1E7B7E148;
      v18[4] = self;
      v14 = [v12 actionWithTitle:v13 style:1 handler:v18];
      [v10 addAction:v14];

      [(PUAssetActionPerformer *)self presentViewController:v10];
    }

    else
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Syndication Content Removal: Failed to retrieve alert confirmation information.", buf, 2u);
      }

      [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }
}

uint64_t __72__PUPhotoKitSyndicationDeleteActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _recordUserConfirmation:1];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __72__PUPhotoKitSyndicationDeleteActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _recordUserConfirmation:2];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:0 error:0];
}

@end