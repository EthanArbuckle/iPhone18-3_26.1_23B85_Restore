@interface PEValuesCalculator
+ (BOOL)shouldRunGeometricAutoCalculatorForSource:(id)source;
- (BOOL)_geometricCurrentValuesCacheIsValid;
- (BOOL)_imageCurrentValuesCacheIsValid;
- (BOOL)hasImageValues;
- (PEValuesCalculator)init;
- (PEValuesCalculatorDelegate)delegate;
- (PEValuesCalculatorSettings)settingsDelegate;
- (double)smartColorAutoSuggestion;
- (double)smartToneAutoSuggestion;
- (id)apertureValuesWithAccuracy:(int64_t)accuracy;
- (id)autoCropValuesWithAccuracy:(int64_t)accuracy;
- (id)autoPerspectiveValuesWithAccuracy:(int64_t)accuracy;
- (id)portraitValuesWithAccuracy:(int64_t)accuracy;
- (id)semanticStyleStatistics;
- (id)smartColorStatisticsWithAccuracy:(int64_t)accuracy;
- (id)smartToneStatisticsWithAccuracy:(int64_t)accuracy;
- (void)_ensureCurrentGeometricValuesAreComputed;
- (void)_ensureCurrentImageValuesAreComputed;
- (void)_ensureInitialGeometricValuesAreComputed;
- (void)_ensureInitialImageValuesAreComputed;
- (void)_updateSettings;
- (void)computeAutoEnhanceWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)precomputeGeometricValues;
- (void)precomputeImageValuesWithOptionalCompletion:(id)completion;
- (void)setCompositionController:(id)controller;
- (void)setEditSource:(id)source;
- (void)setSettingsDelegate:(id)delegate;
- (void)setVideoFrameTime:(id *)time;
- (void)updateAdjustmentSemanticStyleStatistics:(id)statistics;
- (void)updateAdjustmentSmartToneStatistics:(id)statistics withAccuracy:(int64_t)accuracy;
@end

@implementation PEValuesCalculator

- (PEValuesCalculatorSettings)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

- (PEValuesCalculatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_ensureInitialGeometricValuesAreComputed
{
  if (![(PUPhotoEditImageValues *)self->_initialGeometricValues isComplete])
  {

    [(PEValuesCalculator *)self _ensureCurrentGeometricValuesAreComputed];
  }
}

- (void)_ensureCurrentGeometricValuesAreComputed
{
  if (![(PEValuesCalculator *)self _geometricCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self precomputeGeometricValues];
    computingGeometricValuesGroup = self->_computingGeometricValuesGroup;

    dispatch_group_wait(computingGeometricValuesGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_ensureInitialImageValuesAreComputed
{
  if (![(PUPhotoEditImageValues *)self->_initialImageValues isComplete])
  {

    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
  }
}

- (void)_ensureCurrentImageValuesAreComputed
{
  if (![(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self precomputeImageValues];
    computingImageValuesGroup = self->_computingImageValuesGroup;

    dispatch_group_wait(computingImageValuesGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)computeAutoEnhanceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEValuesCalculator.m" lineNumber:839 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(PEValuesCalculator *)self precomputeImageValues];
  compositionController = [(PEValuesCalculator *)self compositionController];
  v7 = [compositionController copy];

  imageValuesComputationQueue = self->_imageValuesComputationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke;
  block[3] = &unk_279A30DF0;
  v13 = v7;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = a2;
  v9 = handlerCopy;
  v10 = v7;
  dispatch_async(imageValuesComputationQueue, block);
}

void __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__2266;
  v33[4] = __Block_byref_object_dispose__2267;
  v34 = 0;
  v2 = [*(a1 + 32) composition];
  if (([*(a1 + 40) skipGeometricCalculations] & 1) == 0)
  {
    v3 = [*(a1 + 40) currentEditSource];

    if (!v3)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PEValuesCalculator.m" lineNumber:853 description:@"Need an edit source to perform this operation"];
    }

    v4 = objc_alloc(MEMORY[0x277D3AD20]);
    v5 = [*(a1 + 40) editSource];
    v6 = [v4 initWithEditSource:v5];

    [v6 setCompositionController:*(a1 + 32)];
    v7 = [v6 composition];

    v2 = v7;
  }

  v8 = dispatch_semaphore_create(0);
  v9 = [objc_alloc(MEMORY[0x277D3A948]) initWithComposition:v2];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_2;
  v30[3] = &unk_279A30DA0;
  v32 = v33;
  v10 = v8;
  v31 = v10;
  [v9 submit:v30];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2266;
  v28[4] = __Block_byref_object_dispose__2267;
  v29 = 0;
  v11 = dispatch_semaphore_create(0);

  v12 = [objc_alloc(MEMORY[0x277D3A8D8]) initWithComposition:v2];
  v13 = *(a1 + 40);
  if (v13)
  {
    [v13 videoFrameTime];
  }

  else
  {
    v26 = 0uLL;
    v27 = 0;
  }

  v24 = v26;
  v25 = v27;
  [v12 setTime:&v24];
  [v12 setName:@"PU-PIFaceBalanceAutoCalculator"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_3;
  v21[3] = &unk_279A30DA0;
  v23 = v28;
  v14 = v11;
  v22 = v14;
  [v12 submit:v21];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_4;
  v17[3] = &unk_279A30DC8;
  v15 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v15;
  v19 = v28;
  v20 = v33;
  dispatch_async(MEMORY[0x277D85CD0], v17);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v33, 8);
}

void __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = [v3 valueForKey:@"inputCorrectionInfo"];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = 0;
  v3 = [a2 result:&v16];
  v4 = v16;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v3 valueForKey:@"OrigI"];
    [v5 setObject:v6 forKeyedSubscript:@"faceI"];

    v7 = [v3 valueForKey:@"OrigQ"];
    [v5 setObject:v7 forKeyedSubscript:@"faceQ"];

    v8 = [v3 valueForKey:@"Strength"];
    [v5 setObject:v8 forKeyedSubscript:@"faceStrength"];

    v9 = [v3 valueForKey:@"Warmth"];
    [v5 setObject:v9 forKeyedSubscript:@"faceWarmth"];

    v10 = [v3 valueForKey:@"WarmTemp"];
    [v5 setObject:v10 forKeyedSubscript:@"warmTemp"];

    v11 = [v3 valueForKey:@"WarmTint"];
    [v5 setObject:v11 forKeyedSubscript:@"warmTint"];

    v12 = [v3 valueForKey:@"WarmFace"];
    [v5 setObject:v12 forKeyedSubscript:@"warmFace"];

    v13 = [v5 copy];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __62__PEValuesCalculator_computeAutoEnhanceWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) smartToneAutoSuggestion];
  v3 = v2;
  [*(a1 + 32) smartColorAutoSuggestion];
  v4.n128_u64[0] = v6.n128_u64[0];
  v5 = *(*(a1 + 40) + 16);
  v6.n128_u64[0] = v3;

  return v5(v6, v4);
}

- (void)invalidate
{
  currentImageValues = self->_currentImageValues;
  self->_currentImageValues = 0;

  delegate = [(PEValuesCalculator *)self delegate];
  [delegate editValuesCalculatorHasChangedImageValues:self];
}

- (void)setVideoFrameTime:(id *)time
{
  time1 = self->_videoFrameTime;
  v6 = *time;
  if (CMTimeCompare(&time1, &v6))
  {
    v5 = *&time->var0;
    self->_videoFrameTime.epoch = time->var3;
    *&self->_videoFrameTime.value = v5;
    [(PEValuesCalculator *)self invalidate];
  }
}

- (BOOL)hasImageValues
{
  currentImageValues = self->_currentImageValues;
  if (currentImageValues)
  {
    LOBYTE(currentImageValues) = [(PUPhotoEditImageValues *)currentImageValues isComplete];
  }

  return currentImageValues;
}

- (void)precomputeGeometricValues
{
  v34 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke;
  aBlock[3] = &unk_279A30D28;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  currentGeometricValues = self->_currentGeometricValues;
  if (currentGeometricValues && ![(PUPhotoEditImageValues *)currentGeometricValues isComplete])
  {
    v6 = 1;
    goto LABEL_10;
  }

  if ([(PEValuesCalculator *)self _geometricCurrentValuesCacheIsValid])
  {
    v6 = 0;
LABEL_10:
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v9 = @"Y";
      }

      else
      {
        v9 = @"N";
      }

      if ([(PEValuesCalculator *)self _geometricCurrentValuesCacheIsValid])
      {
        v10 = @"Y";
      }

      else
      {
        v10 = @"N";
      }

      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "skipping precomputeGeometricValues; request pending? %@, cache valid? %@", buf, 0x16u);
    }

LABEL_19:
    v4[2](v4);
    goto LABEL_20;
  }

  if (self->_skipGeometricCalculations)
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "skipping precomputeGeometricValues - skipGeometricCalculations = YES", buf, 2u);
    }

    goto LABEL_19;
  }

  currentEditSource = [(PEValuesCalculator *)self currentEditSource];
  if (!currentEditSource)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEValuesCalculator.m" lineNumber:674 description:@"Need an edit source to perform this operation"];
  }

  compositionController = [(PEValuesCalculator *)self compositionController];
  v13 = [compositionController copy];

  if (!v13)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEValuesCalculator.m" lineNumber:676 description:@"Need a composition controller to perform this operation"];
  }

  objc_storeStrong(&self->_compositionControllerForCurrentValues, v13);
  v14 = objc_alloc_init(PUPhotoEditImageValues);
  v15 = self->_currentGeometricValues;
  self->_currentGeometricValues = v14;

  if ([objc_opt_class() shouldRunGeometricAutoCalculatorForSource:currentEditSource])
  {
    if (self->_initialGeometricValues)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_alloc_init(PUPhotoEditImageValues);
      initialGeometricValues = self->_initialGeometricValues;
      self->_initialGeometricValues = v16;
    }

    dispatch_group_enter(self->_computingGeometricValuesGroup);
    geometricValuesComputationQueue = self->_geometricValuesComputationQueue;
    computingGeometricValuesGroup = self->_computingGeometricValuesGroup;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_190;
    v23[3] = &unk_279A30D78;
    v24 = v13;
    selfCopy = self;
    v28 = v4;
    v26 = currentEditSource;
    v27 = v16;
    v20 = v16;
    dispatch_group_async(computingGeometricValuesGroup, geometricValuesComputationQueue, v23);
  }

  else
  {
    v4[2](v4);
  }

LABEL_20:
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2;
  block[3] = &unk_279A30D28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_190(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = objc_alloc(MEMORY[0x277D3AD20]), [*(a1 + 40) editSource], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "initWithEditSource:", v3), v3, objc_msgSend(v4, "setCompositionController:", *(a1 + 32)), objc_msgSend(v4, "composition"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = PLPhotoEditGetLog();
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GeometricAutoCalculators", " enableTelemetry=YES ", buf, 2u);
    }

    v10 = dispatch_group_create();
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, "beginning geometric calculators", buf, 2u);
    }

    if (PECanRenderPortrait_onceToken != -1)
    {
      dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
    }

    if (PECanRenderPortrait_canRenderPortrait == 1 && (*(*(a1 + 40) + 80) & 1) != 0 || (v12 = [objc_opt_class() shouldRunGeometricAutoCalculatorForSource:*(a1 + 48)], v13 = *(a1 + 40), v12) && ((*(v13 + 81) & 1) != 0 || *(v13 + 82) == 1))
    {
      v14 = objc_opt_new();
      v13 = *(a1 + 40);
    }

    else
    {
      v14 = 0;
    }

    *buf = 0;
    v59 = buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__2266;
    v62 = __Block_byref_object_dispose__2267;
    v63 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__2266;
    v56[4] = __Block_byref_object_dispose__2267;
    v57 = 0;
    if (*(v13 + 81) == 1)
    {
      dispatch_group_enter(v10);
      v16 = [objc_alloc(MEMORY[0x277D3A8B8]) initWithComposition:v5];
      [v16 setFaceObservationCache:v14];
      [v16 setMaxAutoStraighten:*(*(a1 + 40) + 88)];
      v17 = *(a1 + 40);
      if (v17)
      {
        [v17 videoFrameTime];
      }

      else
      {
        v54 = 0uLL;
        v55 = 0;
      }

      v52 = v54;
      v53 = v55;
      [v16 setTime:&v52];
      [v16 setName:@"PU-PICropAutoCalculator"];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_195;
      v47[3] = &unk_279A30CB0;
      v50 = v56;
      v48 = v10;
      v49 = v9;
      v51 = v7;
      [v16 submit:v47];

      v13 = *(a1 + 40);
    }

    if (*(v13 + 82) == 1)
    {
      dispatch_group_enter(v10);
      v18 = [objc_alloc(MEMORY[0x277D3A930]) initWithComposition:v5];
      [v18 setFaceObservationCache:v14];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 40) + 96)];
      [v18 setMaxAutoYaw:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 40) + 104)];
      [v18 setMaxAutoPitch:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 40) + 112)];
      [v18 setMaxAutoAngle:v21];

      [v18 setDisableOnPanos:*(*(a1 + 40) + 128)];
      [v18 setDisableOnFrontFacingCameraImages:*(*(a1 + 40) + 129)];
      [v18 setMaxFaceSize:*(*(a1 + 40) + 120)];
      [v18 setShouldRunBuildingCheck:1];
      [v18 setDebugFilesEnabled:1];
      [v18 setDebugFilesPrefix:@"Edit"];
      [v18 setName:@"PU-PIPerspectiveAutoCalculator"];
      v22 = *(a1 + 40);
      if (v22)
      {
        [v22 videoFrameTime];
      }

      else
      {
        v45 = 0uLL;
        v46 = 0;
      }

      v52 = v45;
      v53 = v46;
      [v18 setTime:&v52];
      v23 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_204;
      block[3] = &unk_279A30FB0;
      v40 = v18;
      v43 = buf;
      v41 = v10;
      v42 = v9;
      v44 = v7;
      v24 = v18;
      dispatch_async(v23, block);

      v13 = *(a1 + 40);
    }

    v25 = *(v13 + 16);
    v26 = *(*(a1 + 40) + 64);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_206;
    v30[3] = &unk_279A30D50;
    v35 = *(a1 + 64);
    v36 = v56;
    v37 = buf;
    v27 = *(a1 + 40);
    v31 = v25;
    v32 = v27;
    v33 = *(a1 + 56);
    v34 = v9;
    v38 = v7;
    v28 = v9;
    v29 = v25;
    dispatch_group_notify(v10, v26, v30);

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = *(*(a1 + 64) + 16);

    v15();
  }
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_195(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Error in crop autocalculator: %@", buf, 0xCu);
    }
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PICropAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v10, OS_SIGNPOST_EVENT, v11, "GeometricAutoCalculators", "PICropAutoCalculator Complete", buf, 2u);
  }
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_204(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2_205;
  v5[3] = &unk_279A30CB0;
  v8 = *(a1 + 56);
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v7 = v3;
  v9 = v4;
  [v2 submit:v5];
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_206(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  [*(a1 + 32) setAutoCropValues:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) setAutoPerspectiveValues:*(*(*(a1 + 80) + 8) + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2_207;
  block[3] = &unk_279A31000;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = v2;
  v11 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = *(a1 + 48);
  if (v4)
  {
    [v4 setAutoCropValues:*(*(*(a1 + 72) + 8) + 40)];
    [*(a1 + 48) setAutoPerspectiveValues:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 48) setComplete:1];
  }

  dispatch_group_leave(*(*(a1 + 40) + 72));
  v5 = *(a1 + 56);
  v6 = v5;
  v7 = *(a1 + 88);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v6, OS_SIGNPOST_INTERVAL_END, v7, "GeometricAutoCalculators", " enableTelemetry=YES ", v8, 2u);
  }
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2_207(uint64_t a1)
{
  [*(a1 + 32) setComplete:1];
  v2 = [*(a1 + 40) delegate];
  [v2 editValuesCalculatorHasChangedGeometricValues:*(a1 + 40)];
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2_205(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Error in perspective autocalculator: %@", buf, 0xCu);
    }
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PIPerspectiveAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v10, OS_SIGNPOST_EVENT, v11, "GeometricAutoCalculators", "PIPerspectiveAutoCalculator Complete", buf, 2u);
  }
}

void __47__PEValuesCalculator_precomputeGeometricValues__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 editValuesCalculatorDidFinishComputingGeometricValues:*(a1 + 32)];
  }
}

- (void)precomputeImageValuesWithOptionalCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  currentImageValues = self->_currentImageValues;
  if (currentImageValues && ![(PUPhotoEditImageValues *)currentImageValues isComplete])
  {
    v7 = 1;
    goto LABEL_10;
  }

  if ([(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    v7 = 0;
LABEL_10:
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v15 = @"Y";
      }

      else
      {
        v15 = @"N";
      }

      if ([(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
      {
        v16 = @"Y";
      }

      else
      {
        v16 = @"N";
      }

      *buf = 138412546;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "skipping precomputeImageValuesWithOptionalCompletion; request pending? %@, cache valid? %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      dispatch_group_notify(self->_computingImageValuesGroup, self->_imageValuesComputationQueue, completionCopy);
    }

    goto LABEL_22;
  }

  compositionController = [(PEValuesCalculator *)self compositionController];
  v9 = [compositionController copy];

  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEValuesCalculator.m" lineNumber:406 description:@"Need a composition controller to perform this operation"];
  }

  objc_storeStrong(&self->_compositionControllerForCurrentValues, v9);
  v10 = objc_alloc_init(PUPhotoEditImageValues);
  v11 = self->_currentImageValues;
  self->_currentImageValues = v10;

  delegate = [(PEValuesCalculator *)self delegate];
  [delegate editValuesCalculatorHasChangedImageValues:self];

  if (self->_initialImageValues)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(PUPhotoEditImageValues);
    initialImageValues = self->_initialImageValues;
    self->_initialImageValues = v13;
  }

  dispatch_group_enter(self->_computingImageValuesGroup);
  imageValuesComputationQueue = self->_imageValuesComputationQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke;
  v23[3] = &unk_279A30D00;
  v24 = v9;
  selfCopy = self;
  v29 = a2;
  v26 = v10;
  v27 = v13;
  v28 = completionCopy;
  v19 = v13;
  v20 = v10;
  v21 = v9;
  dispatch_sync(imageValuesComputationQueue, v23);

LABEL_22:
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) composition];
  if (([*(a1 + 40) skipGeometricCalculations] & 1) == 0 && *(a1 + 32))
  {
    v3 = [*(a1 + 40) currentEditSource];
    if (!v3)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"PEValuesCalculator.m" lineNumber:432 description:@"Need an edit source to perform this operation"];
    }

    v4 = objc_alloc(MEMORY[0x277D3AD20]);
    v5 = [*(a1 + 40) editSource];
    v6 = [v4 initWithEditSource:v5];

    [v6 setCompositionController:*(a1 + 32)];
    v7 = [v6 composition];

    v2 = v7;
  }

  if (v2)
  {
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x3032000000;
    v85[3] = __Block_byref_object_copy__2266;
    v85[4] = __Block_byref_object_dispose__2267;
    v86 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3032000000;
    v83[3] = __Block_byref_object_copy__2266;
    v83[4] = __Block_byref_object_dispose__2267;
    v84 = 0;
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x3032000000;
    v81[3] = __Block_byref_object_copy__2266;
    v81[4] = __Block_byref_object_dispose__2267;
    v82 = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x3032000000;
    v79[3] = __Block_byref_object_copy__2266;
    v79[4] = __Block_byref_object_dispose__2267;
    v80 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x3032000000;
    v77[3] = __Block_byref_object_copy__2266;
    v77[4] = __Block_byref_object_dispose__2267;
    v78 = 0;
    v8 = PLPhotoEditGetLog();
    v9 = os_signpost_id_generate(v8);
    v10 = v8;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EnterEditAutoCalculators", " enableTelemetry=YES ", &buf, 2u);
    }

    v12 = dispatch_group_create();
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "beginning calculators", &buf, 2u);
    }

    if (PECanRenderPortrait_onceToken != -1)
    {
      dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
    }

    v14 = PECanRenderPortrait_canRenderPortrait;
    if (PECanRenderPortrait_canRenderPortrait == 1 && (*(*(a1 + 40) + 80) & 1) != 0 || (v15 = objc_opt_class(), [*(a1 + 40) editSource], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v15) = objc_msgSend(v15, "shouldRunGeometricAutoCalculatorForSource:", v16), v16, v15) && ((v17 = *(a1 + 40), (*(v17 + 81) & 1) != 0) || *(v17 + 82) == 1))
    {
      v18 = objc_opt_new();
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:2];
    v20 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = @"NO";
      if (v14)
      {
        v21 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_25E6E9000, v20, OS_LOG_TYPE_DEFAULT, "will we do the portrait calculator? %@", &buf, 0xCu);
    }

    v22 = *(a1 + 40);
    if (v14)
    {
      if (*(v22 + 80) == 1)
      {
        dispatch_group_enter(v12);
        v23 = [objc_alloc(MEMORY[0x277D3A940]) initWithComposition:v2];
        [v23 setFaceObservationCache:v18];
        [v23 setName:@"PU-PIPortraitAutoCalculator"];
        [v23 setPriority:v19];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_155;
        v72[3] = &unk_279A30CB0;
        v75 = v79;
        v73 = v12;
        v74 = v11;
        v76 = v9;
        [v23 submit:v72];

        v22 = *(a1 + 40);
      }

      if (*(v22 + 83) == 1)
      {
        dispatch_group_enter(v12);
        v24 = [objc_alloc(MEMORY[0x277D3A8D0]) initWithComposition:v2];
        [v24 setName:@"PU-PIDepthEffectApertureAutoCalculator"];
        [v24 setPriority:v19];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_161;
        v67[3] = &unk_279A30CB0;
        v70 = v77;
        v68 = v12;
        v69 = v11;
        v71 = v9;
        [v24 submit:v67];

        v22 = *(a1 + 40);
      }
    }

    if (*(v22 + 84) == 1)
    {
      dispatch_group_enter(v12);
      v25 = [objc_alloc(MEMORY[0x277D3A9A8]) initWithComposition:v2];
      v26 = *(a1 + 40);
      if (v26)
      {
        [v26 videoFrameTime];
      }

      else
      {
        v65 = 0uLL;
        v66 = 0;
      }

      buf = v65;
      v88 = v66;
      [v25 setTime:&buf];
      [v25 setName:@"PU-PISmartToneAutoCalculator"];
      [v25 setPriority:v19];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_166;
      v60[3] = &unk_279A30CB0;
      v63 = v85;
      v61 = v12;
      v62 = v11;
      v64 = v9;
      [v25 submit:v60];

      v22 = *(a1 + 40);
    }

    if (*(v22 + 85) == 1)
    {
      dispatch_group_enter(v12);
      v27 = [objc_alloc(MEMORY[0x277D3A990]) initWithComposition:v2];
      v28 = *(a1 + 40);
      if (v28)
      {
        [v28 videoFrameTime];
      }

      else
      {
        v58 = 0uLL;
        v59 = 0;
      }

      buf = v58;
      v88 = v59;
      [v27 setTime:&buf];
      [v27 setName:@"PU-PISmartColorAutoCalculator"];
      [v27 setPriority:v19];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_174;
      v53[3] = &unk_279A30CB0;
      v56 = v83;
      v54 = v12;
      v55 = v11;
      v57 = v9;
      [v27 submit:v53];

      v22 = *(a1 + 40);
    }

    if (*(v22 + 86) == 1)
    {
      dispatch_group_enter(v12);
      v29 = [objc_alloc(MEMORY[0x277D3A970]) initWithComposition:v2];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_176;
      v48[3] = &unk_279A30CB0;
      v51 = v81;
      v49 = v12;
      v50 = v11;
      v52 = v9;
      [v29 submit:v48];

      v22 = *(a1 + 40);
    }

    v30 = *(v22 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_177;
    block[3] = &unk_279A30CD8;
    v42 = v85;
    v43 = v83;
    v31 = *(a1 + 48);
    v44 = v81;
    v45 = v79;
    v46 = v77;
    v32 = *(a1 + 40);
    v37 = v31;
    v38 = v32;
    v39 = *(a1 + 56);
    v33 = *(a1 + 64);
    v40 = v11;
    v41 = v33;
    v47 = v9;
    v34 = v11;
    dispatch_group_notify(v12, v30, block);

    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v79, 8);

    _Block_object_dispose(v81, 8);
    _Block_object_dispose(v83, 8);

    _Block_object_dispose(v85, 8);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_155(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Error in portrait autocalculator: %@", buf, 0xCu);
    }
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PIPortraitAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v10, OS_SIGNPOST_EVENT, v11, "EnterEditAutoCalculators", "PIPortraitAutoCalculator Complete", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_161(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Error in depth autocalculator: %@", buf, 0xCu);
    }
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PIDepthEffectApertureAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v10, OS_SIGNPOST_EVENT, v11, "EnterEditAutoCalculators", "PIDepthEffectApertureAutoCalculator Complete", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_166(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if ([MEMORY[0x277D3AD20] currentDeviceShouldAllowLocalLight])
    {
      goto LABEL_7;
    }

    v7 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
    [v7 removeObjectForKey:@"inputLocalLight"];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_ERROR, "Error in smart tone autocalculator: %@", buf, 0xCu);
    }
  }

LABEL_7:
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v11 = *(a1 + 40);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v12, OS_SIGNPOST_EVENT, v13, "EnterEditAutoCalculators", "PISmartToneAutoCalculator Complete", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_174(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Error in smart color autocalculator: %@", buf, 0xCu);
    }
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PISmartColorAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v10, OS_SIGNPOST_EVENT, v11, "EnterEditAutoCalculators", "PISmartColorAutoCalculator Complete", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_176(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v3 = [a2 result:&v17];
  v4 = v17;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [v4 code];
    v8 = PLPhotoEditGetLog();
    v9 = v8;
    if (v7 == 9)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v4;
        v10 = "Asset is not supported for Photographic Styles (%@)";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_25E6E9000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      v10 = "Error in semantic style autocalculator: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PISemanticStyleAutoCalculator completed", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v14 = *(a1 + 40);
  v15 = v14;
  v16 = *(a1 + 56);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v15, OS_SIGNPOST_EVENT, v16, "EnterEditAutoCalculators", "PISemanticStyleAutoCalculator Complete", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_177(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v2, OS_LOG_TYPE_DEFAULT, "All calculators complete", buf, 2u);
  }

  v3 = MEMORY[0x277D3AC20];
  v4 = *MEMORY[0x277D3ABC0];
  v5 = [MEMORY[0x277D3A9A0] inputLightKey];
  v6 = [v3 valueForType:1 adjustmentKey:v4 settingKey:v5];
  [v6 floatValue];
  v8 = v7;

  v9 = *(*(*(a1 + 72) + 8) + 40);
  if (v9)
  {
    v10 = [v9 objectForKey:@"autoValue"];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      v8 = v12;
    }
  }

  v13 = MEMORY[0x277D3AC20];
  v14 = *MEMORY[0x277D3ABB8];
  v15 = [MEMORY[0x277D3A988] inputColorKey];
  v16 = [v13 valueForType:1 adjustmentKey:v14 settingKey:v15];
  [v16 floatValue];
  v18 = v17;

  v19 = *(*(*(a1 + 80) + 8) + 40);
  if (v19)
  {
    v20 = [v19 objectForKey:@"satAutoValue"];
    v21 = v20;
    if (v20)
    {
      [v20 floatValue];
      v18 = v22;
    }
  }

  [*(a1 + 32) setSmartToneStatistics:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) setSmartColorStatistics:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 32) setSemanticStyleStatistics:*(*(*(a1 + 88) + 8) + 40)];
  [*(a1 + 32) setSmartToneAutoSuggestion:v8];
  [*(a1 + 32) setSmartColorAutoSuggestion:v18];
  [*(a1 + 32) setPortraitValues:*(*(*(a1 + 96) + 8) + 40)];
  [*(a1 + 32) setApertureValues:*(*(*(a1 + 104) + 8) + 40)];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_186;
  v33 = &unk_279A31000;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v34 = v23;
  v35 = v24;
  dispatch_async(MEMORY[0x277D85CD0], &v30);
  v25 = *(a1 + 48);
  if (v25)
  {
    [v25 setSmartToneStatistics:{*(*(*(a1 + 72) + 8) + 40), v30, v31, v32, v33}];
    [*(a1 + 48) setSmartColorStatistics:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 48) setSemanticStyleStatistics:*(*(*(a1 + 88) + 8) + 40)];
    [*(a1 + 48) setSmartToneAutoSuggestion:v8];
    [*(a1 + 48) setSmartColorAutoSuggestion:v18];
    [*(a1 + 48) setPortraitValues:*(*(*(a1 + 96) + 8) + 40)];
    [*(a1 + 48) setApertureValues:*(*(*(a1 + 104) + 8) + 40)];
    [*(a1 + 48) setComplete:1];
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    (*(v26 + 16))();
  }

  dispatch_group_leave(*(*(a1 + 40) + 56));
  v27 = *(a1 + 56);
  v28 = v27;
  v29 = *(a1 + 112);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v28, OS_SIGNPOST_INTERVAL_END, v29, "EnterEditAutoCalculators", " enableTelemetry=YES ", buf, 2u);
  }
}

void __66__PEValuesCalculator_precomputeImageValuesWithOptionalCompletion___block_invoke_186(uint64_t a1)
{
  [*(a1 + 32) setComplete:1];
  v2 = [*(a1 + 40) delegate];
  [v2 editValuesCalculatorHasChangedImageValues:*(a1 + 40)];
}

- (BOOL)_geometricCurrentValuesCacheIsValid
{
  if (![(PUPhotoEditImageValues *)self->_currentGeometricValues isComplete]|| !self->_compositionControllerForCurrentValues)
  {
    return 0;
  }

  v3 = MEMORY[0x277D3AC20];
  compositionController = [(PEValuesCalculator *)self compositionController];
  v5 = [v3 compositionController:compositionController isGeometryEqualToCompositionController:self->_compositionControllerForCurrentValues];

  return v5;
}

- (BOOL)_imageCurrentValuesCacheIsValid
{
  if (![(PUPhotoEditImageValues *)self->_currentImageValues isComplete]|| !self->_compositionControllerForCurrentValues)
  {
    return 0;
  }

  v3 = MEMORY[0x277D3AC20];
  compositionController = [(PEValuesCalculator *)self compositionController];
  v5 = [v3 compositionController:compositionController isGeometryEqualToCompositionController:self->_compositionControllerForCurrentValues];

  return v5;
}

- (id)autoPerspectiveValuesWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _geometricCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialGeometricValuesAreComputed];
    v4 = 32;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentGeometricValuesAreComputed];
    v4 = 16;
  }

  autoPerspectiveValues = [*(&self->super.isa + v4) autoPerspectiveValues];

  return autoPerspectiveValues;
}

- (id)autoCropValuesWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _geometricCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialGeometricValuesAreComputed];
    v4 = 32;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentGeometricValuesAreComputed];
    v4 = 16;
  }

  autoCropValues = [*(&self->super.isa + v4) autoCropValues];

  return autoCropValues;
}

- (void)updateAdjustmentSemanticStyleStatistics:(id)statistics
{
  statisticsCopy = statistics;
  semanticStyleStatistics = [(PEValuesCalculator *)self semanticStyleStatistics];
  [statisticsCopy updateWithSemStyleInfo:semanticStyleStatistics];
}

- (id)semanticStyleStatistics
{
  if ([(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
    v3 = 8;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureInitialImageValuesAreComputed];
    v3 = 24;
  }

  semanticStyleStatistics = [*(&self->super.isa + v3) semanticStyleStatistics];

  return semanticStyleStatistics;
}

- (double)smartColorAutoSuggestion
{
  [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
  currentImageValues = self->_currentImageValues;

  [(PUPhotoEditImageValues *)currentImageValues smartColorAutoSuggestion];
  return result;
}

- (double)smartToneAutoSuggestion
{
  [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
  currentImageValues = self->_currentImageValues;

  [(PUPhotoEditImageValues *)currentImageValues smartToneAutoSuggestion];
  return result;
}

- (id)smartColorStatisticsWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialImageValuesAreComputed];
    v4 = 24;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
    v4 = 8;
  }

  smartColorStatistics = [*(&self->super.isa + v4) smartColorStatistics];

  return smartColorStatistics;
}

- (void)updateAdjustmentSmartToneStatistics:(id)statistics withAccuracy:(int64_t)accuracy
{
  statisticsCopy = statistics;
  v7 = [(PEValuesCalculator *)self smartToneStatisticsWithAccuracy:accuracy];
  [statisticsCopy setStatistics:v7];
}

- (id)smartToneStatisticsWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialImageValuesAreComputed];
    v4 = 24;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
    v4 = 8;
  }

  smartToneStatistics = [*(&self->super.isa + v4) smartToneStatistics];

  return smartToneStatistics;
}

- (id)apertureValuesWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialImageValuesAreComputed];
    v4 = 24;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
    v4 = 8;
  }

  apertureValues = [*(&self->super.isa + v4) apertureValues];

  return apertureValues;
}

- (id)portraitValuesWithAccuracy:(int64_t)accuracy
{
  if (accuracy && ![(PEValuesCalculator *)self _imageCurrentValuesCacheIsValid])
  {
    [(PEValuesCalculator *)self _ensureInitialImageValuesAreComputed];
    v4 = 24;
  }

  else
  {
    [(PEValuesCalculator *)self _ensureCurrentImageValuesAreComputed];
    v4 = 8;
  }

  portraitValues = [*(&self->super.isa + v4) portraitValues];

  return portraitValues;
}

- (void)setEditSource:(id)source
{
  sourceCopy = source;
  p_editSource = &self->_editSource;
  if (self->_editSource != sourceCopy)
  {
    v13 = sourceCopy;
    objc_storeStrong(p_editSource, source);
    currentImageValues = self->_currentImageValues;
    self->_currentImageValues = 0;

    currentGeometricValues = self->_currentGeometricValues;
    self->_currentGeometricValues = 0;

    initialImageValues = self->_initialImageValues;
    self->_initialImageValues = 0;

    initialGeometricValues = self->_initialGeometricValues;
    self->_initialGeometricValues = 0;

    compositionControllerForCurrentValues = self->_compositionControllerForCurrentValues;
    self->_compositionControllerForCurrentValues = 0;

    delegate = [(PEValuesCalculator *)self delegate];
    [delegate editValuesCalculatorHasChangedImageValues:self];

    sourceCopy = v13;
  }

  MEMORY[0x2821F96F8](p_editSource, sourceCopy);
}

- (void)setCompositionController:(id)controller
{
  controllerCopy = controller;
  p_compositionController = &self->_compositionController;
  if (self->_compositionController != controllerCopy)
  {
    v13 = controllerCopy;
    objc_storeStrong(p_compositionController, controller);
    currentImageValues = self->_currentImageValues;
    self->_currentImageValues = 0;

    currentGeometricValues = self->_currentGeometricValues;
    self->_currentGeometricValues = 0;

    initialImageValues = self->_initialImageValues;
    self->_initialImageValues = 0;

    initialGeometricValues = self->_initialGeometricValues;
    self->_initialGeometricValues = 0;

    compositionControllerForCurrentValues = self->_compositionControllerForCurrentValues;
    self->_compositionControllerForCurrentValues = 0;

    delegate = [(PEValuesCalculator *)self delegate];
    [delegate editValuesCalculatorHasChangedImageValues:self];

    controllerCopy = v13;
  }

  MEMORY[0x2821F96F8](p_compositionController, controllerCopy);
}

- (void)setSettingsDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_settingsDelegate, obj);
    [(PEValuesCalculator *)self _updateSettings];
    v5 = obj;
  }
}

- (void)_updateSettings
{
  settingsDelegate = [(PEValuesCalculator *)self settingsDelegate];

  if (settingsDelegate)
  {
    settingsDelegate2 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditPortraitAutoCalc = [settingsDelegate2 enableEnterEditPortraitAutoCalc];

    settingsDelegate3 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditCropAutoCalc = [settingsDelegate3 enableEnterEditCropAutoCalc];

    settingsDelegate4 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditPerspectiveAutoCalc = [settingsDelegate4 enableEnterEditPerspectiveAutoCalc];

    settingsDelegate5 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditDepthEffectAutoCalc = [settingsDelegate5 enableEnterEditDepthEffectAutoCalc];

    settingsDelegate6 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditSmartToneAutoCalc = [settingsDelegate6 enableEnterEditSmartToneAutoCalc];

    settingsDelegate7 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditSmartColorAutoCalc = [settingsDelegate7 enableEnterEditSmartColorAutoCalc];

    settingsDelegate8 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.enableEnterEditSemanticStyleAutoCalc = [settingsDelegate8 enableEnterEditSemanticStyleAutoCalc];

    settingsDelegate9 = [(PEValuesCalculator *)self settingsDelegate];
    [settingsDelegate9 autoStraightenMaxAngle];
    self->_settings.autoStraightenMaxAngle = v12;

    settingsDelegate10 = [(PEValuesCalculator *)self settingsDelegate];
    [settingsDelegate10 autoPerspectiveMaxYaw];
    self->_settings.autoPerspectiveMaxYaw = v14;

    settingsDelegate11 = [(PEValuesCalculator *)self settingsDelegate];
    [settingsDelegate11 autoPerspectiveMaxPitch];
    self->_settings.autoPerspectiveMaxPitch = v16;

    settingsDelegate12 = [(PEValuesCalculator *)self settingsDelegate];
    [settingsDelegate12 autoPerspectiveMaxAngle];
    self->_settings.autoPerspectiveMaxAngle = v18;

    settingsDelegate13 = [(PEValuesCalculator *)self settingsDelegate];
    [settingsDelegate13 autoPerspectiveMaxFaceSize];
    self->_settings.autoPerspectiveMaxFaceSize = v20;

    settingsDelegate14 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.autoPerspectiveDisableOnPanos = [settingsDelegate14 autoPerspectiveDisableOnPanos];

    settingsDelegate15 = [(PEValuesCalculator *)self settingsDelegate];
    self->_settings.autoPerspectiveDisableOnFrontFacingCameraImages = [settingsDelegate15 autoPerspectiveDisableOnFrontFacingCameraImages];
  }

  else
  {
    *&self->_settings.enableEnterEditDepthEffectAutoCalc = 16843009;
    *&self->_settings.enableEnterEditPortraitAutoCalc = 16843009;
    *&self->_settings.autoStraightenMaxAngle = xmmword_25E75DD20;
    *&self->_settings.autoPerspectiveMaxPitch = xmmword_25E75DD30;
    self->_settings.autoPerspectiveMaxFaceSize = 0.0;
    *&self->_settings.autoPerspectiveDisableOnPanos = 257;
  }
}

- (PEValuesCalculator)init
{
  v12.receiver = self;
  v12.super_class = PEValuesCalculator;
  v2 = [(PEValuesCalculator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photos.PUPhotoEditImageValuesCalculator", 0);
    imageValuesComputationQueue = v2->_imageValuesComputationQueue;
    v2->_imageValuesComputationQueue = v3;

    v5 = dispatch_group_create();
    computingImageValuesGroup = v2->_computingImageValuesGroup;
    v2->_computingImageValuesGroup = v5;

    v7 = dispatch_queue_create("com.apple.photos.PUPhotoEditGeometricValuesCalculator", 0);
    geometricValuesComputationQueue = v2->_geometricValuesComputationQueue;
    v2->_geometricValuesComputationQueue = v7;

    v9 = dispatch_group_create();
    computingGeometricValuesGroup = v2->_computingGeometricValuesGroup;
    v2->_computingGeometricValuesGroup = v9;

    [(PEValuesCalculator *)v2 _updateSettings];
  }

  return v2;
}

+ (BOOL)shouldRunGeometricAutoCalculatorForSource:(id)source
{
  if (source)
  {
    sourceCopy = source;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end