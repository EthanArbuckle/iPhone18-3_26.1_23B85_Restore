@interface RTSCRollingShutterModel
- (RTSCRollingShutterModel)init;
- (double)fitNormalizedBackwardsTransformForBufferSize:(float)size limitFactor:;
- (double)resetToCenterPosition:(float32x4_t)position withPose:(double)pose principalPoint:(float)point focalLength:;
- (void)updateModelAtRow:(float32x4_t)row withPose:(float32x2_t)pose principalPoint:;
@end

@implementation RTSCRollingShutterModel

- (RTSCRollingShutterModel)init
{
  v4.receiver = self;
  v4.super_class = RTSCRollingShutterModel;
  result = [(RTSCRollingShutterModel *)&v4 init];
  if (result)
  {
    v3 = matrix_identity_float3x3.columns[1];
    *result->_anon_10 = matrix_identity_float3x3.columns[0];
    *&result->_anon_10[16] = v3;
    *&result->_anon_10[32] = matrix_identity_float3x3.columns[2];
    *result->_referencePosition = 0;
    result->_focalLength = -1.0;
    *&result->_covarFit[4] = 0u;
  }

  return result;
}

- (double)resetToCenterPosition:(float32x4_t)position withPose:(double)pose principalPoint:(float)point focalLength:
{
  *(self + 72) = point;
  *(self + 64) = a2;
  *&v6 = simd_matrix3x3(vmulq_f32(position, xmmword_11B60));
  v7 = 0;
  HIDWORD(v6) = 0;
  HIDWORD(v8) = 0;
  HIDWORD(v9) = 0;
  v10.i32[0] = 0;
  v10.i64[1] = 0;
  v10.f32[1] = point;
  __asm { FMOV            V5.4S, #1.0 }

  *_Q5.i64 = pose;
  v22[0] = v6;
  v22[1] = v8;
  v22[2] = v9;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v23 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(point), COERCE_FLOAT(v22[v7])), v10, *&v22[v7], 1), _Q5, v22[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  v16 = v23;
  v17 = v24;
  *(self + 24) = DWORD2(v23);
  v18 = v25;
  *(self + 16) = v16;
  *(self + 40) = DWORD2(v17);
  *(self + 32) = v17;
  *(self + 56) = DWORD2(v18);
  *(self + 48) = v18;
  result = 0.0;
  *(self + 80) = 0u;
  return result;
}

- (void)updateModelAtRow:(float32x4_t)row withPose:(float32x2_t)pose principalPoint:
{
  v4 = self[4].f32[2];
  if (v4 > 0.0)
  {
    *v7.i64 = simd_matrix3x3(row);
    v10 = 0;
    LODWORD(v11) = 0;
    *(&v11 + 1) = 1.0 / v4;
    *v12.f32 = vmul_n_f32(vneg_f32(pose), 1.0 / v4);
    v12.i64[1] = COERCE_UNSIGNED_INT(1.0);
    v23 = COERCE_UNSIGNED_INT(1.0 / v4);
    v24 = v11;
    v25 = v12;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    do
    {
      *(&v26 + v10 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(&v23 + v10 * 4))), v8, *&v23.f32[v10], 1), v9, *(&v23 + v10 * 4), 2);
      v10 += 4;
    }

    while (v10 != 12);
    v13 = 0;
    v14 = self[1];
    v15 = self[2];
    v16 = self[3];
    v23 = v26;
    v24 = v27;
    v25 = v28;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    do
    {
      v17 = *(&v23 + v13);
      *(&v26 + v13) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v17.f32[0]), v15, *v17.f32, 1), v16, v17, 2);
      v13 += 16;
    }

    while (v13 != 48);
    v17.i64[0] = self[4].i64[0];
    v18 = vaddq_f32(v28, vmlaq_n_f32(vmulq_n_f32(v26, v17.f32[0]), v27, a2));
    v19 = vextq_s8(v18, v18, 8uLL).u32[0];
    v20 = vrecpe_f32(v19);
    v21 = vmul_f32(v20, vrecps_f32(v19, v20));
    *v17.f32 = vmla_n_f32(vneg_f32(*v17.f32), *v18.i8, vmul_f32(v21, vrecps_f32(v19, v21)).f32[0]);
    v17.f32[2] = a2 - COERCE_FLOAT(HIDWORD(self[4].i64[0]));
    self[5] = vmlaq_n_f32(self[5], v17, v17.f32[2]);
  }
}

- (double)fitNormalizedBackwardsTransformForBufferSize:(float)size limitFactor:
{
  v7 = matrix_identity_float3x3.columns[0];
  v6 = matrix_identity_float3x3.columns[1];
  v8 = matrix_identity_float3x3.columns[2];
  if (size > 0.0)
  {
    v9 = self[5];
    if (COERCE_FLOAT(self[5].i64[1]) > 0.0)
    {
      v27 = v3;
      v28 = v4;
      v10 = vmla_n_f32(0x3F80000000000000, vadd_f32(vdiv_f32(*v9.i8, vdup_laneq_s32(v9, 2)), 0xBF80000080000000), size);
      v6.f32[0] = -*v10.i32;
      v6.i32[1] = 1.0;
      v6.i32[2] = 0;
      v11 = vdivq_f32(v6, vdupq_lane_s32(v10, 1));
      v10.i32[0] = 0;
      v10.i32[1] = a2.i32[1];
      v15 = v10;
      v16 = a2.u32[0];
      a2.i64[0] = self[4].i64[0];
      v29.columns[2].i64[0] = vnegq_f32(a2).u64[0];
      v29.columns[2].i64[1] = COERCE_UNSIGNED_INT(1.0);
      v17 = v29.columns[2];
      v18 = v11;
      v29.columns[0] = v16;
      v29.columns[1] = v10;
      v19 = v8;
      v20 = v7;
      v30 = __invert_f3(v29);
      v12 = 0;
      v21 = v16;
      v22 = v15;
      v23 = v17;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      do
      {
        *(&v24 + v12 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(&v21 + v12 * 4))), v18, *&v21.f32[v12], 1), v19, *(&v21 + v12 * 4), 2);
        v12 += 4;
      }

      while (v12 != 12);
      v13 = 0;
      v21 = v24;
      v22 = v25;
      v23 = v26;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      do
      {
        *(&v24 + v13 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.columns[0], COERCE_FLOAT(*(&v21 + v13 * 4))), v30.columns[1], *&v21.f32[v13], 1), v30.columns[2], *(&v21 + v13 * 4), 2);
        v13 += 4;
      }

      while (v13 != 12);
      v7.i64[0] = v24.i64[0];
    }
  }

  return *v7.i64;
}

@end