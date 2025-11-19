@interface RTSCFaceTrackerV2
- (BOOL)_getFaceOrientationInDictionary:(id)a3 asQuaternion:(id *)a4;
- (RTSCFaceTrackerV2)initWithTimeConstant:(float)a3;
- (__n128)_findPositionOfMatchedDetection:(uint64_t)a3 bufferSize:(void *)a4;
- (double)predictFaceBoxAtTimeOffset:(uint64_t)a1;
- (id)_updateFilterWithFaceBox:(float32x4_t)a3 facePose:(double)a4 atTime:;
- (void)_updateTrackedFacePose:(float32x4_t *)a1;
- (void)_updateTrackingStateFromPrevFrame:(RTSCFaceTrackerV2 *)self atTime:(SEL)a2 bufferSize:(double)a3;
- (void)dealloc;
- (void)reset;
- (void)trackFaceBoxesWithDetectedObjects:(RTSCFaceTrackerV2 *)self atTime:(SEL)a2 bufferSize:(id)a3 changeFromPrevFrame:(double)a4;
@end

@implementation RTSCFaceTrackerV2

- (RTSCFaceTrackerV2)initWithTimeConstant:(float)a3
{
  v14.receiver = self;
  v14.super_class = RTSCFaceTrackerV2;
  v4 = [(RTSCFaceTrackerV2 *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeConstant = a3;
    *&v4->_initVariance[4] = vdupq_n_s32(0x42C80000u);
    v6 = objc_alloc_init(RTSCKalmanFilter4DOF);
    kalmanFilter = v5->_kalmanFilter;
    v5->_kalmanFilter = v6;

    v8 = [RTSCFaceDataCovarianceEstimator alloc];
    LODWORD(v9) = 1036831949;
    v10 = [(RTSCFaceDataCovarianceEstimator *)v8 initWithTimeConstant:v9 initialCovariance:*&v5->_initVariance[4]];
    covarianceEstimator = v5->_covarianceEstimator;
    v5->_covarianceEstimator = v10;

    v5->_facePoseSmoothingTimescale = 0.1;
    if (!v5->_covarianceEstimator)
    {
      v12 = 0;
      goto LABEL_6;
    }

    [(RTSCFaceTrackerV2 *)v5 reset];
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (void)dealloc
{
  kalmanFilter = self->_kalmanFilter;
  self->_kalmanFilter = 0;

  covarianceEstimator = self->_covarianceEstimator;
  self->_covarianceEstimator = 0;

  v5.receiver = self;
  v5.super_class = RTSCFaceTrackerV2;
  [(RTSCFaceTrackerV2 *)&v5 dealloc];
}

- (void)reset
{
  *&self->_trackedGroupID = -1;
  *&v3 = 0;
  DWORD2(v3) = 0;
  v4 = *&self->_initVariance[4];
  LODWORD(v5) = 0;
  HIDWORD(v5) = 0;
  *(&v5 + 4) = HIDWORD(*&self->_initVariance[4]);
  *&self->_prevBodyPosition[4] = 0u;
  *&self->_latestTrackTime = 0u;
  *&v6 = 0;
  *(&v6 + 1) = DWORD2(v4);
  HIDWORD(v3) = HIDWORD(v4);
  self->_frameTime = 0.0;
  *self->_anon_90 = v4;
  *&self->_anon_90[16] = v5;
  *&self->_anon_90[32] = v6;
  *&self->_anon_90[48] = v3;
  *&self->_topOfFaceDirection[4] = 3212836864;
  *self->_anon_70 = xmmword_11B30;
  [(RTSCKalmanFilter4DOF *)self->_kalmanFilter reset];
  covarianceEstimator = self->_covarianceEstimator;

  [(RTSCFaceDataCovarianceEstimator *)covarianceEstimator reset];
}

- (void)_updateTrackedFacePose:(float32x4_t *)a1
{
  v2 = vmulq_f32(a2, a2);
  v3 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  if (vaddv_f32(v3) > 0.0)
  {
    v5 = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
    v6 = vrsqrte_f32(v5);
    v7 = vmulq_n_f32(a2, vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6))).f32[0]);
    if (a1[2].i32[0] < 0 || (v8 = a1[5].f32[0], v8 <= 0.0))
    {
      a1[7] = v7;
    }

    else
    {
      v9 = a1[6].f32[0] / (v8 + a1[6].f32[0]);
      v10 = a1[7];
      v11 = vmulq_f32(v7, v10);
      v12 = vextq_s8(v11, v11, 8uLL);
      *v11.f32 = vadd_f32(*v11.f32, *v12.f32);
      v11.f32[0] = vaddv_f32(*v11.f32);
      v12.i64[0] = 0;
      v13 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v11, v12)), 0), vnegq_f32(v10), v10);
      v14 = 1.0;
      v15 = 1.0 - v9;
      v16 = vsubq_f32(v7, v13);
      v17 = vmulq_f32(v16, v16);
      v42 = v13;
      v43 = v7;
      v18 = vaddq_f32(v7, v13);
      v19 = vmulq_f32(v18, v18);
      v20 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))));
      v21 = v20 + v20;
      v22 = (v20 + v20) == 0.0;
      v23 = 1.0;
      if (!v22)
      {
        v23 = sinf(v21) / v21;
      }

      v24 = v23;
      v25 = vrecpe_f32(LODWORD(v23));
      v26 = vmul_f32(v25, vrecps_f32(LODWORD(v24), v25));
      LODWORD(v27) = vmul_f32(v26, vrecps_f32(LODWORD(v24), v26)).u32[0];
      if ((v15 * v21) != 0.0)
      {
        v40 = v27;
        v26.f32[0] = sinf(v15 * v21);
        v27 = v40;
        v14 = v26.f32[0] / (v15 * v21);
      }

      v26.f32[0] = v15 * (v27 * v14);
      v28 = vdupq_lane_s32(v26, 0);
      v29 = v9 * v21;
      v30 = 1.0;
      if (v29 != 0.0)
      {
        v39 = v28;
        v41 = v27;
        v31 = sinf(v29);
        v28 = v39;
        v27 = v41;
        v30 = v31 / v29;
      }

      v32 = vmlaq_f32(vmulq_n_f32(v42, v9 * (v27 * v30)), v43, v28);
      v33 = vmulq_f32(v32, v32);
      v34 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      if (vaddv_f32(v34) == 0.0)
      {
        v35 = xmmword_11B30;
      }

      else
      {
        v36 = vadd_f32(v34, vdup_lane_s32(v34, 1)).u32[0];
        v37 = vrsqrte_f32(v36);
        v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
        v35 = vmulq_n_f32(v32, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
      }

      a1[7] = v35;
    }
  }
}

- (id)_updateFilterWithFaceBox:(float32x4_t)a3 facePose:(double)a4 atTime:
{
  v5 = vmulq_f32(a2, a2);
  v6 = vmulq_f32(vmulq_n_f32(xmmword_11AE0, sqrtf(v5.f32[2] + v5.f32[3]) * 0.5), xmmword_11CD0);
  v7 = vmulq_f32(a3, xmmword_11B60);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v6.f32, 1), vextq_s8(v9, v9, 8uLL), v6.f32[0]);
  v11 = vrev64q_s32(v7);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vmlaq_laneq_f32(v10, v11, v6, 2);
  _Q4 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, _Q4));
  v9.i64[0] = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, _Q4, 8uLL), *a3.f32, 1), vextq_s8(v14, v14, 8uLL), a3.f32[0]).u64[0];
  v15 = vrev64q_s32(v12);
  v15.i32[0] = _Q4.i32[1];
  v15.i32[3] = _Q4.i32[2];
  __asm { FMOV            V4.2S, #1.0 }

  v26 = COERCE_DOUBLE(vadd_f32(*a2.f32, vsub_f32(vmul_f32(*v6.f32, COERCE_FLOAT32X2_T(-*_Q4.i64)), vadd_f32(*&vmlaq_laneq_f32(vmulq_laneq_f32(v12, a3, 3), v15, a3, 2), *v9.i8))));
  [*(a1 + 136) updateCovarianceWithFaceBox:v26 atTime:a4];
  v20 = *(a1 + 128);
  [*(a1 + 136) measurementCovariance];

  return [v20 updateWithPosition:v26 noiseCovariance:{v21, v22, v23, v24}];
}

- (void)_updateTrackingStateFromPrevFrame:(RTSCFaceTrackerV2 *)self atTime:(SEL)a2 bufferSize:(double)a3
{
  v5 = v3;
  if (self->_trackedGroupID < 0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *&v34 = vmul_f32(vadd_f32(*v4.f32, _D0), 0x3F0000003F000000);
    *(&v34 + 1) = v4.i64[0];
    *&self->_trackedFaceBox[4] = v34;
    v4.i64[1] = v4.i64[0];
    v35.i64[0] = 0x4000000040000000;
    v35.i64[1] = 0x4000000040000000;
    v36 = _simd_pow_f4(v4, v35);
    LODWORD(v37) = 0;
    HIDWORD(v37) = v36.i32[1];
    *&v38 = 0;
    *(&v38 + 1) = v36.u32[2];
    *&v39 = 0;
    DWORD2(v39) = 0;
    HIDWORD(v39) = v36.i32[3];
    *self->_anon_90 = v36.u32[0];
    *&self->_anon_90[16] = v37;
    *&self->_anon_90[32] = v38;
    *&self->_anon_90[48] = v39;
    *&self->_prevBodyPosition[4] = 0u;
    *&self->_latestTrackTime = 0u;
    self->_frameTime = 0.0;
  }

  else
  {
    v7 = v3 - self->_prevTime;
    self->_frameTime = v7;
    [(RTSCFaceDataCovarianceEstimator *)self->_covarianceEstimator accelerationCovariance];
    v12 = 0;
    __asm { FMOV            V6.4S, #1.0 }

    _Q6.f32[0] = self->_frameTime * (self->_frameTime * 0.5);
    _Q6.i32[1] = LODWORD(self->_frameTime);
    v18 = vmulq_f32(_Q6, xmmword_11CE0);
    v19 = vmulq_f32(v18, v18);
    v20 = &v46;
    do
    {
      v44 = v19;
      v21 = (&v44 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
      v22 = vmulq_n_f32(v9, *v21);
      v23 = vmulq_n_f32(v10, *v21);
      v24 = vmulq_n_f32(v11, *v21);
      v20[-2] = vmulq_n_f32(v8, *v21);
      v20[-1] = v22;
      *v20 = v23;
      v20[1] = v24;
      v20 += 4;
      ++v12;
    }

    while (v12 != 3);
    [RTSCKalmanFilter4DOF predictTimeStep:"predictTimeStep:input:processCovariance:" input:v45 processCovariance:?];
    [(RTSCFaceDataCovarianceEstimator *)self->_covarianceEstimator updateWithChangeFromPrevFrame:a3];
    [(RTSCKalmanFilter4DOF *)self->_kalmanFilter observePosition];
    *&self->_trackedFaceBox[4] = v25;
    v26 = *&self->_prevBodyPosition[4];
    *&self->_prevBodyPosition[12] = DWORD2(v26);
    *&self->_prevBodyPosition[4] = vadd_f32(*&a3, *&v26);
    v25.f32[0] = vmuls_lane_f32(v25.f32[2], v25, 3) * 0.01;
    *&v26 = vmulq_n_f32(xmmword_11CF0, v25.f32[0]).u64[0];
    v27.i64[0] = 0;
    v43 = v26;
    LODWORD(v28) = 0;
    HIDWORD(v28) = DWORD1(v26);
    v25.f32[0] = v25.f32[0] * 0.5;
    v27.i64[1] = vdupq_lane_s32(*v25.f32, 0).u64[0];
    v40 = v27;
    v41 = v28;
    [(RTSCKalmanFilter4DOF *)self->_kalmanFilter positionCovariance];
    *self->_anon_90 = vaddq_f32(v29, v43);
    *&self->_anon_90[16] = vaddq_f32(v30, v41);
    *&self->_anon_90[32] = vaddq_f32(v31, v40);
    *&self->_anon_90[48] = vaddq_f32(v32, v40);
  }

  self->_prevTime = v5;
}

- (void)trackFaceBoxesWithDetectedObjects:(RTSCFaceTrackerV2 *)self atTime:(SEL)a2 bufferSize:(id)a3 changeFromPrevFrame:(double)a4
{
  v70 = v5;
  v6 = v4;
  v9 = a3;
  [(RTSCFaceTrackerV2 *)self _updateTrackingStateFromPrevFrame:v70 atTime:a4 bufferSize:v6];
  v61 = v9;
  v10 = [v9 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanFaces];
  v60 = kFigCaptureStreamDetectedObjectsKey_ObjectsArray;
  v11 = [v10 objectForKeyedSubscript:?];

  v12 = [v11 count];
  *v76 = 0u;
  memset(&v75, 0, sizeof(v75));
  v76[0] = INFINITY;
  *&v76[1] = -1;
  [(RTSCFaceDataCovarianceEstimator *)self->_covarianceEstimator measurementCovariance];
  v77.columns[0] = vaddq_f32(*self->_anon_90, v13);
  v77.columns[1] = vaddq_f32(*&self->_anon_90[16], v14);
  v77.columns[2] = vaddq_f32(v15, *&self->_anon_90[32]);
  v77.columns[3] = vaddq_f32(v16, *&self->_anon_90[48]);
  v78 = __invert_f4(v77);
  v65 = v78.columns[1];
  v66 = v78.columns[0];
  v63 = v78.columns[3];
  v64 = v78.columns[2];
  if (v12 >= 1)
  {
    v17 = 0;
    v18 = kFigCaptureStreamMetadata_Rect;
    v19 = kFigCaptureStreamMetadata_FaceID;
    v62 = kFigCaptureStreamDetectedObjectKey_GroupID;
    v20 = v12 & 0x7FFFFFFF;
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    while (1)
    {
      v21 = [v11 objectAtIndexedSubscript:v17];
      v22 = [v21 objectForKeyedSubscript:v18];

      rect.origin = origin;
      rect.size = size;
      if (CGRectMakeWithDictionaryRepresentation(v22, &rect))
      {
        v23 = vmul_f32(vcvt_f32_f64(rect.size), *&v6);
        *&v24.x = vmla_f32(vmul_f32(vcvt_f32_f64(rect.origin), *&v6), 0x3F0000003F000000, v23);
        *&v24.y = v23;
        v67 = v24;
        v25 = [v11 objectAtIndexedSubscript:v17];
        v26 = [v25 objectForKeyedSubscript:v19];
        v27 = [v26 intValue];

        v28 = vsubq_f32(v67, *&self->_trackedFaceBox[4]);
        v29 = vmulq_f32(v28, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, v28.f32[0]), v65, *v28.f32, 1), v64, v28, 2), v63, v28, 3));
        v30 = sqrtf(vaddv_f32(vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL))));
        trackedGroupID = self->_trackedGroupID;
        if (v27 == trackedGroupID || v30 < v76[0])
        {
          v75.origin = v67;
          *v76 = __PAIR64__(v27, LODWORD(v30));
          v32 = [v11 objectAtIndexedSubscript:v17];
          v33 = [v32 objectForKeyedSubscript:v62];

          if (v33)
          {
            LODWORD(v76[2]) = [v33 intValue];
          }

          v34 = [v11 objectAtIndexedSubscript:v17];
          [(RTSCFaceTrackerV2 *)self _getFaceOrientationInDictionary:v34 asQuaternion:&v75.size];

          trackedGroupID = self->_trackedGroupID;
        }

        if (v27 == trackedGroupID)
        {
          break;
        }
      }

      if (v20 == ++v17)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v35 = [v61 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanHeads];
  v36 = [v35 objectForKeyedSubscript:v60];

  if ((LODWORD(v76[1]) & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  v37 = self->_trackedGroupID;
  if (v37 < 0)
  {
    self->_startTrackTime = a4;
    startTrackTime = a4;
  }

  else
  {
    if (LODWORD(v76[1]) != v37 && v76[0] >= 2.0)
    {
      goto LABEL_22;
    }

    startTrackTime = self->_startTrackTime;
  }

  if (a4 - startTrackTime < 0.25)
  {
    rect = v75;
    v74 = *v76;
    [(RTSCFaceTrackerV2 *)self _computeDominanceScoreForFace:&rect faceDetections:v11 headDetections:v36 bufferSize:v6];
    if (v39 < 1.0)
    {
      [(RTSCFaceTrackerV2 *)self reset];
LABEL_22:
      v40 = 0;
      goto LABEL_24;
    }
  }

  [(RTSCFaceTrackerV2 *)self _updateTrackedFacePose:v75.size.width];
  v41 = *self->_anon_70;
  v42 = vmulq_f32(v41, xmmword_11B60);
  v43 = vnegq_f32(v42);
  v44 = vtrn2q_s32(v42, vtrn1q_s32(v42, v43));
  v45 = vextq_s8(v42, v43, 8uLL);
  v46 = vrev64q_s32(v42);
  v46.i32[0] = v43.i32[1];
  v46.i32[3] = v43.i32[2];
  v47 = vmlaq_f32(vmlaq_f32(v45, 0, vextq_s8(v44, v44, 8uLL)), 0, v46);
  v48 = vnegq_f32(v47);
  v49 = vtrn2q_s32(v47, vtrn1q_s32(v47, v48));
  v50 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v47, v48, 8uLL), *v41.f32, 1), vextq_s8(v49, v49, 8uLL), v41.f32[0]);
  v51 = vrev64q_s32(v47);
  v51.i32[0] = v48.i32[1];
  v51.i32[3] = v48.i32[2];
  v52 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v47, v41, 3), v51, v41, 2), v50);
  v51.i64[0] = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v52, v52)));
  *v48.i8 = vrsqrte_f32(*v51.f32);
  *v48.i8 = vmul_f32(*v48.i8, vrsqrts_f32(v51.u32[0], vmul_f32(*v48.i8, *v48.i8)));
  *&self->_topOfFaceDirection[4] = vmul_n_f32(*v52.f32, vmul_f32(*v48.i8, vrsqrts_f32(v51.u32[0], vmul_f32(*v48.i8, *v48.i8))).f32[0]);
  [(RTSCFaceTrackerV2 *)self _updateFilterWithFaceBox:v75.origin.x facePose:v75.size.width atTime:a4];
  *&self->_trackedGroupID = *&v76[1];
  self->_latestTrackTime = a4;
  v40 = 1;
LABEL_24:
  if ((self->_trackedGroupID & 0x80000000) == 0)
  {
    [(RTSCFaceTrackerV2 *)self _findPositionOfMatchedDetection:v36 bufferSize:v6];
    v69 = v53;
    v54 = [v61 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanBodies];
    v55 = [v54 objectForKeyedSubscript:v60];

    [(RTSCFaceTrackerV2 *)self _findPositionOfMatchedDetection:v55 bufferSize:v6];
    v72 = v57;
    if ((v40 & 1) == 0 && (*self->_anon_28 & 0x80000000) == 0)
    {
      if (*(&v69 + 2) > 0.0)
      {
        LODWORD(v56) = 10.0;
        [(RTSCFaceTrackerV2 *)self _updateFilterWithHeadPosition:*&v69 covarianceMultiplier:*&v56];
      }

      v58 = 0.0;
      if (*(&v72 + 2) > 0.0)
      {
        v56 = *&self->_prevBodyPosition[4];
        if (COERCE_FLOAT(*&self->_prevBodyPosition[12]) > 0.0)
        {
          v58 = COERCE_DOUBLE(vsub_f32(*&v72, *&v56));
        }
      }

      LODWORD(v56) = 3.0;
      [(RTSCFaceTrackerV2 *)self _updateFilterWithPositionShift:v58 covarianceMultiplier:*&v56];
    }

    [(RTSCKalmanFilter4DOF *)self->_kalmanFilter observePosition];
    *&self->_trackedFaceBox[4] = v59;
    *&self->_prevBodyPosition[4] = v72;
    *&v59 = a4 - self->_latestTrackTime;
    LODWORD(self->_trackingStaleTime) = v59;
  }
}

- (__n128)_findPositionOfMatchedDetection:(uint64_t)a3 bufferSize:(void *)a4
{
  v6 = a4;
  v7 = [v6 count];
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  rect.origin = CGRectNull.origin;
  v24 = size;
  rect.size = size;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = kFigCaptureStreamDetectedObjectKey_GroupID;
    v11 = v7 & 0x7FFFFFFF;
    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:{v9, v24}];
      v13 = [v12 objectForKeyedSubscript:v10];
      v14 = [v13 intValue];

      if (v14 == *(a1 + 36))
      {
        break;
      }

      if (v11 == ++v9)
      {
        goto LABEL_9;
      }
    }

    v15 = [v6 objectAtIndexedSubscript:v9];
    v16 = [v15 objectForKeyedSubscript:kFigCaptureStreamMetadata_Rect];

    if (!CGRectMakeWithDictionaryRepresentation(v16, &rect))
    {
      rect.origin = origin;
      rect.size = v24;
    }
  }

LABEL_9:
  IsNull = CGRectIsNull(rect);
  _Q1 = 0uLL;
  if (!IsNull)
  {
    __asm { FMOV            V1.4S, #1.0 }

    *&_Q1 = vmla_f32(vmul_f32(vcvt_f32_f64(rect.origin), a2), 0x3F0000003F000000, vmul_f32(vcvt_f32_f64(rect.size), a2));
  }

  v26 = _Q1;

  return v26;
}

- (BOOL)_getFaceOrientationInDictionary:(id)a3 asQuaternion:(id *)a4
{
  v5 = kFigCaptureStreamMetadata_AngleInfoRoll;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_AngleInfoPitch];
  v9 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_AngleInfoYaw];

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v9 == 0;
  v12 = !v11;
  if (!v11)
  {
    [v8 floatValue];
    v35 = v13;
    [v9 floatValue];
    v34 = v14;
    [v7 floatValue];
    v15 = v35;
    v15.i32[1] = v34;
    v15.f32[2] = -v16;
    v17 = vdivq_f32(v15, vdupq_n_s32(0x43B40000u));
    cosp = 0u;
    sinp = 0u;
    v17.i32[3] = 0;
    _simd_sincospi_f4(v17, &sinp, &cosp);
    v18.i32[0] = 0;
    v18.i32[2] = 0;
    v18.i32[1] = sinp.i32[1];
    v18.i32[3] = cosp.i32[1];
    v19.i32[2] = 0;
    v19.i64[0] = sinp.u32[0];
    v19.i32[3] = cosp.i32[0];
    v20 = vnegq_f32(v18);
    v21 = vtrn2q_s32(v18, vtrn1q_s32(v18, v20));
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(v18, v20, 8uLL), 0), 0, vextq_s8(v21, v21, 8uLL));
    v23 = vrev64q_s32(v18);
    v23.i32[0] = v20.i32[1];
    v23.i32[3] = v20.i32[2];
    v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, cosp, 2), v23, sinp, 2), v22);
    v25 = vnegq_f32(v19);
    v26 = vtrn2q_s32(v19, vtrn1q_s32(v19, v25));
    v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v25, 8uLL), *v24.f32, 1), vextq_s8(v26, v26, 8uLL), v24.f32[0]);
    v28 = vrev64q_s32(v19);
    v28.i32[0] = v25.i32[1];
    v28.i32[3] = v25.i32[2];
    v29 = vaddq_f32(v27, vmlaq_laneq_f32(vmulq_laneq_f32(v19, v24, 3), v28, v24, 2));
    v30 = vnegq_f32(v29);
    v31 = vtrn2q_s32(v29, vtrn1q_s32(v29, v30));
    v32 = vrev64q_s32(v29);
    v32.i32[0] = v30.i32[1];
    v32.i32[3] = v30.i32[2];
    *a4 = vaddq_f32(vmlaq_f32(vmulq_f32(v29, 0), 0, v32), vaddq_f32(vextq_s8(v31, v31, 8uLL), vmulq_f32(vextq_s8(v29, v30, 8uLL), 0)));
  }

  return v12;
}

- (double)predictFaceBoxAtTimeOffset:(uint64_t)a1
{
  v4 = *(a1 + 224);
  [*(a1 + 128) observeVelocity];
  *&result = vmlaq_n_f32(v4, v2, a2).u64[0];
  return result;
}

@end