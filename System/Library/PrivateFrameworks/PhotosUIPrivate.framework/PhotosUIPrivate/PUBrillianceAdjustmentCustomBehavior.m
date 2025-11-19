@interface PUBrillianceAdjustmentCustomBehavior
- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 modifyValue:(double)a5;
- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 setEnabled:(BOOL)a5 completionHandler:(id)a6;
- (void)populateSmartToneStatisticsForDataSource:(id)a3 adjustmentInfo:(id)a4 completionHandler:(id)a5;
@end

@implementation PUBrillianceAdjustmentCustomBehavior

- (void)populateSmartToneStatisticsForDataSource:(id)a3 adjustmentInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 compositionController];
  v10 = [v9 smartToneAdjustmentController];
  v11 = v10;
  if (v10 && ([v10 statistics], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (![(PUBrillianceAdjustmentCustomBehavior *)self calculatingStatistics])
  {
    [(PUBrillianceAdjustmentCustomBehavior *)self setCalculatingStatistics:1];
    v13 = [v7 autoEnhanceController];
    v14 = [v7 compositionController];
    v15 = [v7 valuesCalculator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__PUBrillianceAdjustmentCustomBehavior_populateSmartToneStatisticsForDataSource_adjustmentInfo_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80CB0;
    v17 = v7;
    v18 = self;
    v19 = v8;
    [v13 calculateStatisticsForCompositionController:v14 valuesCalculator:v15 completionHandler:v16];

    goto LABEL_8;
  }

  if (v8)
  {
    v8[2](v8);
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

- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 modifyValue:(double)a5
{
  v8 = a3;
  v9 = a4;
  [v9 setCurrentLevel:a5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PUBrillianceAdjustmentCustomBehavior_dataSource_adjustmentInfo_modifyValue___block_invoke;
  v12[3] = &unk_1E7B80C38;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(PUBrillianceAdjustmentCustomBehavior *)self populateSmartToneStatisticsForDataSource:v11 adjustmentInfo:v10 completionHandler:v12];
}

- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 setEnabled:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 delegate];
  [v12 willModifyAdjustment];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__PUBrillianceAdjustmentCustomBehavior_dataSource_adjustmentInfo_setEnabled_completionHandler___block_invoke;
  v16[3] = &unk_1E7B80CB0;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
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