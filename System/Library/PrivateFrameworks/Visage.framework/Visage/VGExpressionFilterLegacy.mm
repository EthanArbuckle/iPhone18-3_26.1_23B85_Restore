@interface VGExpressionFilterLegacy
+ (float)clip_to_01:(float)clip_to_01 min_val:(float)min_val max_val:(float)max_val;
+ (id)getBlendshapes:(id)blendshapes;
+ (id)getExpressionFiltersForCaptureOptions:(id)options;
+ (id)getFrontExpressionFiltersForCaptureOptions:(id)options;
@end

@implementation VGExpressionFilterLegacy

+ (id)getFrontExpressionFiltersForCaptureOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  if ([optionsCopy ensureNeutralExpressionOnFrontPose])
  {
    v5 = objc_opt_new();
    [v4 addObject:v5];
  }

  if ([optionsCopy ensureEyesOpenOnFrontPose])
  {
    v6 = [VGExpressionIsEyesNeutralOpenFilter alloc];
    [optionsCopy eyesOpenSensitivity];
    v7 = [(VGExpressionIsEyesNeutralOpenFilter *)v6 initWithEyesOpenSensitivity:?];
    [v4 addObject:v7];
  }

  if ([optionsCopy ensureEyesForwardOnFrontPose])
  {
    if ([optionsCopy useLookAtForEyesForward])
    {
      v8 = [VGExpressionIsEyesForwardLookAtFilter alloc];
    }

    else
    {
      v8 = [VGExpressionIsEyesForwardFilter alloc];
    }

    [optionsCopy eyesForwardYawSensitivity];
    v10 = v9;
    [optionsCopy eyesForwardPitchSensitivity];
    v11 = v10 * 3.14159265 / 180.0;
    v12 = v11;
    v14 = v13 * 3.14159265 / 180.0;
    *&v11 = v14;
    *&v14 = v12;
    v15 = [(VGExpressionIsEyesForwardLookAtFilter *)v8 initWithEyesForwardYawSensitivity:v14 eyesForwardPitchSensitivity:v11];
    [v4 addObject:v15];
  }

  return v4;
}

+ (id)getExpressionFiltersForCaptureOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  if ([optionsCopy ensureAlmostNeutralExpressionOnNonFrontPose])
  {
    v5 = [VGExpressionIsAlmostNeutralFilter alloc];
    [optionsCopy neutralExpressionLowerBound];
    v7 = v6;
    [optionsCopy neutralExpressionUpperBound];
    LODWORD(v9) = v8;
    LODWORD(v10) = v7;
    v11 = [(VGExpressionIsAlmostNeutralFilter *)v5 initWithLowerBound:v10 withUpperBound:v9];
    [v4 addObject:v11];
  }

  if ([optionsCopy ensureEyesOpenOnNonFrontPose])
  {
    v12 = [VGExpressionIsEyesNeutralOpenFilter alloc];
    [optionsCopy eyesOpenSensitivity];
    v13 = [(VGExpressionIsEyesNeutralOpenFilter *)v12 initWithEyesOpenSensitivity:?];
    [v4 addObject:v13];
  }

  return v4;
}

+ (id)getBlendshapes:(id)blendshapes
{
  v3 = [blendshapes objectForKeyedSubscript:@"tracked_faces"];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"smooth_data"];
      v8 = [v7 objectForKeyedSubscript:@"animation"];

      v9 = [v8 objectForKeyedSubscript:@"blendshapes"];
      [v9 length];
      +[VGFaceTrackerHelper blendshapeNames];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (float)clip_to_01:(float)clip_to_01 min_val:(float)min_val max_val:(float)max_val
{
  if (clip_to_01 <= min_val)
  {
    clip_to_01 = min_val;
  }

  if (min_val >= max_val)
  {
    if (min_val == max_val)
    {
      v6 = clip_to_01 < max_val;
      result = 1.0;
      if (v6)
      {
        return 0.0;
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    if (clip_to_01 >= max_val)
    {
      clip_to_01 = max_val;
    }

    return (clip_to_01 - min_val) / (max_val - min_val);
  }

  return result;
}

@end