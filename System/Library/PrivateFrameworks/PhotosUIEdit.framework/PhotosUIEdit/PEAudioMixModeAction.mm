@interface PEAudioMixModeAction
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PEAudioMixModeAction

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  completionCopy = completion;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    asset = [resultCopy asset];
    uuid = [asset uuid];
    *buf = 138543362;
    v23 = uuid;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEAudioMixModeAction: applyToLoadResult on asset: %{public}@", buf, 0xCu);
  }

  compositionController = [resultCopy compositionController];
  contentEditingInput = [resultCopy contentEditingInput];
  audiovisualAsset = [contentEditingInput audiovisualAsset];

  if ([MEMORY[0x277D2D048] assetIsCinematicAudio:audiovisualAsset])
  {
    v14 = [MEMORY[0x277D3A860] assetIsCinematicVideo:audiovisualAsset];
    audioMixMode = [(PEAudioMixModeAction *)self audioMixMode];
    if (![audioMixMode isEqualToString:*MEMORY[0x277D3A9F0]] || (v14 & 1) != 0)
    {
      v19 = [MEMORY[0x277D2D048] cinematicAudioRenderingVersionFromAsset:audiovisualAsset];
      v20 = *MEMORY[0x277D3A9E0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __53__PEAudioMixModeAction_applyToLoadResult_completion___block_invoke;
      v21[3] = &unk_279A30878;
      v21[4] = self;
      v21[5] = v19;
      [compositionController modifyAdjustmentWithKey:v20 modificationBlock:v21];
    }

    else
    {
      [compositionController removeAdjustmentWithKey:*MEMORY[0x277D3A9E0]];
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      asset2 = [resultCopy asset];
      uuid2 = [asset2 uuid];
      *buf = 138543362;
      v23 = uuid2;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAudioMixModeAction: audio mix modes not supported on asset: %{public}@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

void __53__PEAudioMixModeAction_applyToLoadResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setEnabled:1];
  v3 = [*(a1 + 32) audioMixMode];
  [v4 setRenderingStyle:v3];

  [v4 setRenderingVersion:*(a1 + 40)];
  [v4 setDialogMixBias:1.0];
}

@end