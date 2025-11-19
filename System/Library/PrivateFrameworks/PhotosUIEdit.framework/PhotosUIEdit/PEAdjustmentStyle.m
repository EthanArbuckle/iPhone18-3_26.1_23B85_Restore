@interface PEAdjustmentStyle
- (PEAdjustmentStyle)initWithCast:(id)a3;
- (PEAdjustmentStyle)initWithCast:(id)a3 tone:(double)a4 color:(double)a5 intensity:(double)a6;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentStyle

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  if ((PISemanticStyleIsRenderSupported() & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentStyleErrorDomain" code:2 userInfo:0];
LABEL_6:
    v12[2](v12, 0, v16);

    goto LABEL_7;
  }

  v13 = [v11 semanticStyleStatistics];
  v14 = [v13 count];

  if (!v14)
  {
    v17 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA068];
    v23[0] = @"PEAdjustmentStyle failed due to incompatible asset";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v17 errorWithDomain:@"PEAdjustmentStyleErrorDomain" code:1 userInfo:v18];

    goto LABEL_6;
  }

  [v10 removeAdjustmentWithKey:*MEMORY[0x277D3AA90]];
  v15 = *MEMORY[0x277D3AB10];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__PEAdjustmentStyle_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
  v19[3] = &unk_279A30C30;
  v20 = v11;
  v21 = self;
  [v10 modifyAdjustmentWithKey:v15 modificationBlock:v19];
  v12[2](v12, 1, 0);

LABEL_7:
}

void __120__PEAdjustmentStyle_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 updateAdjustmentSemanticStyleStatistics:v5];
  [v5 setEnabled:1];
  v4 = [*(a1 + 40) cast];
  [v5 setCast:v4];

  [*(a1 + 40) intensity];
  [v5 setIntensity:?];
  [*(a1 + 40) tone];
  [v5 setTone:?];
  [*(a1 + 40) color];
  [v5 setColor:?];
}

- (PEAdjustmentStyle)initWithCast:(id)a3
{
  v4 = MEMORY[0x277D3A968];
  v5 = a3;
  v6 = [v4 defaultValuesForCast:v5];
  v7 = [v6 objectAtIndex:0];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectAtIndex:1];
  [v10 floatValue];
  v12 = v11;

  v13 = [v6 objectAtIndex:2];
  [v13 floatValue];
  v15 = v14;

  v16 = [(PEAdjustmentStyle *)self initWithCast:v5 tone:v9 color:v12 intensity:v15];
  return v16;
}

- (PEAdjustmentStyle)initWithCast:(id)a3 tone:(double)a4 color:(double)a5 intensity:(double)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PEAdjustmentStyle;
  v12 = [(PEAdjustmentStyle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cast, a3);
    v13->_tone = a4;
    v13->_color = a5;
    v13->_intensity = a6;
  }

  return v13;
}

@end