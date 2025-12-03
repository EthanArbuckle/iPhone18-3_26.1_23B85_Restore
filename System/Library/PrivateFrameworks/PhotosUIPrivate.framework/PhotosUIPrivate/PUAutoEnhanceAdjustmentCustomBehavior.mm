@interface PUAutoEnhanceAdjustmentCustomBehavior
- (PUAdjustmentsDataSource)dataSource;
- (void)dataSource:(id)source adjustmentInfo:(id)info setEnabled:(BOOL)enabled completionHandler:(id)handler;
@end

@implementation PUAutoEnhanceAdjustmentCustomBehavior

- (PUAdjustmentsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)dataSource:(id)source adjustmentInfo:(id)info setEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  sourceCopy = source;
  handlerCopy = handler;
  autoEnhanceController = [sourceCopy autoEnhanceController];
  compositionController = [sourceCopy compositionController];
  if (([autoEnhanceController isBusy] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:compositionController];
    if ((v12 & 1) != 0 || !enabledCopy)
    {
      if (v12)
      {
        if (!enabledCopy)
        {
          delegate = [sourceCopy delegate];
          [delegate willModifyAdjustment];

          [autoEnhanceController disableAutoEnhanceOnCompositionController:compositionController];
          delegate2 = [sourceCopy delegate];
          v21 = PXLocalizedString();
          [delegate2 didModifyAdjustmentWithLocalizedName:v21];

          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy);
          }
        }
      }
    }

    else
    {
      delegate3 = [sourceCopy delegate];
      [delegate3 willModifyAdjustment];

      [sourceCopy _resetEnabledStateForAutoEnhancedInfos];
      whiteBalanceAdjustmentController = [compositionController whiteBalanceAdjustmentController];
      warmFace = [whiteBalanceAdjustmentController warmFace];

      [compositionController removeAdjustmentWithKey:*MEMORY[0x1E69BE178]];
      [compositionController removeAdjustmentWithKey:*MEMORY[0x1E69BE170]];
      if (warmFace)
      {
        [compositionController removeAdjustmentWithKey:*MEMORY[0x1E69BE198]];
      }

      [compositionController removeAdjustmentWithKey:*MEMORY[0x1E69BE0A0]];
      valuesCalculator = [sourceCopy valuesCalculator];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __96__PUAutoEnhanceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke;
      v25 = &unk_1E7B80B48;
      v17 = sourceCopy;
      v26 = v17;
      v27 = handlerCopy;
      [autoEnhanceController enableAutoEnhanceOnCompositionController:compositionController valuesCalculator:valuesCalculator completionHandler:&v22];

      delegate4 = [v17 delegate];
      [delegate4 autoEnhanceActionStateChanged];
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