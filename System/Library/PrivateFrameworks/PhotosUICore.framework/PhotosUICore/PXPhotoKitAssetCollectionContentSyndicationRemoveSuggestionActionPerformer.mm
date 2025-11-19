@interface PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (id)_assetsFromAssetCollection;
- (void)_createRecord;
- (void)_recordUserConfirmation:(int64_t)a3;
- (void)_recordVariant:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer

+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() localizedTitleForUseCase:1 assetCollectionReference:v8 withInputs:0];

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v9 style:0 target:v7 action:a5];

  return v10;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v5 = [a4 assetCollection];
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v7];
  v9 = PXLocalizationKeyByAddingMediaSpecificSuffix(@"PXPhotoKitAssetCollectionActionManagerActionTitle_ContentSyndicationRemoveSuggestion_", [v8 count], objc_msgSend(v5, "aggregateMediaType"));
  v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");

  return v10;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [a3 assetCollection];
  v5 = [v4 px_isContentSyndicationAlbum];

  return v5;
}

- (void)_recordVariant:(id)a3
{
  v5 = a3;
  record = self->_record;
  v10 = v5;
  if (!record)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"_record != nil"}];

    v5 = v10;
    record = self->_record;
  }

  v7 = [(PXActionRecord *)record withVariant:v5];
  v8 = self->_record;
  self->_record = v7;
}

- (void)_recordUserConfirmation:(int64_t)a3
{
  if (!self->_record)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"_record != nil"}];
  }

  v9 = [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _assetsFromAssetCollection];
  v5 = -[PXActionRecord withUserConfirmation:assetCount:](self->_record, "withUserConfirmation:assetCount:", a3, [v9 count]);
  record = self->_record;
  self->_record = v5;
}

- (void)_createRecord
{
  if (self->_record)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"_record == nil"}];
  }

  v10 = [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _assetsFromAssetCollection];
  v3 = [PXActionRecord alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = -[PXActionRecord initWithSourceIdentifier:assetCount:](v3, "initWithSourceIdentifier:assetCount:", v5, [v10 count]);
  record = self->_record;
  self->_record = v6;
}

- (id)_assetsFromAssetCollection
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v4 = [v3 photoLibrary];

  v5 = [v4 librarySpecificFetchOptions];
  v6 = MEMORY[0x1E6978630];
  v7 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v8 = [v6 fetchAssetsInAssetCollection:v7 options:v5];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addObject:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)performBackgroundTask
{
  v4 = +[PXContentSyndicationSettings sharedInstance];
  v5 = [v4 preventActualRemoveSuggestionBehavior];

  if (v5)
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _assetsFromAssetCollection];
    v7 = self->_record;
    if (!v7)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"record != nil"}];
    }

    v8 = [(PXDestructiveAssetsAction *)PXDeleteAssetsAction actionWithAssets:v6 record:v7];
    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"deleteAssetsAction != nil"}];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performBackgroundTask__block_invoke;
    v12[3] = &unk_1E774B730;
    v12[4] = self;
    v13 = v6;
    v9 = v6;
    [v8 executeWithUndoManager:0 completionHandler:v12];
  }
}

void __99__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performBackgroundTask__block_invoke_2;
  v8[3] = &unk_1E77443F0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __99__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) completeBackgroundTaskWithSuccess:*(a1 + 56) error:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = *(a1 + 48);
    v2 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v15 = *v17;
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
        if (*v17 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + v7);
        v10 = MEMORY[0x1E6991F28];
        v20[0] = v5;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v20[1] = v6;
        v21[0] = v12;
        v21[1] = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v10 sendEvent:@"com.apple.photos.CPAnalytics.syndicationSuggestionRemoved" withPayload:v13];

        if (v8 == v4)
        {
          break;
        }

        ++v4;
        v7 += 8;
        if (!--v3)
        {
          v3 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
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
  [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _createRecord];
  v3 = +[PXContentSyndicationSettings sharedInstance];
  v4 = [v3 preventActualRemoveSuggestionBehavior];

  if (v4)
  {
    v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Remove Suggestion Prevented" message:@"Remove Suggestion is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v16 addAction:v5];

    [(PXActionPerformer *)self presentViewController:v16];
    [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _recordVariant:@"prevented"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else if ([(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self shouldSkipUserConfirmation])
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)self _assetsFromAssetCollection];
    v19[5] = 0;
    v19[6] = 0;
    v7 = PXContentSyndicationRemoveConfirmationTitleAndMessageLocalizedStrings(v6);
    v8 = 0;
    v9 = 0;
    if (v7)
    {
      v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v9 preferredStyle:0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __104__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performUserInteractionTask__block_invoke;
      v19[3] = &unk_1E7749600;
      v19[4] = self;
      v11 = [MEMORY[0x1E69DC648] actionWithTitle:v8 style:2 handler:v19];
      [v10 addAction:v11];

      v12 = MEMORY[0x1E69DC648];
      v13 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __104__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performUserInteractionTask__block_invoke_2;
      v18[3] = &unk_1E7749600;
      v18[4] = self;
      v14 = [v12 actionWithTitle:v13 style:1 handler:v18];
      [v10 addAction:v14];

      [(PXActionPerformer *)self presentViewController:v10];
    }

    else
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Syndication Content Removal: Failed to retrieve alert confirmation information.", buf, 2u);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }
}

uint64_t __104__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _recordUserConfirmation:1];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __104__PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _recordUserConfirmation:2];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:0 error:0];
}

@end