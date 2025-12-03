@interface VGExpressionIsEyesForwardFilter
- (VGExpressionIsEyesForwardFilter)initWithEyesForwardYawSensitivity:(float)sensitivity eyesForwardPitchSensitivity:(float)pitchSensitivity;
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsEyesForwardFilter

- (VGExpressionIsEyesForwardFilter)initWithEyesForwardYawSensitivity:(float)sensitivity eyesForwardPitchSensitivity:(float)pitchSensitivity
{
  v10.receiver = self;
  v10.super_class = VGExpressionIsEyesForwardFilter;
  v6 = [(VGExpressionIsEyesForwardFilter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_eyesForwardYawSensitivityInRadians = sensitivity;
    v6->_eyesForwardPitchSensitivityInRadians = pitchSensitivity;
    v8 = v6;
  }

  return v7;
}

- (float)filter:(id)filter
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [filter objectForKeyedSubscript:@"tracked_faces"];
  v5 = v4;
  v6 = 0.0;
  if (v4 && [v4 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"smooth_data"];
      v10 = [v9 objectForKeyedSubscript:@"animation"];

      v11 = [v10 objectForKeyedSubscript:@"left_eye_pitch"];
      [v11 floatValue];
      v13 = v12;

      v14 = [v10 objectForKeyedSubscript:@"left_eye_yaw"];
      [v14 floatValue];
      v16 = v15;

      v17 = [v10 objectForKeyedSubscript:@"right_eye_pitch"];
      [v17 floatValue];
      v19 = v18;

      v20 = [v10 objectForKeyedSubscript:@"right_eye_yaw"];
      [v20 floatValue];
      v22 = v21;

      v23 = __VGLogSharedInstance();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = 134218752;
        v30 = v16;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        v34 = v22;
        v35 = 2048;
        v36 = v19;
        _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_DEBUG, " Left eye (yaw/pitch): %f %f, Right eye (yaw/pitch): %f %f ", &v29, 0x2Au);
      }

      v24 = fabsf(v13);
      eyesForwardPitchSensitivityInRadians = self->_eyesForwardPitchSensitivityInRadians;
      v6 = 0.0;
      if (v24 < eyesForwardPitchSensitivityInRadians)
      {
        eyesForwardYawSensitivityInRadians = self->_eyesForwardYawSensitivityInRadians;
        if (fabsf(v16) < eyesForwardYawSensitivityInRadians && fabsf(v19) < eyesForwardPitchSensitivityInRadians)
        {
          if (fabsf(v22) >= eyesForwardYawSensitivityInRadians)
          {
            v6 = 0.0;
          }

          else
          {
            v6 = 1.0;
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

@end