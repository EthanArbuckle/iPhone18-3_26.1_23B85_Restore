@interface PEAdjustmentPresetManager
+ (PEAdjustmentPresetManager)sharedPresetManager;
- (BOOL)_assetHasVisibleAdjustments:(id)a3 shouldConsiderOpaqueAdjustments:(BOOL)a4;
- (BOOL)assetHasCopyableAdjustments:(id)a3 removeCrop:(BOOL)a4;
- (BOOL)hasPresetOnPasteboard;
- (BOOL)isBusyWithBatchAction;
- (PEAdjustmentPresetManager)init;
- (PELoadingStatusDelegate)asyncLoadingStatusManager;
- (PEPasteablePreset)presetFromPasteboard;
- (id)_editActionEventBuilderForAction:(id)a3 assets:(id)a4;
- (void)_copyPreset:(id)a3;
- (void)_sendAnalyticsForCopyActionOnAsset:(id)a3 copiedCompositionController:(id)a4 configurationAnalyticsPayload:(id)a5;
- (void)_sendAnalyticsForCurrentEditAction;
- (void)apply:(id)a3 onCompositionController:(id)a4 editSource:(id)a5 asset:(id)a6 completion:(id)a7;
- (void)autoEnhanceAssets:(id)a3 enabled:(BOOL)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)batch:(id)a3 didCancelAction:(int64_t)a4;
- (void)batch:(id)a3 didCompleteAction:(int64_t)a4 hasError:(BOOL)a5;
- (void)batch:(id)a3 willStartAction:(int64_t)a4;
- (void)cancelCurrentBatchAction;
- (void)clearPasteboard;
- (void)copyPresetFromAsset:(id)a3 removeCrop:(BOOL)a4;
- (void)copyPresetFromCompositionController:(id)a3 sourceAsset:(id)a4 smartCopyEnabled:(BOOL)a5 configurationAnalyticsPayload:(id)a6;
- (void)executeAction:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)pastePreset:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)replacePresets:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)revertAdjustmentsOnAssets:(id)a3 async:(BOOL)a4 progress:(id)a5 completion:(id)a6;
- (void)rotateAssets:(id)a3 direction:(int64_t)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)setAudioMixModeOnAssets:(id)a3 audioMixMode:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)setPlaybackRateOnAssets:(id)a3 playbackRate:(float)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)updateAnalyticsEventBuilderActionType:(id)a3 forAssets:(id)a4;
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
  v3 = [(PEAdjustmentPresetManager *)self pasteboard];
  [v3 setData:v4 forPasteboardType:@"com.apple.photos.adjustmentstack"];
}

- (void)apply:(id)a3 onCompositionController:(id)a4 editSource:(id)a5 asset:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12 && (isKindOfClass & 1) != 0)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke;
    v26[3] = &unk_279A30200;
    v17 = &v27;
    v27 = v11;
    v18 = v11;
    v19 = v26;
  }

  else
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __87__PEAdjustmentPresetManager_apply_onCompositionController_editSource_asset_completion___block_invoke_2;
    v24 = &unk_279A30200;
    v17 = &v25;
    v25 = v11;
    v20 = v11;
    v19 = &v21;
  }

  [v15 applyToCompositionController:v14 asset:v12 editSource:v13 completion:{v19, v21, v22, v23, v24}];
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
  v3 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];

  if (v3)
  {
    v4 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
    v5 = [v4 buildEvents];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
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

- (id)_editActionEventBuilderForAction:(id)a3 assets:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PEEditActionEventBuilder alloc] initWithBaseAction:v6 assets:v5];

  return v7;
}

- (void)_sendAnalyticsForCopyActionOnAsset:(id)a3 copiedCompositionController:(id)a4 configurationAnalyticsPayload:(id)a5
{
  v11 = a3;
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(PECopyActionEventBuilder);
  [(PECopyActionEventBuilder *)v9 setCopiedCompositionController:v8];

  [(PECopyActionEventBuilder *)v9 setConfigurationAnalyticsPayload:v7];
  if (v11)
  {
    [(PECopyActionEventBuilder *)v9 setAsset:v11];
  }

  v10 = [(PECopyActionEventBuilder *)v9 buildEvent];
  [MEMORY[0x277CF6EC0] sendEvent:@"com.apple.photos.CPAnalytics.edit.copyAdjustments" withPayload:v10];
}

- (void)updateAnalyticsEventBuilderActionType:(id)a3 forAssets:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
  [v8 registerActionType:v7 forAssets:v6];
}

- (void)setAudioMixModeOnAssets:(id)a3 audioMixMode:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(PEAudioMixModeAction);
  [(PEAudioMixModeAction *)v16 setAudioMixMode:v14];

  [(PEAdjustmentPresetManager *)self executeAction:v16 onAssets:v15 async:v8 progress:v13 completion:v12];
}

- (void)setPlaybackRateOnAssets:(id)a3 playbackRate:(float)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v16 = objc_alloc_init(PEPlaybackRateAction);
  *&v15 = a4;
  [(PEPlaybackRateAction *)v16 setPlaybackRate:v15];
  [(PEAdjustmentPresetManager *)self executeAction:v16 onAssets:v14 async:v8 progress:v13 completion:v12];
}

- (void)rotateAssets:(id)a3 direction:(int64_t)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = objc_alloc_init(PERotateAction);
  [(PERotateAction *)v15 setRotateDirection:a4];
  [(PEAdjustmentPresetManager *)self executeAction:v15 onAssets:v14 async:v8 progress:v13 completion:v12];
}

- (void)autoEnhanceAssets:(id)a3 enabled:(BOOL)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = objc_alloc_init(PEAutoEnhanceAction);
  [(PEAutoEnhanceAction *)v15 setEnabled:v9];
  [(PEAdjustmentPresetManager *)self executeAction:v15 onAssets:v14 async:v8 progress:v13 completion:v12];
}

- (void)batch:(id)a3 didCancelAction:(int64_t)a4
{
  v5 = a3;
  v6 = [(PEAdjustmentPresetManager *)self currentBatchAction];
  v7 = [v6 isEqual:v5];

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

- (void)batch:(id)a3 didCompleteAction:(int64_t)a4 hasError:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(PEAdjustmentPresetManager *)self currentBatchAction];
  v9 = [v8 isEqual:v7];

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

  v12 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
  if (v12)
  {
    v13 = v12;
    v14 = [v7 hasAssets];

    if (v14)
    {
      v15 = [(PEAdjustmentPresetManager *)self editActionEventBuilder];
      [v15 setHasError:v5];

      [(PEAdjustmentPresetManager *)self _sendAnalyticsForCurrentEditAction];
    }
  }
}

- (void)batch:(id)a3 willStartAction:(int64_t)a4
{
  v5 = a3;
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
  self->_currentBatchAction = v5;
}

- (void)cancelCurrentBatchAction
{
  v2 = [(PEAdjustmentPresetManager *)self currentBatchAction];
  [v2 cancel];
}

- (BOOL)isBusyWithBatchAction
{
  v3 = [(PEAdjustmentPresetManager *)self currentBatchAction];
  if (v3)
  {
    v4 = [(PEAdjustmentPresetManager *)self currentBatchAction];
    v5 = [v4 state];

    v6 = v5 < 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)revertAdjustmentsOnAssets:(id)a3 async:(BOOL)a4 progress:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(PERevertPreset);
  [(PEAdjustmentPresetManager *)self executeAction:v13 onAssets:v12 async:v7 progress:v11 completion:v10];
}

- (void)replacePresets:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([(PEAdjustmentPresetManager *)self isBusyWithBatchAction])
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager: Cannot start replace while another batch is in process", v21, 2u);
    }

    v15[2](v15, 0, 1);
  }

  else
  {
    v17 = [[PEEditActionBatch alloc] initWithAssets:v13 actionMap:v12 progress:v14];
    [(PEEditActionBatch *)v17 setForceRunAsUnadjustedAsset:0];
    [(PEEditActionBatch *)v17 setAsync:v9];
    if (v9)
    {
      v18 = [(PEAdjustmentPresetManager *)self asyncLoadingStatusManager];
      [(PEEditActionBatch *)v17 setLoadingStatusManager:v18];
    }

    [(PEEditActionBatch *)v17 setDelegate:self];
    [(PEEditActionBatch *)v17 runActionWithBatchSize:3 completion:v15];

    v19 = objc_alloc_init(PEAdjustmentPreset);
    v20 = [(PEAdjustmentPresetManager *)self _editActionEventBuilderForAction:v19 assets:v13];
    [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:v20];
  }
}

- (void)pastePreset:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v9 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [(PEAdjustmentPresetManager *)self presetFromPasteboard];
  [v14 setAnalyticsEventBuilderDelegate:self];
  if (![v11 count])
  {
    goto LABEL_7;
  }

  v15 = [v11 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v16 = [v15 photoLibrary];

  if (!v16)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v32 = 0;
  v17 = [v14 isEligibleForSmartPasteWithPhotoLibrary:v16 fallbackPayload:&v32];
  v18 = v32;
  if (v17)
  {
    v19 = [[PESmartPasteablePreset alloc] initWithPasteablePreset:v14];
    [(PEAdjustmentPresetManager *)self executeAction:v19 onAssets:v11 async:v9 progress:v12 completion:v13];
LABEL_19:

    goto LABEL_20;
  }

LABEL_9:
  [(PEAdjustmentPresetManager *)self executeAction:v14 onAssets:v11 async:v9 progress:v12 completion:v13];
  v20 = +[PEGlobalSettings sharedSettings];
  v21 = [v20 smartCopyPasteReviewUIEnabled];

  if (v21 && v18)
  {
    v27 = v12;
    v19 = +[PESCAPReviewManager sharedReviewManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v11;
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

    v12 = v27;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)executeAction:(id)a3 onAssets:(id)a4 async:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v9 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([(PEAdjustmentPresetManager *)self isBusyWithBatchAction])
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager: Cannot start action (%@) while another batch is in process", &v20, 0xCu);
    }

    v15[2](v15, 0, 1);
  }

  else
  {
    v17 = [[PEEditActionBatch alloc] initWithAssets:v13 action:v12 progress:v14];
    -[PEEditActionBatch setForceRunAsUnadjustedAsset:](v17, "setForceRunAsUnadjustedAsset:", [v12 forceRunAsUnadjustedAsset]);
    [(PEEditActionBatch *)v17 setAsync:v9];
    if (v9)
    {
      v18 = [(PEAdjustmentPresetManager *)self asyncLoadingStatusManager];
      [(PEEditActionBatch *)v17 setLoadingStatusManager:v18];
    }

    [(PEEditActionBatch *)v17 setDelegate:self];
    [(PEEditActionBatch *)v17 runActionWithBatchSize:3 completion:v15];

    v19 = [(PEAdjustmentPresetManager *)self _editActionEventBuilderForAction:v12 assets:v13];
    [(PEAdjustmentPresetManager *)self setEditActionEventBuilder:v19];
  }
}

- (void)copyPresetFromAsset:(id)a3 removeCrop:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager copyPresetFromAsset: %{public}@", &v12, 0xCu);
  }

  v9 = [(PEAdjustmentPresetManager *)self resourceManager];
  v10 = [v9 compositionControllerWithoutSource:v6];

  if (v4)
  {
    [v10 removeAdjustmentWithKey:*MEMORY[0x277D3AA08]];
    [v10 removeAdjustmentWithKey:*MEMORY[0x277D3AA88]];
  }

  if (v10)
  {
    [(PEAdjustmentPresetManager *)self copyPresetFromCompositionController:v10 sourceAsset:v6 smartCopyEnabled:1];
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

- (BOOL)_assetHasVisibleAdjustments:(id)a3 shouldConsiderOpaqueAdjustments:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager _assetHasVisibleAdjustments: %{public}@", buf, 0xCu);
  }

  if ([v6 isAdjusted])
  {
    v9 = [(PEAdjustmentPresetManager *)self resourceManager];
    v18 = 0;
    v10 = [v9 compositionControllerWithoutSource:v6 originalComposition:0 editorBundleID:&v18];
    v11 = v18;

    if ((a4 || v10) && ([v11 isEqualToString:@"com.apple.camera"] & 1) == 0)
    {
      v13 = [(PEAdjustmentPresetManager *)self resourceManager];
      v14 = [v13 originalCompositionControllerWithoutSource:v6 reconstructIfMissing:1];

      v12 = 1;
      if (v14)
      {
        v15 = [v14 composition];
        v16 = [v10 isEqual:v15 visualChangesOnly:1];

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

- (BOOL)assetHasCopyableAdjustments:(id)a3 removeCrop:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0;
  if ([(PEAdjustmentPresetManager *)self _assetHasVisibleAdjustments:v6 shouldConsiderOpaqueAdjustments:0])
  {
    v8 = [(PEAdjustmentPresetManager *)self resourceManager];
    v9 = [v8 compositionControllerWithoutSource:v6 originalComposition:0 editorBundleID:0];

    if (v4)
    {
      [v9 removeAdjustmentWithKey:*MEMORY[0x277D3AA08]];
      [v9 removeAdjustmentWithKey:*MEMORY[0x277D3AA88]];
    }

    v7 = [PEPasteablePreset hasValidAdjustmentsInCompositionController:v9];
  }

  return v7;
}

- (void)copyPresetFromCompositionController:(id)a3 sourceAsset:(id)a4 smartCopyEnabled:(BOOL)a5 configurationAnalyticsPayload:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager copyPresetFromCompositionController", v16, 2u);
  }

  v14 = [v12 copy];
  v15 = [[PEPasteablePreset alloc] initWithCompositionController:v14 asset:v11 isSmart:v6];
  [(PEAdjustmentPresetManager *)self _copyPreset:v15];
  [(PEAdjustmentPresetManager *)self _sendAnalyticsForCopyActionOnAsset:v11 copiedCompositionController:v12 configurationAnalyticsPayload:v10];
}

- (PEPasteablePreset)presetFromPasteboard
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(PEAdjustmentPresetManager *)self pasteboard];
  v3 = [v2 dataForPasteboardType:@"com.apple.photos.adjustmentstack"];

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
  v9 = [v8 smartCopyPasteReviewUIEnabled];

  if (v9)
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

- (void)_copyPreset:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 serializedDictionary];
  v8 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:100 options:0 error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = [(PEAdjustmentPresetManager *)self pasteboard];
    [v7 setData:v5 forPasteboardType:@"com.apple.photos.adjustmentstack"];
  }

  else
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "PEAdjustmentPresetManager failed to copy data with error: %@", buf, 0xCu);
    }
  }
}

- (BOOL)hasPresetOnPasteboard
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"com.apple.photos.adjustmentstack";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [(PEAdjustmentPresetManager *)self pasteboard];
  LOBYTE(self) = [v4 containsPasteboardTypes:v3];

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

    v7 = [MEMORY[0x277D75810] generalPasteboard];
    [(PEAdjustmentPresetManager *)v2 setPasteboard:v7];

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