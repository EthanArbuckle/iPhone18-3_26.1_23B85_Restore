@interface PFSemanticEnhancePregateCalculator
+ ($12FC28267955EE572C1AED5C354322B1)semanticEnhanceSceneForCameraMetadata:(id)metadata;
+ ($12FC28267955EE572C1AED5C354322B1)semanticEnhanceSceneForCameraMetadata:(id)metadata ignoreCameraSetting:(BOOL)setting;
+ (BOOL)isSemanticDevelopmentEnabledInCameraSettings;
+ (id)filterForSemanticEnhanceScene:(int64_t)scene;
+ (int64_t)semanticEnhanceSceneForPrivateClientMetadata:(id)metadata;
@end

@implementation PFSemanticEnhancePregateCalculator

+ (id)filterForSemanticEnhanceScene:(int64_t)scene
{
  if ((scene - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695F648] filterWithName:{off_1E7B65258[scene - 1], v3}];
  }

  return v5;
}

+ (int64_t)semanticEnhanceSceneForPrivateClientMetadata:(id)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [PFCameraMetadataSerialization deserializedMetadataFromPrivateClientMetadata:metadata error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [self semanticEnhanceSceneForCameraMetadata:v4 ignoreCameraSetting:1];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[SemDev] Error deserializing camera metadata: %@", buf, 0xCu);
    }

    v6 = -1;
  }

  return v6;
}

+ ($12FC28267955EE572C1AED5C354322B1)semanticEnhanceSceneForCameraMetadata:(id)metadata ignoreCameraSetting:(BOOL)setting
{
  v56 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  if (!setting && ![objc_opt_class() isSemanticDevelopmentEnabledInCameraSettings])
  {
    v39 = 0.0;
    v40 = -1;
    goto LABEL_49;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"semantic_enhance_food_threshold"];
  if (v7 == 0.0)
  {
    v8 = 0.91;
  }

  else
  {
    v8 = v7;
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 doubleForKey:@"semantic_enhance_landscape_threshold"];
  if (v10 == 0.0)
  {
    v11 = 0.91;
  }

  else
  {
    v11 = v10;
  }

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults3 doubleForKey:@"semantic_enhance_face_threshold"];
  if (v13 == 0.0)
  {
    v14 = 0.2;
  }

  else
  {
    v14 = v13;
  }

  [metadataCopy faceObservations];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = v51 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        [v20 boundingBox];
        v22 = v21;
        [v20 boundingBox];
        if (v22 * v23 > v14)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[SemDev] Detected faces larger than threshold, skipping semantic development", buf, 2u);
          }

          v39 = 0.0;
          v40 = -1;
          v25 = v15;
          goto LABEL_48;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v55 count:{16, v22 * v23}];
    }

    while (v17);
  }

  semanticDevelopmentGatingObservations = [metadataCopy semanticDevelopmentGatingObservations];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v54 = semanticDevelopmentGatingObservations;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[SemDev] Semantic development gating observations: %@", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = semanticDevelopmentGatingObservations;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v26)
  {
    v39 = 0.0;
    v40 = -1;
    goto LABEL_47;
  }

  v27 = v26;
  v28 = *v45;
  while (2)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v45 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v44 + 1) + 8 * j);
      identifier = [v30 identifier];
      if ([identifier isEqualToString:@"food"])
      {
        [v30 confidence];
        v33 = v32;

        if (v8 < v33)
        {
          v40 = 1;
LABEL_46:
          [v30 confidence];
          v39 = v41;
          goto LABEL_47;
        }
      }

      else
      {
      }

      identifier2 = [v30 identifier];
      if ([identifier2 isEqualToString:@"landscape"])
      {
        [v30 confidence];
        v36 = v35;
      }

      else
      {
        identifier3 = [v30 identifier];
        if (([identifier3 isEqualToString:@"landscape_cityscape"] & 1) == 0)
        {

          continue;
        }

        [v30 confidence];
        v36 = v38;
      }

      if (v11 < v36)
      {
        v40 = 3;
        goto LABEL_46;
      }
    }

    v27 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

  v39 = 0.0;
  v40 = -1;
LABEL_47:

LABEL_48:
LABEL_49:

  v42 = v40;
  v43 = v39;
  result.var1 = v43;
  result.var0 = v42;
  return result;
}

+ ($12FC28267955EE572C1AED5C354322B1)semanticEnhanceSceneForCameraMetadata:(id)metadata
{
  v3 = [self semanticEnhanceSceneForCameraMetadata:metadata ignoreCameraSetting:0];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (BOOL)isSemanticDevelopmentEnabledInCameraSettings
{
  CFPreferencesAppSynchronize(@"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSemanticDevelopment", @"com.apple.camera", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

@end