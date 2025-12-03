@interface PISemanticEnhanceAdjustmentController
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (NSArray)boundingBoxes;
- (double)intensity;
- (double)sceneConfidence;
- (int64_t)scene;
- (void)setBoundingBoxesFromObservations:(id)observations orientation:(int64_t)orientation;
- (void)setFaceBoundingBoxesFromObservations:(id)observations orientation:(int64_t)orientation;
- (void)setIntensity:(double)intensity;
- (void)setScene:(int64_t)scene confidence:(double)confidence;
@end

@implementation PISemanticEnhanceAdjustmentController

- (void)setFaceBoundingBoxesFromObservations:(id)observations orientation:(int64_t)orientation
{
  v28 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_702);
  }

  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NUOrientationName();
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = observationsCopy;
    _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "Setting face bounding boxes based on orientation (%@) and observations: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(observationsCopy, "count")}];
  NUOrientationInverse();
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  NUOrientationMakeTransformWithSize();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = observationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v20[0] = *buf;
        v20[1] = *&buf[16];
        v20[2] = v27;
        v16 = DictionaryRepresentationFromObservation(v15, v20);
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  faceBoundingBoxesKey = [objc_opt_class() faceBoundingBoxesKey];
  [adjustment setObject:v17 forKeyedSubscript:faceBoundingBoxesKey];
}

- (void)setBoundingBoxesFromObservations:(id)observations orientation:(int64_t)orientation
{
  v28 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_702);
  }

  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NUOrientationName();
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = observationsCopy;
    _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "Setting bounding boxes based on orientation (%@) and observations: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(observationsCopy, "count")}];
  NUOrientationInverse();
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  NUOrientationMakeTransformWithSize();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = observationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v20[0] = *buf;
        v20[1] = *&buf[16];
        v20[2] = v27;
        v16 = DictionaryRepresentationFromObservation(v15, v20);
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  boundingBoxesKey = [objc_opt_class() boundingBoxesKey];
  [adjustment setObject:v17 forKeyedSubscript:boundingBoxesKey];
}

- (void)setScene:(int64_t)scene confidence:(double)confidence
{
  v16 = *MEMORY[0x1E69E9840];
  if ((scene - 1) > 2)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_702);
    }

    v12 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      sceneCopy = scene;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Tried to set sceneLabel to unsupported value: %ld", buf, 0xCu);
    }
  }

  else
  {
    v6 = off_1E82A9D08[scene - 1];
    adjustment = [(PIAdjustmentController *)self adjustment];
    sceneLabelKey = [objc_opt_class() sceneLabelKey];
    [adjustment setObject:v6 forKeyedSubscript:sceneLabelKey];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    sceneConfidenceKey = [objc_opt_class() sceneConfidenceKey];
    [adjustment2 setObject:v13 forKeyedSubscript:sceneConfidenceKey];
  }
}

- (NSArray)boundingBoxes
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  boundingBoxesKey = [objc_opt_class() boundingBoxesKey];
  v4 = [adjustment objectForKeyedSubscript:boundingBoxesKey];
  v5 = [v4 copy];

  return v5;
}

- (double)sceneConfidence
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  sceneConfidenceKey = [objc_opt_class() sceneConfidenceKey];
  v4 = [adjustment objectForKeyedSubscript:sceneConfidenceKey];
  v5 = v4;
  v6 = &unk_1F471E8B0;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (int64_t)scene
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  sceneLabelKey = [objc_opt_class() sceneLabelKey];
  v4 = [adjustment objectForKeyedSubscript:sceneLabelKey];

  platedFoodSceneLabel = [objc_opt_class() platedFoodSceneLabel];
  LOBYTE(sceneLabelKey) = [v4 isEqualToString:platedFoodSceneLabel];

  if (sceneLabelKey)
  {
    v6 = 1;
  }

  else
  {
    sunriseSunsetSceneLabel = [objc_opt_class() sunriseSunsetSceneLabel];
    v8 = [v4 isEqualToString:sunriseSunsetSceneLabel];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      genericLandscapeSceneLabel = [objc_opt_class() genericLandscapeSceneLabel];
      v10 = [v4 isEqualToString:genericLandscapeSceneLabel];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (double)intensity
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  intensityKey = [objc_opt_class() intensityKey];
  v4 = [adjustment objectForKeyedSubscript:intensityKey];

  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 floatValue];
    v5 = v6;
  }

  return v5;
}

- (void)setIntensity:(double)intensity
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:intensity];
  adjustment = [(PIAdjustmentController *)self adjustment];
  intensityKey = [objc_opt_class() intensityKey];
  [adjustment setObject:v6 forKeyedSubscript:intensityKey];
}

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  equalCopy = equal;
  keyCopy = key;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = [adjustment objectForKeyedSubscript:keyCopy];

  v10 = [equalCopy objectForKeyedSubscript:keyCopy];
  if (v9 | v10)
  {
    intensityKey = [objc_opt_class() intensityKey];
    v13 = [keyCopy isEqualToString:intensityKey];

    if (v13)
    {
      [v9 doubleValue];
      v15 = v14;
      [v10 doubleValue];
      v11 = vabdd_f64(v15, v16) < 1.0;
    }

    else
    {
      sceneLabelKey = [objc_opt_class() sceneLabelKey];
      v18 = [keyCopy isEqualToString:sceneLabelKey];

      if (v18)
      {
        v19 = [v9 isEqualToString:v10];
      }

      else
      {
        boundingBoxesKey = [objc_opt_class() boundingBoxesKey];
        v21 = [keyCopy isEqualToString:boundingBoxesKey];

        if (v21)
        {
          v19 = [v9 isEqualToArray:v10];
        }

        else
        {
          v23.receiver = self;
          v23.super_class = PISemanticEnhanceAdjustmentController;
          v19 = [(PIAdjustmentController *)&v23 isSettingEqual:equalCopy forKey:keyCopy];
        }
      }

      v11 = v19;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end