@interface DeepFusionCommon
+ (BOOL)fillRawNoiseModelParameters:(DeepFusionRawNoiseModelParameters *)parameters exposureParams:(const exposureParameters *)params;
+ (float)calculateReadNoise:(const exposureParameters *)noise;
+ (int)networkVersion;
@end

@implementation DeepFusionCommon

+ (float)calculateReadNoise:(const exposureParameters *)noise
{
  v3 = vmul_f32(*&noise->read_noise_1x, *&noise->read_noise_1x);
  v4 = sqrtf(vsub_f32(v3, vdup_lane_s32(v3, 1)).f32[0] / 0.98438);
  v3.f32[0] = sqrtf(v3.f32[0] - (v4 * v4));
  return noise->analog_gain * sqrtf(((v4 / noise->analog_gain) * (v4 / noise->analog_gain)) + (v3.f32[0] * v3.f32[0]));
}

+ (BOOL)fillRawNoiseModelParameters:(DeepFusionRawNoiseModelParameters *)parameters exposureParams:(const exposureParameters *)params
{
  if (parameters)
  {
    v4 = params == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = *&parameters->var0;
    *&v9 = params->red_combo_gain;
    HIDWORD(v9) = 1.0;
    LODWORD(parameters->var2) = *&parameters->var2;
    *&parameters->var0 = v9;
    parameters->var2 = params->blue_combo_gain;
    *&parameters->var0 = v9;
    *&parameters->var4 = params->analog_gain;
    objc_msgSend_calculateReadNoise_(DeepFusionCommon, a2, params, params);
    parameters->var5 = v10;
    *&parameters[1].var0 = *&params->conversion_gain;
    LOBYTE(parameters[1].var2) = 0;
    parameters[1].var3 = params->lsModulationWeight;
    if (params->hr_enabled)
    {
      p_hr_gain_down_ratio = &params->hr_gain_down_ratio;
      v12 = vld1q_dup_f32(p_hr_gain_down_ratio);
      *&parameters->var0 = vdivq_f32(*&parameters->var0, v12);
    }
  }

  return v5;
}

+ (int)networkVersion
{
  v2 = FigCaptureCFCreatePropertyList();
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"TuningParameters", v4);
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Common", v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"DeepFusion", v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"Version", v13);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_intValue(v14, v15, v16, v17);
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();

  return CFPreferenceNumberWithDefault;
}

@end