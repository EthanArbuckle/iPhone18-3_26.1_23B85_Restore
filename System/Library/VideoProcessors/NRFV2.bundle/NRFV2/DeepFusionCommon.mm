@interface DeepFusionCommon
+ (BOOL)fillRawNoiseModelParameters:(DeepFusionRawNoiseModelParameters *)a3 exposureParams:(const exposureParameters *)a4;
+ (float)calculateReadNoise:(const exposureParameters *)a3;
+ (int)networkVersion;
@end

@implementation DeepFusionCommon

+ (float)calculateReadNoise:(const exposureParameters *)a3
{
  v3 = vmul_f32(*&a3->read_noise_1x, *&a3->read_noise_1x);
  v4 = sqrtf(vsub_f32(v3, vdup_lane_s32(v3, 1)).f32[0] / 0.98438);
  v3.f32[0] = sqrtf(v3.f32[0] - (v4 * v4));
  return a3->analog_gain * sqrtf(((v4 / a3->analog_gain) * (v4 / a3->analog_gain)) + (v3.f32[0] * v3.f32[0]));
}

+ (BOOL)fillRawNoiseModelParameters:(DeepFusionRawNoiseModelParameters *)a3 exposureParams:(const exposureParameters *)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = *&a3->var0;
    *&v9 = a4->red_combo_gain;
    HIDWORD(v9) = 1.0;
    LODWORD(a3->var2) = *&a3->var2;
    *&a3->var0 = v9;
    a3->var2 = a4->blue_combo_gain;
    *&a3->var0 = v9;
    *&a3->var4 = a4->analog_gain;
    objc_msgSend_calculateReadNoise_(DeepFusionCommon, a2, a4, a4);
    a3->var5 = v10;
    *&a3[1].var0 = *&a4->conversion_gain;
    LOBYTE(a3[1].var2) = 0;
    a3[1].var3 = a4->lsModulationWeight;
    if (a4->hr_enabled)
    {
      p_hr_gain_down_ratio = &a4->hr_gain_down_ratio;
      v12 = vld1q_dup_f32(p_hr_gain_down_ratio);
      *&a3->var0 = vdivq_f32(*&a3->var0, v12);
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