@interface GVSFacePosePreprocessor
- (GVSFacePosePreprocessor)init;
- (double)updateWithFacePose:(uint64_t)pose faceIdentifier:(__int32)identifier;
- (void)reset;
@end

@implementation GVSFacePosePreprocessor

- (GVSFacePosePreprocessor)init
{
  v5.receiver = self;
  v5.super_class = GVSFacePosePreprocessor;
  v2 = [(GVSFacePosePreprocessor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GVSFacePosePreprocessor *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  *self->_anon_10 = xmmword_433D0;
  *self->_anon_20 = xmmword_433D0;
  self->_previousFaceIdentifier = -1;
}

- (double)updateWithFacePose:(uint64_t)pose faceIdentifier:(__int32)identifier
{
  v4 = self[1];
  v5 = xmmword_433D0;
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v4, v4))) & 0x80000000) == 0 && (vmaxvq_u32(vmvnq_s8(vceqq_f32(a2, a2))) & 0x80000000) == 0 && self[3].i32[0] == identifier)
  {
    v6 = vmulq_f32(v4, xmmword_433E0);
    v7 = vnegq_f32(a2);
    v8 = vtrn2q_s32(a2, vtrn1q_s32(a2, v7));
    v9 = vrev64q_s32(a2);
    v9.i32[0] = v7.i32[1];
    v9.i32[3] = v7.i32[2];
    v10 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v7, 8uLL), *v6.f32, 1), vextq_s8(v8, v8, 8uLL), v6.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a2, v6, 3), v9, v6, 2));
    v10.i32[2] = 0;
    v11 = vmulq_f32(v10, v10);
    v12 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    if (vaddv_f32(v12) != 0.0)
    {
      v13 = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
      v14 = vrsqrte_f32(v13);
      v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
      v5 = vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]);
    }
  }

  v16 = self[2];
  v17 = vnegq_f32(v5);
  v18 = vtrn2q_s32(v5, vtrn1q_s32(v5, v17));
  v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v17, 8uLL), *v16.f32, 1), vextq_s8(v18, v18, 8uLL), v16.f32[0]);
  v20 = vrev64q_s32(v5);
  v20.i32[0] = v17.i32[1];
  v20.i32[3] = v17.i32[2];
  v21 = vaddq_f32(v19, vmlaq_laneq_f32(vmulq_laneq_f32(v5, v16, 3), v20, v16, 2));
  self[1] = a2;
  self[2] = v21;
  self[3].i32[0] = identifier;
  return *v21.i64;
}

@end