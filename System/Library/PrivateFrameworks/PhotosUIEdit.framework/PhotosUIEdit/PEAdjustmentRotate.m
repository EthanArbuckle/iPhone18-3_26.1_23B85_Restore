@interface PEAdjustmentRotate
- (PEAdjustmentRotate)initWithClockwise:(BOOL)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentRotate

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v9 = a3;
  v10 = a7;
  v11 = [v9 copy];
  v12 = *MEMORY[0x277D3AA88];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __121__PEAdjustmentRotate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
  v14[3] = &unk_279A30458;
  v14[4] = self;
  [v11 modifyAdjustmentWithKey:v12 modificationBlock:v14];
  v13 = [v11 cropAdjustmentController];

  if (v13)
  {
    [v11 modifyAdjustmentWithKey:*MEMORY[0x277D3AA08] modificationBlock:&__block_literal_global_305];
  }

  [v9 applyChangesFromCompositionController:v11];
  v10[2](v10, 1, 0);
}

void __121__PEAdjustmentRotate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 orientation];
  NUOrientationIsValid();
  [*(a1 + 32) clockwise];
  [v3 setOrientation:NUOrientationConcat()];
}

void __121__PEAdjustmentRotate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 constraintWidth];
  [v3 setConstraintWidth:{objc_msgSend(v3, "constraintHeight")}];
  [v3 setConstraintHeight:v2];
}

- (PEAdjustmentRotate)initWithClockwise:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentRotate;
  result = [(PEAdjustmentRotate *)&v5 init];
  if (result)
  {
    result->_clockwise = a3;
  }

  return result;
}

@end