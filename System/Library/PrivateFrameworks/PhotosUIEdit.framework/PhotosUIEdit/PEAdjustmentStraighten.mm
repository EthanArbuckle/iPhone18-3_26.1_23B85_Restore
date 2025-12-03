@interface PEAdjustmentStraighten
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentStraighten

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v11 = [calculator autoCropValuesWithAccuracy:0];
  v12 = [v11 objectForKeyedSubscript:@"angle"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v11 objectForKeyedSubscript:@"xOrigin"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v11 objectForKeyedSubscript:@"yOrigin"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v11 objectForKeyedSubscript:@"width"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [v11 objectForKeyedSubscript:@"height"];
  [v24 doubleValue];
  v26 = v25;

  v32.origin.x = v17;
  v32.origin.y = v20;
  v32.size.width = v23;
  v32.size.height = v26;
  if (CGRectIsEmpty(v32) || (v33.origin.x = v17, v33.origin.y = v20, v33.size.width = v23, v33.size.height = v26, CGRectIsNull(v33)) || (v34.origin.x = v17, v34.origin.y = v20, v34.size.width = v23, v34.size.height = v26, CGRectIsInfinite(v34)))
  {
    v27 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v27, OS_LOG_TYPE_INFO, "PEAdjustmentStraighten auto calculator failed", buf, 2u);
    }
  }

  else
  {
    v28 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v28, OS_LOG_TYPE_INFO, "PEAdjustmentStraighten auto calculator succeeded", buf, 2u);
    }

    v29 = *MEMORY[0x277D3AA08];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __125__PEAdjustmentStraighten_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
    v30[3] = &__block_descriptor_72_e36_v16__0__PICropAdjustmentController_8l;
    *&v30[4] = v17;
    *&v30[5] = v20;
    *&v30[6] = v23;
    *&v30[7] = v26;
    v30[8] = v14;
    [controllerCopy modifyAdjustmentWithKey:v29 modificationBlock:v30];
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

void __125__PEAdjustmentStraighten_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setCropRect:{v3, v4, v5, v6}];
  [v7 setAngle:a1[8]];
  [v7 setEnabled:1];
  [v7 setIsAuto:1];
  [v7 setConstraintWidth:0];
  [v7 setConstraintHeight:0];
}

@end