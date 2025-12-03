@interface PEAdjustmentAudioMix
- (PEAdjustmentAudioMix)initWithAudioMix:(id)mix;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentAudioMix

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  handlerCopy = handler;
  if (PICinematicAudioIsRenderSupported())
  {
    editSource = [calculatorCopy editSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x277CE63D8];
      videoURL = [editSource videoURL];
      v16 = [v14 assetWithURL:videoURL];

      if ([MEMORY[0x277D2D048] assetIsCinematicAudio:v16])
      {
        v17 = [MEMORY[0x277D3A860] assetIsCinematicVideo:v16];
        audioMix = [(PEAdjustmentAudioMix *)self audioMix];
        v19 = [audioMix isEqualToString:*MEMORY[0x277D3A9F0]];

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
          [controllerCopy modifyAdjustmentWithKey:v23 modificationBlock:v24];
        }

        else
        {
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3A9E0]];
        }

        handlerCopy[2](handlerCopy, 1, 0);
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:1 userInfo:0];
        (handlerCopy)[2](handlerCopy, 0, v21);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:1 userInfo:0];
      (handlerCopy)[2](handlerCopy, 0, v20);
    }
  }

  else
  {
    editSource = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentAudioMixErrorDomain" code:2 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, editSource);
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

- (PEAdjustmentAudioMix)initWithAudioMix:(id)mix
{
  mixCopy = mix;
  v9.receiver = self;
  v9.super_class = PEAdjustmentAudioMix;
  v6 = [(PEAdjustmentAudioMix *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioMix, mix);
  }

  return v7;
}

@end