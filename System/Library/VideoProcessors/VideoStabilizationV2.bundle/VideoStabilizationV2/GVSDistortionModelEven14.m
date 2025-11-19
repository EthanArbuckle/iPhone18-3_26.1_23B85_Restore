@interface GVSDistortionModelEven14
- (GVSDistortionModelEven14)init;
- (double)computeScalingAtPointsQuad:(float32x4_t)a3;
- (float)computeInverseScalingAtPoint:(GVSDistortionModelEven14 *)self;
- (void)reset;
- (void)updateWithCoefficients:(float *)a3 pixelSizeMm:(float)a4 center:;
@end

@implementation GVSDistortionModelEven14

- (GVSDistortionModelEven14)init
{
  v5.receiver = self;
  v5.super_class = GVSDistortionModelEven14;
  v2 = [(GVSDistortionModelEven14 *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GVSDistortionModelEven14 *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  *&self->_coefficients[4] = 0u;
  *self->_coefficients = 0u;
  *self->_distortionCenter = 0;
  self->_pixelSizeMmSq = 0.0;
}

- (void)updateWithCoefficients:(float *)a3 pixelSizeMm:(float)a4 center:
{
  if (a3)
  {
    coefficients = self->_coefficients;
    for (i = 7; i != -1; --i)
    {
      *coefficients++ = a3[i] * 0.01;
    }

    self->_coefficients[7] = self->_coefficients[7] + 1.0;
    self->_pixelSizeMmSq = a4 * a4;
    *self->_distortionCenter = v4;
  }

  else
  {
    [(GVSDistortionModelEven14 *)self reset];
  }
}

- (float)computeInverseScalingAtPoint:(GVSDistortionModelEven14 *)self
{
  v3 = 0;
  v4 = vsub_f32(v2, *self->_distortionCenter);
  v5 = self->_pixelSizeMmSq * vaddv_f32(vmul_f32(v4, v4));
  result = self->_coefficients[0];
  do
  {
    result = self->_coefficients[++v3] + (result * v5);
  }

  while (v3 != 7);
  return result;
}

- (double)computeScalingAtPointsQuad:(float32x4_t)a3
{
  v3 = 0;
  v4 = *(a1 + 40);
  v5 = vsubq_f32(a2, vdupq_lane_s32(v4, 0));
  v6 = (a1 + 8);
  v7 = vld1q_dup_f32(v6);
  v8 = vsubq_f32(a3, vdupq_lane_s32(v4, 1));
  v9 = vmulq_n_f32(vmlaq_f32(vmulq_f32(v8, v8), v5, v5), *(a1 + 48));
  do
  {
    v10 = v7;
    v11 = (a1 + 12 + v3);
    v12 = vld1q_dup_f32(v11);
    v7 = vmlaq_f32(v12, v9, v10);
    v3 += 4;
  }

  while (v3 != 28);
  v13 = vrecpeq_f32(v7);
  v14 = vmulq_f32(v13, vrecpsq_f32(v7, v13));
  *&result = vmulq_f32(v14, vrecpsq_f32(v7, v14)).u64[0];
  return result;
}

@end