@interface PEAdjustmentAudioMix
- (PEAdjustmentAudioMix)initWithAudioMix:(id)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentAudioMix

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  if (PICinematicAudioIsRenderSupported())
  {
    v13 = [v11 editSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x277CE63D8];
      v15 = [v13 videoURL];
      v16 = [v14 assetWithURL:v15];

      if ([MEMORY[0x277D2D048] assetIsCinematicAudio:v16])
      {
        v17 = [MEMORY[0x277D3A860] assetIsCinematicVideo:v16];
        v18 = [(PEAdjustmentAudioMix *)self audioMix];
        v19 = [v18 isEqualToString:*MEMORY[0x277D3A9F0]];

        if (!v19 || (v17 & 1) != 0)
        {
          v22 = [MEMORY[0x277D2D048] cinematicAudioRenderingVersionFromAsset:v16];
          v23 = *MEMORY[0x277D3A9E0];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __123__PEAdjustmentAudioMix_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
          v24[3] = &unk_279A30878;
          v24[4] = self;
          v24[5] = v22;
          [v10 modifyAdjustmentWithKey:v23 modificationBlock:v24];
        }

        else
        {
          [v10 removeAdjustmentWithKey:*MEMORY[0x277D3A9E0]];
        }

        v12[2](v12, 1, 0);
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:1 userInfo:0];
        (v12)[2](v12, 0, v21);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:1 userInfo:0];
      (v12)[2](v12, 0, v20);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:2 userInfo:0];
    (v12)[2](v12, 0, v13);
  }
}

void __123__PEAdjustmentAudioMix_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 adjustment];
  [v4 reset];

  [v3 setEnabled:1];
  [v3 setRenderingVersion:*(a1 + 40)];
  v5 = [*(a1 + 32) audioMix];
  [v3 setRenderingStyle:v5];
}

- (PEAdjustmentAudioMix)initWithAudioMix:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PEAdjustmentAudioMix;
  v6 = [(PEAdjustmentAudioMix *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioMix, a3);
  }

  return v7;
}

@end