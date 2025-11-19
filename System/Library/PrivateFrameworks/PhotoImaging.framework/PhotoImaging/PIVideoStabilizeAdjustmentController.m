@interface PIVideoStabilizeAdjustmentController
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (BOOL)isEqual:(id)a3 forKeys:(id)a4;
- (NSArray)keyframes;
- (double)cropFraction;
- (unint64_t)analysisType;
- (void)setAnalysisType:(unint64_t)a3;
- (void)setCropFraction:(double)a3;
- (void)setKeyframes:(id)a3;
- (void)setStabCropRect:(id *)a3;
@end

@implementation PIVideoStabilizeAdjustmentController

- (BOOL)isEqual:(id)a3 forKeys:(id)a4
{
  if (a3)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = PIVideoStabilizeAdjustmentController;
  return [(PIAdjustmentController *)&v7 isEqual:a3 forKeys:a4];
}

- (void)setStabCropRect:(id *)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"X";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var0.var0];
  v13[0] = v5;
  v12[1] = @"Y";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var0.var1];
  v13[1] = v6;
  v12[2] = @"Width";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var1.var0];
  v13[2] = v7;
  v12[3] = @"Height";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var1.var1];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = [(PIAdjustmentController *)self adjustment];
  v11 = +[PIVideoStabilizeAdjustmentController stabCropRectKey];
  [v10 setObject:v9 forKeyedSubscript:v11];
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  v4 = *(MEMORY[0x1E69B3900] + 16);
  retstr->var0 = *MEMORY[0x1E69B3900];
  retstr->var1 = v4;
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoStabilizeAdjustmentController stabCropRectKey];
  v16 = [v5 objectForKeyedSubscript:v6];

  if (v16)
  {
    v7 = [v16 objectForKeyedSubscript:@"X"];
    v8 = [v7 intValue];
    v9 = [v16 objectForKeyedSubscript:@"Y"];
    v10 = [v9 intValue];
    v11 = [v16 objectForKeyedSubscript:@"Width"];
    v12 = [v11 intValue];
    v13 = [v16 objectForKeyedSubscript:@"Height"];
    v14 = [v13 intValue];
    retstr->var0.var0 = v8;
    retstr->var0.var1 = v10;
    retstr->var1.var0 = v12;
    retstr->var1.var1 = v14;
  }

  return result;
}

- (void)setKeyframes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v14 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(PIAdjustmentController *)self adjustment];
  v13 = +[PIVideoStabilizeAdjustmentController keyframesKey];
  [v12 setObject:v5 forKeyedSubscript:v13];
}

- (NSArray)keyframes
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVideoStabilizeAdjustmentController keyframesKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [PIReframeKeyframe keyframesFromDictionaryRepresentations:v4];

  return v5;
}

- (void)setAnalysisType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"pixel";
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v3 = @"gyro";
  }

  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v3 forKeyedSubscript:@"analysisType"];
}

- (unint64_t)analysisType
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"analysisType"];

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

- (void)setCropFraction:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v5 forKeyedSubscript:@"cropFraction"];
}

- (double)cropFraction
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"cropFraction"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end