@interface RTSCMotionBlurFilter
- (RTSCMotionBlurFilter)init;
- (float32x2_t)highPassFilter:(float)a3 frameTime:;
- (float32x2_t)lowPassFilter:(float)a3 frameTime:;
- (id)updateBlurVector:(double)a3 atTime:;
@end

@implementation RTSCMotionBlurFilter

- (RTSCMotionBlurFilter)init
{
  v5.receiver = self;
  v5.super_class = RTSCMotionBlurFilter;
  v2 = [(RTSCMotionBlurFilter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_threshold = 0.5;
    *&v2->_highPassPole = 0x41490FDB40F1463BLL;
    [(RTSCMotionBlurFilter *)v2 reset];
  }

  return v3;
}

- (id)updateBlurVector:(double)a3 atTime:
{
  if ((*(a1 + 32) & 1) == 0)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 40) = a3 + -0.0333366655;
    *(a1 + 32) = 1;
  }

  v5 = vmul_f32(a2, a2);
  v5.f32[0] = vaddv_f32(v5);
  v6 = *(a1 + 28);
  v7 = 0;
  v8 = 0;
  if (v5.f32[0] > (v6 * v6))
  {
    v9 = sqrtf(v5.f32[0]);
    v8 = vmul_n_f32(a2, fmaxf(v9 - v6, 0.0) / v9);
  }

  v10 = a3 - *(a1 + 40);
  v5.f32[0] = v10;
  [a1 highPassFilter:*&v8 frameTime:*&v5];
  _D1 = vmul_f32(v8, v8);
  if (vaddv_f32(_D1) > 0.0000001)
  {
    v13 = vmul_f32(v8, v11);
    if (vaddv_f32(v13) > 0.0000001)
    {
      v14 = vmaxnm_f32(vdup_lane_s32(vdiv_f32(vadd_f32(v13, vdup_lane_s32(v13, 1)), vadd_f32(_D1, vdup_lane_s32(_D1, 1))), 0), 0);
      __asm { FMOV            V1.2S, #1.0 }

      v7 = vmul_f32(v8, vminnm_f32(v14, _D1));
    }
  }

  _D1.f32[0] = v10;
  [a1 lowPassFilter:COERCE_DOUBLE(vmul_n_f32(v7 frameTime:{*(a1 + 24))), *&_D1}];
  *(a1 + 8) = v19;
  *(a1 + 40) = a3;

  return [a1 filteredBlurVector];
}

- (float32x2_t)lowPassFilter:(float)a3 frameTime:
{
  v5 = expf(-(*(a1 + 20) * a3));
  v6 = 0;
  *v7.i32 = ((v5 / (1.0 - v5)) * 0.5) / (((v5 / (1.0 - v5)) * 0.5) + 1.0);
  v8 = vdup_lane_s32(v7, 0);
  v9 = a1 + 56;
  do
  {
    a2 = vmla_f32(a2, vsub_f32(*(v9 + v6), a2), v8);
    *(v9 + v6) = *&a2;
    v6 -= 8;
  }

  while (v6 != -16);
  return a2;
}

- (float32x2_t)highPassFilter:(float)a3 frameTime:
{
  v5 = expf(-(*(a1 + 16) * a3));
  v6 = 0;
  v7 = (v5 / (1.0 - v5)) + (v5 / (1.0 - v5));
  *v8.i32 = v7 / (v7 + 1.0);
  v9 = vdup_lane_s32(v8, 0);
  v10 = a1 + 72;
  do
  {
    v11 = vmla_f32(a2, vsub_f32(*(v10 + v6), a2), v9);
    *(v10 + v6) = v11;
    a2 = vmul_n_f32(vsub_f32(a2, v11), (*v8.i32 + 1.0) / (*v8.i32 + *v8.i32));
    v6 -= 8;
  }

  while (v6 != -16);
  return a2;
}

@end