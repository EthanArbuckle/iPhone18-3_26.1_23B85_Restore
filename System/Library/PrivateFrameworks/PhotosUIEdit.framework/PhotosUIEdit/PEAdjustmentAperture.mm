@interface PEAdjustmentAperture
+ (id)_error:(int64_t)_error asset:(id)asset description:(id)description;
- (PEAdjustmentAperture)initWithModifier:(id)modifier;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentAperture

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  assetCopy = asset;
  delegateCopy = delegate;
  handlerCopy = handler;
  if (PECanRenderPortrait_onceToken != -1)
  {
    dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
  }

  if (PECanRenderPortrait_canRenderPortrait)
  {
    v17 = [calculatorCopy portraitValuesWithAccuracy:0];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA40]];
    if (!v18)
    {
      v27 = [PEAdjustmentAperture _error:2 asset:assetCopy description:@"Asset is missing depth data"];
      handlerCopy[2](handlerCopy, 0, v27);

LABEL_17:
      goto LABEL_18;
    }

    selfCopy = self;
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA28]];
    [v19 floatValue];
    v21 = v20;

    v38 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA30]];
    depthAdjustmentController = [controllerCopy depthAdjustmentController];
    depthInfo = [depthAdjustmentController depthInfo];
    v37 = depthAdjustmentController;
    v35 = v18;
    if (depthInfo)
    {
      v24 = depthInfo;
      depthInfo2 = [depthAdjustmentController depthInfo];
      v26 = [depthInfo2 objectForKeyedSubscript:@"focusRect"];
      if (v26)
      {

        goto LABEL_12;
      }

      depthAdjustmentController = v37;
    }

    adjustmentConstants = [controllerCopy adjustmentConstants];
    pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
    v30 = v18;
    v31 = pIDepthAdjustmentKey;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v40[3] = &unk_279A30910;
    v41 = v30;
    v45 = v21;
    v42 = v38;
    v43 = v17;
    v44 = depthAdjustmentController;
    [controllerCopy modifyAdjustmentWithKey:v31 modificationBlock:v40];

LABEL_12:
    v32 = *MEMORY[0x277D3AA20];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __123__PEAdjustmentAperture_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
    v39[3] = &unk_279A30968;
    v39[4] = selfCopy;
    [controllerCopy modifyAdjustmentWithKey:v32 modificationBlock:v39];
    if ([controllerCopy mediaType] == 3 || objc_msgSend(controllerCopy, "mediaType") == 1)
    {
      isPhotoIris = [assetCopy isPhotoIris];
    }

    else
    {
      isPhotoIris = 0;
    }

    v18 = v35;
    v34 = [[PELivePortraitBehaviorController alloc] initWithAsset:assetCopy delegate:delegateCopy hasDepth:1 hasLive:isPhotoIris];
    [(PELivePortraitBehaviorController *)v34 applySideEffectsForAction:0 compositionController:controllerCopy];
    [(PELivePortraitBehaviorController *)v34 applySideEffectsForAction:2 compositionController:controllerCopy];
    handlerCopy[2](handlerCopy, 1, 0);

    goto LABEL_17;
  }

  v17 = [PEAdjustmentAperture _error:1 asset:assetCopy description:@"Rendering depth is not supported on this device"];
  handlerCopy[2](handlerCopy, 0, v17);
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

- (PEAdjustmentAperture)initWithModifier:(id)modifier
{
  modifierCopy = modifier;
  v9.receiver = self;
  v9.super_class = PEAdjustmentAperture;
  v5 = [(PEAdjustmentAperture *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(modifierCopy);
    modifier = v5->_modifier;
    v5->_modifier = v6;
  }

  return v5;
}

+ (id)_error:(int64_t)_error asset:(id)asset description:(id)description
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v14[0] = *MEMORY[0x277CCA068];
  v14[1] = @"PEAdjustmentApertureMediaTypeErrorKey";
  v15[0] = description;
  v8 = MEMORY[0x277CCABB0];
  descriptionCopy = description;
  v10 = [v8 numberWithInteger:{objc_msgSend(asset, "mediaType")}];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v7 errorWithDomain:@"PEAdjustmentApertureErrorDomain" code:_error userInfo:v11];

  return v12;
}

@end