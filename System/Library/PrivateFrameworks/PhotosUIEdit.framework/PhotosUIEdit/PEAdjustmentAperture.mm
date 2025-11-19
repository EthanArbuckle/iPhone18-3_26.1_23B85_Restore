@interface PEAdjustmentAperture
+ (id)_error:(int64_t)a3 asset:(id)a4 description:(id)a5;
- (PEAdjustmentAperture)initWithModifier:(id)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentAperture

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
      v27 = [PEAdjustmentAperture _error:2 asset:v14 description:@"Asset is missing depth data"];
      v16[2](v16, 0, v27);

LABEL_17:
      goto LABEL_18;
    }

    v36 = self;
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA28]];
    [v19 floatValue];
    v21 = v20;

    v38 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA30]];
    v22 = [v12 depthAdjustmentController];
    v23 = [v22 depthInfo];
    v37 = v22;
    v35 = v18;
    if (v23)
    {
      v24 = v23;
      v25 = [v22 depthInfo];
      v26 = [v25 objectForKeyedSubscript:@"focusRect"];
      if (v26)
      {

        goto LABEL_12;
      }

      v22 = v37;
    }

    v28 = [v12 adjustmentConstants];
    v29 = [v28 PIDepthAdjustmentKey];
    v30 = v18;
    v31 = v29;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v40[3] = &unk_279A30910;
    v41 = v30;
    v45 = v21;
    v42 = v38;
    v43 = v17;
    v44 = v22;
    [v12 modifyAdjustmentWithKey:v31 modificationBlock:v40];

LABEL_12:
    v32 = *MEMORY[0x277D3AA20];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
    v39[3] = &unk_279A30968;
    v39[4] = v36;
    [v12 modifyAdjustmentWithKey:v32 modificationBlock:v39];
    if ([v12 mediaType] == 3 || objc_msgSend(v12, "mediaType") == 1)
    {
      v33 = [v14 isPhotoIris];
    }

    else
    {
      v33 = 0;
    }

    v18 = v35;
    v34 = [[PELivePortraitBehaviorController alloc] initWithAsset:v14 delegate:v15 hasDepth:1 hasLive:v33];
    [(PELivePortraitBehaviorController *)v34 applySideEffectsForAction:0 compositionController:v12];
    [(PELivePortraitBehaviorController *)v34 applySideEffectsForAction:2 compositionController:v12];
    v16[2](v16, 1, 0);

    goto LABEL_17;
  }

  v17 = [PEAdjustmentAperture _error:1 asset:v14 description:@"Rendering depth is not supported on this device"];
  v16[2](v16, 0, v17);
LABEL_18:
}

void __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setEnabled:1];
  v3 = [*(a1 + 32) modifier];
  [v8 aperture];
  v4 = v3[2](v3);

  [v8 minimumAperture];
  v6 = v5;
  [v8 maximumAperture];
  if (v4 < v7)
  {
    v7 = v4;
  }

  if (v7 <= v6)
  {
    v7 = v6;
  }

  [v8 setAperture:v7];
}

- (PEAdjustmentAperture)initWithModifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PEAdjustmentAperture;
  v5 = [(PEAdjustmentAperture *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    modifier = v5->_modifier;
    v5->_modifier = v6;
  }

  return v5;
}

+ (id)_error:(int64_t)a3 asset:(id)a4 description:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v14[0] = *MEMORY[0x277CCA068];
  v14[1] = @"PEAdjustmentApertureMediaTypeErrorKey";
  v15[0] = a5;
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = [v8 numberWithInteger:{objc_msgSend(a4, "mediaType")}];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v7 errorWithDomain:@"PEAdjustmentApertureErrorDomain" code:a3 userInfo:v11];

  return v12;
}

@end