@interface PUBrillianceAdjustmentCustomBehavior
- (void)dataSource:(id)source adjustmentInfo:(id)info modifyValue:(double)value;
- (void)dataSource:(id)source adjustmentInfo:(id)info setEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)populateSmartToneStatisticsForDataSource:(id)source adjustmentInfo:(id)info completionHandler:(id)handler;
@end

@implementation PUBrillianceAdjustmentCustomBehavior

- (void)populateSmartToneStatisticsForDataSource:(id)source adjustmentInfo:(id)info completionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  compositionController = [sourceCopy compositionController];
  smartToneAdjustmentController = [compositionController smartToneAdjustmentController];
  v11 = smartToneAdjustmentController;
  if (smartToneAdjustmentController && ([smartToneAdjustmentController statistics], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (![(PUBrillianceAdjustmentCustomBehavior *)self calculatingStatistics])
  {
    [(PUBrillianceAdjustmentCustomBehavior *)self setCalculatingStatistics:1];
    autoEnhanceController = [sourceCopy autoEnhanceController];
    compositionController2 = [sourceCopy compositionController];
    valuesCalculator = [sourceCopy valuesCalculator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__PUBrillianceAdjustmentCustomBehavior_populateSmartToneStatisticsForDataSource_adjustmentInfo_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80CB0;
    v17 = sourceCopy;
    selfCopy = self;
    v19 = handlerCopy;
    [autoEnhanceController calculateStatisticsForCompositionController:compositionController2 valuesCalculator:valuesCalculator completionHandler:v16];

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_8:
}

void __114__PUBrillianceAdjustmentCustomBehavior_populateSmartToneStatisticsForDataSource_adjustmentInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionController];
  v3 = [*(a1 + 32) compositionController];
  v4 = [v3 adjustmentConstants];
  v5 = [v4 PISmartToneAdjustmentKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __114__PUBrillianceAdjustmentCustomBehavior_populateSmartToneStatisticsForDataSource_adjustmentInfo_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7B74BA8;
  v8 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v6;
  [v2 modifyAdjustmentWithKey:v5 modificationBlock:v7];
}

uint64_t __114__PUBrillianceAdjustmentCustomBehavior_populateSmartToneStatisticsForDataSource_adjustmentInfo_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 valuesCalculator];
  [v5 updateAdjustmentSmartToneStatistics:v4 withAccuracy:0];

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = a1[5];

  return [v7 setCalculatingStatistics:0];
}

- (void)dataSource:(id)source adjustmentInfo:(id)info modifyValue:(double)value
{
  sourceCopy = source;
  infoCopy = info;
  [infoCopy setCurrentLevel:value];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PUBrillianceAdjustmentCustomBehavior_dataSource_adjustmentInfo_modifyValue___block_invoke;
  v12[3] = &unk_1E7B80C38;
  v13 = sourceCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = sourceCopy;
  [(PUBrillianceAdjustmentCustomBehavior *)self populateSmartToneStatisticsForDataSource:v11 adjustmentInfo:v10 completionHandler:v12];
}

- (void)dataSource:(id)source adjustmentInfo:(id)info setEnabled:(BOOL)enabled completionHandler:(id)handler
{
  sourceCopy = source;
  infoCopy = info;
  handlerCopy = handler;
  delegate = [sourceCopy delegate];
  [delegate willModifyAdjustment];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__PUBrillianceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke;
  v16[3] = &unk_1E7B80CB0;
  v17 = sourceCopy;
  v18 = infoCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = infoCopy;
  v15 = sourceCopy;
  [(PUBrillianceAdjustmentCustomBehavior *)self populateSmartToneStatisticsForDataSource:v15 adjustmentInfo:v14 completionHandler:v16];
}

uint64_t __95__PUBrillianceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _modifyAdjustmentForInfo:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 40) localizedActionName];
  [v2 didModifyAdjustmentWithLocalizedName:v3];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end