@interface PUPhotoEditEffectsSupport
+ (id)identifierForLightingType:(int64_t)a3 lightingVersion:(int64_t)a4;
+ (id)lightingEffectTypesByIdentifier;
+ (int64_t)lightingEffectTypeForIdentifier:(id)a3;
+ (void)_clearPortraitEffectsWithCompositionController:(id)a3;
+ (void)_clearStandardEffectsWithCompositionController:(id)a3;
+ (void)_clearStylesWithCompositionController:(id)a3;
+ (void)_setEffectFilterName:(id)a3 withIntensity:(double)a4 withVersion:(unint64_t)a5 forCompositionController:(id)a6;
+ (void)_setPortraitEffectEnabled:(BOOL)a3 forCompositionController:(id)a4;
+ (void)_setPortraitEffectFilterName:(id)a3 withVersion:(unint64_t)a4 forCompositionController:(id)a5 portraitInfo:(id)a6 spillMatteAllowed:(id)a7;
+ (void)_setStyleWithCast:(id)a3 tone:(double)a4 color:(double)a5 intensity:(double)a6 forCompositionController:(id)a7;
+ (void)updateCompositionController:(id)a3 withDepthEnabled:(BOOL)a4 livePortraitBehaviorController:(id)a5;
+ (void)updateCompositionController:(id)a3 withEffect:(id)a4 intensity:(double)a5 updateVersion:(BOOL)a6;
+ (void)updateCompositionController:(id)a3 withLightingIdentifier:(id)a4 portraitInfo:(id)a5 spillMatteAllowed:(id)a6;
@end

@implementation PUPhotoEditEffectsSupport

+ (void)_clearStylesWithCompositionController:(id)a3
{
  v4 = a3;
  v3 = [v4 semanticStyleAdjustmentController];

  if (v3)
  {
    [v4 modifyAdjustmentWithKey:*MEMORY[0x1E69BE0C8] modificationBlock:&__block_literal_global_50_53845];
  }
}

+ (void)_clearPortraitEffectsWithCompositionController:(id)a3
{
  v3 = a3;
  v5 = [v3 adjustmentConstants];
  v4 = [v5 PIPortraitAdjustmentKey];
  [v3 removeAdjustmentWithKey:v4];
}

+ (void)_clearStandardEffectsWithCompositionController:(id)a3
{
  v3 = a3;
  v6 = [v3 adjustmentConstants];
  v4 = [v6 PIEffectAdjustmentKey];
  [v3 removeAdjustmentWithKey:v4];

  v5 = [v6 PIEffect3DAdjustmentKey];
  [v3 removeAdjustmentWithKey:v5];
}

+ (void)_setStyleWithCast:(id)a3 tone:(double)a4 color:(double)a5 intensity:(double)a6 forCompositionController:(id)a7
{
  v12 = a3;
  v13 = a7;
  [a1 _clearPortraitEffectsWithCompositionController:v13];
  [a1 _clearStandardEffectsWithCompositionController:v13];
  v14 = *MEMORY[0x1E69BE0C8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PUPhotoEditEffectsSupport__setStyleWithCast_tone_color_intensity_forCompositionController___block_invoke;
  v16[3] = &unk_1E7B7AB70;
  v17 = v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15 = v12;
  [v13 modifyAdjustmentWithKey:v14 modificationBlock:v16];
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

+ (void)_setPortraitEffectEnabled:(BOOL)a3 forCompositionController:(id)a4
{
  v5 = a4;
  v6 = [v5 portraitAdjustmentController];
  v7 = v6;
  if (a3 || v6)
  {
    v8 = [v5 adjustmentConstants];
    v9 = [v8 PIPortraitAdjustmentKey];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__PUPhotoEditEffectsSupport__setPortraitEffectEnabled_forCompositionController___block_invoke;
    v10[3] = &__block_descriptor_33_e32_v16__0__PIAdjustmentController_8l;
    v11 = a3;
    [v5 modifyAdjustmentWithKey:v9 modificationBlock:v10];
  }
}

+ (void)_setPortraitEffectFilterName:(id)a3 withVersion:(unint64_t)a4 forCompositionController:(id)a5 portraitInfo:(id)a6 spillMatteAllowed:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  if (v12)
  {
    [a1 _clearStandardEffectsWithCompositionController:v15];
    [a1 _clearStylesWithCompositionController:v15];
    v16 = [v15 adjustmentConstants];
    v17 = [v16 PIPortraitAdjustmentKey];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __126__PUPhotoEditEffectsSupport__setPortraitEffectFilterName_withVersion_forCompositionController_portraitInfo_spillMatteAllowed___block_invoke;
    v18[3] = &unk_1E7B7AB48;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = a4;
    [v15 modifyAdjustmentWithKey:v17 modificationBlock:v18];

    v15 = v19;
  }

  else
  {
    [a1 _clearPortraitEffectsWithCompositionController:v15];
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

+ (void)_setEffectFilterName:(id)a3 withIntensity:(double)a4 withVersion:(unint64_t)a5 forCompositionController:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [v11 copy];
  [a1 _clearPortraitEffectsWithCompositionController:v12];
  [a1 _clearStylesWithCompositionController:v11];
  v13 = [v10 isEqualToString:*MEMORY[0x1E69BEC10]];
  if (!v10 || v13)
  {
    [a1 _clearStandardEffectsWithCompositionController:v12];
  }

  else
  {
    v14 = [MEMORY[0x1E69BDEF0] is3DEffect:v10];
    v15 = [v12 adjustmentConstants];
    v16 = [v15 PIEffectAdjustmentKey];
    v17 = [v15 PIEffect3DAdjustmentKey];
    if (v14)
    {
      v18 = [v15 PIEffect3DAdjustmentKey];

      v19 = [v15 PIEffectAdjustmentKey];

      v16 = v18;
      v17 = v19;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __101__PUPhotoEditEffectsSupport__setEffectFilterName_withIntensity_withVersion_forCompositionController___block_invoke;
    v20[3] = &unk_1E7B7AB20;
    v21 = v10;
    v22 = a5;
    v23 = a4;
    [v12 modifyAdjustmentWithKey:v16 modificationBlock:v20];
    [v12 removeAdjustmentWithKey:v17];
  }

  [v11 applyChangesFromCompositionController:v12];
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

+ (id)identifierForLightingType:(int64_t)a3 lightingVersion:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = +[PUPhotoEditEffectsSupport lightingEffectTypesByIdentifier];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:v13]== a3)
        {
          v14 = [MEMORY[0x1E69BE668] effectWithIdentifier:v13];
          v15 = [v14 lightingVersion];
          if (v15 <= a4 && v15 >= [v10 lightingVersion])
          {
            v16 = v14;

            v10 = v16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [v10 filterIdentifier];

  return v17;
}

+ (int64_t)lightingEffectTypeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 lightingEffectTypesByIdentifier];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 integerValue];
  return v7;
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

+ (void)updateCompositionController:(id)a3 withLightingIdentifier:(id)a4 portraitInfo:(id)a5 spillMatteAllowed:(id)a6
{
  v10 = MEMORY[0x1E69BE668];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v17 = [v10 effectWithIdentifier:a4];
  v14 = [v17 filterIdentifier];
  if ([v14 isEqualToString:*MEMORY[0x1E69BEC08]])
  {

    v15 = 0;
    v14 = 0;
  }

  else
  {
    if (v14)
    {
      v16 = [v17 latestVersion];
      v15 = 1;
      goto LABEL_7;
    }

    v15 = 0;
  }

  v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  [a1 _setPortraitEffectEnabled:v15 forCompositionController:v13];
  [a1 _setPortraitEffectFilterName:v14 withVersion:v16 forCompositionController:v13 portraitInfo:v12 spillMatteAllowed:v11];
}

+ (void)updateCompositionController:(id)a3 withEffect:(id)a4 intensity:(double)a5 updateVersion:(BOOL)a6
{
  v6 = a6;
  v15 = a3;
  v10 = a4;
  v11 = v10;
  if (v6)
  {
    v12 = [v10 latestVersion];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v11 isPortrait])
  {
    v13 = [v11 filterIdentifier];
    [a1 _setPortraitEffectFilterName:v13 withVersion:v12 forCompositionController:v15 portraitInfo:0 spillMatteAllowed:0];

    [a1 _setPortraitEffectEnabled:1 forCompositionController:v15];
  }

  else
  {
    v14 = [v11 CIFilterName];
    [a1 _setEffectFilterName:v14 withIntensity:v12 withVersion:v15 forCompositionController:a5];
  }
}

+ (void)updateCompositionController:(id)a3 withDepthEnabled:(BOOL)a4 livePortraitBehaviorController:(id)a5
{
  v7 = a3;
  v18 = a5;
  v8 = [v7 adjustmentConstants];
  v9 = [v7 compositionKeys];
  v10 = [v8 PIDepthAdjustmentKey];
  if (a4 || [v9 containsObject:v10])
  {
    v11 = [v7 copy];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__PUPhotoEditEffectsSupport_updateCompositionController_withDepthEnabled_livePortraitBehaviorController___block_invoke;
    v21[3] = &unk_1E7B7AAD8;
    v21[4] = &v23;
    v22 = a4;
    [v11 modifyAdjustmentWithKey:v10 modificationBlock:v21];
    v12 = [v8 PIPortraitAdjustmentKey];
    if ([v9 containsObject:v12])
    {
      v13 = [v11 portraitAdjustmentController];
      v14 = [v13 kind];
      v15 = [v14 isEqualToString:@"Light"];

      if (v15)
      {
        [v11 removeAdjustmentWithKey:v12];
      }

      else
      {
        v16 = +[PUPhotoEditProtoSettings sharedInstance];
        v17 = [v16 apertureSliderHasOffPosition];

        if ((v17 & 1) == 0)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __105__PUPhotoEditEffectsSupport_updateCompositionController_withDepthEnabled_livePortraitBehaviorController___block_invoke_2;
          v19[3] = &__block_descriptor_33_e32_v16__0__PIAdjustmentController_8l;
          v20 = a4;
          [v11 modifyAdjustmentWithKey:v12 modificationBlock:v19];
        }
      }
    }

    if (v18 && (v24[3] & 1) != 0)
    {
      [v18 applySideEffectsForAction:0 compositionController:v11];
    }

    [v7 applyChangesFromCompositionController:v11];

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