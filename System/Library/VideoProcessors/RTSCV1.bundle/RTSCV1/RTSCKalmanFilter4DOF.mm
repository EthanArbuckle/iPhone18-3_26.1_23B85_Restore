@interface RTSCKalmanFilter4DOF
- (RTSCKalmanFilter4DOF)init;
- (_OWORD)_updateInternalForIndex:(float32x4_t)a3 withMeasurement:(float32x4_t)a4 noiseCovariance:(float32x4_t)a5;
- (__n128)positionCovariance;
- (void)_updateStateTransitionModelWithTimeStep:(float)a3;
- (void)predictTimeStep:(float)a3 input:(id)a4[3] processCovariance:;
- (void)reset;
- (void)updateWithPosition:(__n128)a3 noiseCovariance:(__n128)a4;
- (void)updateWithVelocity:(void *)a1 noiseCovariance:(const char *)a2;
@end

@implementation RTSCKalmanFilter4DOF

- (RTSCKalmanFilter4DOF)init
{
  v6.receiver = self;
  v6.super_class = RTSCKalmanFilter4DOF;
  v2 = [(RTSCKalmanFilter4DOF *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(RTSCKalmanFilter4DOF *)v2 reset];
    v4 = v3;
  }

  else
  {
    [RTSCKalmanFilter4DOF init];
  }

  return v3;
}

- (void)reset
{
  v2 = 0;
  self->_isInitialized = 0;
  stateEstimate = self->_stateEstimate;
  do
  {
    v4 = &stateEstimate[16 * v2];
    *v4 = 0;
    *(v4 + 1) = 0;
    for (i = 64; i != 256; i += 64)
    {
      v6 = (self + i);
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
    }

    ++v2;
    self = (self + 192);
  }

  while (v2 != 3);
}

- (void)_updateStateTransitionModelWithTimeStep:(float)a3
{
  *&self->_stateTransitionModel[0][0] = 0;
  self->_stateTransitionModel[0][2] = 0.0;
  self->_stateTransitionModel[0][0] = 1.0;
  *&self->_stateTransitionModel[1][0] = 0;
  self->_stateTransitionModel[1][1] = 1.0;
  *&self->_stateTransitionModel[2][0] = 0;
  self->_stateTransitionModel[2][2] = 1.0;
  self->_stateTransitionModel[0][1] = a3;
  self->_stateTransitionModel[1][2] = a3;
}

- (void)predictTimeStep:(float)a3 input:(id)a4[3] processCovariance:
{
  if (self->_isInitialized)
  {
    v53[72] = v4;
    v53[73] = v5;
    v51 = v6;
    [(RTSCKalmanFilter4DOF *)self _updateStateTransitionModelWithTimeStep:?];
    v9 = 0;
    stateEstimate = self->_stateEstimate;
    v11 = self;
    do
    {
      if (v9 <= 1)
      {
        v12 = 0;
        v13 = *&stateEstimate[16 * v9];
        do
        {
          v13 = vmlaq_n_f32(v13, *&v11->_stateEstimate[16 * v12 + 16], v11->_stateTransitionModel[0][v12 + 1]);
          *&stateEstimate[16 * v9] = v13;
          ++v12;
        }

        while (v9 + v12 != 2);
      }

      ++v9;
      v11 = (v11 + 16);
    }

    while (v9 != 3);
    v14 = 0;
    *self->_stateEstimate = vaddq_f32(*self->_stateEstimate, v51);
    stateTransitionModel = self->_stateTransitionModel;
    do
    {
      v16 = 0;
      v17 = &self->_anon_40[48];
      do
      {
        v18 = 0;
        v19 = &v52[12 * v14 + 4 * v16];
        v19[2] = 0uLL;
        v19[3] = 0uLL;
        *v19 = 0uLL;
        v19[1] = 0uLL;
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v23 = 0uLL;
        v24 = v17;
        do
        {
          v25 = (*stateTransitionModel)[v18];
          v23 = vaddq_f32(v23, vmulq_n_f32(v24[-3], v25));
          v20 = vaddq_f32(v20, vmulq_n_f32(v24[-2], v25));
          v21 = vaddq_f32(v21, vmulq_n_f32(v24[-1], v25));
          v22 = vaddq_f32(v22, vmulq_n_f32(*v24, v25));
          ++v18;
          v24 += 12;
        }

        while (v18 != 3);
        *v19 = v23;
        v19[1] = v20;
        v19[2] = v21;
        v19[3] = v22;
        ++v16;
        v17 += 64;
      }

      while (v16 != 3);
      ++v14;
      ++stateTransitionModel;
    }

    while (v14 != 3);
    v26 = 0;
    v27 = v53;
    do
    {
      v28 = 0;
      v29 = self->_stateTransitionModel;
      do
      {
        v30 = 0;
        v31 = &self->_anon_40[192 * v26 + 64 * v28];
        *(v31 + 2) = 0uLL;
        *(v31 + 3) = 0uLL;
        *v31 = 0uLL;
        *(v31 + 1) = 0uLL;
        v32 = *(v31 + 1);
        v33 = *(v31 + 2);
        v34 = *(v31 + 3);
        v35 = 0uLL;
        v36 = v27;
        do
        {
          v37 = (*v29)[v30];
          v38 = v36[-2];
          v39 = v36[-1];
          v40 = *v36;
          v41 = v36[1];
          v36 += 4;
          v35 = vaddq_f32(v35, vmulq_n_f32(v38, v37));
          v32 = vaddq_f32(v32, vmulq_n_f32(v39, v37));
          v33 = vaddq_f32(v33, vmulq_n_f32(v40, v37));
          v34 = vaddq_f32(v34, vmulq_n_f32(v41, v37));
          *v31 = v35;
          *(v31 + 1) = v32;
          *(v31 + 2) = v33;
          *(v31 + 3) = v34;
          ++v30;
        }

        while (v30 != 3);
        ++v28;
        ++v29;
      }

      while (v28 != 3);
      ++v26;
      v27 += 12;
    }

    while (v26 != 3);
    v42 = &self->_anon_40[48];
    v43 = (a4 + 32);
    do
    {
      v44 = v43[-2];
      v45 = v43[-1];
      v46 = *v43;
      v47 = v43[1];
      v43 += 4;
      v48 = vaddq_f32(v42[-2], v45);
      v49 = vaddq_f32(v42[-1], v46);
      v50 = vaddq_f32(*v42, v47);
      v42[-3] = vaddq_f32(v42[-3], v44);
      v42[-2] = v48;
      v42[-1] = v49;
      *v42 = v50;
      v42 += 16;
      --v26;
    }

    while (v26);
  }
}

- (void)updateWithPosition:(__n128)a3 noiseCovariance:(__n128)a4
{
  if (*(a1 + 676) == 1)
  {
    return [a1 _updateInternalForIndex:0 withMeasurement:? noiseCovariance:?];
  }

  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  *(a1 + 5) = a5;
  *(a1 + 6) = a6;
  *(a1 + 7) = a7;
  *(a1 + 676) = 1;
  return a1;
}

- (void)updateWithVelocity:(void *)a1 noiseCovariance:(const char *)a2
{
  if (*(a1 + 676) == 1)
  {
    return [a1 _updateInternalForIndex:1 withMeasurement:? noiseCovariance:?];
  }

  return a1;
}

- (_OWORD)_updateInternalForIndex:(float32x4_t)a3 withMeasurement:(float32x4_t)a4 noiseCovariance:(float32x4_t)a5
{
  v10 = (a1 + 64);
  v11 = a8;
  v12 = (a1 + 64 + 192 * a8 + (a8 << 6));
  v76.columns[0] = vaddq_f32(a3, *v12);
  v76.columns[1] = vaddq_f32(a4, v12[1]);
  v76.columns[2] = vaddq_f32(a5, v12[2]);
  v76.columns[3] = vaddq_f32(a6, v12[3]);
  v77 = __invert_f4(v76);
  v13 = 0;
  v14 = vsubq_f32(a2, *(a1 + 16 + 16 * a8));
  v15 = vdupq_lane_s32(*v14.i8, 1);
  v16 = vdupq_laneq_s32(v14, 2);
  v17 = vdupq_laneq_s32(v14, 3);
  do
  {
    v18 = 0;
    v19 = &v10[192 * v13 + 64 * v11];
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v67[0] = v77.columns[0];
    v67[1] = v77.columns[1];
    v67[2] = v77.columns[2];
    v68[0] = v77.columns[3];
    memset(__dst, 0, 64);
    do
    {
      __dst[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v67[v18])), v21, *&v67[v18], 1), v22, v67[v18], 2), v23, v67[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v24 = &v68[4 * v13 + 33];
    v25 = __dst[0];
    v26 = __dst[1];
    v27 = __dst[2];
    v28 = __dst[3];
    *v24 = __dst[0];
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    *(a1 + 16 + 16 * v13) = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v25, *v14.i32), v15, v26), v16, v27), v17, v28), *(a1 + 16 + 16 * v13));
    ++v13;
  }

  while (v13 != 3);
  v29 = 0;
  v30 = v67;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      v32 = &v30[i];
      v32[2] = 0uLL;
      v32[3] = 0uLL;
      *v32 = 0uLL;
      v32[1] = 0uLL;
    }

    ++v29;
    v30 += 12;
  }

  while (v29 != 3);
  v33 = &v69;
  v34 = &v67[4 * v11 + 2];
  v35 = 0xFFFFFFFFFFFFFD0;
  v36 = matrix_identity_float4x4.columns[0];
  v37 = matrix_identity_float4x4.columns[1];
  v38 = matrix_identity_float4x4.columns[2];
  v39 = matrix_identity_float4x4.columns[3];
  do
  {
    v40 = &v68[v35];
    v40[45] = v36;
    v40[46] = v37;
    v40[47] = v38;
    v40[48] = v39;
    v41 = v33[-2];
    v42 = v33[-1];
    v43 = *v33;
    v44 = v33[1];
    v33 += 4;
    v45 = vsubq_f32(v34[-1], v42);
    v46 = vsubq_f32(*v34, v43);
    v47 = vsubq_f32(v34[1], v44);
    v34[-2] = vsubq_f32(v34[-2], v41);
    v34[-1] = v45;
    *v34 = v46;
    v34[1] = v47;
    v34 += 12;
    v35 += 16;
  }

  while (v35 * 16);
  memcpy(__dst, v10, sizeof(__dst));
  for (j = 0; j != 3; ++j)
  {
    for (k = 0; k != 3; ++k)
    {
      v50 = 0;
      v51 = &v10[192 * j + 64 * k];
      v51[2] = 0uLL;
      v51[3] = 0uLL;
      *v51 = 0uLL;
      v51[1] = 0uLL;
      v52 = v51[1];
      v53 = v51[2];
      v54 = v51[3];
      v55 = 0uLL;
      do
      {
        v56 = 0;
        v57 = &v67[12 * j + 4 * v50];
        v58 = *v57;
        v59 = v57[1];
        v60 = v57[2];
        v61 = v57[3];
        result = &__dst[12 * v50 + 4 * k];
        v63 = result[1];
        v64 = result[2];
        v65 = result[3];
        v71[0] = *result;
        v71[1] = v63;
        v71[2] = v64;
        v71[3] = v65;
        v72 = 0uLL;
        v73 = 0uLL;
        v74 = 0uLL;
        v75 = 0uLL;
        do
        {
          *(&v72 + v56 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(v71[v56])), v59, *&v71[v56], 1), v60, v71[v56], 2), v61, v71[v56], 3);
          ++v56;
        }

        while (v56 != 4);
        v55 = vaddq_f32(v55, v72);
        v52 = vaddq_f32(v52, v73);
        v53 = vaddq_f32(v53, v74);
        v54 = vaddq_f32(v54, v75);
        ++v50;
      }

      while (v50 != 3);
      *v51 = v55;
      v51[1] = v52;
      v51[2] = v53;
      v51[3] = v54;
    }
  }

  return result;
}

- (__n128)positionCovariance
{
  result = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  v4 = *(a1 + 112);
  return result;
}

@end