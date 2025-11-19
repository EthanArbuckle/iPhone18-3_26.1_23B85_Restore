@interface PLCompositionHelper
+ (BOOL)compositionController:(id)a3 isCropConstraintEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isDepthIntensityEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isEffectFilterEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isEffectFilterIntensityEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isGeometryEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isPortraitEqualToCompositionController:(id)a4;
+ (BOOL)compositionController:(id)a3 isPortraitIntensityEqualToCompositionController:(id)a4;
+ (BOOL)compositionControllerHasAnyAutoEnhancement:(id)a3;
+ (BOOL)isIdentityCompositionController:(id)a3;
+ (BOOL)isIdentityCompositionController:(id)a3 forKeys:(id)a4;
+ (BOOL)isKeyOnlyAdjustmentForCompositionController:(id)a3 key:(id)a4;
+ (CGSize)synchronousInputSizeForCompositionController:(id)a3;
+ (PIAdjustmentConstants)adjustmentConstants;
+ (id)activeEffectAdjustmentForCompositionController:(id)a3;
+ (id)defaultValueForAdjustmentKey:(id)a3 settingKey:(id)a4;
+ (id)identityValueForAdjustmentKey:(id)a3 settingKey:(id)a4;
+ (id)maxValueForAdjustmentKey:(id)a3 settingKey:(id)a4;
+ (id)minMaxValueForAdjustmentKey:(id)a3 settingKey:(id)a4;
+ (id)minValueForAdjustmentKey:(id)a3 settingKey:(id)a4;
+ (id)newIdentityCompositionController;
+ (id)photosSchema;
+ (id)validatedCompositionCopyFor:(id)a3 mediaType:(int64_t)a4;
+ (id)valueForCompositionController:(id)a3 adjustmentKey:(id)a4 settingKey:(id)a5;
+ (id)valueForType:(int64_t)a3 adjustmentKey:(id)a4 settingKey:(id)a5;
+ (void)compositionController:(id)a3 applyAssetVariation:(unsigned __int16)a4 withRecipe:(id)a5;
+ (void)compositionController:(id)a3 setEffectFilterName:(id)a4 version:(int64_t)a5;
+ (void)compositionController:(id)a3 setInputOrientation:(int64_t)a4;
+ (void)compositionController:(id)a3 updateSemanticEnhanceFromCameraMetadata:(id)a4 exportProperties:(id)a5;
@end

@implementation PLCompositionHelper

+ (void)compositionController:(id)a3 updateSemanticEnhanceFromCameraMetadata:(id)a4 exportProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 wantsSemanticEnhanceForCameraMetadata:v9])
  {
    v11 = [v8 adjustmentConstants];
    v12 = [v11 PISemanticEnhanceAdjustmentKey];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__PLCompositionHelper_compositionController_updateSemanticEnhanceFromCameraMetadata_exportProperties___block_invoke;
    v13[3] = &unk_1E7569B90;
    v14 = v10;
    v15 = v9;
    [v8 modifyAdjustmentWithKey:v12 modificationBlock:v13];
  }
}

void __102__PLCompositionHelper_compositionController_updateSemanticEnhanceFromCameraMetadata_exportProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 baseEXIFOrientation];
  [v4 setEnabled:1];
  v6 = [*(a1 + 40) semanticEnhanceScene];
  [*(a1 + 40) semanticEnhanceSceneConfidence];
  [v4 setScene:v6 confidence:?];
  v7 = [*(a1 + 40) foodAndDrinkObservations];
  [v4 setBoundingBoxesFromObservations:v7 orientation:v5];

  v8 = [*(a1 + 40) faceObservations];
  [v4 setFaceBoundingBoxesFromObservations:v8 orientation:v5];
}

+ (BOOL)isKeyOnlyAdjustmentForCompositionController:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 adjustmentControllerForKey:v6];

  if (v7)
  {
    v8 = [v5 adjustmentKeys];
    if ([v8 count] == 1)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 isEqualToString:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)compositionController:(id)a3 applyAssetVariation:(unsigned __int16)a4 withRecipe:(id)a5
{
  v6 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 copy];
  if (v6)
  {
    v11 = [a1 adjustmentConstants];
    v12 = [v11 PIAutoLoopAdjustmentKey];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __76__PLCompositionHelper_compositionController_applyAssetVariation_withRecipe___block_invoke;
    v36[3] = &unk_1E7569B28;
    v37 = v9;
    v38 = v6;
    [v8 modifyAdjustmentWithKey:v12 modificationBlock:v36];

    if (v6 <= 2)
    {
      v13 = [a1 adjustmentConstants];
      v14 = [v13 PIMuteAdjustmentKey];
      [v8 removeAdjustmentWithKey:v14];
    }

    v35 = 0;
    [getPIPhotoEditHelperClass() updateCropAdjustmentControllerFor:v8 beforeCompositionController:v10 error:&v35];
    v15 = v35;
    if (v15)
    {
      v16 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to update crop while applying asset variation: %@", buf, 0xCu);
      }
    }

    v17 = [a1 adjustmentConstants];
    v18 = [v17 PITrimAdjustmentKey];
    [v8 removeAdjustmentWithKey:v18];

    v19 = [a1 adjustmentConstants];
    v20 = [v19 PILivePhotoKeyFrameAdjustmentKey];
    [v8 removeAdjustmentWithKey:v20];

    v21 = [v8 depthAdjustmentController];

    if (v21)
    {
      v22 = [a1 adjustmentConstants];
      v23 = [v22 PIDepthAdjustmentKey];
      [v8 modifyAdjustmentWithKey:v23 modificationBlock:&__block_literal_global_25];
    }

    v24 = [v8 portraitAdjustmentController];

    if (v24)
    {
      v25 = [a1 adjustmentConstants];
      v26 = [v25 PIPortraitAdjustmentKey];
      [v8 modifyAdjustmentWithKey:v26 modificationBlock:&__block_literal_global_28_23691];
    }

    v27 = v37;
  }

  else
  {
    v32 = [a1 adjustmentConstants];
    v33 = [v32 PIAutoLoopAdjustmentKey];
    [v8 removeAdjustmentWithKey:v33];

    v39 = 0;
    [getPIPhotoEditHelperClass() updateCropAdjustmentControllerFor:v8 beforeCompositionController:v10 error:&v39];
    v34 = v39;
    if (!v34)
    {
      goto LABEL_14;
    }

    v15 = v34;
    v27 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v15;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to update crop while applying asset variation: %@", buf, 0xCu);
    }
  }

LABEL_14:
  v28 = [a1 adjustmentConstants];
  v29 = [v28 PIInpaintAdjustmentKey];
  [v8 removeAdjustmentWithKey:v29];

  v30 = [a1 adjustmentConstants];
  v31 = [v30 PIRetouchAdjustmentKey];
  [v8 removeAdjustmentWithKey:v31];
}

void __76__PLCompositionHelper_compositionController_applyAssetVariation_withRecipe___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRecipe:v3];
  [v4 setEnabled:1];
  v5 = [getPIPhotoEditHelperClass() stringForAutoLoopFlavor:*(a1 + 40)];
  [v4 setFlavor:v5];
}

+ (void)compositionController:(id)a3 setInputOrientation:(int64_t)a4
{
  v6 = a3;
  [v6 setImageOrientation:a4];
  v7 = [v6 userOrientation];
  v8 = [v6 orientationAdjustmentController];

  if (a4 != 1 || v8)
  {
    v9 = [a1 adjustmentConstants];
    v10 = [v9 PIOrientationAdjustmentKey];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PLCompositionHelper_compositionController_setInputOrientation___block_invoke;
    v11[3] = &unk_1E7569B00;
    v12 = v6;
    v13 = v7;
    [v12 modifyAdjustmentWithKey:v10 modificationBlock:v11];
  }
}

void __65__PLCompositionHelper_compositionController_setInputOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageOrientation];
  v5 = *(a1 + 40);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getNUOrientationConcatSymbolLoc_ptr;
  v13 = getNUOrientationConcatSymbolLoc_ptr;
  if (!getNUOrientationConcatSymbolLoc_ptr)
  {
    v7 = NeutrinoCoreLibrary();
    v11[3] = dlsym(v7, "NUOrientationConcat");
    getNUOrientationConcatSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    [v3 setOrientation:{v6(v4, v5)}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUOrientation SOFT_LINKED_NUOrientationConcat(NUOrientation, NUOrientation)"}];
    [v8 handleFailureInFunction:v9 file:@"PLCompositionHelper.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

+ (void)compositionController:(id)a3 setEffectFilterName:(id)a4 version:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 adjustmentConstants];
  v10 = [v7 copy];
  v11 = [getPIPhotoEditHelperClass() is3DEffect:v8];
  v12 = [v9 PIEffectAdjustmentKey];
  v13 = [v9 PIEffect3DAdjustmentKey];
  if (v11)
  {
    v14 = [v9 PIEffect3DAdjustmentKey];

    v15 = [v9 PIEffectAdjustmentKey];

    v12 = v14;
    v13 = v15;
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__PLCompositionHelper_compositionController_setEffectFilterName_version___block_invoke;
  v20 = &unk_1E7569AD8;
  v21 = v8;
  v22 = a5;
  v16 = v8;
  [v10 modifyAdjustmentWithKey:v12 modificationBlock:&v17];
  [v10 removeAdjustmentWithKey:{v13, v17, v18, v19, v20}];
  [v7 applyChangesFromCompositionController:v10];
}

void __73__PLCompositionHelper_compositionController_setEffectFilterName_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [getPIPhotoEditHelperClass() effectNameForFilterName:*(a1 + 32)];
  [v3 setKind:v4];
  [v3 setVersion:*(a1 + 40)];
  [v3 setEnabled:1];
}

+ (CGSize)synchronousInputSizeForCompositionController:(id)a3
{
  v3 = [PLCompositionHelper validatedCompositionCopyFor:a3];
  v4 = [getPIPhotoEditHelperClass() geometryRequestWithComposition:v3];
  v5 = [getPIPhotoEditHelperClass() pipelineFiltersForOriginalGeometry];
  [v4 setPipelineFilters:v5];

  v16 = 0;
  v6 = [v4 submitSynchronous:&v16];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 geometry];
    v9 = [v8 size];
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {
    _PFAssertContinueHandler();
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (BOOL)compositionController:(id)a3 isGeometryEqualToCompositionController:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 composition];
  v8 = [a1 adjustmentConstants];
  v9 = [v8 PICropAdjustmentKey];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  LOBYTE(a4) = [v6 isEqual:v7 forKeys:v10 visualChangesOnly:1];

  return a4;
}

+ (BOOL)compositionController:(id)a3 isDepthIntensityEqualToCompositionController:(id)a4
{
  v5 = a4;
  v6 = [a3 depthAdjustmentController];
  v7 = [v5 depthAdjustmentController];

  [v6 aperture];
  v9 = v8;
  [v7 aperture];
  LOBYTE(v5) = v9 == v10;

  return v5;
}

+ (BOOL)compositionController:(id)a3 isPortraitIntensityEqualToCompositionController:(id)a4
{
  v5 = a4;
  v6 = [a3 portraitAdjustmentController];
  v7 = [v5 portraitAdjustmentController];

  v8 = 0.5;
  v9 = 0.5;
  if (v6)
  {
    [v6 strength];
    v9 = v10;
  }

  if (v7)
  {
    [v7 strength];
    v8 = v11;
  }

  return v9 == v8;
}

+ (BOOL)compositionController:(id)a3 isPortraitEqualToCompositionController:(id)a4
{
  v5 = a4;
  v6 = [a3 portraitAdjustmentController];
  v7 = [v5 portraitAdjustmentController];

  v8 = [v6 kind];
  v9 = [v7 kind];
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 enabled];
    v11 = v10 ^ [v7 enabled] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (BOOL)compositionController:(id)a3 isEffectFilterIntensityEqualToCompositionController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 effectAdjustmentController];
  v8 = [v6 effect3DAdjustmentController];

  v9 = 1.0;
  if ([v7 enabled])
  {
    [v7 intensity];
    v9 = v10;
  }

  if ([v8 enabled])
  {
    [v8 intensity];
    v9 = v11;
  }

  v12 = [v5 effectAdjustmentController];
  v13 = [v5 effect3DAdjustmentController];

  v14 = 1.0;
  if ([v12 enabled])
  {
    [v12 intensity];
    v14 = v15;
  }

  if ([v13 enabled])
  {
    [v13 intensity];
    v14 = v16;
  }

  return v9 == v14;
}

+ (BOOL)compositionController:(id)a3 isEffectFilterEqualToCompositionController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 effectAdjustmentController];
  v8 = [v6 effectAdjustmentController];
  if (v7 | v8)
  {
    v9 = [v7 kind];
    v10 = [v8 kind];
    v11 = [v9 isEqualToString:v10];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v5 effect3DAdjustmentController];
  v13 = [v6 effect3DAdjustmentController];
  if (v12 | v13)
  {
    v14 = [v12 kind];
    v15 = [v13 kind];
    v16 = [v14 isEqualToString:v15];
  }

  else
  {
    v16 = 1;
  }

  return v11 & v16;
}

+ (BOOL)compositionController:(id)a3 isCropConstraintEqualToCompositionController:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 composition];
  v8 = [a1 adjustmentConstants];
  v9 = [v8 PICropAdjustmentKey];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLCompositionHelper_compositionController_isCropConstraintEqualToCompositionController___block_invoke;
  v12[3] = &__block_descriptor_40_e69_B32__0__NSString_8__PIAdjustmentController_16__NUGenericAdjustment_24l;
  v12[4] = a1;
  LOBYTE(a1) = [v6 isEqual:v7 forKeys:v10 comparisonBlock:v12];

  return a1;
}

uint64_t __90__PLCompositionHelper_compositionController_isCropConstraintEqualToCompositionController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 adjustmentConstants];
  v12 = [v11 PICropAdjustmentKey];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    v14 = [v7 isEqual:v8 forKeys:&unk_1F0FBFA00];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (id)activeEffectAdjustmentForCompositionController:(id)a3
{
  v3 = a3;
  v4 = [v3 effect3DAdjustmentController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 effectAdjustmentController];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)compositionControllerHasAnyAutoEnhancement:(id)a3
{
  v3 = a3;
  v4 = [v3 smartToneAdjustmentController];
  if ([v4 isAuto])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 smartColorAdjustmentController];
    if ([v6 isAuto])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 rawNoiseReductionAdjustmentController];
      if ([v7 isAuto])
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 smartBWAdjustmentController];
        if ([v8 isAuto])
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 sharpenAdjustmentController];
          if ([v9 isAuto])
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 whiteBalanceAdjustmentController];
            if ([v10 isAuto])
            {
              v5 = 1;
            }

            else
            {
              v11 = [v3 noiseReductionAdjustmentController];
              if ([v11 isAuto])
              {
                v5 = 1;
              }

              else
              {
                v12 = [v3 definitionAdjustmentController];
                v5 = [v12 isAuto];
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

+ (id)valueForCompositionController:(id)a3 adjustmentKey:(id)a4 settingKey:(id)a5
{
  v7 = a5;
  v8 = [a3 adjustmentControllerForKey:a4];
  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

+ (id)valueForType:(int64_t)a3 adjustmentKey:(id)a4 settingKey:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = [objc_opt_class() minValueForAdjustmentKey:v7 settingKey:v8];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v10 = [objc_opt_class() maxValueForAdjustmentKey:v7 settingKey:v8];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v10 = [objc_opt_class() identityValueForAdjustmentKey:v7 settingKey:v8];
  }

  else
  {
    v10 = [objc_opt_class() defaultValueForAdjustmentKey:v7 settingKey:v8];
  }

  v9 = v10;
LABEL_11:

  return v9;
}

+ (id)maxValueForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() minMaxValueForAdjustmentKey:v6 settingKey:v5];

  v8 = [v7 max];

  return v8;
}

+ (id)minValueForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() minMaxValueForAdjustmentKey:v6 settingKey:v5];

  v8 = [v7 min];

  return v8;
}

+ (id)minMaxValueForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:v6 settingKey:v5];

  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = objc_alloc_init(PLMinMaxSettings);
    v10 = [v8 ui_minimumValue];
    if (v10)
    {
      [(PLMinMaxSettings *)v9 setMin:v10];
    }

    else
    {
      v11 = [v8 minimumValue];
      [(PLMinMaxSettings *)v9 setMin:v11];
    }

    v12 = [v8 ui_maximumValue];
    if (v12)
    {
      [(PLMinMaxSettings *)v9 setMax:v12];
    }

    else
    {
      v13 = [v8 maximumValue];
      [(PLMinMaxSettings *)v9 setMax:v13];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identityValueForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:v6 settingKey:v5];

  getNUBoolSettingClass();
  getNUEnumSettingClass();
  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    v8 = [v7 identityValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultValueForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:v6 settingKey:v5];

  getNUBoolSettingClass();
  getNUEnumSettingClass();
  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    v8 = [v7 defaultValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)newIdentityCompositionController
{
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  v3 = [getPIPhotoEditHelperClass() newComposition];
  v4 = [PIPhotoEditHelperClass newCompositionControllerWithComposition:v3];

  return v4;
}

+ (BOOL)isIdentityCompositionController:(id)a3 forKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  v9 = [getPIPhotoEditHelperClass() newComposition];
  v10 = [PIPhotoEditHelperClass newCompositionControllerWithComposition:v9];

  v11 = [a1 adjustmentConstants];
  v12 = [v11 PIOrientationAdjustmentKey];
  v13 = [v7 containsObject:v12];

  if (v13)
  {
    v14 = [v6 orientationAdjustmentController];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 orientation];
      if (v16 != [v6 imageOrientation])
      {

        v35 = 0;
        goto LABEL_13;
      }
    }
  }

  v17 = [v7 mutableCopy];
  v18 = [a1 adjustmentConstants];
  v19 = [v18 PIOrientationAdjustmentKey];
  [v17 removeObject:v19];

  v20 = [a1 adjustmentConstants];
  v21 = [v20 PISlomoAdjustmentKey];
  [v17 removeObject:v21];

  v22 = [v6 semanticStyleAdjustmentController];
  LODWORD(v21) = [v22 enabled];

  if (v21)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v24 = getPISemanticStyleAutoCalculatorClass_softClass;
    v50 = getPISemanticStyleAutoCalculatorClass_softClass;
    if (!getPISemanticStyleAutoCalculatorClass_softClass)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __getPISemanticStyleAutoCalculatorClass_block_invoke;
      v46[3] = &unk_1E7577EA0;
      v46[4] = &v47;
      __getPISemanticStyleAutoCalculatorClass_block_invoke(v46);
      v24 = v48[3];
    }

    v25 = v24;
    _Block_object_dispose(&v47, 8);
    v26 = [v24 alloc];
    v27 = [v6 composition];
    v28 = [v26 initWithComposition:v27];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__PLCompositionHelper_isIdentityCompositionController_forKeys___block_invoke;
    v37[3] = &unk_1E7569A90;
    v41 = a1;
    v29 = v6;
    v38 = v29;
    v40 = &v42;
    v30 = v23;
    v39 = v30;
    [v28 submit:v37];
    dispatch_group_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v43 + 24) == 1)
    {
      v31 = objc_alloc(getPICompositionControllerClass());
      v32 = [v29 composition];
      v6 = [v31 initWithComposition:v32];

      v33 = getPISemanticStyleAdjustmentKey();
      [v6 removeAdjustmentWithKey:v33];
    }

    else
    {
      v6 = v29;
    }

    _Block_object_dispose(&v42, 8);
  }

  v34 = [v10 composition];
  v35 = [v6 isEqual:v34 forKeys:v17 visualChangesOnly:1];

LABEL_13:
  return v35;
}

void __63__PLCompositionHelper_isIdentityCompositionController_forKeys___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v3 = [a2 result:&v19];
  v4 = v19;
  if (v4)
  {
    v5 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 localizedDescription];
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "isIdentityCompositionController error while running semantic style autocalc: %@", buf, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v3)
  {
    v7 = [v3 allKeys];
    v8 = [v7 count];

    if (v8)
    {
      v5 = [*(a1 + 56) newIdentityCompositionController];
      v9 = getPISemanticStyleAdjustmentKey();
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __63__PLCompositionHelper_isIdentityCompositionController_forKeys___block_invoke_2;
      v17 = &unk_1E7569A68;
      v18 = v3;
      [v5 modifyAdjustmentWithKey:v9 modificationBlock:&v14];

      v10 = [*(a1 + 32) composition];
      v11 = getPISemanticStyleAdjustmentKey();
      v22[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v13 = [v5 isEqual:v10 forKeys:v12 visualChangesOnly:1];

      if (v13)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));
}

+ (BOOL)isIdentityCompositionController:(id)a3
{
  v4 = a3;
  v5 = [v4 availableKeys];
  LOBYTE(a1) = [a1 isIdentityCompositionController:v4 forKeys:v5];

  return a1;
}

+ (PIAdjustmentConstants)adjustmentConstants
{
  if (adjustmentConstants_onceToken != -1)
  {
    dispatch_once(&adjustmentConstants_onceToken, &__block_literal_global_3);
  }

  v3 = adjustmentConstants_constants;

  return v3;
}

void __42__PLCompositionHelper_adjustmentConstants__block_invoke()
{
  v0 = [getPIPhotoEditHelperClass() adjustmentConstants];
  v1 = adjustmentConstants_constants;
  adjustmentConstants_constants = v0;
}

+ (id)photosSchema
{
  if (photosSchema_onceToken != -1)
  {
    dispatch_once(&photosSchema_onceToken, &__block_literal_global_23738);
  }

  v3 = photosSchema_schema;

  return v3;
}

void __35__PLCompositionHelper_photosSchema__block_invoke()
{
  v0 = [getPIPhotoEditHelperClass() photosSchema];
  v1 = photosSchema_schema;
  photosSchema_schema = v0;
}

+ (id)validatedCompositionCopyFor:(id)a3 mediaType:(int64_t)a4
{
  v5 = a3;
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  v7 = [v5 composition];

  v8 = [PIPhotoEditHelperClass validatedCompositionCopyForComposition:v7 mediaType:a4];

  return v8;
}

@end