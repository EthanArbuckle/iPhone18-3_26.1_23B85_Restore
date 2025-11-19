@interface PEAdjustmentDepth
+ (id)_error:(int64_t)a3 asset:(id)a4 description:(id)a5;
- (PEAdjustmentDepth)initWithEnabled:(BOOL)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentDepth

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (PECanRenderPortrait_onceToken != -1)
  {
    dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
  }

  if (PECanRenderPortrait_canRenderPortrait)
  {
    v17 = [v13 portraitValuesWithAccuracy:0];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA40]];
    if (!v18)
    {
      v28 = [PEAdjustmentDepth _error:2 asset:v14 description:@"Asset is missing depth data"];
      v16[2](v16, 0, v28);

LABEL_19:
      goto LABEL_20;
    }

    v38 = self;
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA28]];
    [v19 floatValue];
    v21 = v20;

    v40 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA30]];
    v22 = [v12 depthAdjustmentController];
    v23 = [v22 depthInfo];
    v39 = v18;
    if (v23)
    {
      v24 = v23;
      v25 = v22;
      v26 = [v22 depthInfo];
      v27 = [v26 objectForKeyedSubscript:@"focusRect"];
      if (v27)
      {

LABEL_12:
        v34 = *MEMORY[0x277D3AA20];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __120__PEAdjustmentDepth_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
        v41[3] = &unk_279A30968;
        v41[4] = v38;
        [v12 modifyAdjustmentWithKey:v34 modificationBlock:v41];
        v35 = v25;
        if ([(PEAdjustmentDepth *)v38 enabled])
        {
          if ([v12 mediaType] == 3 || objc_msgSend(v12, "mediaType") == 1)
          {
            v36 = [v14 isPhotoIris];
          }

          else
          {
            v36 = 0;
          }

          v37 = [[PELivePortraitBehaviorController alloc] initWithAsset:v14 delegate:v15 hasDepth:1 hasLive:v36];
          [(PELivePortraitBehaviorController *)v37 applySideEffectsForAction:0 compositionController:v12];
        }

        v16[2](v16, 1, 0);

        v18 = v39;
        goto LABEL_19;
      }

      v22 = v25;
    }

    v29 = [v12 adjustmentConstants];
    v30 = [v29 PIDepthAdjustmentKey];
    v31 = v18;
    v32 = v22;
    v33 = v30;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __120__PEAdjustmentDepth_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v42[3] = &unk_279A30910;
    v43 = v31;
    v47 = v21;
    v44 = v40;
    v45 = v17;
    v25 = v32;
    v46 = v32;
    [v12 modifyAdjustmentWithKey:v33 modificationBlock:v42];

    goto LABEL_12;
  }

  v17 = [PEAdjustmentDepth _error:1 asset:v14 description:@"Rendering depth is not supported on this device"];
  v16[2](v16, 0, v17);
LABEL_20:
}

void __120__PEAdjustmentDepth_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDepthInfo:*(a1 + 32)];
  [v5 setAperture:*(a1 + 64)];
  [v5 setFocusRect:*(a1 + 40)];
  v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D3AA38]];
  [v5 setGlassesMatteAllowed:v3];

  v4 = [*(a1 + 56) depthInfo];

  if (!v4)
  {
    [v5 setEnabled:0];
  }
}

void __120__PEAdjustmentDepth_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setEnabled:{objc_msgSend(v2, "enabled")}];
}

- (PEAdjustmentDepth)initWithEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentDepth;
  result = [(PEAdjustmentDepth *)&v5 init];
  if (result)
  {
    result->_enabled = a3;
  }

  return result;
}

+ (id)_error:(int64_t)a3 asset:(id)a4 description:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v14[0] = *MEMORY[0x277CCA068];
  v14[1] = @"PEAdjustmentDepthMediaTypeErrorKey";
  v15[0] = a5;
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = [v8 numberWithInteger:{objc_msgSend(a4, "mediaType")}];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v7 errorWithDomain:@"PEAdjustmentDepthErrorDomain" code:a3 userInfo:v11];

  return v12;
}

@end