@interface PEAutoAdjustmentController
+ (BOOL)isAutoEnhanceEnabledForAsset:(id)a3;
+ (BOOL)isAutoEnhanceEnabledForCompositionController:(id)a3;
- (PEAutoAdjustmentController)init;
- (double)defaultAutoEnhanceIntensityForCompositionController:(id)a3;
- (void)_applyAutoValuesOnCompositionController:(id)a3 whiteBalanceSettings:(id)a4 redEyeCorrections:(id)a5 smartToneLevel:(double)a6 smartColorLevel:(double)a7 valuesCalculator:(id)a8;
- (void)_enableAutoEnhanceOnCompositionController:(id)a3 valuesCalculator:(id)a4 useCompositionIntensity:(BOOL)a5 completionHandler:(id)a6;
- (void)_revertAutoValuesOnCompositionController:(id)a3;
- (void)calculateStatisticsForCompositionController:(id)a3 valuesCalculator:(id)a4 completionHandler:(id)a5;
- (void)disableAutoEnhanceOnCompositionController:(id)a3;
- (void)enableAutoEnhanceOnCompositionController:(id)a3 useCompositionIntensity:(BOOL)a4 valuesCalculator:(id)a5 completionHandler:(id)a6;
- (void)ensureCacheUpToDateForValuesCalculator:(id)a3 completionHandler:(id)a4;
- (void)invalidateCachedAdjustments;
@end

@implementation PEAutoAdjustmentController

- (void)_revertAutoValuesOnCompositionController:(id)a3
{
  stashedPreviousManualComposition = self->_stashedPreviousManualComposition;
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (stashedPreviousManualComposition)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_DEFAULT, "Removing auto enhance. Reverting to previously saved manual adjustments.", buf, 2u);
    }

    v8 = self->_stashedPreviousManualComposition;
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_DEFAULT, "Removing auto enhance. Reverting to identity adjustments.", buf, 2u);
    }

    v8 = [MEMORY[0x277D3AC20] newIdentityCompositionController];
  }

  v9 = v8;
  v10 = self->_stashedPreviousManualComposition;
  self->_stashedPreviousManualComposition = 0;

  v11 = [v5 copy];
  v12 = *MEMORY[0x277D3ABC0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke;
  v22[3] = &unk_279A302D0;
  v13 = v9;
  v23 = v13;
  [v11 modifyAdjustmentWithKey:v12 modificationBlock:v22];
  v14 = *MEMORY[0x277D3ABB8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke_2;
  v20[3] = &unk_279A30BB8;
  v15 = v13;
  v21 = v15;
  [v11 modifyAdjustmentWithKey:v14 modificationBlock:v20];
  v16 = *MEMORY[0x277D3ABE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke_3;
  v18[3] = &unk_279A30C00;
  v19 = v15;
  v17 = v15;
  [v11 modifyAdjustmentWithKey:v16 modificationBlock:v18];
  [v11 removeAdjustmentWithKey:*MEMORY[0x277D3AAB8]];
  [v5 applyChangesFromCompositionController:v11];
}

void __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 smartToneAdjustmentController];
  [v3 setEnabled:{objc_msgSend(v4, "enabled")}];
  [v4 inputLight];
  [v3 setInputLight:?];
  [v3 setIsAuto:0];
}

void __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 smartColorAdjustmentController];
  [v3 setEnabled:{objc_msgSend(v4, "enabled")}];
  [v4 inputColor];
  [v3 setInputColor:?];
  [v3 setIsAuto:0];
}

void __71__PEAutoAdjustmentController__revertAutoValuesOnCompositionController___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) whiteBalanceAdjustmentController];
  [v5 setColorType:{objc_msgSend(v3, "colorType")}];
  [v5 setEnabled:{objc_msgSend(v3, "enabled")}];
  [v3 faceStrength];
  [v5 setFaceStrength:?];
  [v3 faceWarmth];
  [v5 setFaceWarmth:?];
  [v3 faceI];
  [v5 setFaceI:?];
  [v3 faceQ];
  [v5 setFaceQ:?];
  [v3 grayStrength];
  [v5 setGrayStrength:?];
  [v3 grayWarmth];
  [v5 setGrayWarmth:?];
  [v3 grayY];
  [v5 setGrayY:?];
  [v3 grayI];
  [v5 setGrayI:?];
  [v3 grayQ];
  [v5 setGrayQ:?];
  [v3 temperature];
  if (v4 > 0.0)
  {
    [v3 temperature];
    [v5 setTemperature:?];
  }

  [v3 tint];
  [v5 setTint:?];
  [v3 warmTemp];
  [v5 setWarmTemp:?];
  [v3 warmTint];
  [v5 setWarmTint:?];
  [v5 setWarmFace:{objc_msgSend(v3, "warmFace")}];
  [v5 setIsAuto:0];
}

- (void)_applyAutoValuesOnCompositionController:(id)a3 whiteBalanceSettings:(id)a4 redEyeCorrections:(id)a5 smartToneLevel:(double)a6 smartColorLevel:(double)a7 valuesCalculator:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v43 = v15;
    v44 = 2112;
    v45 = v16;
    v46 = 2048;
    v47 = a6;
    v48 = 2048;
    v49 = a7;
    _os_log_impl(&dword_25E6E9000, v18, OS_LOG_TYPE_DEFAULT, "Applying auto enhance. White Balance: %@\nRed Eye: %@\nSmartTone: %f\nSmartColor: %f", buf, 0x2Au);
  }

  v19 = [v14 adjustmentConstants];
  v20 = [v14 copy];
  stashedPreviousManualComposition = self->_stashedPreviousManualComposition;
  self->_stashedPreviousManualComposition = v20;

  v22 = [v14 copy];
  v23 = [v19 PISmartToneAdjustmentKey];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke;
  v39[3] = &unk_279A2FF58;
  v24 = v17;
  v40 = v24;
  v41 = a6;
  [v22 modifyAdjustmentWithKey:v23 modificationBlock:v39];

  v25 = [v19 PISmartColorAdjustmentKey];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_2;
  v36[3] = &unk_279A2FF80;
  v26 = v24;
  v37 = v26;
  v38 = a7;
  [v22 modifyAdjustmentWithKey:v25 modificationBlock:v36];

  if (v15)
  {
    v27 = [v19 PIWhiteBalanceAdjustmentKey];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_3;
    v34[3] = &unk_279A30C00;
    v35 = v15;
    [v22 modifyAdjustmentWithKey:v27 modificationBlock:v34];
  }

  if (v16)
  {
    v28 = [v19 PIRedEyeAdjustmentKey];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_4;
    v32 = &unk_279A2FFA8;
    v33 = v16;
    [v22 modifyAdjustmentWithKey:v28 modificationBlock:&v29];
  }

  [v14 applyChangesFromCompositionController:{v22, v29, v30, v31, v32}];
}

void __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 updateAdjustmentSmartToneStatistics:v4 withAccuracy:0];
  [v4 setEnabled:1];
  [v4 setInputLight:*(a1 + 40)];
  [v4 setIsAuto:1];
}

void __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 statistics];

  if (!v3)
  {
    v4 = [*(a1 + 32) smartColorStatisticsWithAccuracy:0];
    [v5 setStatistics:v4];
  }

  [v5 setEnabled:1];
  [v5 setInputColor:*(a1 + 40)];
  [v5 setIsAuto:1];
}

void __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 setEnabled:1];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"faceI"];
  [v3 doubleValue];
  [v10 setFaceI:?];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"faceQ"];
  [v4 doubleValue];
  [v10 setFaceQ:?];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"faceStrength"];
  [v5 doubleValue];
  [v10 setFaceStrength:?];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"faceWarmth"];
  [v6 doubleValue];
  [v10 setFaceWarmth:?];

  [v10 setColorType:3];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"warmTemp"];
  [v7 doubleValue];
  [v10 setWarmTemp:?];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"warmTint"];
  [v8 doubleValue];
  [v10 setWarmTint:?];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"warmFace"];
  [v10 setWarmFace:{objc_msgSend(v9, "BOOLValue")}];

  [v10 setIsAuto:1];
}

void __157__PEAutoAdjustmentController__applyAutoValuesOnCompositionController_whiteBalanceSettings_redEyeCorrections_smartToneLevel_smartColorLevel_valuesCalculator___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setInputCorrectionInfo:v2];
  [v3 setIsAuto:1];
  [v3 setEnabled:1];
}

- (double)defaultAutoEnhanceIntensityForCompositionController:(id)a3
{
  v3 = [a3 smartToneAdjustmentController];
  [v3 inputLightDefault];
  v5 = v4;

  return v5;
}

- (void)invalidateCachedAdjustments
{
  self->_cachedValuesAreValid = 0;
  cachedRedEyeCorrections = self->_cachedRedEyeCorrections;
  self->_cachedRedEyeCorrections = 0;

  cachedWhiteBalanceSettings = self->_cachedWhiteBalanceSettings;
  self->_cachedWhiteBalanceSettings = 0;

  self->_cachedSmartToneLevel = 0.0;
  self->_cachedSmartColorLevel = 0.0;
  stashedPreviousManualComposition = self->_stashedPreviousManualComposition;
  self->_stashedPreviousManualComposition = 0;
}

- (void)disableAutoEnhanceOnCompositionController:(id)a3
{
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AutoEnhanceDisableOnComposition", "", buf, 2u);
  }

  if ([(PEAutoAdjustmentController *)self isBusy])
  {
    v12 = _PFAssertFailHandler();
    [(PEAutoAdjustmentController *)v12 ensureCacheUpToDateForValuesCalculator:v13 completionHandler:v14, v15];
  }

  else
  {
    v9 = [v4 copy];
    [(PEAutoAdjustmentController *)self _revertAutoValuesOnCompositionController:v9];
    [v4 applyChangesFromCompositionController:v9];
    v10 = v8;
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v11, OS_SIGNPOST_INTERVAL_END, v6, "AutoEnhanceDisableOnComposition", "", v16, 2u);
    }
  }
}

- (void)ensureCacheUpToDateForValuesCalculator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_cachedValuesAreValid)
  {
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    calculationQueue = self->_calculationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke;
    block[3] = &unk_279A313C0;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(calculationQueue, block);
  }
}

uint64_t __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_2;
      block[3] = &unk_279A31028;
      v17 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v2 = *(a1 + 32);
    }
  }

  if (!*(v2 + 56))
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v2 = *(a1 + 32);
  }

  if (*(a1 + 48))
  {
    v7 = *(v2 + 56);
    v8 = _Block_copy(*(a1 + 48));
    [v7 addObject:v8];

    v2 = *(a1 + 32);
  }

  result = [v2 isBusy];
  if ((result & 1) == 0)
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "Computing auto enhance. No cache, computing it now...", buf, 2u);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v12 = v11;
    [*(a1 + 32) _setBusy:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_11;
    v14[3] = &unk_279A2FF30;
    v13 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v14[5] = v12;
    return [v13 computeAutoEnhanceWithCompletionHandler:v14];
  }

  return result;
}

void __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_11(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_2_12;
  v16[3] = &unk_279A2FF08;
  v13 = *(a1 + 40);
  v16[4] = v11;
  v17 = v10;
  v18 = v9;
  v19 = v13;
  v20 = a4;
  v21 = a5;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, v16);
}

void __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_2_12(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 56);
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v3 - v4;
    _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_DEFAULT, "Finished computing auto enhance. Took %f s", buf, 0xCu);
  }

  *(*(a1 + 32) + 40) = 1;
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  *(*(a1 + 32) + 24) = *(a1 + 64);
  *(*(a1 + 32) + 32) = *(a1 + 72);
  [*(a1 + 32) _setBusy:0];
  v6 = *(*(a1 + 32) + 56);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_13;
    block[3] = &unk_279A30D28;
    v12 = v7;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __87__PEAutoAdjustmentController_ensureCacheUpToDateForValuesCalculator_completionHandler___block_invoke_13(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)calculateStatisticsForCompositionController:(id)a3 valuesCalculator:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLPhotoEditGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AutoEnhanceCalculateStatisticsForComposition", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PEAutoAdjustmentController_calculateStatisticsForCompositionController_valuesCalculator_completionHandler___block_invoke;
  aBlock[3] = &unk_279A2FEE0;
  v21 = v8;
  v22 = v9;
  v23 = v14;
  v24 = v10;
  v25 = v12;
  v15 = v14;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = _Block_copy(aBlock);
  [(PEAutoAdjustmentController *)self ensureCacheUpToDateForValuesCalculator:v17 completionHandler:v19];
}

void __109__PEAutoAdjustmentController_calculateStatisticsForCompositionController_valuesCalculator_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 32) adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__PEAutoAdjustmentController_calculateStatisticsForCompositionController_valuesCalculator_completionHandler___block_invoke_2;
  v13[3] = &unk_279A302D0;
  v14 = *(a1 + 40);
  [v2 modifyAdjustmentWithKey:v4 modificationBlock:v13];

  v5 = [v3 PISmartColorAdjustmentKey];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__PEAutoAdjustmentController_calculateStatisticsForCompositionController_valuesCalculator_completionHandler___block_invoke_3;
  v11[3] = &unk_279A30BB8;
  v12 = *(a1 + 40);
  [v2 modifyAdjustmentWithKey:v5 modificationBlock:v11];

  [*(a1 + 32) applyChangesFromCompositionController:v2];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(a1 + 48);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AutoEnhanceCalculateStatisticsForComposition", "", v10, 2u);
  }
}

void __109__PEAutoAdjustmentController_calculateStatisticsForCompositionController_valuesCalculator_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 statistics];

  if (!v3)
  {
    v4 = [*(a1 + 32) smartColorStatisticsWithAccuracy:0];
    [v5 setStatistics:v4];
  }
}

- (void)_enableAutoEnhanceOnCompositionController:(id)a3 valuesCalculator:(id)a4 useCompositionIntensity:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = PLPhotoEditGetLog();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  v17 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AutoEnhanceEnableOnComposition", "", buf, 2u);
  }

  if ([(PEAutoAdjustmentController *)self isBusy])
  {
    v37 = _PFAssertFailHandler();
    __131__PEAutoAdjustmentController__enableAutoEnhanceOnCompositionController_valuesCalculator_useCompositionIntensity_completionHandler___block_invoke(v37);
  }

  else
  {
    cachedSmartToneLevel = self->_cachedSmartToneLevel;
    if (v7)
    {
      v19 = [v10 smartToneAdjustmentController];
      v20 = v19;
      if (v19)
      {
        [v19 inputLight];
        cachedSmartToneLevel = v21;
      }
    }

    v22 = [v10 copy];
    v23 = [(PEAutoAdjustmentController *)self imageProperties];
    if (v23)
    {
      v24 = v23;
      v38 = v22;
      v25 = v16;
      v26 = v12;
      v27 = v14 - 1;
      v28 = v14;
      v29 = v11;
      v30 = [(PEAutoAdjustmentController *)self imageProperties];
      v31 = [PESupport photoWasTakenWithoutFlashWithImageProperties:v30];

      if (v31)
      {
        cachedRedEyeCorrections = 0;
      }

      else
      {
        cachedRedEyeCorrections = self->_cachedRedEyeCorrections;
      }

      v11 = v29;
      v14 = v28;
      v17 = v27;
      v12 = v26;
      v16 = v25;
      v22 = v38;
    }

    else
    {
      cachedRedEyeCorrections = 0;
    }

    v33 = cachedRedEyeCorrections;
    v34 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v34, OS_LOG_TYPE_DEFAULT, "Computing auto enhance. Using previously cached values.", buf, 2u);
    }

    [(PEAutoAdjustmentController *)self _applyAutoValuesOnCompositionController:v22 whiteBalanceSettings:self->_cachedWhiteBalanceSettings redEyeCorrections:v33 smartToneLevel:v11 smartColorLevel:cachedSmartToneLevel valuesCalculator:self->_cachedSmartColorLevel];
    [v10 applyChangesFromCompositionController:v22];
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __131__PEAutoAdjustmentController__enableAutoEnhanceOnCompositionController_valuesCalculator_useCompositionIntensity_completionHandler___block_invoke;
      block[3] = &unk_279A2FEB8;
      v41 = v12;
      v40 = v16;
      v42 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v35 = v41;
    }

    else
    {
      v36 = v16;
      v35 = v36;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E6E9000, v35, OS_SIGNPOST_INTERVAL_END, v14, "AutoEnhanceEnableOnComposition", "", buf, 2u);
      }
    }
  }
}

void __131__PEAutoAdjustmentController__enableAutoEnhanceOnCompositionController_valuesCalculator_useCompositionIntensity_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v3, OS_SIGNPOST_INTERVAL_END, v4, "AutoEnhanceEnableOnComposition", "", v5, 2u);
  }
}

- (void)enableAutoEnhanceOnCompositionController:(id)a3 useCompositionIntensity:(BOOL)a4 valuesCalculator:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_cachedValuesAreValid)
  {
    [(PEAutoAdjustmentController *)self _enableAutoEnhanceOnCompositionController:v10 valuesCalculator:v11 useCompositionIntensity:v8 completionHandler:v12];
  }

  else
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __130__PEAutoAdjustmentController_enableAutoEnhanceOnCompositionController_useCompositionIntensity_valuesCalculator_completionHandler___block_invoke;
    v13[3] = &unk_279A2FE90;
    objc_copyWeak(&v17, &location);
    v14 = v10;
    v15 = v11;
    v18 = v8;
    v16 = v12;
    [(PEAutoAdjustmentController *)self ensureCacheUpToDateForValuesCalculator:v15 completionHandler:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __130__PEAutoAdjustmentController_enableAutoEnhanceOnCompositionController_useCompositionIntensity_valuesCalculator_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _enableAutoEnhanceOnCompositionController:*(a1 + 32) valuesCalculator:*(a1 + 40) useCompositionIntensity:*(a1 + 64) completionHandler:*(a1 + 48)];
}

- (PEAutoAdjustmentController)init
{
  v6.receiver = self;
  v6.super_class = PEAutoAdjustmentController;
  v2 = [(PEAutoAdjustmentController *)&v6 init];
  v3 = dispatch_queue_create("PEAutoAdjustmentController calculator queue", 0);
  calculationQueue = v2->_calculationQueue;
  v2->_calculationQueue = v3;

  return v2;
}

+ (BOOL)isAutoEnhanceEnabledForCompositionController:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 smartToneAdjustmentController];
    v6 = [v5 isAuto];

    if (v6)
    {
      v7 = [v4 smartColorAdjustmentController];
      v8 = [v7 isAuto];
    }

    else
    {
      v8 = 0;
    }

    v10 = [v4 whiteBalanceAdjustmentController];
    v11 = [v10 canHaveAuto] ^ 1;
    LOBYTE(v9) = v11 & v8;
    if ((v11 & 1) == 0 && v8)
    {
      if (v10 && ([v10 isAuto] & 1) == 0)
      {
        v9 = [v10 enabled] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (BOOL)isAutoEnhanceEnabledForAsset:(id)a3
{
  v6 = 0;
  v3 = [PEAdjustmentDataCache synchronousCompositionControllerForAsset:a3 networkAccessAllowed:0 disposition:&v6 originalComposition:0];
  v4 = [PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:v3];

  return v4;
}

@end