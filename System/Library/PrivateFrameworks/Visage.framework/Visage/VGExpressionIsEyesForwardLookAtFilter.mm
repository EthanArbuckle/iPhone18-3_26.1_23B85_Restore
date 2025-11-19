@interface VGExpressionIsEyesForwardLookAtFilter
- (VGExpressionIsEyesForwardLookAtFilter)initWithEyesForwardYawSensitivity:(float)a3 eyesForwardPitchSensitivity:(float)a4;
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsEyesForwardLookAtFilter

- (VGExpressionIsEyesForwardLookAtFilter)initWithEyesForwardYawSensitivity:(float)a3 eyesForwardPitchSensitivity:(float)a4
{
  v10.receiver = self;
  v10.super_class = VGExpressionIsEyesForwardLookAtFilter;
  v6 = [(VGExpressionIsEyesForwardLookAtFilter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_eyesForwardYawSensitivityInRadians = a3;
    v6->_eyesForwardPitchSensitivityInRadians = a4;
    v8 = v6;
  }

  return v7;
}

- (float)filter:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"tracked_faces"];
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

      v11 = [v10 objectForKeyedSubscript:@"gaze"];
      [v11 vg_float3ByInvokingFloatValue];
      v23 = v12;

      v13 = vmulq_f32(v23, v23);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v24 = vmulq_n_f32(v23, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      v15 = atan2f(v24.f32[0], v24.f32[2]);
      v16 = asinf(v24.f32[1]);
      v17 = __VGLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        eyesForwardYawSensitivityInRadians = self->_eyesForwardYawSensitivityInRadians;
        eyesForwardPitchSensitivityInRadians = self->_eyesForwardPitchSensitivityInRadians;
        *buf = 134284289;
        v26 = v15;
        v27 = 2049;
        v28 = -v16;
        v29 = 2049;
        v30 = eyesForwardYawSensitivityInRadians;
        v31 = 2049;
        v32 = eyesForwardPitchSensitivityInRadians;
        _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_DEBUG, " Look-at gaze (yaw/pitch radians): %{private}g %{private}g [abs value threshold (yaw/pitch radians): %{private}g %{private}g] ", buf, 0x2Au);
      }

      v20 = fabsf(v16);
      v6 = 0.0;
      if (v20 < self->_eyesForwardPitchSensitivityInRadians)
      {
        if (fabsf(v15) >= self->_eyesForwardYawSensitivityInRadians)
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

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

@end