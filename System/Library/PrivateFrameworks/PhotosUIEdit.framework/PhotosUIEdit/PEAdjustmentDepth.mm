@interface PEAdjustmentDepth
+ (id)_error:(int64_t)_error asset:(id)asset description:(id)description;
- (PEAdjustmentDepth)initWithEnabled:(BOOL)enabled;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentDepth

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
      v28 = [PEAdjustmentDepth _error:2 asset:assetCopy description:@"Asset is missing depth data"];
      handlerCopy[2](handlerCopy, 0, v28);

LABEL_19:
      goto LABEL_20;
    }

    selfCopy = self;
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA28]];
    [v19 floatValue];
    v21 = v20;

    v40 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3AA30]];
    depthAdjustmentController = [controllerCopy depthAdjustmentController];
    depthInfo = [depthAdjustmentController depthInfo];
    v39 = v18;
    if (depthInfo)
    {
      v24 = depthInfo;
      v25 = depthAdjustmentController;
      depthInfo2 = [depthAdjustmentController depthInfo];
      v27 = [depthInfo2 objectForKeyedSubscript:@"focusRect"];
      if (v27)
      {

LABEL_12:
        v34 = *MEMORY[0x277D3AA20];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __120__PEAdjustmentDepth_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
        v41[3] = &unk_279A30968;
        v41[4] = selfCopy;
        [controllerCopy modifyAdjustmentWithKey:v34 modificationBlock:v41];
        v35 = v25;
        if ([(PEAdjustmentDepth *)selfCopy enabled])
        {
          if ([controllerCopy mediaType] == 3 || objc_msgSend(controllerCopy, "mediaType") == 1)
          {
            isPhotoIris = [assetCopy isPhotoIris];
          }

          else
          {
            isPhotoIris = 0;
          }

          v37 = [[PELivePortraitBehaviorController alloc] initWithAsset:assetCopy delegate:delegateCopy hasDepth:1 hasLive:isPhotoIris];
          [(PELivePortraitBehaviorController *)v37 applySideEffectsForAction:0 compositionController:controllerCopy];
        }

        handlerCopy[2](handlerCopy, 1, 0);

        v18 = v39;
        goto LABEL_19;
      }

      depthAdjustmentController = v25;
    }

    adjustmentConstants = [controllerCopy adjustmentConstants];
    pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
    v31 = v18;
    v32 = depthAdjustmentController;
    v33 = pIDepthAdjustmentKey;
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
    [controllerCopy modifyAdjustmentWithKey:v33 modificationBlock:v42];

    goto LABEL_12;
  }

  v17 = [PEAdjustmentDepth _error:1 asset:assetCopy description:@"Rendering depth is not supported on this device"];
  handlerCopy[2](handlerCopy, 0, v17);
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

- (PEAdjustmentDepth)initWithEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentDepth;
  result = [(PEAdjustmentDepth *)&v5 init];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

+ (id)_error:(int64_t)_error asset:(id)asset description:(id)description
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v14[0] = *MEMORY[0x277CCA068];
  v14[1] = @"PEAdjustmentDepthMediaTypeErrorKey";
  v15[0] = description;
  v8 = MEMORY[0x277CCABB0];
  descriptionCopy = description;
  v10 = [v8 numberWithInteger:{objc_msgSend(asset, "mediaType")}];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v7 errorWithDomain:@"PEAdjustmentDepthErrorDomain" code:_error userInfo:v11];

  return v12;
}

@end