@interface PLCompositionHelper
+ (BOOL)compositionController:(id)controller isCropConstraintEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isDepthIntensityEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isEffectFilterEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isEffectFilterIntensityEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isGeometryEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isPortraitEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionController:(id)controller isPortraitIntensityEqualToCompositionController:(id)compositionController;
+ (BOOL)compositionControllerHasAnyAutoEnhancement:(id)enhancement;
+ (BOOL)isIdentityCompositionController:(id)controller;
+ (BOOL)isIdentityCompositionController:(id)controller forKeys:(id)keys;
+ (BOOL)isKeyOnlyAdjustmentForCompositionController:(id)controller key:(id)key;
+ (CGSize)synchronousInputSizeForCompositionController:(id)controller;
+ (PIAdjustmentConstants)adjustmentConstants;
+ (id)activeEffectAdjustmentForCompositionController:(id)controller;
+ (id)defaultValueForAdjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)identityValueForAdjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)maxValueForAdjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)minMaxValueForAdjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)minValueForAdjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)newIdentityCompositionController;
+ (id)photosSchema;
+ (id)validatedCompositionCopyFor:(id)for mediaType:(int64_t)type;
+ (id)valueForCompositionController:(id)controller adjustmentKey:(id)key settingKey:(id)settingKey;
+ (id)valueForType:(int64_t)type adjustmentKey:(id)key settingKey:(id)settingKey;
+ (void)compositionController:(id)controller applyAssetVariation:(unsigned __int16)variation withRecipe:(id)recipe;
+ (void)compositionController:(id)controller setEffectFilterName:(id)name version:(int64_t)version;
+ (void)compositionController:(id)controller setInputOrientation:(int64_t)orientation;
+ (void)compositionController:(id)controller updateSemanticEnhanceFromCameraMetadata:(id)metadata exportProperties:(id)properties;
@end

@implementation PLCompositionHelper

+ (void)compositionController:(id)controller updateSemanticEnhanceFromCameraMetadata:(id)metadata exportProperties:(id)properties
{
  controllerCopy = controller;
  metadataCopy = metadata;
  propertiesCopy = properties;
  if ([self wantsSemanticEnhanceForCameraMetadata:metadataCopy])
  {
    adjustmentConstants = [controllerCopy adjustmentConstants];
    pISemanticEnhanceAdjustmentKey = [adjustmentConstants PISemanticEnhanceAdjustmentKey];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__PLCompositionHelper_compositionController_updateSemanticEnhanceFromCameraMetadata_exportProperties___block_invoke;
    v13[3] = &unk_1E7569B90;
    v14 = propertiesCopy;
    v15 = metadataCopy;
    [controllerCopy modifyAdjustmentWithKey:pISemanticEnhanceAdjustmentKey modificationBlock:v13];
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

+ (BOOL)isKeyOnlyAdjustmentForCompositionController:(id)controller key:(id)key
{
  controllerCopy = controller;
  keyCopy = key;
  v7 = [controllerCopy adjustmentControllerForKey:keyCopy];

  if (v7)
  {
    adjustmentKeys = [controllerCopy adjustmentKeys];
    if ([adjustmentKeys count] == 1)
    {
      v9 = [adjustmentKeys objectAtIndexedSubscript:0];
      v10 = [v9 isEqualToString:keyCopy];
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

+ (void)compositionController:(id)controller applyAssetVariation:(unsigned __int16)variation withRecipe:(id)recipe
{
  variationCopy = variation;
  v42 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  recipeCopy = recipe;
  v10 = [controllerCopy copy];
  if (variationCopy)
  {
    adjustmentConstants = [self adjustmentConstants];
    pIAutoLoopAdjustmentKey = [adjustmentConstants PIAutoLoopAdjustmentKey];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __76__PLCompositionHelper_compositionController_applyAssetVariation_withRecipe___block_invoke;
    v36[3] = &unk_1E7569B28;
    v37 = recipeCopy;
    v38 = variationCopy;
    [controllerCopy modifyAdjustmentWithKey:pIAutoLoopAdjustmentKey modificationBlock:v36];

    if (variationCopy <= 2)
    {
      adjustmentConstants2 = [self adjustmentConstants];
      pIMuteAdjustmentKey = [adjustmentConstants2 PIMuteAdjustmentKey];
      [controllerCopy removeAdjustmentWithKey:pIMuteAdjustmentKey];
    }

    v35 = 0;
    [getPIPhotoEditHelperClass() updateCropAdjustmentControllerFor:controllerCopy beforeCompositionController:v10 error:&v35];
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

    adjustmentConstants3 = [self adjustmentConstants];
    pITrimAdjustmentKey = [adjustmentConstants3 PITrimAdjustmentKey];
    [controllerCopy removeAdjustmentWithKey:pITrimAdjustmentKey];

    adjustmentConstants4 = [self adjustmentConstants];
    pILivePhotoKeyFrameAdjustmentKey = [adjustmentConstants4 PILivePhotoKeyFrameAdjustmentKey];
    [controllerCopy removeAdjustmentWithKey:pILivePhotoKeyFrameAdjustmentKey];

    depthAdjustmentController = [controllerCopy depthAdjustmentController];

    if (depthAdjustmentController)
    {
      adjustmentConstants5 = [self adjustmentConstants];
      pIDepthAdjustmentKey = [adjustmentConstants5 PIDepthAdjustmentKey];
      [controllerCopy modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:&__block_literal_global_25];
    }

    portraitAdjustmentController = [controllerCopy portraitAdjustmentController];

    if (portraitAdjustmentController)
    {
      adjustmentConstants6 = [self adjustmentConstants];
      pIPortraitAdjustmentKey = [adjustmentConstants6 PIPortraitAdjustmentKey];
      [controllerCopy modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:&__block_literal_global_28_23691];
    }

    v27 = v37;
  }

  else
  {
    adjustmentConstants7 = [self adjustmentConstants];
    pIAutoLoopAdjustmentKey2 = [adjustmentConstants7 PIAutoLoopAdjustmentKey];
    [controllerCopy removeAdjustmentWithKey:pIAutoLoopAdjustmentKey2];

    v39 = 0;
    [getPIPhotoEditHelperClass() updateCropAdjustmentControllerFor:controllerCopy beforeCompositionController:v10 error:&v39];
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
  adjustmentConstants8 = [self adjustmentConstants];
  pIInpaintAdjustmentKey = [adjustmentConstants8 PIInpaintAdjustmentKey];
  [controllerCopy removeAdjustmentWithKey:pIInpaintAdjustmentKey];

  adjustmentConstants9 = [self adjustmentConstants];
  pIRetouchAdjustmentKey = [adjustmentConstants9 PIRetouchAdjustmentKey];
  [controllerCopy removeAdjustmentWithKey:pIRetouchAdjustmentKey];
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

+ (void)compositionController:(id)controller setInputOrientation:(int64_t)orientation
{
  controllerCopy = controller;
  [controllerCopy setImageOrientation:orientation];
  userOrientation = [controllerCopy userOrientation];
  orientationAdjustmentController = [controllerCopy orientationAdjustmentController];

  if (orientation != 1 || orientationAdjustmentController)
  {
    adjustmentConstants = [self adjustmentConstants];
    pIOrientationAdjustmentKey = [adjustmentConstants PIOrientationAdjustmentKey];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PLCompositionHelper_compositionController_setInputOrientation___block_invoke;
    v11[3] = &unk_1E7569B00;
    v12 = controllerCopy;
    v13 = userOrientation;
    [v12 modifyAdjustmentWithKey:pIOrientationAdjustmentKey modificationBlock:v11];
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

+ (void)compositionController:(id)controller setEffectFilterName:(id)name version:(int64_t)version
{
  controllerCopy = controller;
  nameCopy = name;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  v10 = [controllerCopy copy];
  v11 = [getPIPhotoEditHelperClass() is3DEffect:nameCopy];
  pIEffectAdjustmentKey = [adjustmentConstants PIEffectAdjustmentKey];
  pIEffect3DAdjustmentKey = [adjustmentConstants PIEffect3DAdjustmentKey];
  if (v11)
  {
    pIEffect3DAdjustmentKey2 = [adjustmentConstants PIEffect3DAdjustmentKey];

    pIEffectAdjustmentKey2 = [adjustmentConstants PIEffectAdjustmentKey];

    pIEffectAdjustmentKey = pIEffect3DAdjustmentKey2;
    pIEffect3DAdjustmentKey = pIEffectAdjustmentKey2;
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__PLCompositionHelper_compositionController_setEffectFilterName_version___block_invoke;
  v20 = &unk_1E7569AD8;
  v21 = nameCopy;
  versionCopy = version;
  v16 = nameCopy;
  [v10 modifyAdjustmentWithKey:pIEffectAdjustmentKey modificationBlock:&v17];
  [v10 removeAdjustmentWithKey:{pIEffect3DAdjustmentKey, v17, v18, v19, v20}];
  [controllerCopy applyChangesFromCompositionController:v10];
}

void __73__PLCompositionHelper_compositionController_setEffectFilterName_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [getPIPhotoEditHelperClass() effectNameForFilterName:*(a1 + 32)];
  [v3 setKind:v4];
  [v3 setVersion:*(a1 + 40)];
  [v3 setEnabled:1];
}

+ (CGSize)synchronousInputSizeForCompositionController:(id)controller
{
  v3 = [PLCompositionHelper validatedCompositionCopyFor:controller];
  v4 = [getPIPhotoEditHelperClass() geometryRequestWithComposition:v3];
  pipelineFiltersForOriginalGeometry = [getPIPhotoEditHelperClass() pipelineFiltersForOriginalGeometry];
  [v4 setPipelineFilters:pipelineFiltersForOriginalGeometry];

  v16 = 0;
  v6 = [v4 submitSynchronous:&v16];
  v7 = v6;
  if (v6)
  {
    geometry = [v6 geometry];
    v9 = [geometry size];
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

+ (BOOL)compositionController:(id)controller isGeometryEqualToCompositionController:(id)compositionController
{
  v12[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  composition = [compositionController composition];
  adjustmentConstants = [self adjustmentConstants];
  pICropAdjustmentKey = [adjustmentConstants PICropAdjustmentKey];
  v12[0] = pICropAdjustmentKey;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  LOBYTE(compositionController) = [controllerCopy isEqual:composition forKeys:v10 visualChangesOnly:1];

  return compositionController;
}

+ (BOOL)compositionController:(id)controller isDepthIntensityEqualToCompositionController:(id)compositionController
{
  compositionControllerCopy = compositionController;
  depthAdjustmentController = [controller depthAdjustmentController];
  depthAdjustmentController2 = [compositionControllerCopy depthAdjustmentController];

  [depthAdjustmentController aperture];
  v9 = v8;
  [depthAdjustmentController2 aperture];
  LOBYTE(compositionControllerCopy) = v9 == v10;

  return compositionControllerCopy;
}

+ (BOOL)compositionController:(id)controller isPortraitIntensityEqualToCompositionController:(id)compositionController
{
  compositionControllerCopy = compositionController;
  portraitAdjustmentController = [controller portraitAdjustmentController];
  portraitAdjustmentController2 = [compositionControllerCopy portraitAdjustmentController];

  v8 = 0.5;
  v9 = 0.5;
  if (portraitAdjustmentController)
  {
    [portraitAdjustmentController strength];
    v9 = v10;
  }

  if (portraitAdjustmentController2)
  {
    [portraitAdjustmentController2 strength];
    v8 = v11;
  }

  return v9 == v8;
}

+ (BOOL)compositionController:(id)controller isPortraitEqualToCompositionController:(id)compositionController
{
  compositionControllerCopy = compositionController;
  portraitAdjustmentController = [controller portraitAdjustmentController];
  portraitAdjustmentController2 = [compositionControllerCopy portraitAdjustmentController];

  kind = [portraitAdjustmentController kind];
  kind2 = [portraitAdjustmentController2 kind];
  if ([kind isEqualToString:kind2])
  {
    enabled = [portraitAdjustmentController enabled];
    v11 = enabled ^ [portraitAdjustmentController2 enabled] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (BOOL)compositionController:(id)controller isEffectFilterIntensityEqualToCompositionController:(id)compositionController
{
  compositionControllerCopy = compositionController;
  controllerCopy = controller;
  effectAdjustmentController = [controllerCopy effectAdjustmentController];
  effect3DAdjustmentController = [controllerCopy effect3DAdjustmentController];

  v9 = 1.0;
  if ([effectAdjustmentController enabled])
  {
    [effectAdjustmentController intensity];
    v9 = v10;
  }

  if ([effect3DAdjustmentController enabled])
  {
    [effect3DAdjustmentController intensity];
    v9 = v11;
  }

  effectAdjustmentController2 = [compositionControllerCopy effectAdjustmentController];
  effect3DAdjustmentController2 = [compositionControllerCopy effect3DAdjustmentController];

  v14 = 1.0;
  if ([effectAdjustmentController2 enabled])
  {
    [effectAdjustmentController2 intensity];
    v14 = v15;
  }

  if ([effect3DAdjustmentController2 enabled])
  {
    [effect3DAdjustmentController2 intensity];
    v14 = v16;
  }

  return v9 == v14;
}

+ (BOOL)compositionController:(id)controller isEffectFilterEqualToCompositionController:(id)compositionController
{
  controllerCopy = controller;
  compositionControllerCopy = compositionController;
  effectAdjustmentController = [controllerCopy effectAdjustmentController];
  effectAdjustmentController2 = [compositionControllerCopy effectAdjustmentController];
  if (effectAdjustmentController | effectAdjustmentController2)
  {
    kind = [effectAdjustmentController kind];
    kind2 = [effectAdjustmentController2 kind];
    v11 = [kind isEqualToString:kind2];
  }

  else
  {
    v11 = 1;
  }

  effect3DAdjustmentController = [controllerCopy effect3DAdjustmentController];
  effect3DAdjustmentController2 = [compositionControllerCopy effect3DAdjustmentController];
  if (effect3DAdjustmentController | effect3DAdjustmentController2)
  {
    kind3 = [effect3DAdjustmentController kind];
    kind4 = [effect3DAdjustmentController2 kind];
    v16 = [kind3 isEqualToString:kind4];
  }

  else
  {
    v16 = 1;
  }

  return v11 & v16;
}

+ (BOOL)compositionController:(id)controller isCropConstraintEqualToCompositionController:(id)compositionController
{
  v13[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  composition = [compositionController composition];
  adjustmentConstants = [self adjustmentConstants];
  pICropAdjustmentKey = [adjustmentConstants PICropAdjustmentKey];
  v13[0] = pICropAdjustmentKey;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLCompositionHelper_compositionController_isCropConstraintEqualToCompositionController___block_invoke;
  v12[3] = &__block_descriptor_40_e69_B32__0__NSString_8__PIAdjustmentController_16__NUGenericAdjustment_24l;
  v12[4] = self;
  LOBYTE(self) = [controllerCopy isEqual:composition forKeys:v10 comparisonBlock:v12];

  return self;
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

+ (id)activeEffectAdjustmentForCompositionController:(id)controller
{
  controllerCopy = controller;
  effect3DAdjustmentController = [controllerCopy effect3DAdjustmentController];
  v5 = effect3DAdjustmentController;
  if (effect3DAdjustmentController)
  {
    effectAdjustmentController = effect3DAdjustmentController;
  }

  else
  {
    effectAdjustmentController = [controllerCopy effectAdjustmentController];
  }

  v7 = effectAdjustmentController;

  return v7;
}

+ (BOOL)compositionControllerHasAnyAutoEnhancement:(id)enhancement
{
  enhancementCopy = enhancement;
  smartToneAdjustmentController = [enhancementCopy smartToneAdjustmentController];
  if ([smartToneAdjustmentController isAuto])
  {
    isAuto = 1;
  }

  else
  {
    smartColorAdjustmentController = [enhancementCopy smartColorAdjustmentController];
    if ([smartColorAdjustmentController isAuto])
    {
      isAuto = 1;
    }

    else
    {
      rawNoiseReductionAdjustmentController = [enhancementCopy rawNoiseReductionAdjustmentController];
      if ([rawNoiseReductionAdjustmentController isAuto])
      {
        isAuto = 1;
      }

      else
      {
        smartBWAdjustmentController = [enhancementCopy smartBWAdjustmentController];
        if ([smartBWAdjustmentController isAuto])
        {
          isAuto = 1;
        }

        else
        {
          sharpenAdjustmentController = [enhancementCopy sharpenAdjustmentController];
          if ([sharpenAdjustmentController isAuto])
          {
            isAuto = 1;
          }

          else
          {
            whiteBalanceAdjustmentController = [enhancementCopy whiteBalanceAdjustmentController];
            if ([whiteBalanceAdjustmentController isAuto])
            {
              isAuto = 1;
            }

            else
            {
              noiseReductionAdjustmentController = [enhancementCopy noiseReductionAdjustmentController];
              if ([noiseReductionAdjustmentController isAuto])
              {
                isAuto = 1;
              }

              else
              {
                definitionAdjustmentController = [enhancementCopy definitionAdjustmentController];
                isAuto = [definitionAdjustmentController isAuto];
              }
            }
          }
        }
      }
    }
  }

  return isAuto;
}

+ (id)valueForCompositionController:(id)controller adjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  v8 = [controller adjustmentControllerForKey:key];
  v9 = [v8 objectForKeyedSubscript:settingKeyCopy];

  return v9;
}

+ (id)valueForType:(int64_t)type adjustmentKey:(id)key settingKey:(id)settingKey
{
  keyCopy = key;
  settingKeyCopy = settingKey;
  v9 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v10 = [objc_opt_class() minValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v10 = [objc_opt_class() maxValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v10 = [objc_opt_class() identityValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];
  }

  else
  {
    v10 = [objc_opt_class() defaultValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];
  }

  v9 = v10;
LABEL_11:

  return v9;
}

+ (id)maxValueForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  keyCopy = key;
  v7 = [objc_opt_class() minMaxValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];

  v8 = [v7 max];

  return v8;
}

+ (id)minValueForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  keyCopy = key;
  v7 = [objc_opt_class() minMaxValueForAdjustmentKey:keyCopy settingKey:settingKeyCopy];

  v8 = [v7 min];

  return v8;
}

+ (id)minMaxValueForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  keyCopy = key;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:keyCopy settingKey:settingKeyCopy];

  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = objc_alloc_init(PLMinMaxSettings);
    ui_minimumValue = [v8 ui_minimumValue];
    if (ui_minimumValue)
    {
      [(PLMinMaxSettings *)v9 setMin:ui_minimumValue];
    }

    else
    {
      minimumValue = [v8 minimumValue];
      [(PLMinMaxSettings *)v9 setMin:minimumValue];
    }

    ui_maximumValue = [v8 ui_maximumValue];
    if (ui_maximumValue)
    {
      [(PLMinMaxSettings *)v9 setMax:ui_maximumValue];
    }

    else
    {
      maximumValue = [v8 maximumValue];
      [(PLMinMaxSettings *)v9 setMax:maximumValue];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identityValueForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  keyCopy = key;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:keyCopy settingKey:settingKeyCopy];

  getNUBoolSettingClass();
  getNUEnumSettingClass();
  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    identityValue = [v7 identityValue];
  }

  else
  {
    identityValue = 0;
  }

  return identityValue;
}

+ (id)defaultValueForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  keyCopy = key;
  v7 = [getPICompositionControllerClass() settingForAdjustmentKey:keyCopy settingKey:settingKeyCopy];

  getNUBoolSettingClass();
  getNUEnumSettingClass();
  getNUNumberSettingClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    defaultValue = [v7 defaultValue];
  }

  else
  {
    defaultValue = 0;
  }

  return defaultValue;
}

+ (id)newIdentityCompositionController
{
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  newComposition = [getPIPhotoEditHelperClass() newComposition];
  v4 = [PIPhotoEditHelperClass newCompositionControllerWithComposition:newComposition];

  return v4;
}

+ (BOOL)isIdentityCompositionController:(id)controller forKeys:(id)keys
{
  controllerCopy = controller;
  keysCopy = keys;
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  newComposition = [getPIPhotoEditHelperClass() newComposition];
  v10 = [PIPhotoEditHelperClass newCompositionControllerWithComposition:newComposition];

  adjustmentConstants = [self adjustmentConstants];
  pIOrientationAdjustmentKey = [adjustmentConstants PIOrientationAdjustmentKey];
  v13 = [keysCopy containsObject:pIOrientationAdjustmentKey];

  if (v13)
  {
    orientationAdjustmentController = [controllerCopy orientationAdjustmentController];
    v15 = orientationAdjustmentController;
    if (orientationAdjustmentController)
    {
      orientation = [orientationAdjustmentController orientation];
      if (orientation != [controllerCopy imageOrientation])
      {

        v35 = 0;
        goto LABEL_13;
      }
    }
  }

  v17 = [keysCopy mutableCopy];
  adjustmentConstants2 = [self adjustmentConstants];
  pIOrientationAdjustmentKey2 = [adjustmentConstants2 PIOrientationAdjustmentKey];
  [v17 removeObject:pIOrientationAdjustmentKey2];

  adjustmentConstants3 = [self adjustmentConstants];
  pISlomoAdjustmentKey = [adjustmentConstants3 PISlomoAdjustmentKey];
  [v17 removeObject:pISlomoAdjustmentKey];

  semanticStyleAdjustmentController = [controllerCopy semanticStyleAdjustmentController];
  LODWORD(pISlomoAdjustmentKey) = [semanticStyleAdjustmentController enabled];

  if (pISlomoAdjustmentKey)
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
    composition = [controllerCopy composition];
    v28 = [v26 initWithComposition:composition];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__PLCompositionHelper_isIdentityCompositionController_forKeys___block_invoke;
    v37[3] = &unk_1E7569A90;
    selfCopy = self;
    v29 = controllerCopy;
    v38 = v29;
    v40 = &v42;
    v30 = v23;
    v39 = v30;
    [v28 submit:v37];
    dispatch_group_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v43 + 24) == 1)
    {
      v31 = objc_alloc(getPICompositionControllerClass());
      composition2 = [v29 composition];
      controllerCopy = [v31 initWithComposition:composition2];

      v33 = getPISemanticStyleAdjustmentKey();
      [controllerCopy removeAdjustmentWithKey:v33];
    }

    else
    {
      controllerCopy = v29;
    }

    _Block_object_dispose(&v42, 8);
  }

  composition3 = [v10 composition];
  v35 = [controllerCopy isEqual:composition3 forKeys:v17 visualChangesOnly:1];

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

+ (BOOL)isIdentityCompositionController:(id)controller
{
  controllerCopy = controller;
  availableKeys = [controllerCopy availableKeys];
  LOBYTE(self) = [self isIdentityCompositionController:controllerCopy forKeys:availableKeys];

  return self;
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

+ (id)validatedCompositionCopyFor:(id)for mediaType:(int64_t)type
{
  forCopy = for;
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  composition = [forCopy composition];

  v8 = [PIPhotoEditHelperClass validatedCompositionCopyForComposition:composition mediaType:type];

  return v8;
}

@end