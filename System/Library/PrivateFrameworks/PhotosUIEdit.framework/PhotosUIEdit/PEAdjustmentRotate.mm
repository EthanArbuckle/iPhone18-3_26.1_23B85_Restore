@interface PEAdjustmentRotate
- (PEAdjustmentRotate)initWithClockwise:(BOOL)clockwise;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentRotate

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v11 = [controllerCopy copy];
  v12 = *MEMORY[0x277D3AA88];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __121__PEAdjustmentRotate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
  v14[3] = &unk_279A30458;
  v14[4] = self;
  [v11 modifyAdjustmentWithKey:v12 modificationBlock:v14];
  cropAdjustmentController = [v11 cropAdjustmentController];

  if (cropAdjustmentController)
  {
    [v11 modifyAdjustmentWithKey:*MEMORY[0x277D3AA08] modificationBlock:&__block_literal_global_305];
  }

  [controllerCopy applyChangesFromCompositionController:v11];
  handlerCopy[2](handlerCopy, 1, 0);
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

- (PEAdjustmentRotate)initWithClockwise:(BOOL)clockwise
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentRotate;
  result = [(PEAdjustmentRotate *)&v5 init];
  if (result)
  {
    result->_clockwise = clockwise;
  }

  return result;
}

@end