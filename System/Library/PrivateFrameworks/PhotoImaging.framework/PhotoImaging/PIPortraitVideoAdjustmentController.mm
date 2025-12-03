@interface PIPortraitVideoAdjustmentController
- (NSArray)disparityKeyframes;
- (NSDictionary)cinematographyState;
- (NSNumber)aperture;
- (id)_keyframesForKey:(id)key class:(Class)class;
- (id)pasteKeysForMediaType:(int64_t)type;
- (id)visualInputKeys;
- (int64_t)debugMode;
- (unint64_t)renderingVersionAtCapture;
- (void)_setKeyframes:(id)keyframes forKey:(id)key;
- (void)setAperture:(id)aperture;
- (void)setCinematographyState:(id)state;
- (void)setDebugMode:(int64_t)mode;
- (void)setRenderingVersionAtCapture:(unint64_t)capture;
- (void)trimToTimeRange:(id *)range usingScript:(id)script;
@end

@implementation PIPortraitVideoAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)type
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = +[PIAdjustmentController enabledKey];
  v6[0] = v3;
  v6[1] = @"apertureKeyframes";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)trimToTimeRange:(id *)range usingScript:(id)script
{
  v33 = *MEMORY[0x1E69E9840];
  scriptCopy = script;
  cinematographyState = [(PIPortraitVideoAdjustmentController *)self cinematographyState];
  if (cinematographyState)
  {
    v8 = *&range->var0.var3;
    *&range.start.value = *&range->var0.var0;
    *&range.start.epoch = v8;
    *&range.duration.timescale = *&range->var1.var1;
    v9 = [scriptCopy changesDictionaryTrimmedByTimeRange:&range];
    [(PIPortraitVideoAdjustmentController *)self setCinematographyState:v9];
  }

  disparityKeyframes = [(PIPortraitVideoAdjustmentController *)self disparityKeyframes];
  if (disparityKeyframes)
  {
    v24 = cinematographyState;
    v11 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = disparityKeyframes;
    v12 = disparityKeyframes;
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

          v18 = *&range->var0.var3;
          *&range.start.value = *&range->var0.var0;
          *&range.start.epoch = v18;
          *&range.duration.timescale = *&range->var1.var1;
          if (CMTimeRangeContainsTime(&range, &time))
          {
            v19 = [PIScalarKeyframe alloc];
            if (v17)
            {
              time = *(v17 + 16);
              rhs = range->var0;
              CMTimeSubtract(&range.start, &time, &rhs);
              v20 = *(v17 + 8);
            }

            else
            {
              memset(&time, 0, sizeof(time));
              rhs = range->var0;
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
    cinematographyState = v24;
    disparityKeyframes = v23;
  }
}

- (id)visualInputKeys
{
  inputKeys = [(PIAdjustmentController *)self inputKeys];
  v3 = [inputKeys mutableCopy];

  [v3 removeObject:@"cinematographyState"];

  return v3;
}

- (void)setRenderingVersionAtCapture:(unint64_t)capture
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capture];
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v5 forKeyedSubscript:@"renderingVersionAtCapture"];
}

- (unint64_t)renderingVersionAtCapture
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"renderingVersionAtCapture"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setDebugMode:(int64_t)mode
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v5 forKeyedSubscript:@"debugMode"];
}

- (int64_t)debugMode
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"debugMode"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setCinematographyState:(id)state
{
  stateCopy = state;
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:stateCopy forKeyedSubscript:@"cinematographyState"];
}

- (NSDictionary)cinematographyState
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"cinematographyState"];

  return v3;
}

- (void)setAperture:(id)aperture
{
  v11[1] = *MEMORY[0x1E69E9840];
  apertureCopy = aperture;
  if (apertureCopy)
  {
    v5 = [PIScalarKeyframe alloc];
    [apertureCopy floatValue];
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
  firstObject = [v2 firstObject];
  if (firstObject)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:firstObject[1]];
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

- (void)_setKeyframes:(id)keyframes forKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyframesCopy = keyframes;
  keyCopy = key;
  if (keyframesCopy)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keyframesCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = keyframesCopy;
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

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * v13) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    adjustment = [(PIAdjustmentController *)self adjustment];
    [adjustment setObject:v8 forKeyedSubscript:keyCopy];
  }

  else
  {
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    [adjustment2 setObject:0 forKeyedSubscript:keyCopy];
  }
}

- (id)_keyframesForKey:(id)key class:(Class)class
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v8 = [adjustment objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = [adjustment2 objectForKeyedSubscript:keyCopy];

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

          v16 = [[class alloc] initWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * i)];
          [array addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = [array copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end