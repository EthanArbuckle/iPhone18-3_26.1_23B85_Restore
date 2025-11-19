@interface PIPortraitVideoAdjustmentController
- (NSArray)disparityKeyframes;
- (NSDictionary)cinematographyState;
- (NSNumber)aperture;
- (id)_keyframesForKey:(id)a3 class:(Class)a4;
- (id)pasteKeysForMediaType:(int64_t)a3;
- (id)visualInputKeys;
- (int64_t)debugMode;
- (unint64_t)renderingVersionAtCapture;
- (void)_setKeyframes:(id)a3 forKey:(id)a4;
- (void)setAperture:(id)a3;
- (void)setCinematographyState:(id)a3;
- (void)setDebugMode:(int64_t)a3;
- (void)setRenderingVersionAtCapture:(unint64_t)a3;
- (void)trimToTimeRange:(id *)a3 usingScript:(id)a4;
@end

@implementation PIPortraitVideoAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = +[PIAdjustmentController enabledKey];
  v6[0] = v3;
  v6[1] = @"apertureKeyframes";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)trimToTimeRange:(id *)a3 usingScript:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PIPortraitVideoAdjustmentController *)self cinematographyState];
  if (v7)
  {
    v8 = *&a3->var0.var3;
    *&range.start.value = *&a3->var0.var0;
    *&range.start.epoch = v8;
    *&range.duration.timescale = *&a3->var1.var1;
    v9 = [v6 changesDictionaryTrimmedByTimeRange:&range];
    [(PIPortraitVideoAdjustmentController *)self setCinematographyState:v9];
  }

  v10 = [(PIPortraitVideoAdjustmentController *)self disparityKeyframes];
  if (v10)
  {
    v24 = v7;
    v11 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          if (v17)
          {
            time = *(v17 + 16);
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          v18 = *&a3->var0.var3;
          *&range.start.value = *&a3->var0.var0;
          *&range.start.epoch = v18;
          *&range.duration.timescale = *&a3->var1.var1;
          if (CMTimeRangeContainsTime(&range, &time))
          {
            v19 = [PIScalarKeyframe alloc];
            if (v17)
            {
              time = *(v17 + 16);
              rhs = a3->var0;
              CMTimeSubtract(&range.start, &time, &rhs);
              v20 = *(v17 + 8);
            }

            else
            {
              memset(&time, 0, sizeof(time));
              rhs = a3->var0;
              CMTimeSubtract(&range.start, &time, &rhs);
              v20 = 0.0;
            }

            v21 = [(PIScalarKeyframe *)v19 initWithTime:&range value:v20];
            [v11 addObject:v21];
          }

          ++v16;
        }

        while (v14 != v16);
        v22 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v14 = v22;
      }

      while (v22);
    }

    [(PIPortraitVideoAdjustmentController *)self setDisparityKeyframes:v11];
    v7 = v24;
    v10 = v23;
  }
}

- (id)visualInputKeys
{
  v2 = [(PIAdjustmentController *)self inputKeys];
  v3 = [v2 mutableCopy];

  [v3 removeObject:@"cinematographyState"];

  return v3;
}

- (void)setRenderingVersionAtCapture:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v5 forKeyedSubscript:@"renderingVersionAtCapture"];
}

- (unint64_t)renderingVersionAtCapture
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"renderingVersionAtCapture"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setDebugMode:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v5 forKeyedSubscript:@"debugMode"];
}

- (int64_t)debugMode
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"debugMode"];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)setCinematographyState:(id)a3
{
  v4 = a3;
  v5 = [(PIAdjustmentController *)self adjustment];
  [v5 setObject:v4 forKeyedSubscript:@"cinematographyState"];
}

- (NSDictionary)cinematographyState
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"cinematographyState"];

  return v3;
}

- (void)setAperture:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [PIScalarKeyframe alloc];
    [v4 floatValue];
    v9 = *MEMORY[0x1E6960CC0];
    v10 = *(MEMORY[0x1E6960CC0] + 16);
    v7 = [(PIScalarKeyframe *)v5 initWithTime:&v9 value:v6];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(PIPortraitVideoAdjustmentController *)self _setKeyframes:v8 forKey:@"apertureKeyframes"];
  }

  else
  {
    [(PIPortraitVideoAdjustmentController *)self _setKeyframes:0 forKey:@"apertureKeyframes"];
  }
}

- (NSNumber)aperture
{
  v2 = [(PIPortraitVideoAdjustmentController *)self _keyframesForKey:@"apertureKeyframes" class:objc_opt_class()];
  v3 = [v2 firstObject];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v3[1]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)disparityKeyframes
{
  v3 = objc_opt_class();

  return [(PIPortraitVideoAdjustmentController *)self _keyframesForKey:@"disparityKeyframes" class:v3];
}

- (void)_setKeyframes:(id)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * v13) dictionaryRepresentation];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = [(PIAdjustmentController *)self adjustment];
    [v15 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v16 = [(PIAdjustmentController *)self adjustment];
    [v16 setObject:0 forKeyedSubscript:v7];
  }
}

- (id)_keyframesForKey:(id)a3 class:(Class)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(PIAdjustmentController *)self adjustment];
    v11 = [v10 objectForKeyedSubscript:v6];

    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[a4 alloc] initWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * i)];
          [v9 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = [v9 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end