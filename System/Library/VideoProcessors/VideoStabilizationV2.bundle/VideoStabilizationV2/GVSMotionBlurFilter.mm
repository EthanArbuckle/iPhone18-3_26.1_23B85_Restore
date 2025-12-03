@interface GVSMotionBlurFilter
+ (GVSMotionBlurFilterSettings)defaultSettings;
- (GVSMotionBlurFilter)initWithSettings:(GVSMotionBlurFilterSettings *)settings;
- (float32x2_t)highPassFilter:(float)filter deltaTime:;
- (float32x2_t)lowPassFilter:(float)filter deltaTime:;
- (id)updateBlurVector:(double)vector atTime:;
- (void)reset;
@end

@implementation GVSMotionBlurFilter

+ (GVSMotionBlurFilterSettings)defaultSettings
{
  *&retstr->var0 = 0;
  *&retstr->var1 = xmmword_43430;
  retstr->var5 = 0.65;
  return result;
}

- (GVSMotionBlurFilter)initWithSettings:(GVSMotionBlurFilterSettings *)settings
{
  v7.receiver = self;
  v7.super_class = GVSMotionBlurFilter;
  v4 = [(GVSMotionBlurFilter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_scale = settings->var4;
    v4->_threshold = settings->var3;
    v4->_accumulationGroupDelay = settings->var5;
    v4->_highPassPole = settings->var2 * 6.2832;
    v4->_lowPassPole = settings->var1 * 6.2832;
    v4->_isSuspended = 0;
    [(GVSMotionBlurFilter *)v4 reset];
  }

  return v5;
}

- (void)reset
{
  self->_isFilterInitialized = 0;
  *self->_filteredBlurVector = 0;
  self->_prevSamplingRate = 29.997;
}

- (id)updateBlurVector:(double)vector atTime:
{
  if ((*(self + 40) & 1) == 0)
  {
    *(self + 64) = 0u;
    *(self + 80) = 0u;
    *(self + 48) = vector + -1.0 / *(self + 16);
    *(self + 40) = 1;
  }

  v5 = vmul_f32(a2, a2);
  v5.f32[0] = vaddv_f32(v5);
  v6 = *(self + 32);
  v7 = 0.0;
  v8 = 0;
  if (v5.f32[0] > (v6 * v6))
  {
    v9 = sqrtf(v5.f32[0]);
    v8 = vmul_n_f32(a2, fmaxf(v9 - v6, 0.0) / v9);
  }

  v10 = vector - *(self + 48);
  v5.f32[0] = v10;
  [self highPassFilter:*&v8 deltaTime:*&v5];
  if ((*(self + 56) & 1) == 0)
  {
    _D1 = vmul_f32(v8, v8);
    if (vaddv_f32(_D1) > 0.0000001)
    {
      v13 = vmul_f32(v8, v11);
      if (vaddv_f32(v13) > 0.0000001)
      {
        v14 = vmaxnm_f32(vdup_lane_s32(vdiv_f32(vadd_f32(v13, vdup_lane_s32(v13, 1)), vadd_f32(_D1, vdup_lane_s32(_D1, 1))), 0), 0);
        __asm { FMOV            V1.2S, #1.0 }

        v7 = COERCE_DOUBLE(vmul_f32(v8, vminnm_f32(v14, _D1)));
      }
    }
  }

  _D1.f32[0] = v10;
  [self lowPassFilter:v7 deltaTime:*&_D1];
  *(self + 8) = v19;
  *(self + 48) = vector;
  *(self + 16) = 1.0 / v10;

  return [self filteredBlurVector];
}

- (float32x2_t)lowPassFilter:(float)filter deltaTime:
{
  v5 = expf(-(self[3].f32[0] * filter));
  v6 = ((v5 / (1.0 - v5)) * 0.5) / (((v5 / (1.0 - v5)) * 0.5) + 1.0);
  v7 = vmla_n_f32(vmul_n_f32(a2, 1.0 - v6), self[8], v6);
  result = vmla_n_f32(vmul_n_f32(v7, 1.0 - v6), self[9], v6);
  self[8] = v7;
  self[9] = result;
  return result;
}

- (float32x2_t)highPassFilter:(float)filter deltaTime:
{
  v5 = expf(-(self[2].f32[1] * filter));
  v6 = (v5 / (1.0 - v5)) + (v5 / (1.0 - v5));
  v7 = v6 / (v6 + 1.0);
  v8 = (v7 + 1.0) / (v7 + v7);
  v9 = vmla_n_f32(vmul_n_f32(a2, 1.0 - v7), self[10], v7);
  v10 = vmul_n_f32(vsub_f32(a2, v9), v8);
  v11 = vmla_n_f32(vmul_n_f32(v10, 1.0 - v7), self[11], v7);
  self[10] = v9;
  self[11] = v11;
  return vmul_n_f32(vsub_f32(v10, v11), v8);
}

@end