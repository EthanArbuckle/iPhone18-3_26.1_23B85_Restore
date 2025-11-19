@interface PISemanticEnhanceAdjustmentController
- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4;
- (NSArray)boundingBoxes;
- (double)intensity;
- (double)sceneConfidence;
- (int64_t)scene;
- (void)setBoundingBoxesFromObservations:(id)a3 orientation:(int64_t)a4;
- (void)setFaceBoundingBoxesFromObservations:(id)a3 orientation:(int64_t)a4;
- (void)setIntensity:(double)a3;
- (void)setScene:(int64_t)a3 confidence:(double)a4;
@end

@implementation PISemanticEnhanceAdjustmentController

- (void)setFaceBoundingBoxesFromObservations:(id)a3 orientation:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    *&buf[14] = v5;
    _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "Setting face bounding boxes based on orientation (%@) and observations: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  NUOrientationInverse();
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  NUOrientationMakeTransformWithSize();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
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
  v18 = [(PIAdjustmentController *)self adjustment];
  v19 = [objc_opt_class() faceBoundingBoxesKey];
  [v18 setObject:v17 forKeyedSubscript:v19];
}

- (void)setBoundingBoxesFromObservations:(id)a3 orientation:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    *&buf[14] = v5;
    _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "Setting bounding boxes based on orientation (%@) and observations: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  NUOrientationInverse();
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  NUOrientationMakeTransformWithSize();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
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
  v18 = [(PIAdjustmentController *)self adjustment];
  v19 = [objc_opt_class() boundingBoxesKey];
  [v18 setObject:v17 forKeyedSubscript:v19];
}

- (void)setScene:(int64_t)a3 confidence:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 2)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_702);
    }

    v12 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Tried to set sceneLabel to unsupported value: %ld", buf, 0xCu);
    }
  }

  else
  {
    v6 = off_1E82A9D08[a3 - 1];
    v7 = [(PIAdjustmentController *)self adjustment];
    v8 = [objc_opt_class() sceneLabelKey];
    [v7 setObject:v6 forKeyedSubscript:v8];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = [objc_opt_class() sceneConfidenceKey];
    [v9 setObject:v13 forKeyedSubscript:v10];
  }
}

- (NSArray)boundingBoxes
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [objc_opt_class() boundingBoxesKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  return v5;
}

- (double)sceneConfidence
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [objc_opt_class() sceneConfidenceKey];
  v4 = [v2 objectForKeyedSubscript:v3];
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
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [objc_opt_class() sceneLabelKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [objc_opt_class() platedFoodSceneLabel];
  LOBYTE(v3) = [v4 isEqualToString:v5];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v7 = [objc_opt_class() sunriseSunsetSceneLabel];
    v8 = [v4 isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [objc_opt_class() genericLandscapeSceneLabel];
      v10 = [v4 isEqualToString:v9];

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
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [objc_opt_class() intensityKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 floatValue];
    v5 = v6;
  }

  return v5;
}

- (void)setIntensity:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = [objc_opt_class() intensityKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v6 objectForKeyedSubscript:v7];
  if (v9 | v10)
  {
    v12 = [objc_opt_class() intensityKey];
    v13 = [v7 isEqualToString:v12];

    if (v13)
    {
      [v9 doubleValue];
      v15 = v14;
      [v10 doubleValue];
      v11 = vabdd_f64(v15, v16) < 1.0;
    }

    else
    {
      v17 = [objc_opt_class() sceneLabelKey];
      v18 = [v7 isEqualToString:v17];

      if (v18)
      {
        v19 = [v9 isEqualToString:v10];
      }

      else
      {
        v20 = [objc_opt_class() boundingBoxesKey];
        v21 = [v7 isEqualToString:v20];

        if (v21)
        {
          v19 = [v9 isEqualToArray:v10];
        }

        else
        {
          v23.receiver = self;
          v23.super_class = PISemanticEnhanceAdjustmentController;
          v19 = [(PIAdjustmentController *)&v23 isSettingEqual:v6 forKey:v7];
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