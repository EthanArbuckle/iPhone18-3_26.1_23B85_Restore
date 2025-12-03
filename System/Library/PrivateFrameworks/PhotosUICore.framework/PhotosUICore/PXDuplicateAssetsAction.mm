@interface PXDuplicateAssetsAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (NSString)extractStillConfirmationAlertAsLiveButtonTitle;
- (NSString)extractStillConfirmationAlertAsStillButtonTitle;
- (NSString)extractStillConfirmationAlertTitle;
- (PHFetchResult)createdAssets;
- (PXDuplicateAssetsAction)initWithSelectionSnapshot:(id)snapshot;
- (void)_checkDuplicateCapabilities;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
- (void)setActionProgress:(id)progress;
- (void)setDownloadCompletionHandler:(id)handler;
- (void)setDuplicatesAsStill:(BOOL)still;
- (void)setDuplicatesOriginal:(BOOL)original;
- (void)setStillImageTime:(id *)time;
@end

@implementation PXDuplicateAssetsAction

- (PHFetchResult)createdAssets
{
  if (!self->_createdAssets && [(NSArray *)self->_createdAssetLocalIdentifiers count])
  {
    v3 = MEMORY[0x1E6978630];
    createdAssetLocalIdentifiers = self->_createdAssetLocalIdentifiers;
    standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
    v6 = [v3 fetchAssetsWithLocalIdentifiers:createdAssetLocalIdentifiers options:standardFetchOptions];
    createdAssets = self->_createdAssets;
    self->_createdAssets = v6;
  }

  v8 = self->_createdAssets;

  return v8;
}

- (void)performUndo:(id)undo
{
  v4 = MEMORY[0x1E6978630];
  createdAssetLocalIdentifiers = self->_createdAssetLocalIdentifiers;
  undoCopy = undo;
  standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
  v13 = [v4 fetchAssetsWithLocalIdentifiers:createdAssetLocalIdentifiers options:standardFetchOptions];

  v8 = objc_alloc_init(MEMORY[0x1E69786A0]);
  [v8 setExpungeSource:4];
  v9 = MEMORY[0x1E6978648];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  [v9 performBatchExpungeWithAssets:v13 deleteOptions:v8 photoLibrary:photoLibrary completionHandler:undoCopy];

  v11 = self->_createdAssetLocalIdentifiers;
  self->_createdAssetLocalIdentifiers = 0;

  createdAssets = self->_createdAssets;
  self->_createdAssets = 0;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  [(PXDuplicateAssetsAction *)self _checkDuplicateCapabilities];
  v6 = [[PXPhotoKitAssetLocalAvailabilityHelper alloc] initWithAssets:self->_originalAssets treatLivePhotoAsStill:self->_duplicatesAsStill];
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __41__PXDuplicateAssetsAction_performAction___block_invoke;
  v16 = &unk_1E7746F80;
  selfCopy = self;
  v18 = v7;
  v19 = actionCopy;
  v20 = a2;
  v8 = actionCopy;
  v9 = v7;
  v10 = [(PXPhotoKitAssetLocalAvailabilityHelper *)v6 ensureLocalAvailabilityOfAssetsWithCompletionHandler:&v13];
  v11 = [(PXDuplicateAssetsAction *)self assetCount:v13];
  actionProgress = [(PXDuplicateAssetsAction *)self actionProgress];
  [actionProgress setTotalUnitCount:100 * v11];
  [actionProgress addChild:v10 withPendingUnitCount:75 * v11];
  [actionProgress addChild:v9 withPendingUnitCount:25 * v11];
}

void __41__PXDuplicateAssetsAction_performAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(*(a1 + 32) + 160))
  {
    v6 = *(*(a1 + 32) + 160);
  }

  else
  {
    v6 = &__block_literal_global_218975;
  }

  v7 = _Block_copy(v6);
  if (v7[2](v7, a2, v5))
  {
    v8 = [*(a1 + 32) photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__PXDuplicateAssetsAction_performAction___block_invoke_3;
    v13[3] = &unk_1E77498A0;
    v9 = *(a1 + 56);
    v13[4] = *(a1 + 32);
    v13[5] = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__PXDuplicateAssetsAction_performAction___block_invoke_6;
    v10[3] = &unk_1E774BD88;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v8 performChanges:v13 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __41__PXDuplicateAssetsAction_performAction___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PXDuplicateAssetsAction_performAction___block_invoke_4;
  v7[3] = &unk_1E7746F58;
  v7[4] = v3;
  v4 = v2;
  v5 = *(a1 + 40);
  v7[5] = v4;
  v7[6] = v5;
  [v3 enumerateSelectedAssetIndexSetsUsingBlock:v7];
  v6 = v4;
  px_dispatch_on_main_queue();
}

void __41__PXDuplicateAssetsAction_performAction___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v4, "totalUnitCount")}];
  (*(*(a1 + 40) + 16))();
}

void __41__PXDuplicateAssetsAction_performAction___block_invoke_4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v25 = a3;
  [v25 objectsAtIndexes:a4];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x1E6978690]);
        [v12 setCopyOriginal:*(a1[4] + 144)];
        v13 = [v11 burstIdentifier];
        [v12 setCopySinglePhotoFromBurst:v13 != 0];

        [v12 setCopyStillPhotoFromLivePhoto:*(a1[4] + 145)];
        v14 = (a1[4] + 168);
        v31 = *(a1[4] + 184);
        v30 = *v14;
        v28 = v30;
        v29 = v31;
        [v12 setStillSourceTime:&v28];
        v15 = [MEMORY[0x1E6978698] creationRequestForAssetCopyFromAsset:v11 options:v12];
        v16 = [v15 placeholderForCreatedAsset];
        v17 = a1[5];
        v18 = [v16 localIdentifier];
        [v17 addObject:v18];

        if (v15 && [v27 canPerformEditOperation:3])
        {
          v19 = [v25 indexOfObject:v11];
          v20 = v19 + 1;
          if (v19 == 0x7FFFFFFFFFFFFFFELL)
          {
            v24 = [MEMORY[0x1E696AAA8] currentHandler];
            [v24 handleFailureInMethod:a1[6] object:a1[4] file:@"PXDuplicateAssetsAction.m" lineNumber:189 description:@"The asset being duplicated should be in the assetCollection"];
          }

          v21 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v27];
          v36 = v16;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          v23 = [MEMORY[0x1E696AC90] indexSetWithIndex:v20];
          [v21 insertAssets:v22 atIndexes:v23];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }
}

void __41__PXDuplicateAssetsAction_performAction___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

- (void)setDownloadCompletionHandler:(id)handler
{
  v4 = [handler copy];
  downloadCompletionHandler = self->_downloadCompletionHandler;
  self->_downloadCompletionHandler = v4;
}

- (void)setActionProgress:(id)progress
{
  progressCopy = progress;
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDuplicateAssetsAction.m" lineNumber:148 description:{@"%s cannot be called after the receiver has started executing.", "-[PXDuplicateAssetsAction setActionProgress:]"}];
  }

  actionProgress = self->_actionProgress;
  self->_actionProgress = progressCopy;
}

- (void)setStillImageTime:(id *)time
{
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDuplicateAssetsAction.m" lineNumber:143 description:{@"%s cannot be called after the receiver has started executing.", "-[PXDuplicateAssetsAction setStillImageTime:]"}];
  }

  var3 = time->var3;
  *&self->_stillImageTime.value = *&time->var0;
  self->_stillImageTime.epoch = var3;
}

- (void)setDuplicatesAsStill:(BOOL)still
{
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDuplicateAssetsAction.m" lineNumber:138 description:{@"%s cannot be called after the receiver has started executing.", "-[PXDuplicateAssetsAction setDuplicatesAsStill:]"}];
  }

  self->_duplicatesAsStill = still;
}

- (void)setDuplicatesOriginal:(BOOL)original
{
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDuplicateAssetsAction.m" lineNumber:133 description:{@"%s cannot be called after the receiver has started executing.", "-[PXDuplicateAssetsAction setDuplicatesOriginal:]"}];
  }

  self->_duplicatesOriginal = original;
}

- (NSString)extractStillConfirmationAlertAsStillButtonTitle
{
  if (self->_assetCount <= 1)
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_STILL_CONFIRMATION_MESSAGE_ONE_ITEM";
  }

  else
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_STILL_CONFIRMATION_MESSAGE_N_ITEMS";
  }

  v3 = PXLocalizedStringFromTable(v2, @"PhotosUICore");

  return v3;
}

- (NSString)extractStillConfirmationAlertAsLiveButtonTitle
{
  if (self->_assetCount <= 1)
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_LIVE_CONFIRMATION_MESSAGE_ONE_ITEM";
  }

  else
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_LIVE_CONFIRMATION_MESSAGE_N_ITEMS";
  }

  v3 = PXLocalizedStringFromTable(v2, @"PhotosUICore");

  return v3;
}

- (NSString)extractStillConfirmationAlertTitle
{
  if (self->_assetCount <= 1)
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_LIVE_WARNING_MESSAGE_ONE_ITEM";
  }

  else
  {
    v2 = @"PXPhotoKitDuplicateAssetActionPerformer_LIVE_WARNING_MESSAGE_N_ITEMS";
  }

  v3 = PXLocalizedStringFromTable(v2, @"PhotosUICore");

  return v3;
}

- (void)_checkDuplicateCapabilities
{
  if (!self->_didCheckDuplicateCapabilities)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__PXDuplicateAssetsAction__checkDuplicateCapabilities__block_invoke;
    v4[3] = &unk_1E7746F10;
    v4[4] = self;
    v4[5] = &v13;
    v4[6] = &v5;
    v4[7] = &v9;
    [(PXAssetsSelectionAction *)self enumerateSelectedAssetIndexSetsUsingBlock:v4];
    self->_assetCount = v6[3];
    if (*(v10 + 24) == 1)
    {
      v3 = *(v14 + 24);
    }

    else
    {
      v3 = 0;
    }

    self->_canExtractStill = v3 & 1;
    self->_didCheckDuplicateCapabilities = 1;
    _Block_object_dispose(&v5, 8);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }
}

void __54__PXDuplicateAssetsAction__checkDuplicateCapabilities__block_invoke(void *a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1[5] + 8);
  if (*(v12 + 24) == 1)
  {
    v13 = [v9 assetCollectionSubtype] != 101;
    v12 = *(a1[5] + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 24) = v13;
  v14 = *(a1[5] + 8);
  if (*(v14 + 24) == 1)
  {
    v15 = [v9 assetCollectionSubtype] != 1000000201;
    v14 = *(a1[5] + 8);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15;
  v16 = *(*(a1[6] + 8) + 24);
  *(*(a1[6] + 8) + 24) = [v11 count] + v16;
  if (*(*(a1[5] + 8) + 24) != 1)
  {
    goto LABEL_26;
  }

  v31 = v10;
  v32 = a5;
  v30 = v11;
  [v10 objectsAtIndexes:v11];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v36 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
LABEL_10:
    v21 = 0;
    while (1)
    {
      if (*v34 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v33 + 1) + 8 * v21);
      *(*(a1[5] + 8) + 24) = [objc_opt_class() canPerformOnAsset:v22 inAssetCollection:v9];
      v23 = [v22 playbackStyle];
      v24 = [v22 playbackVariation];
      v25 = *(a1[7] + 8);
      if (*(v25 + 24) == 1)
      {
        v26 = v24;
        v27 = [v22 isPhotoIris];
        v28 = v23 == 5 ? 0 : v27;
        v29 = v26 == 3 ? 0 : v28;
        v25 = *(a1[7] + 8);
      }

      else
      {
        v29 = 0;
      }

      *(v25 + 24) = v29;
      if (*(*(a1[5] + 8) + 24) != 1)
      {
        break;
      }

      [*(a1[4] + 104) addObject:v22];
      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v19)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v10 = v31;
  a5 = v32;
  v11 = v30;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
LABEL_26:
    *a5 = 1;
  }
}

- (PXDuplicateAssetsAction)initWithSelectionSnapshot:(id)snapshot
{
  v8.receiver = self;
  v8.super_class = PXDuplicateAssetsAction;
  v3 = [(PXAssetsSelectionAction *)&v8 initWithSelectionSnapshot:snapshot];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(v3 + 13);
    *(v3 + 13) = v4;

    v6 = MEMORY[0x1E6960C70];
    *(v3 + 168) = *MEMORY[0x1E6960C70];
    *(v3 + 23) = *(v6 + 16);
  }

  return v3;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if (([assetCopy isTrashed] & 1) != 0 || (objc_msgSend(assetCopy, "isRecoveredAsset") & 1) != 0 || objc_msgSend(assetCopy, "sourceType") == 2 || objc_msgSend(assetCopy, "sourceType") == 8)
  {
    goto LABEL_5;
  }

  if (![assetCopy px_isSyndicatedAsset])
  {
    LOBYTE(v5) = 1;
    goto LABEL_6;
  }

  if (![assetCopy px_isUnsavedSyndicatedAsset])
  {
LABEL_5:
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [assetCopy px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

LABEL_6:

  return v5;
}

@end