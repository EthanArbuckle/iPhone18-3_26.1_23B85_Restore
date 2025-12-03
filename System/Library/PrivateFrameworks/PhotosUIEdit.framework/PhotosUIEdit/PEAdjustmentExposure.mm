@interface PEAdjustmentExposure
- (PEAdjustmentExposure)initWithModifier:(id)modifier;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentExposure

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  v8 = *MEMORY[0x277D3ABC0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __123__PEAdjustmentExposure_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
  v10[3] = &unk_279A302D0;
  v10[4] = self;
  handlerCopy = handler;
  [controller modifyAdjustmentWithKey:v8 modificationBlock:v10];
  handlerCopy[2](handlerCopy, 1, 0);
}

void __123__PEAdjustmentExposure_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setEnabled:1];
  v3 = [*(a1 + 32) modifier];
  [v5 offsetExposure];
  v4 = v3[2](v3);

  [v5 setOffsetExposure:{fmax(fmin(v4, 1.0), -1.0)}];
}

- (PEAdjustmentExposure)initWithModifier:(id)modifier
{
  modifierCopy = modifier;
  v9.receiver = self;
  v9.super_class = PEAdjustmentExposure;
  v5 = [(PEAdjustmentExposure *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(modifierCopy);
    modifier = v5->_modifier;
    v5->_modifier = v6;
  }

  return v5;
}

@end