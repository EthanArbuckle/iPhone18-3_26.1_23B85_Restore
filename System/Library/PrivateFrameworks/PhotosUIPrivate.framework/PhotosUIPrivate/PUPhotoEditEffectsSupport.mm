@interface PUPhotoEditEffectsSupport
+ (id)identifierForLightingType:(int64_t)type lightingVersion:(int64_t)version;
+ (id)lightingEffectTypesByIdentifier;
+ (int64_t)lightingEffectTypeForIdentifier:(id)identifier;
+ (void)_clearPortraitEffectsWithCompositionController:(id)controller;
+ (void)_clearStandardEffectsWithCompositionController:(id)controller;
+ (void)_clearStylesWithCompositionController:(id)controller;
+ (void)_setEffectFilterName:(id)name withIntensity:(double)intensity withVersion:(unint64_t)version forCompositionController:(id)controller;
+ (void)_setPortraitEffectEnabled:(BOOL)enabled forCompositionController:(id)controller;
+ (void)_setPortraitEffectFilterName:(id)name withVersion:(unint64_t)version forCompositionController:(id)controller portraitInfo:(id)info spillMatteAllowed:(id)allowed;
+ (void)_setStyleWithCast:(id)cast tone:(double)tone color:(double)color intensity:(double)intensity forCompositionController:(id)controller;
+ (void)updateCompositionController:(id)controller withDepthEnabled:(BOOL)enabled livePortraitBehaviorController:(id)behaviorController;
+ (void)updateCompositionController:(id)controller withEffect:(id)effect intensity:(double)intensity updateVersion:(BOOL)version;
+ (void)updateCompositionController:(id)controller withLightingIdentifier:(id)identifier portraitInfo:(id)info spillMatteAllowed:(id)allowed;
@end

@implementation PUPhotoEditEffectsSupport

+ (void)_clearStylesWithCompositionController:(id)controller
{
  controllerCopy = controller;
  semanticStyleAdjustmentController = [controllerCopy semanticStyleAdjustmentController];

  if (semanticStyleAdjustmentController)
  {
    [controllerCopy modifyAdjustmentWithKey:*MEMORY[0x1E69BE0C8] modificationBlock:&__block_literal_global_50_53845];
  }
}

+ (void)_clearPortraitEffectsWithCompositionController:(id)controller
{
  controllerCopy = controller;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
  [controllerCopy removeAdjustmentWithKey:pIPortraitAdjustmentKey];
}

+ (void)_clearStandardEffectsWithCompositionController:(id)controller
{
  controllerCopy = controller;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  pIEffectAdjustmentKey = [adjustmentConstants PIEffectAdjustmentKey];
  [controllerCopy removeAdjustmentWithKey:pIEffectAdjustmentKey];

  pIEffect3DAdjustmentKey = [adjustmentConstants PIEffect3DAdjustmentKey];
  [controllerCopy removeAdjustmentWithKey:pIEffect3DAdjustmentKey];
}

+ (void)_setStyleWithCast:(id)cast tone:(double)tone color:(double)color intensity:(double)intensity forCompositionController:(id)controller
{
  castCopy = cast;
  controllerCopy = controller;
  [self _clearPortraitEffectsWithCompositionController:controllerCopy];
  [self _clearStandardEffectsWithCompositionController:controllerCopy];
  v14 = *MEMORY[0x1E69BE0C8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PUPhotoEditEffectsSupport__setStyleWithCast_tone_color_intensity_forCompositionController___block_invoke;
  v16[3] = &unk_1E7B7AB70;
  v17 = castCopy;
  toneCopy = tone;
  colorCopy = color;
  intensityCopy = intensity;
  v15 = castCopy;
  [controllerCopy modifyAdjustmentWithKey:v14 modificationBlock:v16];
}

void __93__PUPhotoEditEffectsSupport__setStyleWithCast_tone_color_intensity_forCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnabled:1];
  [v3 setCast:*(a1 + 32)];
  [v3 setTone:*(a1 + 40)];
  [v3 setColor:*(a1 + 48)];
  [v3 setIntensity:*(a1 + 56)];
}

+ (void)_setPortraitEffectEnabled:(BOOL)enabled forCompositionController:(id)controller
{
  controllerCopy = controller;
  portraitAdjustmentController = [controllerCopy portraitAdjustmentController];
  v7 = portraitAdjustmentController;
  if (enabled || portraitAdjustmentController)
  {
    adjustmentConstants = [controllerCopy adjustmentConstants];
    pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__PUPhotoEditEffectsSupport__setPortraitEffectEnabled_forCompositionController___block_invoke;
    v10[3] = &__block_descriptor_33_e32_v16__0__PIAdjustmentController_8l;
    enabledCopy = enabled;
    [controllerCopy modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:v10];
  }
}

+ (void)_setPortraitEffectFilterName:(id)name withVersion:(unint64_t)version forCompositionController:(id)controller portraitInfo:(id)info spillMatteAllowed:(id)allowed
{
  nameCopy = name;
  infoCopy = info;
  allowedCopy = allowed;
  controllerCopy = controller;
  if (nameCopy)
  {
    [self _clearStandardEffectsWithCompositionController:controllerCopy];
    [self _clearStylesWithCompositionController:controllerCopy];
    adjustmentConstants = [controllerCopy adjustmentConstants];
    pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __126__PUPhotoEditEffectsSupport__setPortraitEffectFilterName_withVersion_forCompositionController_portraitInfo_spillMatteAllowed___block_invoke;
    v18[3] = &unk_1E7B7AB48;
    v19 = nameCopy;
    v20 = infoCopy;
    v21 = allowedCopy;
    versionCopy = version;
    [controllerCopy modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:v18];

    controllerCopy = v19;
  }

  else
  {
    [self _clearPortraitEffectsWithCompositionController:controllerCopy];
  }
}

void __126__PUPhotoEditEffectsSupport__setPortraitEffectFilterName_withVersion_forCompositionController_portraitInfo_spillMatteAllowed___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 setKind:a1[4]];
  [v3 setPortraitInfo:a1[5]];
  [v3 setSpillMatteAllowed:a1[6]];
  if (a1[7] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 setVersion:?];
  }
}

+ (void)_setEffectFilterName:(id)name withIntensity:(double)intensity withVersion:(unint64_t)version forCompositionController:(id)controller
{
  nameCopy = name;
  controllerCopy = controller;
  v12 = [controllerCopy copy];
  [self _clearPortraitEffectsWithCompositionController:v12];
  [self _clearStylesWithCompositionController:controllerCopy];
  v13 = [nameCopy isEqualToString:*MEMORY[0x1E69BEC10]];
  if (!nameCopy || v13)
  {
    [self _clearStandardEffectsWithCompositionController:v12];
  }

  else
  {
    v14 = [MEMORY[0x1E69BDEF0] is3DEffect:nameCopy];
    adjustmentConstants = [v12 adjustmentConstants];
    pIEffectAdjustmentKey = [adjustmentConstants PIEffectAdjustmentKey];
    pIEffect3DAdjustmentKey = [adjustmentConstants PIEffect3DAdjustmentKey];
    if (v14)
    {
      pIEffect3DAdjustmentKey2 = [adjustmentConstants PIEffect3DAdjustmentKey];

      pIEffectAdjustmentKey2 = [adjustmentConstants PIEffectAdjustmentKey];

      pIEffectAdjustmentKey = pIEffect3DAdjustmentKey2;
      pIEffect3DAdjustmentKey = pIEffectAdjustmentKey2;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __101__PUPhotoEditEffectsSupport__setEffectFilterName_withIntensity_withVersion_forCompositionController___block_invoke;
    v20[3] = &unk_1E7B7AB20;
    v21 = nameCopy;
    versionCopy = version;
    intensityCopy = intensity;
    [v12 modifyAdjustmentWithKey:pIEffectAdjustmentKey modificationBlock:v20];
    [v12 removeAdjustmentWithKey:pIEffect3DAdjustmentKey];
  }

  [controllerCopy applyChangesFromCompositionController:v12];
}

void __101__PUPhotoEditEffectsSupport__setEffectFilterName_withIntensity_withVersion_forCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69BDEF0] effectNameForFilterName:*(a1 + 32)];
  v5 = v3;
  [v5 setKind:v4];
  if (*(a1 + 40) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setVersion:?];
  }

  [v5 setIntensity:*(a1 + 48)];
  [v5 setEnabled:1];
}

+ (id)identifierForLightingType:(int64_t)type lightingVersion:(int64_t)version
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = +[PUPhotoEditEffectsSupport lightingEffectTypesByIdentifier];
  allKeys = [v6 allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:v13]== type)
        {
          v14 = [MEMORY[0x1E69BE668] effectWithIdentifier:v13];
          lightingVersion = [v14 lightingVersion];
          if (lightingVersion <= version && lightingVersion >= [v10 lightingVersion])
          {
            v16 = v14;

            v10 = v16;
          }
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  filterIdentifier = [v10 filterIdentifier];

  return filterIdentifier;
}

+ (int64_t)lightingEffectTypeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lightingEffectTypesByIdentifier = [self lightingEffectTypesByIdentifier];
  v6 = [lightingEffectTypesByIdentifier objectForKey:identifierCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

+ (id)lightingEffectTypesByIdentifier
{
  pl_dispatch_once();
  v2 = lightingEffectTypesByIdentifier_typeMap;

  return v2;
}

void __60__PUPhotoEditEffectsSupport_lightingEffectTypesByIdentifier__block_invoke()
{
  v8[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69BEC18];
  v7[0] = *MEMORY[0x1E69BEC38];
  v7[1] = v0;
  v8[0] = &unk_1F2B7E798;
  v8[1] = &unk_1F2B7E7B0;
  v1 = *MEMORY[0x1E69BEC28];
  v7[2] = *MEMORY[0x1E69BEC20];
  v7[3] = v1;
  v8[2] = &unk_1F2B7E7B0;
  v8[3] = &unk_1F2B7E7C8;
  v2 = *MEMORY[0x1E69BEBF8];
  v7[4] = *MEMORY[0x1E69BEC30];
  v7[5] = v2;
  v8[4] = &unk_1F2B7E7C8;
  v8[5] = &unk_1F2B7E7E0;
  v3 = *MEMORY[0x1E69BEC40];
  v7[6] = *MEMORY[0x1E69BEC00];
  v7[7] = v3;
  v8[6] = &unk_1F2B7E7E0;
  v8[7] = &unk_1F2B7E7F8;
  v4 = *MEMORY[0x1E69BEC08];
  v7[8] = *MEMORY[0x1E69BEC48];
  v7[9] = v4;
  v8[8] = &unk_1F2B7E7F8;
  v8[9] = &unk_1F2B7E810;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:10];
  v6 = lightingEffectTypesByIdentifier_typeMap;
  lightingEffectTypesByIdentifier_typeMap = v5;
}

+ (void)updateCompositionController:(id)controller withLightingIdentifier:(id)identifier portraitInfo:(id)info spillMatteAllowed:(id)allowed
{
  v10 = MEMORY[0x1E69BE668];
  allowedCopy = allowed;
  infoCopy = info;
  controllerCopy = controller;
  v17 = [v10 effectWithIdentifier:identifier];
  filterIdentifier = [v17 filterIdentifier];
  if ([filterIdentifier isEqualToString:*MEMORY[0x1E69BEC08]])
  {

    v15 = 0;
    filterIdentifier = 0;
  }

  else
  {
    if (filterIdentifier)
    {
      latestVersion = [v17 latestVersion];
      v15 = 1;
      goto LABEL_7;
    }

    v15 = 0;
  }

  latestVersion = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  [self _setPortraitEffectEnabled:v15 forCompositionController:controllerCopy];
  [self _setPortraitEffectFilterName:filterIdentifier withVersion:latestVersion forCompositionController:controllerCopy portraitInfo:infoCopy spillMatteAllowed:allowedCopy];
}

+ (void)updateCompositionController:(id)controller withEffect:(id)effect intensity:(double)intensity updateVersion:(BOOL)version
{
  versionCopy = version;
  controllerCopy = controller;
  effectCopy = effect;
  v11 = effectCopy;
  if (versionCopy)
  {
    latestVersion = [effectCopy latestVersion];
  }

  else
  {
    latestVersion = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v11 isPortrait])
  {
    filterIdentifier = [v11 filterIdentifier];
    [self _setPortraitEffectFilterName:filterIdentifier withVersion:latestVersion forCompositionController:controllerCopy portraitInfo:0 spillMatteAllowed:0];

    [self _setPortraitEffectEnabled:1 forCompositionController:controllerCopy];
  }

  else
  {
    cIFilterName = [v11 CIFilterName];
    [self _setEffectFilterName:cIFilterName withIntensity:latestVersion withVersion:controllerCopy forCompositionController:intensity];
  }
}

+ (void)updateCompositionController:(id)controller withDepthEnabled:(BOOL)enabled livePortraitBehaviorController:(id)behaviorController
{
  controllerCopy = controller;
  behaviorControllerCopy = behaviorController;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  compositionKeys = [controllerCopy compositionKeys];
  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  if (enabled || [compositionKeys containsObject:pIDepthAdjustmentKey])
  {
    v11 = [controllerCopy copy];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__PUPhotoEditEffectsSupport_updateCompositionController_withDepthEnabled_livePortraitBehaviorController___block_invoke;
    v21[3] = &unk_1E7B7AAD8;
    v21[4] = &v23;
    enabledCopy = enabled;
    [v11 modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v21];
    pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
    if ([compositionKeys containsObject:pIPortraitAdjustmentKey])
    {
      portraitAdjustmentController = [v11 portraitAdjustmentController];
      kind = [portraitAdjustmentController kind];
      v15 = [kind isEqualToString:@"Light"];

      if (v15)
      {
        [v11 removeAdjustmentWithKey:pIPortraitAdjustmentKey];
      }

      else
      {
        v16 = +[PUPhotoEditProtoSettings sharedInstance];
        apertureSliderHasOffPosition = [v16 apertureSliderHasOffPosition];

        if ((apertureSliderHasOffPosition & 1) == 0)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __105__PUPhotoEditEffectsSupport_updateCompositionController_withDepthEnabled_livePortraitBehaviorController___block_invoke_2;
          v19[3] = &__block_descriptor_33_e32_v16__0__PIAdjustmentController_8l;
          enabledCopy2 = enabled;
          [v11 modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:v19];
        }
      }
    }

    if (behaviorControllerCopy && (v24[3] & 1) != 0)
    {
      [behaviorControllerCopy applySideEffectsForAction:0 compositionController:v11];
    }

    [controllerCopy applyChangesFromCompositionController:v11];

    _Block_object_dispose(&v23, 8);
  }
}

void __105__PUPhotoEditEffectsSupport_updateCompositionController_withDepthEnabled_livePortraitBehaviorController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    v4 = [v3 enabled] ^ 1;
    v3 = v5;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  [v3 setEnabled:*(a1 + 40)];
}

@end