@interface PUAutoEnhanceAdjustmentCustomBehavior
- (PUAdjustmentsDataSource)dataSource;
- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 setEnabled:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation PUAutoEnhanceAdjustmentCustomBehavior

- (PUAdjustmentsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 setEnabled:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = a6;
  v10 = [v8 autoEnhanceController];
  v11 = [v8 compositionController];
  if (([v10 isBusy] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:v11];
    if ((v12 & 1) != 0 || !v7)
    {
      if (v12)
      {
        if (!v7)
        {
          v19 = [v8 delegate];
          [v19 willModifyAdjustment];

          [v10 disableAutoEnhanceOnCompositionController:v11];
          v20 = [v8 delegate];
          v21 = PXLocalizedString();
          [v20 didModifyAdjustmentWithLocalizedName:v21];

          if (v9)
          {
            v9[2](v9);
          }
        }
      }
    }

    else
    {
      v13 = [v8 delegate];
      [v13 willModifyAdjustment];

      [v8 _resetEnabledStateForAutoEnhancedInfos];
      v14 = [v11 whiteBalanceAdjustmentController];
      v15 = [v14 warmFace];

      [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE178]];
      [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE170]];
      if (v15)
      {
        [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE198]];
      }

      [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE0A0]];
      v16 = [v8 valuesCalculator];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __96__PUAutoEnhanceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke;
      v25 = &unk_1E7B80B48;
      v17 = v8;
      v26 = v17;
      v27 = v9;
      [v10 enableAutoEnhanceOnCompositionController:v11 valuesCalculator:v16 completionHandler:&v22];

      v18 = [v17 delegate];
      [v18 autoEnhanceActionStateChanged];
    }
  }
}

uint64_t __96__PUAutoEnhanceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = PXLocalizedString();
  [v2 didModifyAdjustmentWithLocalizedName:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 autoEnhanceActionStateChanged];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

@end