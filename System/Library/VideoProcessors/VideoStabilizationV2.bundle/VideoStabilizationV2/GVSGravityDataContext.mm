@interface GVSGravityDataContext
- (GVSGravityDataContext)init;
- (int)computeGravity:(id *)gravity forTimestamp:(double)timestamp;
- (int)pushSample:(id *)sample withPose:(id *)pose atTime:(double)time;
- (void)reset;
@end

@implementation GVSGravityDataContext

- (GVSGravityDataContext)init
{
  v5.receiver = self;
  v5.super_class = GVSGravityDataContext;
  v2 = [(GVSGravityDataContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GVSGravityDataContext *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  bzero(self->_fusedRingTime, 0x800uLL);
  self->_latestTimestamp = 0.0;
  *self->_referencePoseGravityEstimate = 0u;
  self->_fusedRingIndex = 0;
}

- (int)pushSample:(id *)sample withPose:(id *)pose atTime:(double)time
{
  latestTimestamp = self->_latestTimestamp;
  if (latestTimestamp >= time)
  {
    v35 = v5;
    v36 = v6;
    [GVSGravityDataContext pushSample:? withPose:? atTime:?];
    return v34;
  }

  else
  {
    var1 = pose->var1;
    var2 = pose->var2;
    var3 = pose->var3;
    v11.i64[0] = __PAIR64__(LODWORD(var2), LODWORD(var1));
    var0 = pose->var0;
    v11.i64[1] = __PAIR64__(LODWORD(var0), LODWORD(var3));
    v13 = vmulq_f32(v11, xmmword_433E0);
    v14 = vnegq_f32(v13);
    v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
    v16 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v13, v14, 8uLL), sample->var1), vextq_s8(v15, v15, 8uLL), sample->var0);
    v17 = vrev64q_s32(v13);
    v17.i32[0] = v14.i32[1];
    v17.i32[3] = v14.i32[2];
    v18 = vmlaq_n_f32(v16, v17, sample->var2);
    v19 = vnegq_f32(v18);
    v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
    v21 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v18, v19, 8uLL), var2), vextq_s8(v20, v20, 8uLL), var1);
    v22 = vrev64q_s32(v18);
    v22.i32[0] = v19.i32[1];
    v22.i32[3] = v19.i32[2];
    v23 = time - latestTimestamp;
    v24 = self->_gravityFilterTimescale / (self->_gravityFilterTimescale + v23);
    v25 = vmlaq_n_f32(vmulq_n_f32(*self->_referencePoseGravityEstimate, v24), vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v18, var0), v22, var3), v21), 1.0 - v24);
    v26 = vmulq_f32(v25, v25);
    v27 = v26.f32[2] + vaddv_f32(*v26.f32);
    if (v27 > 0.0)
    {
      v28 = LODWORD(v27);
      v29 = vrsqrte_f32(LODWORD(v27));
      v30 = vmul_f32(v29, vrsqrts_f32(v28, vmul_f32(v29, v29)));
      v25 = vmulq_n_f32(v25, vmul_f32(v30, vrsqrts_f32(v28, vmul_f32(v30, v30))).f32[0]);
    }

    v31 = 0;
    *self->_referencePoseGravityEstimate = v25;
    fusedRingIndex = self->_fusedRingIndex;
    self->_fusedRingTime[fusedRingIndex] = time;
    *&self->_fusedRingGravity[16 * fusedRingIndex] = *self->_referencePoseGravityEstimate;
    self->_latestTimestamp = time;
    self->_fusedRingIndex = (self->_fusedRingIndex + 1);
  }

  return v31;
}

- (int)computeGravity:(id *)gravity forTimestamp:(double)timestamp
{
  if (gravity)
  {
    v4 = 0;
    fusedRingTime = self->_fusedRingTime;
    v6 = 1.0;
    LODWORD(v7) = -1;
    do
    {
      v8 = fusedRingTime[v4] - timestamp;
      v9 = fabsf(v8);
      if (v6 <= v9)
      {
        v7 = v7;
      }

      else
      {
        v6 = v9;
        v7 = v4;
      }

      ++v4;
    }

    while (v4 != 256);
    if ((v7 & 0x80000000) != 0)
    {
      v17.i64[0] = 0;
      v17.i32[2] = 0;
    }

    else
    {
      v10 = fusedRingTime[v7];
      v11 = (v7 + 1);
      if (v10 >= timestamp)
      {
        v12 = (v7 - 1);
      }

      else
      {
        v12 = v7;
      }

      if (v10 >= timestamp)
      {
        v11 = v7;
      }

      v13 = fusedRingTime[v11];
      if (v13 >= timestamp && ((v14 = fusedRingTime[v12], vabdd_f64(v13, timestamp) <= 0.0179999992) ? (v15 = v14 <= timestamp) : (v15 = 0), v15 && vabdd_f64(v14, timestamp) <= 0.0179999992))
      {
        if (vabdd_f64(v13, v14) > 0.000001)
        {
          v19 = (timestamp - v14) / (v13 - v14);
          v17 = vmlaq_n_f32(vmulq_n_f32(*&self->_fusedRingGravity[16 * v11], v19), *&self->_fusedRingGravity[16 * v12], 1.0 - v19);
          v20 = vmulq_f32(v17, v17);
          v21 = v20.f32[2] + vaddv_f32(*v20.f32);
          if (v21 > 0.0)
          {
            v22 = LODWORD(v21);
            v23 = vrsqrte_f32(LODWORD(v21));
            v24 = vmul_f32(v23, vrsqrts_f32(v22, vmul_f32(v23, v23)));
            v17 = vmulq_n_f32(v17, vmul_f32(v24, vrsqrts_f32(v22, vmul_f32(v24, v24))).f32[0]);
          }

          goto LABEL_23;
        }

        v16 = (self + 16 * v12);
      }

      else
      {
        v16 = (self + 16 * v7);
      }

      v17 = v16[129];
    }

LABEL_23:
    result = 0;
    *&gravity->var0 = v17.i64[0];
    LODWORD(gravity->var2) = v17.i32[2];
    return result;
  }

  [GVSGravityDataContext computeGravity:? forTimestamp:?];
  return v25;
}

- (uint64_t)pushSample:(_DWORD *)a1 withPose:atTime:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)computeGravity:(_DWORD *)a1 forTimestamp:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end