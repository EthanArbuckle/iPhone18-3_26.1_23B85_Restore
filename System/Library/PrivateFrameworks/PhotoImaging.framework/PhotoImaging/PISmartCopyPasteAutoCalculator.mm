@interface PISmartCopyPasteAutoCalculator
+ (double)_clampedValueForValue:(double)value adjustmentKey:(id)key settingKey:(id)settingKey fallbackMinValue:(double)minValue fallbackMaxValue:(double)maxValue;
+ (id)adjustmentsToModifyBasedOnSourceCompositionController:(id)controller;
+ (id)descriptionForAdjustmentDictionary:(id)dictionary;
+ (void)applyAdjustmentDictionary:(id)dictionary toCompositionController:(id)controller;
- (PISmartCopyPasteAutoCalculator)initWithComposition:(id)composition;
- (PISmartCopyPasteAutoCalculator)initWithSourceComposition:(id)composition targetComposition:(id)targetComposition;
- (id)adjustedCompositionForNetwork:(id)network withSourceComposition:(id)composition;
- (id)adjustmentsDictionaryWithNetworkOutput:(id)output similarity:(float)similarity;
- (void)submit:(id)submit;
@end

@implementation PISmartCopyPasteAutoCalculator

- (id)adjustedCompositionForNetwork:(id)network withSourceComposition:(id)composition
{
  compositionCopy = composition;
  networkCopy = network;
  v7 = [[PICompositionController alloc] initWithComposition:networkCopy];

  mediaType = [(PICompositionController *)v7 mediaType];
  source = [(PICompositionController *)v7 source];
  v10 = [[PICompositionController alloc] initWithComposition:compositionCopy];

  [(PICompositionController *)v10 setSource:source mediaType:mediaType];
  [(PICompositionController *)v10 removeAdjustmentWithKey:@"depthEffect"];
  [(PICompositionController *)v10 removeAdjustmentWithKey:@"portraitEffect"];
  [(PICompositionController *)v10 removeAdjustmentWithKey:@"cropStraighten"];
  [(PICompositionController *)v7 applyChangesFromCompositionController:v10];
  [(PICompositionController *)v7 modifyAdjustmentWithKey:@"whiteBalance" modificationBlock:&__block_literal_global_12829];
  [(PICompositionController *)v7 modifyAdjustmentWithKey:@"smartTone" modificationBlock:&__block_literal_global_41_12830];
  composition = [(PICompositionController *)v7 composition];

  return composition;
}

void __86__PISmartCopyPasteAutoCalculator_adjustedCompositionForNetwork_withSourceComposition___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEnabled:0];
  [v2 setWarmTemp:0.0];
  [v2 setWarmTint:0.0];
}

- (id)adjustmentsDictionaryWithNetworkOutput:(id)output similarity:(float)similarity
{
  outputCopy = output;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [outputCopy objectForKey:@"Exposure"];

  if (v7)
  {
    v8 = [outputCopy objectForKeyedSubscript:@"Exposure"];
    v9 = +[PISmartToneAdjustmentController offsetExposureKey];
    [v6 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [outputCopy objectForKey:@"Warm Temp"];

  if (v10)
  {
    v11 = [outputCopy objectForKeyedSubscript:@"Warm Temp"];
    v12 = +[PIWhiteBalanceAdjustmentController warmTempKey];
    [v6 setObject:v11 forKeyedSubscript:v12];
  }

  v13 = [outputCopy objectForKey:@"Warm Tint"];

  if (v13)
  {
    v15 = [outputCopy objectForKeyedSubscript:@"Warm Tint"];
    v16 = +[PIWhiteBalanceAdjustmentController warmTintKey];
    [v6 setObject:v15 forKeyedSubscript:v16];
  }

  *&v14 = similarity;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  [v6 setObject:v17 forKeyedSubscript:@"sourceSimilarity"];

  v18 = [v6 copy];

  return v18;
}

- (void)submit:(id)submit
{
  v49[1] = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__12848;
  v37 = __Block_byref_object_dispose__12849;
  v38 = 0;
  if (!self->_sliderNetModel)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v5 = getkSliderNetGatingMethodSymbolLoc_ptr;
    v47 = getkSliderNetGatingMethodSymbolLoc_ptr;
    if (!getkSliderNetGatingMethodSymbolLoc_ptr)
    {
      location = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __getkSliderNetGatingMethodSymbolLoc_block_invoke;
      v42 = &unk_1E82AC930;
      v43 = &v44;
      v6 = ImageHarmonizationKitLibrary();
      v7 = dlsym(v6, "kSliderNetGatingMethod");
      *(v43[1] + 24) = v7;
      getkSliderNetGatingMethodSymbolLoc_ptr = *(v43[1] + 24);
      v5 = v45[3];
    }

    _Block_object_dispose(&v44, 8);
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSliderNetGatingMethod(void)"];
      [currentHandler handleFailureInFunction:v27 file:@"PISmartCopyPasteAutoCalculator.m" lineNumber:27 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v8 = *v5;
    v48 = v8;
    v49[0] = &unk_1F471ED18;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];

    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v10 = getIHKSliderNetCPModelClass_softClass;
    v47 = getIHKSliderNetCPModelClass_softClass;
    if (!getIHKSliderNetCPModelClass_softClass)
    {
      location = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __getIHKSliderNetCPModelClass_block_invoke;
      v42 = &unk_1E82AC930;
      v43 = &v44;
      __getIHKSliderNetCPModelClass_block_invoke(&location);
      v10 = v45[3];
    }

    v11 = v10;
    _Block_object_dispose(&v44, 8);
    v32 = 0;
    v12 = [[v10 alloc] initWithModelType:1 options:v9 error:&v32];
    v13 = v32;
    sliderNetModel = self->_sliderNetModel;
    self->_sliderNetModel = v12;

    if (!self->_sliderNetModel)
    {
      v24 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v13];
      v25 = v34[5];
      v34[5] = v24;

      submitCopy[2](submitCopy, v34[5]);
      goto LABEL_13;
    }
  }

  objc_initWeak(&location, self);
  liftRequest = [(PISmartCopyPasteAutoCalculator *)self liftRequest];
  v16 = liftRequest == 0;

  if (v16)
  {
    v17 = [PISliderNetLiftRequest alloc];
    composition = [(NURenderRequest *)self composition];
    v19 = [(PISliderNetBaseRequest *)v17 initWithComposition:composition sliderNetModel:self->_sliderNetModel];
    [(PISmartCopyPasteAutoCalculator *)self setLiftRequest:v19];

    sourceAssetScenePrint = [(PISmartCopyPasteAutoCalculator *)self sourceAssetScenePrint];
    LOBYTE(composition) = sourceAssetScenePrint == 0;

    if ((composition & 1) == 0)
    {
      sourceAssetScenePrint2 = [(PISmartCopyPasteAutoCalculator *)self sourceAssetScenePrint];
      liftRequest2 = [(PISmartCopyPasteAutoCalculator *)self liftRequest];
      [liftRequest2 setAssetScenePrint:sourceAssetScenePrint2];
    }
  }

  liftRequest3 = [(PISmartCopyPasteAutoCalculator *)self liftRequest];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41__PISmartCopyPasteAutoCalculator_submit___block_invoke;
  v28[3] = &unk_1E82AADF8;
  objc_copyWeak(&v31, &location);
  v30 = &v33;
  v28[4] = self;
  v29 = submitCopy;
  [liftRequest3 submit:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
LABEL_13:
  _Block_object_dispose(&v33, 8);
}

void __41__PISmartCopyPasteAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v30 = 0;
  v5 = [v3 result:&v30];

  v6 = v30;
  if (v5)
  {
    v7 = [WeakRetained[21] copy];
    v8 = [WeakRetained composition];
    v9 = [WeakRetained adjustedCompositionForNetwork:v7 withSourceComposition:v8];

    v10 = [WeakRetained adjustmentsRequest];

    if (!v10)
    {
      v11 = [(PISliderNetBaseRequest *)[PISliderNetAdjustmentsRequest alloc] initWithComposition:v9 sliderNetModel:WeakRetained[20]];
      [WeakRetained setAdjustmentsRequest:v11];

      [WeakRetained similarityGatingThreshold];
      v13 = v12;
      v14 = [WeakRetained adjustmentsRequest];
      [v14 setSimilarityGatingThreshold:v13];

      v15 = [*(a1 + 32) targetAssetScenePrint];

      if (v15)
      {
        v16 = [*(a1 + 32) targetAssetScenePrint];
        v17 = [WeakRetained adjustmentsRequest];
        [v17 setAssetScenePrint:v16];
      }
    }

    v18 = [v5 styleFeatureVectorData];
    v19 = [WeakRetained adjustmentsRequest];
    [v19 setStyleFeatureVectorData:v18];

    v20 = [v5 contentFeatureVectorData];
    v21 = [WeakRetained adjustmentsRequest];
    [v21 setContentFeatureVectorData:v20];

    v22 = [WeakRetained adjustmentsRequest];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__PISmartCopyPasteAutoCalculator_submit___block_invoke_2;
    v28[3] = &unk_1E82AADD0;
    v28[4] = *(a1 + 32);
    v27 = *(a1 + 40);
    v23 = v27;
    v29 = v27;
    [v22 submit:v28];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v6];
    v25 = *(*(a1 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    (*(*(a1 + 40) + 16))();
  }
}

void __41__PISmartCopyPasteAutoCalculator_submit___block_invoke_2(void *a1, void *a2)
{
  v13 = 0;
  v3 = [a2 result:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = a1[4];
    v6 = [v3 adjustments];
    [v3 similarityScore];
    v7 = [v5 adjustmentsDictionaryWithNetworkOutput:v6 similarity:?];

    v8 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    v12 = *(a1[6] + 8);
    v7 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  (*(a1[5] + 16))();
}

- (PISmartCopyPasteAutoCalculator)initWithSourceComposition:(id)composition targetComposition:(id)targetComposition
{
  targetCompositionCopy = targetComposition;
  v10.receiver = self;
  v10.super_class = PISmartCopyPasteAutoCalculator;
  v7 = [(NURenderRequest *)&v10 initWithComposition:composition];
  targetComposition = v7->_targetComposition;
  v7->_targetComposition = targetCompositionCopy;

  v7->_similarityGatingThreshold = -1.0;
  return v7;
}

- (PISmartCopyPasteAutoCalculator)initWithComposition:(id)composition
{
  v32 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_104_12874);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_104_12874);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_104_12874);
  }
}

+ (id)descriptionForAdjustmentDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[PISmartToneAdjustmentController offsetExposureKey];
  v5 = [dictionaryCopy objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  v8 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  v9 = [dictionaryCopy objectForKeyedSubscript:v8];
  [v9 doubleValue];
  v11 = v10;

  v12 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  v13 = [dictionaryCopy objectForKeyedSubscript:v12];

  [v13 doubleValue];
  v15 = v14;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Exp(%.2f), Warmth(%.2f), Tint(%.2f)", v7, v11, v15];
}

+ (id)adjustmentsToModifyBasedOnSourceCompositionController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  smartToneAdjustmentController = [controllerCopy smartToneAdjustmentController];

  if (smartToneAdjustmentController)
  {
    smartToneAdjustmentController2 = [controllerCopy smartToneAdjustmentController];
    [smartToneAdjustmentController2 offsetExposure];
    v8 = v7;

    if (v8 != 0.0)
    {
      v9 = +[PISmartToneAdjustmentController offsetExposureKey];
      [v4 addObject:v9];
    }
  }

  whiteBalanceAdjustmentController = [controllerCopy whiteBalanceAdjustmentController];

  if (whiteBalanceAdjustmentController)
  {
    whiteBalanceAdjustmentController2 = [controllerCopy whiteBalanceAdjustmentController];
    [whiteBalanceAdjustmentController2 warmTemp];
    if (v12 == 0.0)
    {
      whiteBalanceAdjustmentController3 = [controllerCopy whiteBalanceAdjustmentController];
      [whiteBalanceAdjustmentController3 warmTint];
      v15 = v14;

      if (v15 == 0.0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v16 = +[PIWhiteBalanceAdjustmentController warmTempKey];
    [v4 addObject:v16];

    v17 = +[PIWhiteBalanceAdjustmentController warmTintKey];
    [v4 addObject:v17];
  }

LABEL_10:

  return v4;
}

+ (double)_clampedValueForValue:(double)value adjustmentKey:(id)key settingKey:(id)settingKey fallbackMinValue:(double)minValue fallbackMaxValue:(double)maxValue
{
  v10 = [PICompositionController settingForAdjustmentKey:key settingKey:settingKey];
  ui_minimumValue = [v10 ui_minimumValue];
  if (ui_minimumValue)
  {
    ui_minimumValue2 = [v10 ui_minimumValue];
    [ui_minimumValue2 floatValue];
    minValue = v13;
  }

  ui_maximumValue = [v10 ui_maximumValue];
  if (ui_maximumValue)
  {
    ui_maximumValue2 = [v10 ui_maximumValue];
    [ui_maximumValue2 floatValue];
    maxValue = v16;
  }

  if (maxValue <= value)
  {
    valueCopy = maxValue;
  }

  else
  {
    valueCopy = value;
  }

  if (minValue >= valueCopy)
  {
    minValueCopy = minValue;
  }

  else
  {
    minValueCopy = valueCopy;
  }

  return minValueCopy;
}

+ (void)applyAdjustmentDictionary:(id)dictionary toCompositionController:(id)controller
{
  dictionaryCopy = dictionary;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PISmartCopyPasteAutoCalculator_applyAdjustmentDictionary_toCompositionController___block_invoke;
  v13[3] = &unk_1E82AAE60;
  v7 = dictionaryCopy;
  v14 = v7;
  selfCopy = self;
  controllerCopy = controller;
  [controllerCopy modifyAdjustmentWithKey:@"whiteBalance" modificationBlock:v13];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PISmartCopyPasteAutoCalculator_applyAdjustmentDictionary_toCompositionController___block_invoke_2;
  v10[3] = &unk_1E82AAE88;
  v11 = v7;
  selfCopy2 = self;
  v9 = v7;
  [controllerCopy modifyAdjustmentWithKey:@"smartTone" modificationBlock:v10];
}

void __84__PISmartCopyPasteAutoCalculator_applyAdjustmentDictionary_toCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 32);
  v4 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  v8 = *(a1 + 32);
  v9 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v10 doubleValue];
  v12 = v11;

  if (v7 != 0.0 || v12 != 0.0)
  {
    [v21 setEnabled:1];
    [v21 setColorType:3];
    v13 = *(a1 + 40);
    v14 = +[PIWhiteBalanceAdjustmentController warmTempKey];
    [v13 _clampedValueForValue:@"whiteBalance" adjustmentKey:v14 settingKey:v7 fallbackMinValue:-0.5 fallbackMaxValue:0.5];
    v16 = v15;

    [v21 setWarmTemp:v16];
    v17 = *(a1 + 40);
    v18 = +[PIWhiteBalanceAdjustmentController warmTintKey];
    [v17 _clampedValueForValue:@"whiteBalance" adjustmentKey:v18 settingKey:v12 fallbackMinValue:-1.0 fallbackMaxValue:1.0];
    v20 = v19;

    [v21 setWarmTint:v20];
  }
}

void __84__PISmartCopyPasteAutoCalculator_applyAdjustmentDictionary_toCompositionController___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = +[PISmartToneAdjustmentController offsetExposureKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  if (v7 != 0.0)
  {
    v8 = *(a1 + 40);
    v9 = +[PISmartToneAdjustmentController offsetExposureKey];
    [v8 _clampedValueForValue:@"smartTone" adjustmentKey:v9 settingKey:v7 fallbackMinValue:-1.0 fallbackMaxValue:1.0];
    v11 = v10;

    [v12 setEnabled:1];
    [v12 setOffsetExposure:v11];
  }
}

@end