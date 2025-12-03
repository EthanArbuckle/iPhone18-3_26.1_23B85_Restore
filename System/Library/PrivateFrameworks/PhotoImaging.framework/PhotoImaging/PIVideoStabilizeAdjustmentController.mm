@interface PIVideoStabilizeAdjustmentController
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (BOOL)isEqual:(id)equal forKeys:(id)keys;
- (NSArray)keyframes;
- (double)cropFraction;
- (unint64_t)analysisType;
- (void)setAnalysisType:(unint64_t)type;
- (void)setCropFraction:(double)fraction;
- (void)setKeyframes:(id)keyframes;
- (void)setStabCropRect:(id *)rect;
@end

@implementation PIVideoStabilizeAdjustmentController

- (BOOL)isEqual:(id)equal forKeys:(id)keys
{
  if (equal)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = PIVideoStabilizeAdjustmentController;
  return [(PIAdjustmentController *)&v7 isEqual:equal forKeys:keys];
}

- (void)setStabCropRect:(id *)rect
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"X";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:rect->var0.var0];
  v13[0] = v5;
  v12[1] = @"Y";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:rect->var0.var1];
  v13[1] = v6;
  v12[2] = @"Width";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:rect->var1.var0];
  v13[2] = v7;
  v12[3] = @"Height";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:rect->var1.var1];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  adjustment = [(PIAdjustmentController *)self adjustment];
  v11 = +[PIVideoStabilizeAdjustmentController stabCropRectKey];
  [adjustment setObject:v9 forKeyedSubscript:v11];
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  v4 = *(MEMORY[0x1E69B3900] + 16);
  retstr->var0 = *MEMORY[0x1E69B3900];
  retstr->var1 = v4;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoStabilizeAdjustmentController stabCropRectKey];
  v16 = [adjustment objectForKeyedSubscript:v6];

  if (v16)
  {
    v7 = [v16 objectForKeyedSubscript:@"X"];
    intValue = [v7 intValue];
    v9 = [v16 objectForKeyedSubscript:@"Y"];
    intValue2 = [v9 intValue];
    v11 = [v16 objectForKeyedSubscript:@"Width"];
    intValue3 = [v11 intValue];
    v13 = [v16 objectForKeyedSubscript:@"Height"];
    intValue4 = [v13 intValue];
    retstr->var0.var0 = intValue;
    retstr->var0.var1 = intValue2;
    retstr->var1.var0 = intValue3;
    retstr->var1.var1 = intValue4;
  }

  return result;
}

- (void)setKeyframes:(id)keyframes
{
  v19 = *MEMORY[0x1E69E9840];
  keyframesCopy = keyframes;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keyframesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = keyframesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionaryRepresentation = [*(*(&v14 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  adjustment = [(PIAdjustmentController *)self adjustment];
  v13 = +[PIVideoStabilizeAdjustmentController keyframesKey];
  [adjustment setObject:v5 forKeyedSubscript:v13];
}

- (NSArray)keyframes
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVideoStabilizeAdjustmentController keyframesKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  v5 = [PIReframeKeyframe keyframesFromDictionaryRepresentations:v4];

  return v5;
}

- (void)setAnalysisType:(unint64_t)type
{
  if (type == 1)
  {
    v3 = @"pixel";
  }

  else
  {
    if (type != 2)
    {
      return;
    }

    v3 = @"gyro";
  }

  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v3 forKeyedSubscript:@"analysisType"];
}

- (unint64_t)analysisType
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"analysisType"];

  if ([v3 isEqualToString:@"pixel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"gyro"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCropFraction:(double)fraction
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:fraction];
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v5 forKeyedSubscript:@"cropFraction"];
}

- (double)cropFraction
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"cropFraction"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end