@interface PEAdjustmentPresetManager
+ (PEAdjustmentPresetManager)sharedPresetManager;
- (BOOL)_assetHasVisibleAdjustments:(id)adjustments shouldConsiderOpaqueAdjustments:(BOOL)opaqueAdjustments;
- (BOOL)assetHasCopyableAdjustments:(id)adjustments removeCrop:(BOOL)crop;
- (BOOL)hasPresetOnPasteboard;
- (BOOL)isBusyWithBatchAction;
- (PEAdjustmentPresetManager)init;
- (PELoadingStatusDelegate)asyncLoadingStatusManager;
- (PEPasteablePreset)presetFromPasteboard;
- (id)_editActionEventBuilderForAction:(id)action assets:(id)assets;
- (void)_copyPreset:(id)preset;
- (void)_sendAnalyticsForCopyActionOnAsset:(id)asset copiedCompositionController:(id)controller configurationAnalyticsPayload:(id)payload;
- (void)_sendAnalyticsForCurrentEditAction;
- (void)apply:(id)apply onCompositionController:(id)controller editSource:(id)source asset:(id)asset completion:(id)completion;
- (void)autoEnhanceAssets:(id)assets enabled:(BOOL)enabled async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)batch:(id)batch didCancelAction:(int64_t)action;
- (void)batch:(id)batch didCompleteAction:(int64_t)action hasError:(BOOL)error;
- (void)batch:(id)batch willStartAction:(int64_t)action;
- (void)cancelCurrentBatchAction;
- (void)clearPasteboard;
- (void)copyPresetFromAsset:(id)asset removeCrop:(BOOL)crop;
- (void)copyPresetFromCompositionController:(id)controller sourceAsset:(id)asset smartCopyEnabled:(BOOL)enabled configurationAnalyticsPayload:(id)payload;
- (void)executeAction:(id)action onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)pastePreset:(id)preset onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)replacePresets:(id)presets onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)revertAdjustmentsOnAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)rotateAssets:(id)assets direction:(int64_t)direction async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)setAudioMixModeOnAssets:(id)assets audioMixMode:(id)mode async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)setPlaybackRateOnAssets:(id)assets playbackRate:(float)rate async:(BOOL)async progress:(id)progress completion:(id)completion;
- (void)updateAnalyticsEventBuilderActionType:(id)type forAssets:(id)assets;
@end

@implementation PEAdjustmentPresetManager

- (PELoadingStatusDelegate)asyncLoadingStatusManager
{
  WeakRetained = objc_loadWeakRetained(&self->_asyncLoadingStatusManager);

  return WeakRetained;
}

- (void)clearPasteboard
{
  v4 = objc_alloc_init(MEMORY[0x277CBEA90]);
  pasteboard = [(PEAdjustmentPresetManager *)self pasteboard];
  [pasteboard setData:v4 forPasteboardType:@"com.apple.photos.adjustmentstack"];
}

- (void)apply:(id)apply onCompositionController:(id)controller editSource:(id)source asset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  sourceCopy = source;
  controllerCopy = controller;
  applyCopy = apply;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (assetCopy && (isKindOfClass & 1) != 0)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke;
    v26[3] = &unk_279A30200;
    v17 = &v27;
    v27 = completionCopy;
    v18 = completionCopy;
    v19 = v26;
  }

  else
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke_2;
    v24 = &unk_279A30200;
    v17 = &v25;
    v25 = completionCopy;
    v20 = completionCopy;
    v19 = &v21;
  }

  [applyCopy applyToCompositionController:controllerCopy asset:assetCopy editSource:sourceCopy completion:{v19, v21, v22, v23, v24}];
}

uint64_t __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_sendAnalyticsForCurrentEditAction
{
  v16 = *MEMORY[0x277D85DE8];
  editActionEventBuilder = [(PEAdjustmentPresetManager *)self editActionEventBuilder];

  if (editActionEventBuilder)
  {
    editActionEventBuilder2 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
    buildEvents = [editActionEventBuilder2 buildEvents];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = buildEvents;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [MEMORY[0x277CF6EC0] sendEvent:@"com.apple.photos.CPAnalytics.edit.editAction" withPayload:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:0];
  }
}

- (id)_editActionEventBuilderForAction:(id)action assets:(id)assets
{
  assetsCopy = assets;
  actionCopy = action;
  v7 = [[PEEditActionEventBuilder alloc] initWithBaseAction:actionCopy assets:assetsCopy];

  return v7;
}

- (void)_sendAnalyticsForCopyActionOnAsset:(id)asset copiedCompositionController:(id)controller configurationAnalyticsPayload:(id)payload
{
  assetCopy = asset;
  payloadCopy = payload;
  controllerCopy = controller;
  v9 = objc_alloc_init(PECopyActionEventBuilder);
  [(PECopyActionEventBuilder *)v9 setCopiedCompositionController:controllerCopy];

  [(PECopyActionEventBuilder *)v9 setConfigurationAnalyticsPayload:payloadCopy];
  if (assetCopy)
  {
    [(PECopyActionEventBuilder *)v9 setAsset:assetCopy];
  }

  buildEvent = [(PECopyActionEventBuilder *)v9 buildEvent];
  [MEMORY[0x277CF6EC0] sendEvent:@"com.apple.photos.CPAnalytics.edit.copyAdjustments" withPayload:buildEvent];
}

- (void)updateAnalyticsEventBuilderActionType:(id)type forAssets:(id)assets
{
  assetsCopy = assets;
  typeCopy = type;
  editActionEventBuilder = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
  [editActionEventBuilder registerActionType:typeCopy forAssets:assetsCopy];
}

- (void)setAudioMixModeOnAssets:(id)assets audioMixMode:(id)mode async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  progressCopy = progress;
  modeCopy = mode;
  assetsCopy = assets;
  v16 = objc_alloc_init(PEAudioMixModeAction);
  [(PEAudioMixModeAction *)v16 setAudioMixMode:modeCopy];

  [(PEAdjustmentPresetManager *)self executeAction:v16 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
}

- (void)setPlaybackRateOnAssets:(id)assets playbackRate:(float)rate async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  progressCopy = progress;
  assetsCopy = assets;
  v16 = objc_alloc_init(PEPlaybackRateAction);
  *&v15 = rate;
  [(PEPlaybackRateAction *)v16 setPlaybackRate:v15];
  [(PEAdjustmentPresetManager *)self executeAction:v16 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
}

- (void)rotateAssets:(id)assets direction:(int64_t)direction async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  progressCopy = progress;
  assetsCopy = assets;
  v15 = objc_alloc_init(PERotateAction);
  [(PERotateAction *)v15 setRotateDirection:direction];
  [(PEAdjustmentPresetManager *)self executeAction:v15 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
}

- (void)autoEnhanceAssets:(id)assets enabled:(BOOL)enabled async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  enabledCopy = enabled;
  completionCopy = completion;
  progressCopy = progress;
  assetsCopy = assets;
  v15 = objc_alloc_init(PEAutoEnhanceAction);
  [(PEAutoEnhanceAction *)v15 setEnabled:enabledCopy];
  [(PEAdjustmentPresetManager *)self executeAction:v15 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
}

- (void)batch:(id)batch didCancelAction:(int64_t)action
{
  batchCopy = batch;
  currentBatchAction = [(PEAdjustmentPresetManager *)self currentBatchAction];
  v7 = [currentBatchAction isEqual:batchCopy];

  if ((v7 & 1) == 0)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager canceled action while expecting another", v10, 2u);
    }
  }

  currentBatchAction = self->_currentBatchAction;
  self->_currentBatchAction = 0;

  [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:0];
}

- (void)batch:(id)batch didCompleteAction:(int64_t)action hasError:(BOOL)error
{
  errorCopy = error;
  batchCopy = batch;
  currentBatchAction = [(PEAdjustmentPresetManager *)self currentBatchAction];
  v9 = [currentBatchAction isEqual:batchCopy];

  if ((v9 & 1) == 0)
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager completed with action while expecting another", v16, 2u);
    }
  }

  currentBatchAction = self->_currentBatchAction;
  self->_currentBatchAction = 0;

  editActionEventBuilder = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
  if (editActionEventBuilder)
  {
    v13 = editActionEventBuilder;
    hasAssets = [batchCopy hasAssets];

    if (hasAssets)
    {
      editActionEventBuilder2 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
      [editActionEventBuilder2 setHasError:errorCopy];

      [(PEAdjustmentPresetManager *)self _sendAnalyticsForCurrentEditAction];
    }
  }
}

- (void)batch:(id)batch willStartAction:(int64_t)action
{
  batchCopy = batch;
  if ([(PEAdjustmentPresetManager *)self isBusyWithBatchAction])
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager: Starting while another is in process", v8, 2u);
    }
  }

  currentBatchAction = self->_currentBatchAction;
  self->_currentBatchAction = batchCopy;
}

- (void)cancelCurrentBatchAction
{
  currentBatchAction = [(PEAdjustmentPresetManager *)self currentBatchAction];
  [currentBatchAction cancel];
}

- (BOOL)isBusyWithBatchAction
{
  currentBatchAction = [(PEAdjustmentPresetManager *)self currentBatchAction];
  if (currentBatchAction)
  {
    currentBatchAction2 = [(PEAdjustmentPresetManager *)self currentBatchAction];
    state = [currentBatchAction2 state];

    v6 = state < 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)revertAdjustmentsOnAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  progressCopy = progress;
  assetsCopy = assets;
  v13 = objc_alloc_init(PERevertPreset);
  [(PEAdjustmentPresetManager *)self executeAction:v13 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
}

- (void)replacePresets:(id)presets onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  presetsCopy = presets;
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  if ([(PEAdjustmentPresetManager *)self isBusyWithBatchAction])
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager: Cannot start replace while another batch is in process", v21, 2u);
    }

    completionCopy[2](completionCopy, 0, 1);
  }

  else
  {
    v17 = [[PEEditActionBatch alloc] initWithAssets:assetsCopy actionMap:presetsCopy progress:progressCopy];
    [(PEEditActionBatch *)v17 setForceRunAsUnadjustedAsset:0];
    [(PEEditActionBatch *)v17 setAsync:asyncCopy];
    if (asyncCopy)
    {
      asyncLoadingStatusManager = [(PEAdjustmentPresetManager *)self asyncLoadingStatusManager];
      [(PEEditActionBatch *)v17 setLoadingStatusManager:asyncLoadingStatusManager];
    }

    [(PEEditActionBatch *)v17 setDelegate:self];
    [(PEEditActionBatch *)v17 runActionWithBatchSize:3 completion:completionCopy];

    v19 = objc_alloc_init(PEAdjustmentPreset);
    v20 = [(PEAdjustmentPresetManager *)self _editActionEventBuilderForAction:v19 assets:assetsCopy];
    [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:v20];
  }
}

- (void)pastePreset:(id)preset onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  v34 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  presetFromPasteboard = [(PEAdjustmentPresetManager *)self presetFromPasteboard];
  [presetFromPasteboard setAnalyticsEventBuilderDelegate:self];
  if (![assetsCopy count])
  {
    goto LABEL_7;
  }

  firstObject = [assetsCopy firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    photoLibrary = 0;
    goto LABEL_8;
  }

  photoLibrary = [firstObject photoLibrary];

  if (!photoLibrary)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v32 = 0;
  v17 = [presetFromPasteboard isEligibleForSmartPasteWithPhotoLibrary:photoLibrary fallbackPayload:&v32];
  v18 = v32;
  if (v17)
  {
    v19 = [[PESmartPasteablePreset alloc] initWithPasteablePreset:presetFromPasteboard];
    [(PEAdjustmentPresetManager *)self executeAction:v19 onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
LABEL_19:

    goto LABEL_20;
  }

LABEL_9:
  [(PEAdjustmentPresetManager *)self executeAction:presetFromPasteboard onAssets:assetsCopy async:asyncCopy progress:progressCopy completion:completionCopy];
  v20 = +[PEGlobalSettings sharedSettings];
  smartCopyPasteReviewUIEnabled = [v20 smartCopyPasteReviewUIEnabled];

  if (smartCopyPasteReviewUIEnabled && v18)
  {
    v27 = progressCopy;
    v19 = +[PESCAPReviewManager sharedReviewManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = assetsCopy;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      do
      {
        v26 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(PESmartPasteablePreset *)v19 registerPayload:v18 forAsset:*(*(&v28 + 1) + 8 * v26++)];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v24);
    }

    progressCopy = v27;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)executeAction:(id)action onAssets:(id)assets async:(BOOL)async progress:(id)progress completion:(id)completion
{
  asyncCopy = async;
  v22 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  if ([(PEAdjustmentPresetManager *)self isBusyWithBatchAction])
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = actionCopy;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager: Cannot start action (%@) while another batch is in process", &v20, 0xCu);
    }

    completionCopy[2](completionCopy, 0, 1);
  }

  else
  {
    v17 = [[PEEditActionBatch alloc] initWithAssets:assetsCopy action:actionCopy progress:progressCopy];
    -[PEEditActionBatch setForceRunAsUnadjustedAsset:](v17, "setForceRunAsUnadjustedAsset:", [actionCopy forceRunAsUnadjustedAsset]);
    [(PEEditActionBatch *)v17 setAsync:asyncCopy];
    if (asyncCopy)
    {
      asyncLoadingStatusManager = [(PEAdjustmentPresetManager *)self asyncLoadingStatusManager];
      [(PEEditActionBatch *)v17 setLoadingStatusManager:asyncLoadingStatusManager];
    }

    [(PEEditActionBatch *)v17 setDelegate:self];
    [(PEEditActionBatch *)v17 runActionWithBatchSize:3 completion:completionCopy];

    v19 = [(PEAdjustmentPresetManager *)self _editActionEventBuilderForAction:actionCopy assets:assetsCopy];
    [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:v19];
  }
}

- (void)copyPresetFromAsset:(id)asset removeCrop:(BOOL)crop
{
  cropCopy = crop;
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    v12 = 138543362;
    v13 = uuid;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager copyPresetFromAsset: %{public}@", &v12, 0xCu);
  }

  resourceManager = [(PEAdjustmentPresetManager *)self resourceManager];
  v10 = [resourceManager compositionControllerWithoutSource:assetCopy];

  if (cropCopy)
  {
    [v10 removeAdjustmentWithKey:*MEMORY[0x277D3AA08]];
    [v10 removeAdjustmentWithKey:*MEMORY[0x277D3AA88]];
  }

  if (v10)
  {
    [(PEAdjustmentPresetManager *)self copyPresetFromCompositionController:v10 sourceAsset:assetCopy smartCopyEnabled:1];
  }

  else
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager failed to copy edits because of missing compositionController", &v12, 2u);
    }
  }
}

- (BOOL)_assetHasVisibleAdjustments:(id)adjustments shouldConsiderOpaqueAdjustments:(BOOL)opaqueAdjustments
{
  v21 = *MEMORY[0x277D85DE8];
  adjustmentsCopy = adjustments;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [adjustmentsCopy uuid];
    *buf = 138543362;
    v20 = uuid;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager _assetHasVisibleAdjustments: %{public}@", buf, 0xCu);
  }

  if ([adjustmentsCopy isAdjusted])
  {
    resourceManager = [(PEAdjustmentPresetManager *)self resourceManager];
    v18 = 0;
    v10 = [resourceManager compositionControllerWithoutSource:adjustmentsCopy originalComposition:0 editorBundleID:&v18];
    v11 = v18;

    if ((opaqueAdjustments || v10) && ([v11 isEqualToString:@"com.apple.camera"] & 1) == 0)
    {
      resourceManager2 = [(PEAdjustmentPresetManager *)self resourceManager];
      v14 = [resourceManager2 originalCompositionControllerWithoutSource:adjustmentsCopy reconstructIfMissing:1];

      v12 = 1;
      if (v14)
      {
        composition = [v14 composition];
        v16 = [v10 isEqual:composition visualChangesOnly:1];

        if (v16)
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)assetHasCopyableAdjustments:(id)adjustments removeCrop:(BOOL)crop
{
  cropCopy = crop;
  adjustmentsCopy = adjustments;
  v7 = 0;
  if ([(PEAdjustmentPresetManager *)self _assetHasVisibleAdjustments:adjustmentsCopy shouldConsiderOpaqueAdjustments:0])
  {
    resourceManager = [(PEAdjustmentPresetManager *)self resourceManager];
    v9 = [resourceManager compositionControllerWithoutSource:adjustmentsCopy originalComposition:0 editorBundleID:0];

    if (cropCopy)
    {
      [v9 removeAdjustmentWithKey:*MEMORY[0x277D3AA08]];
      [v9 removeAdjustmentWithKey:*MEMORY[0x277D3AA88]];
    }

    v7 = [PEPasteablePreset hasValidAdjustmentsInCompositionController:v9];
  }

  return v7;
}

- (void)copyPresetFromCompositionController:(id)controller sourceAsset:(id)asset smartCopyEnabled:(BOOL)enabled configurationAnalyticsPayload:(id)payload
{
  enabledCopy = enabled;
  payloadCopy = payload;
  assetCopy = asset;
  controllerCopy = controller;
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager copyPresetFromCompositionController", v16, 2u);
  }

  v14 = [controllerCopy copy];
  v15 = [[PEPasteablePreset alloc] initWithCompositionController:v14 asset:assetCopy isSmart:enabledCopy];
  [(PEAdjustmentPresetManager *)self _copyPreset:v15];
  [(PEAdjustmentPresetManager *)self _sendAnalyticsForCopyActionOnAsset:assetCopy copiedCompositionController:controllerCopy configurationAnalyticsPayload:payloadCopy];
}

- (PEPasteablePreset)presetFromPasteboard
{
  v15 = *MEMORY[0x277D85DE8];
  pasteboard = [(PEAdjustmentPresetManager *)self pasteboard];
  v3 = [pasteboard dataForPasteboardType:@"com.apple.photos.adjustmentstack"];

  if (v3)
  {
    v11 = 0;
    v12 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:&v12 error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager failed to fetch data from pasteboard with error: %@", buf, 0xCu);
      }
    }

    if (v4)
    {
      v7 = [(PEAdjustmentPreset *)[PEPasteablePreset alloc] initWithPropertyListDictionary:v4];

LABEL_11:
      goto LABEL_13;
    }
  }

  v8 = +[PEGlobalSettings sharedSettings];
  smartCopyPasteReviewUIEnabled = [v8 smartCopyPasteReviewUIEnabled];

  if (smartCopyPasteReviewUIEnabled)
  {
    v5 = +[PESCAPReviewManager sharedReviewManager];
    [v5 clearAll];
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (void)_copyPreset:(id)preset
{
  v11 = *MEMORY[0x277D85DE8];
  serializedDictionary = [preset serializedDictionary];
  v8 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:serializedDictionary format:100 options:0 error:&v8];
  v6 = v8;
  if (v5)
  {
    pasteboard = [(PEAdjustmentPresetManager *)self pasteboard];
    [pasteboard setData:v5 forPasteboardType:@"com.apple.photos.adjustmentstack"];
  }

  else
  {
    pasteboard = PLPhotoEditGetLog();
    if (os_log_type_enabled(pasteboard, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25E6E9000, pasteboard, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager failed to copy data with error: %@", buf, 0xCu);
    }
  }
}

- (BOOL)hasPresetOnPasteboard
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"com.apple.photos.adjustmentstack";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  pasteboard = [(PEAdjustmentPresetManager *)self pasteboard];
  LOBYTE(self) = [pasteboard containsPasteboardTypes:v3];

  return self;
}

- (PEAdjustmentPresetManager)init
{
  v10.receiver = self;
  v10.super_class = PEAdjustmentPresetManager;
  v2 = [(PEAdjustmentPresetManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PEAdjustmentPresetManager", 0);
    loadingQueue = v2->_loadingQueue;
    v2->_loadingQueue = v3;

    v5 = objc_alloc_init(PEResourceManager);
    resourceManager = v2->_resourceManager;
    v2->_resourceManager = v5;

    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [(PEAdjustmentPresetManager *)v2 setPasteboard:generalPasteboard];

    v8 = v2;
  }

  return v2;
}

+ (PEAdjustmentPresetManager)sharedPresetManager
{
  if (sharedPresetManager_onceToken != -1)
  {
    dispatch_once(&sharedPresetManager_onceToken, &__block_literal_global_415);
  }

  v3 = sharedPresetManager_presetManager;

  return v3;
}

uint64_t __48__PEAdjustmentPresetManager_sharedPresetManager__block_invoke()
{
  sharedPresetManager_presetManager = objc_alloc_init(PEAdjustmentPresetManager);

  return MEMORY[0x2821F96F8]();
}

@end