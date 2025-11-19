@interface PEAdjustmentFilter
- (BOOL)canApplyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 error:(id *)a6;
- (PEAdjustmentFilter)init;
- (PEAdjustmentFilter)initWithFilterIdentifier:(id)a3 intensity:(double)a4;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentFilter

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v30 = 0;
  LOBYTE(a4) = [(PEAdjustmentFilter *)self canApplyToCompositionController:v11 valuesCalculator:a4 asset:a5 error:&v30];
  v13 = v30;
  if (a4)
  {
    v14 = [(PEAdjustmentFilter *)self filterIdentifier];
    v15 = [MEMORY[0x277D3AD30] standardSupportedEffects];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __121__PEAdjustmentFilter_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v28 = &unk_279A306E0;
    v16 = v14;
    v29 = v16;
    v17 = PFFind();
    v18 = *MEMORY[0x277D3AA50];
    [v11 removeAdjustmentWithKey:*MEMORY[0x277D3AA50]];
    v19 = *MEMORY[0x277D3AA48];
    [v11 removeAdjustmentWithKey:*MEMORY[0x277D3AA48]];
    [v11 removeAdjustmentWithKey:*MEMORY[0x277D3AA90]];
    if (v17)
    {
      v20 = MEMORY[0x277D3AD30];
      v21 = [v17 filterIdentifier];
      LOBYTE(v20) = [v20 isEffectNoneForIdentifier:v21];

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
        [v11 modifyAdjustmentWithKey:v18 modificationBlock:v22];
      }
    }

    v12[2](v12, 1, 0);
  }

  else
  {
    (v12)[2](v12, 0, v13);
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

- (BOOL)canApplyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if (!v10)
  {
LABEL_11:
    _PFAssertFailHandler();
LABEL_12:
    _PFAssertFailHandler();
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  if (PISemanticStyleIsRenderSupported() && ([v10 semanticStyleStatistics], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14))
  {
    if (a6)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = @"PEAdjustmentFilterMediaTypeErrorKey";
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "mediaType")}];
      v20[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a6 = [v15 errorWithDomain:@"PEAdjustmentFilterErrorDomain" code:1 userInfo:v17];

      LOBYTE(a6) = 0;
    }
  }

  else
  {
    LOBYTE(a6) = 1;
  }

  return a6;
}

- (PEAdjustmentFilter)initWithFilterIdentifier:(id)a3 intensity:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PEAdjustmentFilter;
  v8 = [(PEAdjustmentFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterIdentifier, a3);
    v9->_intensity = a4;
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