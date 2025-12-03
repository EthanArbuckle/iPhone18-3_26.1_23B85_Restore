@interface PEAdjustmentAutoEnhance
- (PEAdjustmentAutoEnhance)initWithEnabled:(BOOL)enabled;
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentAutoEnhance

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  handlerCopy = handler;
  v13 = MEMORY[0x277D3A938];
  composition = [controllerCopy composition];
  v15 = [v13 imagePropertiesRequestWithComposition:composition];

  [v15 setName:@"PEAdjustmentAutoEnhance"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
  v19[3] = &unk_279A30B90;
  v19[4] = self;
  v20 = controllerCopy;
  v21 = calculatorCopy;
  v22 = handlerCopy;
  v16 = calculatorCopy;
  v17 = controllerCopy;
  v18 = handlerCopy;
  [v15 submit:v19];
}

void __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0;
  v4 = [v3 result:&v23];
  v5 = v23;
  v6 = [v4 properties];

  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1609;
    v21 = __Block_byref_object_dispose__1610;
    v22 = objc_alloc_init(PEAutoAdjustmentController);
    [v18[5] setImageProperties:v6];
    if ([*(a1 + 32) enabled])
    {
      v7 = v18[5];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_5;
      v15[3] = &unk_279A30B40;
      v16[1] = &v17;
      v16[0] = *(a1 + 56);
      [v7 enableAutoEnhanceOnCompositionController:v8 valuesCalculator:v9 completionHandler:v15];
      v10 = v16;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2;
      v11[3] = &unk_279A30B68;
      v14 = &v17;
      v10 = &v12;
      v12 = *(a1 + 40);
      v13 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t __126__PEAdjustmentAutoEnhance_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke_2(void *a1)
{
  [*(*(a1[6] + 8) + 40) disableAutoEnhanceOnCompositionController:a1[4]];
  v2 = *(a1[5] + 16);

  return v2();
}

- (PEAdjustmentAutoEnhance)initWithEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentAutoEnhance;
  result = [(PEAdjustmentAutoEnhance *)&v5 init];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

@end