@interface VGExpressionFilterLegacy
+ (float)clip_to_01:(float)a3 min_val:(float)a4 max_val:(float)a5;
+ (id)getBlendshapes:(id)a3;
+ (id)getExpressionFiltersForCaptureOptions:(id)a3;
+ (id)getFrontExpressionFiltersForCaptureOptions:(id)a3;
@end

@implementation VGExpressionFilterLegacy

+ (id)getFrontExpressionFiltersForCaptureOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 ensureNeutralExpressionOnFrontPose])
  {
    v5 = objc_opt_new();
    [v4 addObject:v5];
  }

  if ([v3 ensureEyesOpenOnFrontPose])
  {
    v6 = [VGExpressionIsEyesNeutralOpenFilter alloc];
    [v3 eyesOpenSensitivity];
    v7 = [(VGExpressionIsEyesNeutralOpenFilter *)v6 initWithEyesOpenSensitivity:?];
    [v4 addObject:v7];
  }

  if ([v3 ensureEyesForwardOnFrontPose])
  {
    if ([v3 useLookAtForEyesForward])
    {
      v8 = [VGExpressionIsEyesForwardLookAtFilter alloc];
    }

    else
    {
      v8 = [VGExpressionIsEyesForwardFilter alloc];
    }

    [v3 eyesForwardYawSensitivity];
    v10 = v9;
    [v3 eyesForwardPitchSensitivity];
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

+ (id)getExpressionFiltersForCaptureOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 ensureAlmostNeutralExpressionOnNonFrontPose])
  {
    v5 = [VGExpressionIsAlmostNeutralFilter alloc];
    [v3 neutralExpressionLowerBound];
    v7 = v6;
    [v3 neutralExpressionUpperBound];
    LODWORD(v9) = v8;
    LODWORD(v10) = v7;
    v11 = [(VGExpressionIsAlmostNeutralFilter *)v5 initWithLowerBound:v10 withUpperBound:v9];
    [v4 addObject:v11];
  }

  if ([v3 ensureEyesOpenOnNonFrontPose])
  {
    v12 = [VGExpressionIsEyesNeutralOpenFilter alloc];
    [v3 eyesOpenSensitivity];
    v13 = [(VGExpressionIsEyesNeutralOpenFilter *)v12 initWithEyesOpenSensitivity:?];
    [v4 addObject:v13];
  }

  return v4;
}

+ (id)getBlendshapes:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"tracked_faces"];
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

+ (float)clip_to_01:(float)a3 min_val:(float)a4 max_val:(float)a5
{
  if (a3 <= a4)
  {
    a3 = a4;
  }

  if (a4 >= a5)
  {
    if (a4 == a5)
    {
      v6 = a3 < a5;
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
    if (a3 >= a5)
    {
      a3 = a5;
    }

    return (a3 - a4) / (a5 - a4);
  }

  return result;
}

@end