@interface PEAutoEnhanceActionHelper
+ (void)applyAutoEnhance:(id)a3 replacesAffectedAdjustments:(BOOL)a4 useCompositionIntensity:(BOOL)a5 enabled:(BOOL)a6 completion:(id)a7;
@end

@implementation PEAutoEnhanceActionHelper

+ (void)applyAutoEnhance:(id)a3 replacesAffectedAdjustments:(BOOL)a4 useCompositionIntensity:(BOOL)a5 enabled:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a7;
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager applyAutoEnhance", buf, 2u);
  }

  v14 = objc_alloc(MEMORY[0x277D2CFD0]);
  v15 = [v11 composition];
  v16 = [v14 initWithComposition:v15];

  [v16 setName:@"PAAutoEnhance-imageProperties"];
  v37 = 0;
  v17 = [v16 submitSynchronous:&v37];
  v18 = v37;
  v19 = [v17 properties];
  if (v19)
  {
    v27 = v9;
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = objc_alloc_init(PEAutoAdjustmentController);
    [*(v32 + 5) setImageProperties:v19];
    v20 = objc_alloc_init(PEValuesCalculator);
    [(PEValuesCalculator *)v20 setCompositionController:v11];
    [(PEValuesCalculator *)v20 setSkipGeometricCalculations:1];
    if (v10)
    {
      v21 = [v11 adjustmentConstants];
      v22 = [v21 PISmartToneAdjustmentKey];
      [v11 removeAdjustmentWithKey:v22];

      v23 = [v11 adjustmentConstants];
      v24 = [v23 PISmartColorAdjustmentKey];
      [v11 removeAdjustmentWithKey:v24];
    }

    if (v8)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __117__PEAutoEnhanceActionHelper_applyAutoEnhance_replacesAffectedAdjustments_useCompositionIntensity_enabled_completion___block_invoke;
      aBlock[3] = &unk_279A30B40;
      v30 = buf;
      v29 = v12;
      v25 = _Block_copy(aBlock);
      [*(v32 + 5) enableAutoEnhanceOnCompositionController:v11 useCompositionIntensity:v27 valuesCalculator:v20 completionHandler:v25];
    }

    else
    {
      [*(v32 + 5) disableAutoEnhanceOnCompositionController:v11];
      v12[2](v12);
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

    v12[2](v12);
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