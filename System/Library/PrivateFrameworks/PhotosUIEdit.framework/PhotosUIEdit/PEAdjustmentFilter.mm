@interface PEAdjustmentFilter
- (BOOL)canApplyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset error:(id *)error;
- (PEAdjustmentFilter)init;
- (PEAdjustmentFilter)initWithFilterIdentifier:(id)identifier intensity:(double)intensity;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentFilter

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v30 = 0;
  LOBYTE(calculator) = [(PEAdjustmentFilter *)self canApplyToCompositionController:controllerCopy valuesCalculator:calculator asset:asset error:&v30];
  v13 = v30;
  if (calculator)
  {
    filterIdentifier = [(PEAdjustmentFilter *)self filterIdentifier];
    standardSupportedEffects = [MEMORY[0x277D3AD30] standardSupportedEffects];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __121__PEAdjustmentFilter_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v28 = &unk_279A306E0;
    v16 = filterIdentifier;
    v29 = v16;
    v17 = PFFind();
    v18 = *MEMORY[0x277D3AA50];
    [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA50]];
    v19 = *MEMORY[0x277D3AA48];
    [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA48]];
    [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA90]];
    if (v17)
    {
      v20 = MEMORY[0x277D3AD30];
      filterIdentifier2 = [v17 filterIdentifier];
      LOBYTE(v20) = [v20 isEffectNoneForIdentifier:filterIdentifier2];

      if ((v20 & 1) == 0)
      {
        if ([MEMORY[0x277D3A938] is3DEffect:v16])
        {
          v18 = v19;
        }

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __121__PEAdjustmentFilter_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
        v22[3] = &unk_279A30708;
        v23 = v16;
        v24 = v17;
        [controllerCopy modifyAdjustmentWithKey:v18 modificationBlock:v22];
      }
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v13);
  }
}

uint64_t __121__PEAdjustmentFilter_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 filterIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __121__PEAdjustmentFilter_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKind:v3];
  [v4 setIntensity:1.0];
  [v4 setVersion:{objc_msgSend(*(a1 + 40), "latestVersion")}];
  [v4 setEnabled:1];
}

- (BOOL)canApplyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  calculatorCopy = calculator;
  assetCopy = asset;
  if (!controllerCopy)
  {
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if (!calculatorCopy)
  {
LABEL_11:
    _PFAssertFailHandler();
LABEL_12:
    _PFAssertFailHandler();
  }

  v12 = assetCopy;
  if (!assetCopy)
  {
    goto LABEL_12;
  }

  if (PISemanticStyleIsRenderSupported() && ([calculatorCopy semanticStyleStatistics], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14))
  {
    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = @"PEAdjustmentFilterMediaTypeErrorKey";
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "mediaType")}];
      v20[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v15 errorWithDomain:@"PEAdjustmentFilterErrorDomain" code:1 userInfo:v17];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (PEAdjustmentFilter)initWithFilterIdentifier:(id)identifier intensity:(double)intensity
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PEAdjustmentFilter;
  v8 = [(PEAdjustmentFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterIdentifier, identifier);
    v9->_intensity = intensity;
  }

  return v9;
}

- (PEAdjustmentFilter)init
{
  v2 = _PFAssertFailHandler();
  [(PECopyEditsConfigurationResult *)v2 .cxx_destruct];
  return result;
}

@end