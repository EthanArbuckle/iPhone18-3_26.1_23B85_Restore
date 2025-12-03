@interface RTSCFaceReframingV1
- (RTSCFaceReframingV1)init;
- (__n128)_softClampShift:(int8x16_t)shift ofViewPortBox:(double)box toBoundingRect:(double)rect boundingCircle:(float64x2_t)circle transitionThreshold:(float64_t)threshold;
- (double)_estimateRatiosOfProjectedCorners:(float32x4_t)corners cornerRadii:(double)radii toMaxCornerShifts:(float32x4_t)shifts maxRadius:(double)radius circleCenter:(float)center forRotation:(int32x2_t)rotation;
- (float32x2_t)_computeNominalTrackingTimescaleFromViewPortMargins:(float32x2_t)margins faceBoxSize:;
- (float32x2_t)_filterFramingOffset:(float32x2_t)offset smoothingPole:(float32x2_t)pole viewPortSize:;
- (id)_updateOffsetOfViewPortBox:(double)box withinBoundingRect:(double)rect;
- (id)updateFaceCorrectionAfterStabilization:(__n128)stabilization viewPort:(__n128)port boundingRect:(float64x2_t)rect boundingCircle:(float64_t)circle;
- (void)_adjustFramingOffset:(RTSCFaceReframingV1 *)self;
- (void)_computeViewPortSmoothingTimescaleForViewPortMargins:(double)margins predictedViewPortMargins:(double)portMargins centeredViewPortMargins:(double)viewPortMargins faceBoxSize:;
- (void)_estimateMinShift:(RTSCFaceReframingV1 *)self maxShift:(SEL)shift forViewPortBox:withinBoundingRect:;
- (void)dealloc;
- (void)reset;
- (void)updateFacesWithMetadata:(__n128)metadata bufferSize:(__n128)size cameraMatrix:(__n128)matrix rotationFromPrevFrame:(__n128)frame atTime:(__n128)time;
@end

@implementation RTSCFaceReframingV1

- (RTSCFaceReframingV1)init
{
  v10.receiver = self;
  v10.super_class = RTSCFaceReframingV1;
  v2 = [(RTSCFaceReframingV1 *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *v2->_anon_48 = 1045220557;
    v4 = [RTSCFaceTrackerV2 alloc];
    LODWORD(v5) = 1041865114;
    v6 = [(RTSCFaceTrackerV2 *)v4 initWithTimeConstant:v5];
    faceTracker = v3->_faceTracker;
    v3->_faceTracker = v6;

    if (!v3->_faceTracker)
    {
      v8 = 0;
      goto LABEL_6;
    }

    *v3->_smoothedFramingOffset = 0;
    *&v3->_smoothedFramingOffset[8] = 0;
    [(RTSCFaceReframingV1 *)v3 reset];
  }

  v8 = v3;
LABEL_6:

  return v8;
}

- (void)dealloc
{
  faceTracker = self->_faceTracker;
  self->_faceTracker = 0;

  v4.receiver = self;
  v4.super_class = RTSCFaceReframingV1;
  [(RTSCFaceReframingV1 *)&v4 dealloc];
}

- (void)reset
{
  self->_isInitialized = 0;
  *&self->_correctionStrength = 0;
  LODWORD(self->_prevTime) = 1020054733;
  self->_minimumTrackingTimescale = 6.0;
  __asm { FMOV            V0.2S, #6.0 }

  *&self->_currentTrackingTimescale[4] = _D0;
  self->_sceneSpaceFramingBiasSmoothingTimescale = 0.0;
}

- (void)updateFacesWithMetadata:(__n128)metadata bufferSize:(__n128)size cameraMatrix:(__n128)matrix rotationFromPrevFrame:(__n128)frame atTime:(__n128)time
{
  *&v48[16] = size;
  *&v48[32] = matrix;
  *v48 = metadata;
  v47 = a11;
  if ((*(self + 8) & 1) == 0)
  {
    *(self + 184) = a9 - *(self + 176);
    v56 = __invert_f3(*v48);
    *(self + 136) = v56.columns[0].i32[2];
    *(self + 128) = v56.columns[0].i64[0];
    *(self + 152) = v56.columns[1].i32[2];
    *(self + 144) = v56.columns[1].i64[0];
    *(self + 168) = v56.columns[2].i32[2];
    *(self + 160) = v56.columns[2].i64[0];
    *(self + 8) = 1;
  }

  v13 = a9 - *(self + 184);
  *(self + 176) = v13;
  v14 = [v47 objectForKeyedSubscript:{kFigCaptureStreamMetadata_DetectedObjectsInfo, *&frame, *&time}];
  v15 = 0;
  v49 = v38;
  v50 = v41;
  v51 = a8;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  do
  {
    *(&v52 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v48, COERCE_FLOAT(*(&v49 + v15))), *&v48[16], *(&v49 + v15), 1), *&v48[32], *(&v49 + v15), 2);
    v15 += 16;
  }

  while (v15 != 48);
  v16 = 0;
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v20 = *(self + 144);
  v21 = *(self + 160);
  v49 = *(self + 128);
  v50 = v20;
  v51 = v21;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  do
  {
    *(&v52 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v49 + v16))), v18, *(&v49 + v16), 1), v19, *(&v49 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v44 = v53;
  v39 = v52;
  v42 = v54;
  [*(self + 16) trackedFaceBox];
  v23 = vaddq_f32(v42, vmlaq_lane_f32(vmulq_n_f32(v39, v22.f32[0]), v44, *v22.f32, 1));
  v24 = vextq_s8(v23, v23, 8uLL).u32[0];
  v23.i64[1] = v22.i64[1];
  v25 = vrecpe_f32(v24);
  v26 = vmul_f32(v25, vrecps_f32(v24, v25));
  v45 = vsubq_f32(vmulq_n_f32(v23, vmul_f32(v26, vrecps_f32(v24, v26)).f32[0]), v22).u64[0];
  [*(self + 16) trackFaceBoxesWithDetectedObjects:v14 atTime:a9 bufferSize:a2 changeFromPrevFrame:?];
  [*(self + 16) trackedFaceBox];
  v29 = v28 > *(&a2 + 1);
  if (v28 < 0.0)
  {
    v29 = 1;
  }

  v31 = v27 < 0.0 || v27 > *&a2 || v29;
  [*(self + 16) trackingStaleTime];
  if ((v31 & 1) != 0 || v32 > 0.7)
  {
    [*(self + 16) reset];
  }

  isTracking = [*(self + 16) isTracking];
  if (v31)
  {
    *(self + 64) = 0;
    v34 = 0.0;
  }

  else
  {
    if (isTracking)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = fminf(fmaxf(v35, 0.0), 1.0);
    v34 = v36 + ((*(self + 68) / (*(self + 68) + *(self + 176))) * (*(self + 64) - v36));
    *(self + 64) = v34;
  }

  [self _adjustFramingOffset:{COERCE_DOUBLE(vmul_n_f32(v45, v34))}];
  *(self + 80) = *v48;
  *(self + 96) = *&v48[16];
  *(self + 112) = *&v48[32];
  v57 = __invert_f3(*v48);
  *(self + 136) = v57.columns[0].i32[2];
  *(self + 128) = v57.columns[0].i64[0];
  *(self + 152) = v57.columns[1].i32[2];
  *(self + 144) = v57.columns[1].i64[0];
  *(self + 168) = v57.columns[2].i32[2];
  *(self + 160) = v57.columns[2].i64[0];
  *(self + 184) = a9;
}

- (float32x2_t)_filterFramingOffset:(float32x2_t)offset smoothingPole:(float32x2_t)pole viewPortSize:
{
  v4 = self[3];
  v5 = vmla_f32(a2, vsub_f32(self[4], a2), offset);
  self[4] = v5;
  result = vmla_f32(v5, vsub_f32(v4, v5), offset);
  self[3] = result;
  v7 = vsub_f32(result, v4);
  v8 = vmul_f32(v7, v7);
  v9 = vmul_n_f32(vadd_f32(pole, pole), self[22].f32[0]);
  v10 = vmul_f32(v9, v9);
  v11 = vadd_f32(vzip1_s32(v8, v10), vzip2_s32(v8, v10));
  if (v11.f32[0] > v11.f32[1])
  {
    [(float32x2_t *)self _adjustFramingOffset:COERCE_DOUBLE(vmul_n_f32(v7, sqrtf(v11.f32[1] / v11.f32[0]) + -1.0))];
    return self[3];
  }

  return result;
}

- (void)_adjustFramingOffset:(RTSCFaceReframingV1 *)self
{
  v3 = vadd_f32(*&self->_smoothedFramingOffset[8], v2);
  *self->_smoothedFramingOffset = vadd_f32(*self->_smoothedFramingOffset, v2);
  *&self->_smoothedFramingOffset[8] = v3;
}

- (id)updateFaceCorrectionAfterStabilization:(__n128)stabilization viewPort:(__n128)port boundingRect:(float64x2_t)rect boundingCircle:(float64_t)circle
{
  a7.f64[1] = a8;
  rect.f64[1] = circle;
  v41 = vmla_f32(vcvt_f32_f64(rect), 0x3F0000003F000000, vcvt_f32_f64(a7));
  *&v42 = vcvt_hight_f32_f64(v41, a7).u64[0];
  [self _updateOffsetOfViewPortBox:? withinBoundingRect:?];
  *(self + 40) = v21;
  v23 = *(self + 64);
  if (v23 > 0.0)
  {
    v24 = 0;
    v25 = *(self + 80);
    v26 = *(self + 96);
    v27 = *(self + 112);
    v43 = a2;
    stabilizationCopy = stabilization;
    portCopy = port;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    do
    {
      *(&v46 + v24 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v43 + v24 * 8))), v26, v43.n128_u64[v24], 1), v27, *(&v43 + v24 * 8), 2);
      v24 += 2;
    }

    while (v24 != 6);
    v28 = 0;
    v29 = v46;
    v30 = v47;
    v31 = v48;
    v32 = *(self + 144);
    v22 = *(self + 160);
    v43 = *(self + 128);
    stabilizationCopy = v32;
    portCopy = v22;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    do
    {
      *(&v46 + v28 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v43 + v28 * 8))), v30, v43.n128_u64[v28], 1), v31, *(&v43 + v28 * 8), 2);
      v28 += 2;
    }

    while (v28 != 6);
    v33.i32[1] = v47.i32[1];
    v34 = vadd_f32(v41, v21);
    v35 = vaddq_f32(v48, vmlaq_lane_f32(vmulq_n_f32(v46, v34.f32[0]), v47, v34, 1));
    *v33.i32 = fmaxf(v35.f32[2], 0.00000011921);
    v21 = vmla_n_f32(v21, vsub_f32(vsub_f32(vdiv_f32(*v35.f32, vdup_lane_s32(v33, 0)), v41), v21), v23);
  }

  v22.n128_u32[0] = 1058642330;
  result = [self _softClampShift:COERCE_DOUBLE(vmul_n_f32(v21 ofViewPortBox:*(self + 192))) toBoundingRect:v42 boundingCircle:a10 transitionThreshold:{a11, a12, a13, a14, v22.n128_f64[0]}];
  *(self + 208) = v37;
  return result;
}

- (void)_estimateMinShift:(RTSCFaceReframingV1 *)self maxShift:(SEL)shift forViewPortBox:withinBoundingRect:
{
  v9 = v3;
  v26 = v7;
  v27 = v8;
  v10 = v2;
  v12 = *v4.i8;
  v25 = vextq_s8(v4, v4, 8uLL).u64[0];
  v13 = *&self->_anon_50[4];
  DWORD1(v13) = *&self->_anon_50[24];
  v31 = v13;
  v29 = vmla_f32(v12, 0xBF000000BF000000, v25);
  *&v13 = v5;
  v14 = v6;
  *(&v13 + 1) = v14;
  v24 = v13;
  v15 = vaddq_f32(*&self->_anon_80[36], vmlaq_n_f32(vmulq_n_f32(*&self->_anon_80[4], *&v13), *&self->_anon_80[20], v14));
  v23 = _simd_atan2_f4(v15.u64[0], vdupq_laneq_s32(v15, 2).u64[0]);
  v16 = vaddq_f32(*&self->_anon_80[36], vmlaq_lane_f32(vmulq_n_f32(*&self->_anon_80[4], v29.f32[0]), *&self->_anon_80[20], v29, 1));
  v17 = vsubq_f32(v23, _simd_atan2_f4(v16.u64[0], vdupq_laneq_s32(v16, 2).u64[0])).u64[0];
  *v10 = vmul_f32(v31, *&_simd_tan_f4(v17));
  v30 = vadd_f32(v25, v29);
  v18.f64[0] = v26;
  v18.f64[1] = v27;
  v19 = vadd_f32(v24, vcvt_f32_f64(v18));
  v20 = vaddq_f32(*&self->_anon_80[36], vmlaq_lane_f32(vmulq_n_f32(*&self->_anon_80[4], v19.f32[0]), *&self->_anon_80[20], v19, 1));
  v28 = _simd_atan2_f4(v20.u64[0], vdupq_laneq_s32(v20, 2).u64[0]);
  v21 = vaddq_f32(*&self->_anon_80[36], vmlaq_lane_f32(vmulq_n_f32(*&self->_anon_80[4], v30.f32[0]), *&self->_anon_80[20], v30, 1));
  v22 = vsubq_f32(v28, _simd_atan2_f4(v21.u64[0], vdupq_laneq_s32(v21, 2).u64[0])).u64[0];
  *v9 = vmul_f32(v31, *&_simd_tan_f4(v22));
}

- (float32x2_t)_computeNominalTrackingTimescaleFromViewPortMargins:(float32x2_t)margins faceBoxSize:
{
  v4 = vneg_f32(*a2.i8);
  v5 = vextq_s8(a2, a2, 8uLL);
  *v5.f32 = vmaxnm_f32(vdiv_f32(vminnm_f32(v4, *v5.f32), margins), 0);
  v6 = _simd_pow_f4(v5, xmmword_11D00).u64[0];
  v7 = (self + 48);
  v8 = vld1_dup_f32(v7);
  v9 = vmaxnm_f32(v6, v8);
  v8.f32[0] = vaddv_f32(v9) * 0.5;
  return vminnm_f32(v9, vdup_lane_s32(v8, 0));
}

- (void)_computeViewPortSmoothingTimescaleForViewPortMargins:(double)margins predictedViewPortMargins:(double)portMargins centeredViewPortMargins:(double)viewPortMargins faceBoxSize:
{
  if (fminf(*&viewPortMargins, *(&viewPortMargins + 1)) <= 0.0)
  {
    __asm { FMOV            V0.2S, #6.0 }
  }

  else
  {
    if ([*&self[2] isTracking])
    {
      v6 = self[6].f32[0] * powf(0.1, self[22].f32[0]);
      self[6].f32[0] = v6;
      [*&self[2] trackingStaleTime];
      v8 = fmaxf(v6, v7 + v7);
    }

    else
    {
      v8 = self[24].f32[0] * 6.0;
    }

    v14 = &self[6];
    self[6].f32[0] = v8;
    [(float32x2_t *)self _computeNominalTrackingTimescaleFromViewPortMargins:portMargins faceBoxSize:viewPortMargins];
    __asm { FMOV            V8.2S, #20.0 }

    v17 = vminnm_f32(v16, _D8);
    self[6].f32[0] = fmaxf(fmaxf(self[6].f32[0], fminf(v17.f32[0], v17.f32[1]) * 0.05), 0.04);
    [(float32x2_t *)self _computeNominalTrackingTimescaleFromViewPortMargins:a2 faceBoxSize:viewPortMargins];
    v19 = vld1_dup_f32(v14);
    v20 = vmaxnm_f32(vmaxnm_f32(vminnm_f32(v18, _D8), v19), vmul_n_f32(self[7], powf(0.000001, self[22].f32[0])));
    [(float32x2_t *)self _computeNominalTrackingTimescaleFromViewPortMargins:margins faceBoxSize:viewPortMargins];
    v22 = vminnm_f32(v21, v20);
    v23.i32[3] = 0;
    v23.f32[0] = -self[22].f32[0];
    *(v23.i64 + 4) = self[22].u32[0];
    v24 = _simd_pow_f4(xmmword_11D10, v23).u64[0];
    v25 = vld1_dup_f32(v14);
    v26 = vmaxnm_f32(vminnm_f32(vminnm_f32(vmaxnm_f32(v22, vmul_n_f32(self[7], v24.f32[0])), vmul_lane_f32(self[7], v24, 1)), v20), v25);
  }
}

- (id)_updateOffsetOfViewPortBox:(double)box withinBoundingRect:(double)rect
{
  v49 = vextq_s8(a2, a2, 8uLL).u64[0];
  *v11.f32 = vneg_f32(v49);
  *&v11.u32[2] = v49;
  *v12.f32 = self[3];
  v12.i64[1] = v12.i64[0];
  v46 = *v12.f32;
  v48 = v12;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v51 = vmlaq_f32(v12, v13, v11);
  [*&self[2] trackedFaceBox];
  v50 = v14;
  v44 = vsubq_f32(v14, a2).u64[0];
  [*&self[2] topOfFaceDirection];
  v16.i32[0] = vdup_lane_s32(v15, 1).u32[0];
  v16.f32[1] = -*v15.i32;
  v17 = vmul_f32(v15, v15);
  v18 = vmul_f32(v16, v16);
  __asm { FMOV            V1.2S, #1.75 }

  v50.i64[0] = vextq_s8(v50, v50, 8uLL).u64[0];
  v24 = vsub_f32(*&vextq_s8(v51, v51, 8uLL), *v51.f32);
  v25 = vminnm_f32(vmul_f32(*v50.i8, vmla_f32(vmul_f32(v18, _D1), 0x4000000040000000, v17)), v24);
  *v26.f32 = vneg_f32(v25);
  *&v26.u32[2] = v25;
  v45 = vdupq_lane_s64(v44, 0);
  v27.i64[0] = 0x3F0000003F000000;
  v27.i64[1] = 0x3F0000003F000000;
  v28 = vsubq_f32(v51, vmlaq_f32(v45, v27, v26));
  v29 = vsub_f32(v46, vmla_f32(*v28.i8, vsub_f32(*&vextq_s8(v28, v28, 8uLL), *v28.i8), vsub_f32(0x3F0000003F000000, vmla_f32(vmul_f32(v16, 0), vdup_n_s32(0xBE19999A), v15))));
  v53 = 0;
  v54 = 0;
  [(float32x2_t *)self _estimateMinShift:&v54 maxShift:&v53 forViewPortBox:*a2.i64 withinBoundingRect:box, rect, a5, a6];
  v30 = COERCE_DOUBLE(vminnm_f32(vmaxnm_f32(v29, v54), v53));
  [(float32x2_t *)self _adjustFramingOffset:COERCE_DOUBLE(vsub_f32(vminnm_f32(vmaxnm_f32(self[3], v54), v53), self[3]))];
  __asm { FMOV            V0.2S, #1.25 }

  v32 = vmla_f32(vmul_f32(v18, _D0), _D0, v17);
  v33 = vminnm_f32(vmul_f32(*v50.i8, v32), v24);
  *v34.f32 = vneg_f32(v33);
  *&v34.u32[2] = v33;
  v35.i64[0] = 0x3F0000003F000000;
  v35.i64[1] = 0x3F0000003F000000;
  *&v47 = vsubq_f32(v51, vmlaq_f32(v45, v35, v34)).u64[0];
  v48.i64[0] = vsubq_f32(v51, vmlaq_f32(v48, v35, v34)).u64[0];
  [*&self[2] predictFaceBoxAtTimeOffset:0.0];
  v37 = vsubq_f32(v36, a2).u64[0];
  *v36.f32 = vminnm_f32(vmul_f32(v32, *&vextq_s8(v36, v36, 8uLL)), v24);
  *v38.f32 = vneg_f32(*v36.f32);
  v38.i64[1] = v36.i64[0];
  v39 = vdupq_lane_s64(v37, 0);
  v40.i64[0] = 0x3F0000003F000000;
  v40.i64[1] = 0x3F0000003F000000;
  [(float32x2_t *)self _computeViewPortSmoothingTimescaleForViewPortMargins:v47 predictedViewPortMargins:*vsubq_f32(v51 centeredViewPortMargins:vmlaq_f32(v39 faceBoxSize:v40, v38)).i64, *v48.i64, *v50.i64];
  self[7] = v41;
  *v42.i32 = self[22].f32[0] + self[22].f32[0];
  return [(float32x2_t *)self _filterFramingOffset:v30 smoothingPole:COERCE_DOUBLE(vdiv_f32(v41 viewPortSize:vadd_f32(v41, vdup_lane_s32(v42, 0)))), *&v49];
}

- (double)_estimateRatiosOfProjectedCorners:(float32x4_t)corners cornerRadii:(double)radii toMaxCornerShifts:(float32x4_t)shifts maxRadius:(double)radius circleCenter:(float)center forRotation:(int32x2_t)rotation
{
  v12 = 0;
  _S0 = _Q7.u32[1];
  _S2 = _Q7.u32[2];
  __asm { FMLS            S1, S2, V7.S[2] }

  _S21 = _Q7.u32[3];
  __asm { FMLA            S1, S21, V7.S[3] }

  v22 = vmuls_lane_f32(_Q7.f32[2], _Q7, 3);
  *&v23 = (v22 + (_Q7.f32[0] * _Q7.f32[1])) + (v22 + (_Q7.f32[0] * _Q7.f32[1]));
  v24.f32[0] = vmuls_lane_f32(_Q7.f32[1], _Q7, 3);
  *&v25 = -(v24.f32[0] - (_Q7.f32[0] * _Q7.f32[2])) - (v24.f32[0] - (_Q7.f32[0] * _Q7.f32[2]));
  *&v26 = -(v22 - (_Q7.f32[0] * _Q7.f32[1])) - (v22 - (_Q7.f32[0] * _Q7.f32[1]));
  __asm
  {
    FMLA            S3, S0, V7.S[1]
    FMLA            S3, S21, V7.S[3]
    FMLA            S19, S2, V7.S[1]
  }

  v24.f32[1] = -(_Q7.f32[0] * _Q7.f32[3]);
  v30 = vmla_laneq_f32(v24, *_Q7.f32, _Q7, 2);
  *v31.i8 = vadd_f32(v30, v30);
  __asm { FMLA            S20, S2, V7.S[2] }

  v33.i64[0] = __PAIR64__(v23, _S1);
  v33.i64[1] = v25;
  __asm { FMLS            S2, S0, V7.S[1] }

  v35.i64[0] = __PAIR64__(_S3 - (_Q7.f32[0] * _Q7.f32[0]), v26);
  v35.i64[1] = COERCE_UNSIGNED_INT(_S19 + _S19);
  v31.i64[1] = _S2;
  v36 = *(self + 5);
  v37 = *(self + 6);
  v38 = *(self + 7);
  v56 = v33;
  v57 = v35;
  v58 = v31;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  do
  {
    *(&v59 + v12) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v56 + v12))), v37, *&v56.i8[v12], 1), v38, *(&v56 + v12), 2);
    v12 += 16;
  }

  while (v12 != 48);
  v39 = 0;
  v40 = v59;
  v41 = v60;
  v42 = v61;
  v43 = *(self + 9);
  v44 = *(self + 10);
  v56 = *(self + 8);
  v57 = v43;
  v58 = v44;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  do
  {
    *(&v59 + v39) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v56 + v39))), v41, *&v56.i8[v39], 1), v42, *(&v56 + v39), 2);
    v39 += 16;
  }

  while (v39 != 48);
  v45 = 0;
  v46 = vzip1q_s32(v59, v61);
  v56 = vzip1q_s32(v46, v60);
  v57 = vzip2q_s32(v46, vdupq_lane_s32(*v60.i8, 1));
  v58 = vzip1q_s32(vzip2q_s32(v59, v61), vdupq_laneq_s32(v60, 2));
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  do
  {
    *(&v59 + v45) = vaddq_f32(vdupq_laneq_s32(*(&v56 + v45), 2), vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v56 + v45))), corners, *&v56.i8[v45], 1));
    v45 += 16;
  }

  while (v45 != 48);
  v47 = vrecpeq_f32(v61);
  v48 = vmulq_f32(v47, vrecpsq_f32(v61, v47));
  v49 = vmulq_f32(v48, vrecpsq_f32(v61, v48));
  v50 = vmulq_f32(v59, v49);
  v51 = vmulq_f32(v60, v49);
  if (center > 0.00000011921)
  {
    shiftsCopy = shifts;
    v54 = a2;
    v53 = v50;
    _simd_hypot_f4(vsubq_f32(v50, vdupq_lane_s32(rotation, 0)), vsubq_f32(v51, vdupq_lane_s32(rotation, 1)));
    v50 = v53;
    a2 = v54;
    shifts = shiftsCopy;
  }

  *&result = vdivq_f32(vsubq_f32(v50, a2), shifts).u64[0];
  return result;
}

- (__n128)_softClampShift:(int8x16_t)shift ofViewPortBox:(double)box toBoundingRect:(double)rect boundingCircle:(float64x2_t)circle transitionThreshold:(float64_t)threshold
{
  v70 = a9;
  v11 = vmul_f32(*&vextq_s8(shift, shift, 8uLL), 0x3F0000003F000000);
  v12 = vmlaq_n_f32(vdupq_lane_s32(*shift.i8, 0), xmmword_11BA0, v11.f32[0]);
  v13 = vmlaq_lane_f32(vdupq_lane_s32(*shift.i8, 1), xmmword_11B90, v11, 1);
  circle.f64[1] = threshold;
  v14 = vmul_f32(vcvt_f32_f64(circle), 0x3F0000003F000000);
  *&box = box;
  *&box = v14.f32[0] + *&box;
  v15 = vmlaq_n_f32(vdupq_lane_s32(*&box, 0), xmmword_11BA0, v14.f32[0]);
  rectCopy = rect;
  *&box = v14.f32[1] + rectCopy;
  v75 = *v13.i64;
  v76 = *v12.i64;
  v17 = vsubq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&box, 0), xmmword_11B90, v14, 1), v13);
  v18.i64[0] = 0x3400000034000000;
  v18.i64[1] = 0x3400000034000000;
  *&v72 = vmulq_f32(vmaxnmq_f32(vmulq_f32(v17, xmmword_11B90), v18), xmmword_11B90).u64[0];
  *&v73 = vmulq_f32(vmaxnmq_f32(vmulq_f32(vsubq_f32(v15, v12), xmmword_11BA0), v18), xmmword_11BA0).u64[0];
  v77 = a8.n128_f64[0];
  v78 = *shift.i8;
  v19 = a8.n128_f32[2];
  v20 = 0;
  if (a8.n128_f32[2] > 0.00000011921)
  {
    v21 = _simd_hypot_f4(vsubq_f32(v12, vdupq_lane_s32(a8.n128_u64[0], 0)), vsubq_f32(v13, vdupq_lane_s32(a8.n128_u64[0], 1)));
    *shift.i8 = v78;
    v22.i32[1] = -1275068416;
    *v22.i32 = v19 + -0.00000011921;
    v20 = vminnmq_f32(v21, vdupq_lane_s32(v22, 0)).u64[0];
  }

  v71 = *&v20;
  v24 = self[8];
  v23 = self[9];
  v25 = self[10];
  v26 = vaddq_f32(v25, vmlaq_lane_f32(vmulq_n_f32(v24, *shift.i32), v23, *shift.i8, 1));
  v27 = vmulq_f32(v26, v26);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  *v26.f32 = vadd_f32(*shift.i8, a2);
  v30 = vaddq_f32(v25, vmlaq_lane_f32(vmulq_n_f32(v24, v26.f32[0]), v23, *v26.f32, 1));
  v31 = vmulq_f32(v30, v30);
  v25.f32[0] = v31.f32[2] + vaddv_f32(*v31.f32);
  *v31.f32 = vrsqrte_f32(v25.u32[0]);
  *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v31.f32, *v31.f32)));
  v74 = v29;
  v32 = simd_quaternion(v29, vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v31.f32, *v31.f32))).f32[0]));
  *&v33 = v19;
  [(float32x4_t *)self _estimateRatiosOfProjectedCorners:v76 cornerRadii:v75 toMaxCornerShifts:v71 maxRadius:v73 circleCenter:v72 forRotation:v33, v77, v32];
  v34.f32[0] = vmaxvq_f32(v34);
  v80 = vmaxvq_f32(v35);
  v82 = v34.i64[0];
  v34.f32[1] = v80;
  *v35.f32 = vdup_lane_s32(v70, 0);
  v37 = vmaxvq_f32(v36);
  *v34.f32 = vsub_f32(*v34.f32, *v35.f32);
  v35.f32[0] = v37 + -1.0;
  v38 = [[RTSCWeightedInterpolationModel alloc] initWithPoint:*&a2 weights:COERCE_DOUBLE(vadd_f32(vadd_f32(vmaxnm_f32(*v34.f32, 0), vmaxnm_f32(vdup_lane_s32(*v35.f32, 0), 0)), 0x3400000034000000))];
  v41.i32[1] = HIDWORD(v82);
  v41.f32[0] = fmaxf(fmaxf(*&v82, v80), v37);
  if (v41.f32[0] > 1.0)
  {
    __asm { FMOV            V3.2S, #1.0 }

    DWORD1(_Q3) = v41.i32[0];
    v46 = 3;
    *&v40 = 0;
    v41.f32[0] = 1.0 / v41.f32[0];
    do
    {
      v79 = v41.i32[0];
      v81 = v40;
      v83 = _Q3;
      [(RTSCWeightedInterpolationModel *)v38 interpolateTo:*&v70];
      v48 = vadd_f32(v78, v47);
      v49 = vaddq_f32(self[10], vmlaq_lane_f32(vmulq_n_f32(self[8], v48.f32[0]), self[9], v48, 1));
      v50 = vmulq_f32(v49, v49);
      *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
      *v50.f32 = vrsqrte_f32(v51);
      *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
      v52 = simd_quaternion(v74, vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]));
      *&v53 = v19;
      [(float32x4_t *)self _estimateRatiosOfProjectedCorners:v76 cornerRadii:v75 toMaxCornerShifts:v71 maxRadius:v73 circleCenter:v72 forRotation:v53, v77, v52];
      *(&v40 + 1) = *(&v81 + 1);
      *(&_Q3 + 1) = *(&v83 + 1);
      v57 = vmaxnmq_f32(vmaxnmq_f32(v54, v55), v56);
      v57.f32[0] = vmaxvq_f32(v57);
      v56.i32[0] = 1.0;
      *v55.f32 = vdup_lane_s32(vcgt_f32(*v56.f32, *v57.f32), 0);
      *&_Q3 = vbsl_s8(*v55.f32, *&v83, __PAIR64__(v57.u32[0], v79));
      *&v40 = vbsl_s8(*v55.f32, __PAIR64__(v57.u32[0], v79), *&v81);
      v41 = vsub_f32(__PAIR64__(DWORD1(_Q3), 1.0), vdup_lane_s32(*&v40, 1));
      LODWORD(v58) = vdiv_f32(v41, vdup_lane_s32(v41, 1)).u32[0];
      v59 = vsub_f32(*&_Q3, *&v40).f32[0];
      v41.f32[0] = *&v40 + (fminf(fmaxf(v58, 0.125), 0.875) * v59);
      --v46;
    }

    while (v46);
    v41.f32[0] = 1.0 / (*&v40 + (v58 * v59));
  }

  v60 = fmaxf(v41.f32[0], 0.0);
  v41.f32[0] = v60;
  if (v60 > *v70.i32)
  {
    v41.f32[0] = 1.0 - ((1.0 - *v70.i32) * expf((*v70.i32 - v60) / (1.0 - *v70.i32)));
  }

  v61 = v41.f32[0] / v60;
  v62 = v60 <= v41.f32[0];
  v41.i32[0] = 1.0;
  if (!v62)
  {
    v41.f32[0] = v61;
  }

  [(RTSCWeightedInterpolationModel *)v38 interpolateTo:*&v41, *&v70];
  v64 = vadd_f32(v78, v63);
  v65 = vaddq_f32(self[10], vmlaq_lane_f32(vmulq_n_f32(self[8], v64.f32[0]), self[9], v64, 1));
  v66 = vmulq_f32(v65, v65);
  *&v67 = v66.f32[2] + vaddv_f32(*v66.f32);
  *v66.f32 = vrsqrte_f32(v67);
  *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
  *&v68 = simd_quaternion(v74, vmulq_n_f32(v65, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]));
  v84 = v68;

  return v84;
}

@end