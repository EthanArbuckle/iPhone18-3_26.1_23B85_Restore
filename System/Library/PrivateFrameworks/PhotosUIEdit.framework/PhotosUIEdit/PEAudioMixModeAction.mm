@interface PEAudioMixModeAction
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
@end

@implementation PEAudioMixModeAction

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 asset];
    v10 = [v9 uuid];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEAudioMixModeAction: applyToLoadResult on asset: %{public}@", buf, 0xCu);
  }

  v11 = [v6 compositionController];
  v12 = [v6 contentEditingInput];
  v13 = [v12 audiovisualAsset];

  if ([MEMORY[0x277D2D048] assetIsCinematicAudio:v13])
  {
    v14 = [MEMORY[0x277D3A860] assetIsCinematicVideo:v13];
    v15 = [(PEAudioMixModeAction *)self audioMixMode];
    if (![v15 isEqualToString:*MEMORY[0x277D3A9F0]] || (v14 & 1) != 0)
    {
      v19 = [MEMORY[0x277D2D048] cinematicAudioRenderingVersionFromAsset:v13];
      v20 = *MEMORY[0x277D3A9E0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __53__PEAudioMixModeAction_applyToLoadResult_completion___block_invoke;
      v21[3] = &unk_279A30878;
      v21[4] = self;
      v21[5] = v19;
      [v11 modifyAdjustmentWithKey:v20 modificationBlock:v21];
    }

    else
    {
      [v11 removeAdjustmentWithKey:*MEMORY[0x277D3A9E0]];
    }

    v7[2](v7, 1);
  }

  else
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 asset];
      v18 = [v17 uuid];
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEAudioMixModeAction: audio mix modes not supported on asset: %{public}@", buf, 0xCu);
    }

    v7[2](v7, 0);
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