@interface PEAutoEnhanceActionHelper
+ (void)applyAutoEnhance:(id)enhance replacesAffectedAdjustments:(BOOL)adjustments useCompositionIntensity:(BOOL)intensity enabled:(BOOL)enabled completion:(id)completion;
@end

@implementation PEAutoEnhanceActionHelper

+ (void)applyAutoEnhance:(id)enhance replacesAffectedAdjustments:(BOOL)adjustments useCompositionIntensity:(BOOL)intensity enabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  intensityCopy = intensity;
  adjustmentsCopy = adjustments;
  enhanceCopy = enhance;
  completionCopy = completion;
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager applyAutoEnhance", buf, 2u);
  }

  v14 = objc_alloc(MEMORY[0x277D2CFD0]);
  composition = [enhanceCopy composition];
  v16 = [v14 initWithComposition:composition];

  [v16 setName:@"PAAutoEnhance-imageProperties"];
  v37 = 0;
  v17 = [v16 submitSynchronous:&v37];
  v18 = v37;
  properties = [v17 properties];
  if (properties)
  {
    v27 = intensityCopy;
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = objc_alloc_init(PEAutoAdjustmentController);
    [*(v32 + 5) setImageProperties:properties];
    v20 = objc_alloc_init(PEValuesCalculator);
    [(PEValuesCalculator *)v20 setCompositionController:enhanceCopy];
    [(PEValuesCalculator *)v20 setSkipGeometricCalculations:1];
    if (adjustmentsCopy)
    {
      adjustmentConstants = [enhanceCopy adjustmentConstants];
      pISmartToneAdjustmentKey = [adjustmentConstants PISmartToneAdjustmentKey];
      [enhanceCopy removeAdjustmentWithKey:pISmartToneAdjustmentKey];

      adjustmentConstants2 = [enhanceCopy adjustmentConstants];
      pISmartColorAdjustmentKey = [adjustmentConstants2 PISmartColorAdjustmentKey];
      [enhanceCopy removeAdjustmentWithKey:pISmartColorAdjustmentKey];
    }

    if (enabledCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __117__PEAutoEnhanceActionHelper_applyAutoEnhance_replacesAffectedAdjustments_useCompositionIntensity_enabled_completion___block_invoke;
      aBlock[3] = &unk_279A30B40;
      v30 = buf;
      v29 = completionCopy;
      v25 = _Block_copy(aBlock);
      [*(v32 + 5) enableAutoEnhanceOnCompositionController:enhanceCopy useCompositionIntensity:v27 valuesCalculator:v20 completionHandler:v25];
    }

    else
    {
      [*(v32 + 5) disableAutoEnhanceOnCompositionController:enhanceCopy];
      completionCopy[2](completionCopy);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v26, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to fetch imageProperties for auto-enhance", buf, 2u);
    }

    completionCopy[2](completionCopy);
  }
}

uint64_t __117__PEAutoEnhanceActionHelper_applyAutoEnhance_replacesAffectedAdjustments_useCompositionIntensity_enabled_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end