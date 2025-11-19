@interface RTSCRealTimeStabilization
- (RTSCRealTimeStabilization)initWithCameraExtrinsics:(double)a3 faceReframingSettings:(double)a4;
- (__n128)_applySmoothingToCameraModel:(uint64_t)a3@<X8> filterPole:(float)a4@<S0>;
- (__n128)_findCameraModelWithinBoundingCorners:(__n128 *)a3@<X3> boundingEllipse:(__n128 *)a4@<X4> outsideBoundsModel:(__n128 *)a5@<X8> insideBoundsModel:(float32x4_t)a6@<Q0> outsideBoundsMargin:(__n128)a7@<Q1> insideBoundsMargin:(__n128)a8@<Q2> inputPose:(__n128)a9@<Q3> oisOffset:(__n128)a10@<Q4> cameraMetadata:(__n128)a11@<Q5>;
- (__n128)stabilizationHomography;
- (double)_computeHomographyForStabilizedCamera:(float32x2_t)a3 inputPose:(float32x4_t)a4 oisOffset:(float32x4_t)a5 cameraMetadata:(float32x4_t)a6 rollingShutterTransform:(uint64_t)a7;
- (double)_computeHomographyFromRotation:(simd_float3)a3 focalLength:(simd_float3)a4 inputOpticalCenter:(float)a5 outputOpticalCenter:(float32x4_t)a6;
- (float32x2_t)nominalFaceFramingOffset;
- (float32x4_t)_applyFinalAdjustmentsToStabilizedCameraForInputPose:(float32x4_t *)a3@<X8> cameraMetadata:(float32x4_t)a4@<Q0>;
- (float32x4_t)_constructCameraModel:(float32x4_t)result@<Q0> focalLength:(int32x2_t)a4@<D1> staticOpticalCenter:(float32x2_t)a5@<D2> oisOffset:(int32x4_t)a6@<Q3> sagOffset:(float32x2_t)a7@<D4>;
- (id)_computeClampedRollingShutterTransformForBoundingRect:(double)a3;
- (id)_setDefaultParametersWithCameraExtrinsics:(int32x4_t)a3;
- (int)_extractMetadataAndMotionDataFromDictionary:(RTSCRealTimeStabilization *)self calibration:(SEL)a2 cameraMetadata:(__CFDictionary *)a3 cameraPose:(id)a4 oisOffset:(RTSCameraMetadata *)a5 sagOffset:(id *)a6;
- (int)_getAllMetadataFromDictionary:(__CFDictionary *)a3 cameraMetadata:(RTSCameraMetadata *)a4;
- (int)_getCalibrationDataFromDictionary:(id)a3 cameraMetadata:(RTSCameraMetadata *)a4;
- (int)updateStabilizationHomographyUsingMetadata:(id)a3 inputCalibration:(id)a4 pixelBufferDimensions:(id)a5 outputFOVRect:(CGRect)a6;
- (uint64_t)_updateRollingShutterModelWithMotionSample:(double)a3 cameraMetadata:(uint64_t)a4 currentPort:(uint64_t)a5 atTime:(int)a6;
- (void)_clampStabilizedCamera:(double)a3 ToBoundingCorners:(int32x2_t)a4 boundingEllipse:(double)a5 currentBoundingMargin:(float)a6 inputPose:(float32x4_t)a7 oisOffset:(float32x2_t)a8 cameraMetadata:(uint64_t)a9;
- (void)dealloc;
@end

@implementation RTSCRealTimeStabilization

- (RTSCRealTimeStabilization)initWithCameraExtrinsics:(double)a3 faceReframingSettings:(double)a4
{
  v36.receiver = a1;
  v36.super_class = RTSCRealTimeStabilization;
  v7 = [(RTSCRealTimeStabilization *)&v36 init];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [RTSCPanning3DAnalyzer alloc];
  LODWORD(v9) = 1041865114;
  v10 = [(RTSCPanning3DAnalyzer *)v8 initWithTimeConstant:v9 initialVariance:?];
  panningAnalyzerSlow = v7->_panningAnalyzerSlow;
  v7->_panningAnalyzerSlow = v10;

  v12 = [RTSCPanning3DAnalyzer alloc];
  LODWORD(v13) = 1028443341;
  v14 = [(RTSCPanning3DAnalyzer *)v12 initWithTimeConstant:v13 initialVariance:*vdupq_n_s32(0x377BA882u).i64];
  panningAnalyzerFast = v7->_panningAnalyzerFast;
  v7->_panningAnalyzerFast = v14;

  v16 = [RTSCAdaptiveFilterStrength alloc];
  LODWORD(v17) = 1045220557;
  LODWORD(v18) = 1032805417;
  LODWORD(v19) = 1050253722;
  v20 = [(RTSCAdaptiveFilterStrength *)v16 initWithMaxTimescale:v17 minTimescale:v18 transitionTime:v19];
  adaptiveFilterStrength = v7->_adaptiveFilterStrength;
  v7->_adaptiveFilterStrength = v20;

  v22 = objc_alloc_init(RTSCMotionBlurFilter);
  motionBlurFilter = v7->_motionBlurFilter;
  v7->_motionBlurFilter = v22;

  v24 = objc_alloc_init(RTSCRollingShutterModel);
  rollingShutterModel = v7->_rollingShutterModel;
  v7->_rollingShutterModel = v24;

  if (!v7->_panningAnalyzerSlow || !v7->_panningAnalyzerFast || !v7->_adaptiveFilterStrength || !v7->_motionBlurFilter || !v7->_rollingShutterModel)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    v26 = objc_alloc_init(RTSCFaceReframingV1);
    faceReframing = v7->_faceReframing;
    v7->_faceReframing = v26;

    v29 = v7->_faceReframing;
    if (v29)
    {
      LODWORD(v28) = 1.0;
      [(RTSCFaceReframingV1 *)v29 setCorrectionStrength:v28];
      v30 = *(&a6 + 1) * 3.14159265 / 180.0;
      v7->_overscanReserveAngle = v30;
      goto LABEL_10;
    }

LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

LABEL_10:
  [(RTSCRealTimeStabilization *)v7 _setDefaultParametersWithCameraExtrinsics:a2, a3, a4];
LABEL_11:
  v31 = v7;
LABEL_13:

  return v31;
}

- (void)dealloc
{
  motionBlurFilter = self->_motionBlurFilter;
  self->_motionBlurFilter = 0;

  panningAnalyzerSlow = self->_panningAnalyzerSlow;
  self->_panningAnalyzerSlow = 0;

  panningAnalyzerFast = self->_panningAnalyzerFast;
  self->_panningAnalyzerFast = 0;

  adaptiveFilterStrength = self->_adaptiveFilterStrength;
  self->_adaptiveFilterStrength = 0;

  faceReframing = self->_faceReframing;
  self->_faceReframing = 0;

  rollingShutterModel = self->_rollingShutterModel;
  self->_rollingShutterModel = 0;

  v9.receiver = self;
  v9.super_class = RTSCRealTimeStabilization;
  [(RTSCRealTimeStabilization *)&v9 dealloc];
}

- (id)_setDefaultParametersWithCameraExtrinsics:(int32x4_t)a3
{
  v5 = a1 + 26760;
  *(a1 + 10266) = 257;
  *(a1 + 26760) = 1;
  v6 = a4.n128_f32[2] + (*a2.i32 + *&a3.i32[1]);
  if (v6 >= 0.0)
  {
    v14 = sqrtf(v6 + 1.0);
    v15 = v14 + v14;
    v16 = vrecpe_f32(COERCE_UNSIGNED_INT(v14 + v14));
    v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v16));
    v17.i32[0] = vmul_f32(v17, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v17)).u32[0];
    *&v28 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), a4.n128_u64[0]), vext_s8(a4.n128_u64[0], *&vextq_s8(a2, a2, 8uLL), 4uLL)), v17.f32[0]);
    v18.f32[0] = *&a2.i32[1] - *a3.i32;
    v18.f32[1] = v15;
    v17.i32[1] = 0.25;
    v30 = vmul_f32(v18, v17);
  }

  else if (*a2.i32 < *&a3.i32[1] || *a2.i32 < a4.n128_f32[2])
  {
    v8 = 1.0 - *a2.i32;
    if (*&a3.i32[1] >= a4.n128_f32[2])
    {
      v31 = sqrtf(*&a3.i32[1] + (v8 - a4.n128_f32[2]));
      *&v32 = v31 + v31;
      v33 = vrecpe_f32(v32);
      v34 = vmul_f32(v33, vrecps_f32(v32, v33));
      v35.i32[0] = vmul_f32(v34, vrecps_f32(v32, v34)).u32[0];
      v34.f32[0] = *&a2.i32[1] + *a3.i32;
      v34.i32[1] = v32;
      v30 = vmul_n_f32(vext_s8(vadd_f32(a4.n128_u64[0], vdup_laneq_s32(a3, 2)), vsub_f32(a4.n128_u64[0], *&vextq_s8(a2, a2, 8uLL)), 4uLL), v35.f32[0]);
      v35.i32[1] = 0.25;
      *&v28 = vmul_f32(v34, v35);
    }

    else
    {
      v9 = sqrtf(a4.n128_f32[2] + (v8 - *&a3.i32[1]));
      v10.f32[0] = v9 + v9;
      v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v9 + v9));
      v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v9 + v9), v11));
      v12.i32[0] = vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v9 + v9), v12)).u32[0];
      *&v28 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)), a4.n128_u64[0]), v12.f32[0]);
      v10.f32[1] = *&a2.i32[1] - *a3.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v12.i32[0];
      v30 = vmul_f32(v10, _D0);
    }
  }

  else
  {
    v19 = sqrtf(*a2.i32 + ((1.0 - *&a3.i32[1]) - a4.n128_f32[2]));
    v20.f32[0] = v19 + v19;
    v21 = vrecpe_f32(v20.u32[0]);
    v22 = vmul_f32(v21, vrecps_f32(v20.u32[0], v21));
    LODWORD(v23) = vmul_f32(v22, vrecps_f32(v20.u32[0], v22)).u32[0];
    v20.f32[1] = *&a2.i32[1] + *a3.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v23;
    *&v28 = vmul_f32(v20, _D5);
    v29.i32[0] = vadd_f32(*&vextq_s8(a2, a2, 8uLL), a4.n128_u64[0]).u32[0];
    v29.i32[1] = vsub_f32(vdup_laneq_s32(a3, 2), *&a4).i32[1];
    v30 = vmul_n_f32(v29, v23);
  }

  *(&v28 + 1) = v30;
  *(a1 + 26768) = v28;
  *(a1 + 10256) = 0x3F589374BC6A7EFALL;
  *(a1 + 26800) = xmmword_11B30;
  *(a1 + 26832) = xmmword_11B30;
  *(a1 + 26864) = xmmword_11B30;
  *(a1 + 26896) = xmmword_11B30;
  *(a1 + 27096) = 0;
  *(a1 + 27088) = 1065353216;
  *(a1 + 27112) = 0;
  *(a1 + 27104) = 0x3F80000000000000;
  *(a1 + 27128) = 1065353216;
  *(a1 + 27120) = 0;
  [*(a1 + 26960) setScale:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.5))];
  *(v5 + 324) = 0;
  [*(a1 + 27032) reset];
  [*(a1 + 27040) reset];
  [*(a1 + 27024) reset];
  [*(a1 + 27072) reset];
  v36 = *(a1 + 26960);

  return [v36 reset];
}

- (int)_getAllMetadataFromDictionary:(__CFDictionary *)a3 cameraMetadata:(RTSCameraMetadata *)a4
{
  if (a3)
  {
    if (a4)
    {
      size = CGRectZero.size;
      a4->var7.size = CGRectZero.origin;
      *&a4[1].var0 = size;
      FigCFDictionaryGetCGRectIfPresent();
      v15.origin.x = CGRectZero.origin.x;
      v15.origin.y = CGRectZero.origin.y;
      v15.size.width = CGRectZero.size.width;
      v15.size.height = CGRectZero.size.height;
      if (CGRectEqualToRect(*&a4->var7.size.width, v15))
      {
        v8 = *&self->_bufferWidth;
        v9.i64[0] = v8;
        v9.i64[1] = SHIDWORD(v8);
        a4->var7.size.width = 0.0;
        a4->var7.size.height = 0.0;
        *&a4[1].var0 = vcvtq_f64_s64(v9);
      }

      a4[1].var3 = *self->_imageCenter;
      a4[1].var4 = 0.0;
      v10 = kFigCaptureSampleBufferMetadata_ImageCircle;
      if (CFDictionaryContainsKey(a3, kFigCaptureSampleBufferMetadata_ImageCircle))
      {
        if (!CFDictionaryGetValue(a3, v10))
        {
          [RTSCRealTimeStabilization _getAllMetadataFromDictionary:? cameraMetadata:?];
          return time.value;
        }

        time.value = 0;
        *&time.timescale = 0;
        if (FigCFDictionaryGetCGPointIfPresent())
        {
          *&a4[1].var3 = vcvt_f32_f64(*&time.value);
        }

        v14 = 0uLL;
        if (FigCFDictionaryGetCGSizeIfPresent())
        {
          *&a4[1].var4 = vcvt_f32_f64(v14);
        }
      }

      a4->var2 = CFDictionaryContainsKey(a3, kFigCaptureStreamMetadata_SphereMode) != 0;
      v13 = 0;
      FigCFDictionaryGetFloatIfPresent();
      [RTSCRealTimeStabilization _getAllMetadataFromDictionary:? cameraMetadata:?];
    }

    else
    {
      [RTSCRealTimeStabilization _getAllMetadataFromDictionary:? cameraMetadata:?];
    }
  }

  else
  {
    [RTSCRealTimeStabilization _getAllMetadataFromDictionary:? cameraMetadata:?];
  }

  return time.value;
}

- (uint64_t)_updateRollingShutterModelWithMotionSample:(double)a3 cameraMetadata:(uint64_t)a4 currentPort:(uint64_t)a5 atTime:(int)a6
{
  v8 = a2.n128_f64[0];
  v10 = *(a5 + 40);
  if (*(a5 + 8) == 1)
  {
    v15 = a2;
    v16 = 0;
    v11 = FigMotionComputeLensMovementForTimeStamp(a1 + 10272, &v16, a6, a3, *(a5 + 4));
    if (v11)
    {
      v13 = v11;
      [RTSCRealTimeStabilization _updateRollingShutterModelWithMotionSample:cameraMetadata:currentPort:atTime:];
      return v13;
    }

    v10 = vadd_f32(v10, v16);
    v8 = v15.n128_f64[0];
  }

  v12 = (a3 - *(a5 + 24)) / (*(a5 + 32) - *(a5 + 24)) * (*(a5 + 88) + -1.0);
  *&v12 = v12;
  [*(a1 + 26968) updateModelAtRow:v12 withPose:v8 principalPoint:{*&v10, *&v15}];
  return 0;
}

- (int)_extractMetadataAndMotionDataFromDictionary:(RTSCRealTimeStabilization *)self calibration:(SEL)a2 cameraMetadata:(__CFDictionary *)a3 cameraPose:(id)a4 oisOffset:(RTSCameraMetadata *)a5 sagOffset:(id *)a6
{
  v6 = __chkstk_darwin(self, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v19 = v18;
  if (v16 && v14 && v12 && v10 && v8)
  {
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    v20 = [v17 _getCalibrationDataFromDictionary:v19 cameraMetadata:v14];
    if (v20)
    {
      v118 = v20;
      [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
    }

    else
    {
      v21 = [v17 _getAllMetadataFromDictionary:v16 cameraMetadata:v14];
      if (v21)
      {
        v118 = v21;
        [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
      }

      else
      {
        v126 = 0;
        Value = CFDictionaryGetValue(v16, kFigCaptureStreamMetadata_PortType);
        v23 = portIndexFromPortType(Value, &v126);
        if (v23)
        {
          v118 = v23;
          [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
        }

        else
        {
          v120 = v8;
          v121 = v12;
          v24 = (v17 + 8);
          v25 = *(v17 + 8);
          v26 = v126;
          v27 = *(v17 + 10256);
          bzero(&v129, 0x14A0uLL);
          bzero(&v127, 0x2FD0uLL);
          v132.i32[0] = 0;
          v131.i32[0] = 0;
          MotionDataFromISP = FigMotionGetMotionDataFromISP(v16, &v129, 0, 110, &v132, 0, &v127, 510, &v131);
          if (MotionDataFromISP)
          {
            v118 = MotionDataFromISP;
            fig_log_get_emitter();
            FigDebugAssert3();
            fig_log_get_emitter();
            FigDebugAssert3();
          }

          else
          {
            v29 = v17 + 10272;
            v30 = v132.u32[0];
            if (v132.i32[0] >= 1)
            {
              v31 = *(v17 + 8);
              v32 = &v130;
              do
              {
                *(v17 + 16 + 8 * v31) = v27 + -0.005 + *(v32 - 1);
                v33 = (v17 + 2064 + 32 * v31);
                v35 = *v32;
                v34 = *(v32 + 1);
                v32 += 6;
                *v33 = v35;
                v33[1] = v34;
                v31 = (*v24 + 1);
                *v24 = v31;
                --v30;
              }

              while (v30);
            }

            v36 = v131.u32[0];
            if (v131.i32[0] >= 1)
            {
              v37 = *(v29 + 4 * v26);
              v38 = &v127 + 1;
              do
              {
                *(v17 + 10280 + (v26 << 12) + 8 * v37) = *(v38 - 1);
                v39 = *v38;
                v38 += 3;
                *(v17 + 18472 + (v26 << 12) + 8 * v37) = v39;
                v37 = (*(v29 + 4 * v26) + 1) & 0x1FF;
                *(v29 + 4 * v26) = v37;
                --v36;
              }

              while (v36);
            }

            v40 = *v24;
            if (v25 != *v24)
            {
              v41 = v17 + 16;
              v42 = v25;
              do
              {
                v43 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v17 + 2064 + 32 * v42)), *(v17 + 2064 + 32 * v42 + 16));
                *&v122 = vextq_s8(v43, v43, 4uLL).u64[0];
                v43.i64[0] = *(v41 + 8 * v42);
                [*(v17 + 27032) updateWithPose:? atTime:?];
                [*(v17 + 27040) updateWithPose:v122 atTime:*(v41 + 8 * v42)];
                v42 = (v42 + 1);
              }

              while (v42 != v40);
            }

            *(v14 + 56) = 0;
            v44 = v126;
            v123 = *(v17 + 26768);
            *(v14 + 56) = 0;
            v45 = *(v14 + 16);
            v46 = *(v14 + 48);
            v47 = v45 - v46 * 0.5;
            v48 = v45 + v46 * 0.5;
            v134[0] = 1;
            v133 = 1;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            FigMotionComputeQuaternionForTimeStamp(v17 + 8, &v127, v134, v47);
            FigMotionComputeQuaternionForTimeStamp(v17 + 8, &v129, &v133, v48);
            if (v134[0] && v133)
            {
              v49 = *(&v127 + 1);
              v50 = *&v128;
              v51 = *(&v128 + 1);
              v52 = *&v127;
              v53 = vnegq_f32(v123);
              v54 = vtrn2q_s32(v123, vtrn1q_s32(v123, v53));
              v55 = vextq_s8(v54, v54, 8uLL);
              v56 = vextq_s8(v123, v53, 8uLL);
              v57 = vrev64q_s32(v123);
              v57.i32[0] = v53.i32[1];
              v57.i32[3] = v53.i32[2];
              v58 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v56, v50), v55, v49), vmlaq_n_f32(vmulq_n_f32(v123, v52), v57, v51));
              v59 = v129.f64[1];
              v60 = *&v130;
              *v53.i32 = *(&v130 + 1);
              v61 = v129.f64[0];
              v62 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v56, v60), v55, v59), vmlaq_n_f32(vmulq_n_f32(v123, v61), v57, *v53.i32));
              v63 = vmulq_f32(v58, xmmword_11B60);
              v64 = vnegq_f32(v62);
              v65 = vtrn2q_s32(v62, vtrn1q_s32(v62, v64));
              v66 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v62, v64, 8uLL), *v63.f32, 1), vextq_s8(v65, v65, 8uLL), v63.f32[0]);
              v67 = vrev64q_s32(v62);
              v67.i32[0] = v64.i32[1];
              v67.i32[3] = v64.i32[2];
              v68 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v63, 3), v67, v63, 2), v66);
              v69 = vmulq_f32(v68, xmmword_11B60);
              v70 = vnegq_f32(v69);
              v71 = vtrn2q_s32(v69, vtrn1q_s32(v69, v70));
              v72 = vmlaq_f32(vmulq_f32(vextq_s8(v69, v70, 8uLL), 0), 0, vextq_s8(v71, v71, 8uLL));
              v73 = vrev64q_s32(v69);
              v73.i32[0] = v70.i32[1];
              v73.i32[3] = v70.i32[2];
              v74 = vaddq_f32(v73, v72);
              v75 = vnegq_f32(v74);
              v76 = vtrn2q_s32(v74, vtrn1q_s32(v74, v75));
              v77 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v74, v75, 8uLL), *v68.f32, 1), vextq_s8(v76, v76, 8uLL), v68.f32[0]);
              v78 = vrev64q_s32(v74);
              v78.i32[0] = v75.i32[1];
              v78.i32[3] = v75.i32[2];
              v79 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v74, v68, 3), v78, v68, 2), v77);
              v75.i64[0] = COERCE_UNSIGNED_INT(fmaxf(v79.f32[2], 0.00000011921));
              *v74.f32 = vrecpe_f32(*v75.i8);
              *v74.f32 = vmul_f32(*v74.f32, vrecps_f32(v75.u32[0], *v74.f32));
              *(v14 + 56) = vmul_n_f32(*v79.f32, *v14 * vmul_f32(*v74.f32, vrecps_f32(v75.u32[0], *v74.f32)).f32[0]);
              if (*(v14 + 8) == 1)
              {
                v131 = 0;
                v132 = 0;
                FigMotionComputeLensMovementForTimeStamp(v17 + 10272, &v132, v44, v47, *(v14 + 4));
                FigMotionComputeLensMovementForTimeStamp(v17 + 10272, &v131, v44, v48, *(v14 + 4));
                *(v14 + 56) = vsub_f32(*(v14 + 56), vsub_f32(v131, v132));
              }

              v80 = *(v14 + 16);
              [*(v17 + 26960) updateBlurVector:? atTime:?];
              v124 = 0u;
              v125 = 0u;
              FigMotionComputeQuaternionForTimeStamp(v17 + 8, &v124, (v17 + 10266), *(v14 + 16));
              if (*(v17 + 10266))
              {
                v81 = *(&v124 + 1);
                HIDWORD(v83) = HIDWORD(v125);
                v82 = *&v125;
                *&v83 = *(&v125 + 1);
                v84 = *&v124;
                v85 = *(v17 + 26768);
                v86 = vnegq_f32(v85);
                v87 = vtrn2q_s32(v85, vtrn1q_s32(v85, v86));
                v88 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v85, v86, 8uLL), v82), vextq_s8(v87, v87, 8uLL), v81);
                v89 = vrev64q_s32(v85);
                v89.i32[0] = v86.i32[1];
                v89.i32[3] = v86.i32[2];
                *v121 = vaddq_f32(v88, vmlaq_n_f32(vmulq_n_f32(v85, v84), v89, *&v83));
                if (*(v14 + 8) == 1)
                {
                  *&v127 = 0;
                  v129.f64[0] = 0.0;
                  if (*(v17 + 26784) == 1)
                  {
                    v90 = &v129;
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v91 = FigMotionComputeLensMovementAndSagForTimeStamp(v17 + 10272, &v127, v90, v126, *(v14 + 16), *(v14 + 4));
                  *v10 = v127;
                  *v120 = v129.f64[0];
                  if (v91)
                  {
                    v118 = v91;
                    [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
                    goto LABEL_44;
                  }

                  *(v14 + 40) = vsub_f32(*(v14 + 40), *v10);
                }

                else
                {
                  *v10 = 0;
                  *v120 = 0.0;
                }

                if (*(v17 + 27084) == 1)
                {
                  __asm { FMOV            V1.2S, #-1.0 }

                  LODWORD(v83) = *v14;
                  [*(v17 + 26968) resetToCenterPosition:COERCE_DOUBLE(vmul_f32(vadd_f32(vcvt_f32_s32(*(v17 + 26712)) withPose:_D1) principalPoint:0x3F0000003F000000)) focalLength:{*v121, COERCE_DOUBLE(vadd_f32(*(v14 + 40), *v10)), v83}];
                  if (v25 != v40)
                  {
                    v97 = 0;
                    do
                    {
                      v98 = *(v17 + 16 + 8 * v25);
                      if (v98 >= *(v14 + 24) && v98 <= *(v14 + 32))
                      {
                        v99 = (v17 + 2064 + 32 * v25);
                        v100 = v99[1];
                        v101 = v99[2];
                        v102 = v99[3];
                        v103 = *v99;
                        v104 = *(v17 + 26768);
                        v105 = vnegq_f32(v104);
                        v106 = vtrn2q_s32(v104, vtrn1q_s32(v104, v105));
                        v107 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v104, v105, 8uLL), v101), vextq_s8(v106, v106, 8uLL), v100);
                        v108 = vrev64q_s32(v104);
                        v108.i32[0] = v105.i32[1];
                        v108.i32[3] = v105.i32[2];
                        v109 = [v17 _updateRollingShutterModelWithMotionSample:v14 cameraMetadata:v126 currentPort:*vaddq_f32(v107 atTime:{vmlaq_n_f32(vmulq_n_f32(v104, v103), v108, v102)).i64}];
                        if (v109)
                        {
                          v118 = v109;
                          [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
                          goto LABEL_44;
                        }

                        ++v97;
                      }

                      v25 = (v25 + 1);
                    }

                    while (v25 != v40);
                    if (v97 > 1)
                    {
                      goto LABEL_43;
                    }
                  }

                  v127 = 0u;
                  v128 = 0u;
                  v132.i8[0] = 1;
                  FigMotionComputeQuaternionForTimeStamp(v17 + 8, &v127, &v132, *(v14 + 24));
                  if (v132.i8[0])
                  {
                    v110 = *(&v127 + 1);
                    v111 = *&v128;
                    v112 = *(&v128 + 1);
                    v113 = *&v127;
                    v114 = *(v17 + 26768);
                    v115 = vnegq_f32(v114);
                    v116 = vtrn2q_s32(v114, vtrn1q_s32(v114, v115));
                    v117 = vrev64q_s32(v114);
                    v117.i32[0] = v115.i32[1];
                    v117.i32[3] = v115.i32[2];
                    v118 = [v17 _updateRollingShutterModelWithMotionSample:v14 cameraMetadata:v126 currentPort:*vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vextq_s8(v114 atTime:{v115, 8uLL), v111), vextq_s8(v116, v116, 8uLL), v110), vmlaq_n_f32(vmulq_n_f32(v114, v113), v117, v112)).i64, *(v14 + 24)}];
                    if (v118)
                    {
                      [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
                    }
                  }

                  else
                  {
                    [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:? calibration:? cameraMetadata:? cameraPose:? oisOffset:? sagOffset:?];
                    v118 = LODWORD(v129.f64[0]);
                  }
                }

                else
                {
LABEL_43:
                  v118 = 0;
                }
              }

              else
              {
                [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:? calibration:? cameraMetadata:? cameraPose:? oisOffset:? sagOffset:?];
                v118 = v127;
              }
            }

            else
            {
              [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:];
              v118 = -1;
            }
          }
        }
      }
    }
  }

  else
  {
    [RTSCRealTimeStabilization _extractMetadataAndMotionDataFromDictionary:? calibration:? cameraMetadata:? cameraPose:? oisOffset:? sagOffset:?];
    v118 = v127;
  }

LABEL_44:

  return v118;
}

- (id)_computeClampedRollingShutterTransformForBoundingRect:(double)a3
{
  v7 = COERCE_DOUBLE(vcvt_f32_s32(*(a1 + 26712)));
  LODWORD(a3) = 1.0;
  result = [*(a1 + 26968) fitNormalizedBackwardsTransformForBufferSize:v7 limitFactor:a3];
  v12 = vcvt_f32_s32(*(a1 + 26712));
  v13 = *(a1 + 26728);
  v14 = *(a1 + 26736);
  *&v13 = v13;
  v15 = *(a1 + 26744);
  v16.i32[0] = 0;
  v17.i32[0] = 0;
  v17.f32[1] = v15;
  *v18.i8 = vadd_f32(vdup_lane_s32(*&v13, 0), v17);
  *&v14 = v14;
  v19 = *(a1 + 26752);
  v20.i32[0] = 0;
  v20.f32[1] = v19;
  *v21.i8 = vadd_f32(vdup_lane_s32(*&v14, 0), v20);
  v22 = vzip1q_s32(v21, v21);
  v23 = vrecpe_f32(v12);
  v24 = vmul_f32(v23, vrecps_f32(v12, v23));
  v25 = vmul_f32(v24, vrecps_f32(v12, v24));
  v26 = vmulq_n_f32(vzip1q_s32(v18, vrev64q_s32(v18)), v25.f32[0]);
  v27 = vmulq_lane_f32(v22, v25, 1);
  v22.i64[0] = *a5;
  v28 = *(a5 + 8);
  v22.f32[0] = *a5;
  v17.f32[0] = *(a5 + 16);
  v29.i32[0] = 0;
  v29.i32[1] = v17.i32[0];
  *v22.f32 = vadd_f32(vdup_lane_s32(*v22.f32, 0), v29);
  *&v28 = v28;
  v17.f32[0] = *(a5 + 24);
  v16.i32[1] = v17.i32[0];
  *v30.i8 = vadd_f32(vdup_lane_s32(*&v28, 0), v16);
  v31 = vmulq_n_f32(vzip1q_s32(v22, vrev64q_s32(v22)), v25.f32[0]);
  v32 = vsubq_f32(vmulq_lane_f32(vzip1q_s32(v30, v30), v25, 1), v27);
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v33 = vmulq_f32(vsubq_f32(v31, v26), v30);
  v34 = vmulq_f32(v32, v30);
  v35 = vtrn1q_s32(v33, v34);
  v36 = vextq_s8(v35, v35, 8uLL);
  v16.i32[0] = vmovn_s32(vcltzq_f32(v36)).u32[0];
  v16.i32[1] = vmovn_s32(vcgtzq_f32(v36)).i32[1];
  if (vmaxv_u16(v16))
  {
    v37 = matrix_identity_float3x3.columns[0];
    v38 = matrix_identity_float3x3.columns[1];
    v39 = matrix_identity_float3x3.columns[2];
  }

  else
  {
    v40 = 0;
    v41 = vzip1q_s32(v9, v11);
    v44 = vzip1q_s32(v41, v10);
    v45 = vzip2q_s32(v41, vdupq_lane_s32(*v10.i8, 1));
    v46 = vzip1q_s32(vzip2q_s32(v9, v11), vdupq_laneq_s32(v10, 2));
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v47 + v40) = vaddq_f32(vdupq_laneq_s32(*(&v44 + v40), 2), vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v44 + v40))), v27, *&v44.i8[v40], 1));
      v40 += 16;
    }

    while (v40 != 48);
    v42 = fmaxf(vmaxvq_f32(vdivq_f32(vsubq_f32(v47, v26), v33)), vmaxvq_f32(vdivq_f32(vsubq_f32(v48, v27), v34)));
    v43 = 0.0;
    if ((LODWORD(v42) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      LODWORD(v43) = 1.0;
      if (v42 > 1.0)
      {
        *&v43 = 1.0 / v42;
      }
    }

    return [*(a1 + 26968) fitNormalizedBackwardsTransformForBufferSize:v7 limitFactor:{v43, *&v44, *&v45, *&v46}];
  }

  return result;
}

- (__n128)_applySmoothingToCameraModel:(uint64_t)a3@<X8> filterPole:(float)a4@<S0>
{
  if ((*(a1 + 26761) & 1) != 0 || *(a1 + 27085) == 1)
  {
    for (i = 0; i != 128; i += 32)
    {
      v7 = (a1 + 26800 + i);
      v8 = a2[1];
      *v7 = *a2;
      v7[1] = v8;
    }
  }

  else
  {
    v10 = 0;
    v11 = a2[1];
    v22 = *a2;
    v23 = v11;
    v12 = a1 + 26896;
    do
    {
      v13 = (v12 + v10);
      v20[0] = v22;
      v20[1] = v23;
      v14 = *(v12 + v10 + 16);
      v19[0] = *(v12 + v10);
      v19[1] = v14;
      rts_interpolateCameraModel(v20, v19, v21, a4);
      v15 = v21[1];
      *v13 = v21[0];
      v13[1] = v15;
      v16 = *(v12 + v10 + 16);
      v22 = *(v12 + v10);
      v23 = v16;
      v10 -= 32;
    }

    while (v10 != -128);
  }

  result = *(a1 + 26800);
  v18 = *(a1 + 26816);
  *a3 = result;
  *(a3 + 16) = v18;
  return result;
}

- (float32x4_t)_constructCameraModel:(float32x4_t)result@<Q0> focalLength:(int32x2_t)a4@<D1> staticOpticalCenter:(float32x2_t)a5@<D2> oisOffset:(int32x4_t)a6@<Q3> sagOffset:(float32x2_t)a7@<D4>
{
  *(a2 + 24) = 0;
  *a2 = result;
  v8 = vdup_lane_s32(a4, 0);
  *(a2 + 16) = vdiv_f32(vsub_f32(a5, a1[3340]), v8);
  v9 = a1[3348].i32[0];
  if (v9 == 2)
  {
    v21 = result;
    v10 = vdivq_f32(vrev64q_s32(a6).u64[0], vdupq_lane_s32(a4, 0));
    v10.i32[3] = 0;
    v12 = _simd_atan_f4(v10);
    result = vmulq_f32(v12, v12);
    result.f32[0] = result.f32[2] + vaddv_f32(*result.f32);
    if (result.f32[0] > 0.0)
    {
      *v11.i32 = sqrtf(result.f32[0]);
      v19 = v12;
      v20 = v11;
      v13 = __sincosf_stret(*v11.i32 * 0.5);
      v14 = vmulq_n_f32(vdivq_f32(v19, vdupq_lane_s32(v20, 0)), v13.__sinval);
      v14.i32[3] = LODWORD(v13.__cosval);
      v15 = vnegq_f32(v14);
      v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
      v17 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *v21.f32, 1), vextq_s8(v16, v16, 8uLL), v21.f32[0]);
      v18 = vrev64q_s32(v14);
      v18.i32[0] = v15.i32[1];
      v18.i32[3] = v15.i32[2];
      result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v21, 3), v18, v21, 2), v17);
      *a2 = result;
    }
  }

  else if (v9 == 1)
  {
    *result.f32 = vdiv_f32(a7, v8);
    *(a2 + 24) = result.i64[0];
  }

  return result;
}

- (float32x4_t)_applyFinalAdjustmentsToStabilizedCameraForInputPose:(float32x4_t *)a3@<X8> cameraMetadata:(float32x4_t)a4@<Q0>
{
  v7 = a1 + 24576;
  v8 = (a1 + 26800);
  v151 = *(a1 + 26800);
  v9 = vmulq_f32(a4, xmmword_11B60);
  v10 = vnegq_f32(v151);
  v11 = vtrn2q_s32(v151, vtrn1q_s32(v151, v10));
  v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v151, v10, 8uLL), *v9.f32, 1), vextq_s8(v11, v11, 8uLL), v9.f32[0]);
  v13 = vrev64q_s32(v151);
  v13.i32[0] = v10.i32[1];
  v13.i32[3] = v10.i32[2];
  v152 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v151, v9, 3), v13, v9, 2), v12);
  if (*(a1 + 27072))
  {
    v13.i32[0] = *a2;
    v153 = *a2;
    v14 = *(a2 + 40);
    v15 = (a1 + 27080);
    v16 = *(a2 + 64);
    *&v16.f64[0] = vsub_f32(vcvt_f32_f64(v16), v14);
    v17 = vadd_f32(*&v16.f64[0], vcvt_f32_f64(*(a2 + 80)));
    v18 = vdup_lane_s32(*v13.f32, 0);
    *&v16.f64[0] = vdiv_f32(*&v16.f64[0], v18);
    v19 = vld1_dup_f32(v15);
    v20 = _simd_atan_f4(v16);
    xa = *v20.f32;
    *v20.f32 = vdiv_f32(v17, v18);
    v21 = _simd_atan_f4(v20);
    v22 = vmul_f32(vadd_f32(xa, *v21.f32), 0x3F0000003F000000);
    *v23.f32 = vminnm_f32(vmaxnm_f32(vadd_f32(v19, xa), xa), v22);
    *v21.f32 = vminnm_f32(vmaxnm_f32(vsub_f32(*v21.f32, v19), v22), *v21.f32);
    xb = v21;
    v24 = vmul_n_f32(*&_simd_tan_f4(v23), v153);
    v25 = _simd_tan_f4(xb).u64[0];
    v26 = vadd_f32(v14, v24);
    v27 = vsub_f32(vmul_n_f32(v25, v153), v24);
    v28 = v26.f32[0];
    v29 = v26.f32[1];
    v30 = v27.f32[0];
    v31 = v27.f32[1];
    v32 = *(a2 + 104);
    v33 = vceqz_f32(v32);
    v154 = 0u;
    if ((vpmin_u32(*&v33, *&v33).u32[0] & 0x80000000) == 0)
    {
      v34 = *a2;
      v35 = *(v7 + 2504);
      v36 = vcvt_f32_s32(*(a1 + 26712));
      v37 = vmul_f32(v32, v36);
      if (v37.f32[0] < 0.00000011921)
      {
        v37.i32[0] = vmaxnm_f32(v37, 0x3400000034000000).u32[0];
      }

      *&v33 = vmul_f32(*(a2 + 96), v36);
      v155 = v33;
      v38 = atanf(v37.f32[0] / v34);
      v39 = tanf(fmaxf(v38 - v35, 0.0));
      v40 = v155;
      *(&v40 + 2) = v34 * v39;
      v154 = v40;
    }

    v41 = simd_matrix3x3(vmulq_f32(v152, xmmword_11B60));
    [*(a1 + 27072) updateFaceCorrectionAfterStabilization:v41 viewPort:v42 boundingRect:v43 boundingCircle:{*(a1 + 26728), *(a1 + 26736), *(a1 + 26744), *(a1 + 26752), *&v28, *&v29, *&v30, *&v31, v154}];
    [*(a1 + 27072) faceCorrection];
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(v44, v45, 8uLL), 0), 0, vextq_s8(v46, v46, 8uLL));
    v48 = vrev64q_s32(v44);
    v48.i32[0] = v45.i32[1];
    v48.i32[3] = v45.i32[2];
    v49 = vaddq_f32(vmlaq_f32(v44, 0, v48), v47);
  }

  else
  {
    v49 = xmmword_11B30;
  }

  v50 = vnegq_f32(v49);
  v51 = vtrn2q_s32(v49, vtrn1q_s32(v49, v50));
  if (*(v7 + 2509) == 1)
  {
    v52 = vextq_s8(v51, v51, 8uLL);
    v53 = vextq_s8(v49, v50, 8uLL);
    v54 = vrev64q_s32(v49);
    v54.i32[0] = v50.i32[1];
    v54.i32[3] = v50.i32[2];
  }

  else
  {
    v145 = vextq_s8(v49, v50, 8uLL);
    x = vextq_s8(v51, v51, 8uLL);
    v55 = vrev64q_s32(v49);
    v55.i32[0] = v50.i32[1];
    v55.i32[3] = v50.i32[2];
    v156 = v49;
    v146 = v55;
    v56 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v49, v151, 3), v55, v151, 2), vmlaq_n_f32(vmulq_lane_f32(v145, *v151.f32, 1), x, v151.f32[0]));
    v57 = vmulq_f32(*(a1 + 26944), xmmword_11B60);
    v58 = vnegq_f32(v56);
    v59 = vtrn2q_s32(v56, vtrn1q_s32(v56, v58));
    v60 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v56, v58, 8uLL), *v57.f32, 1), vextq_s8(v59, v59, 8uLL), v57.f32[0]);
    v61 = vrev64q_s32(v56);
    v61.i32[0] = v58.i32[1];
    v61.i32[3] = v58.i32[2];
    v62 = vaddq_f32(v60, vmlaq_laneq_f32(vmulq_laneq_f32(v56, v57, 3), v61, v57, 2));
    v63 = vmulq_f32(v62, xmmword_11B60);
    v64 = vnegq_f32(v63);
    v65 = vtrn2q_s32(v63, vtrn1q_s32(v63, v64));
    v66 = vmlaq_f32(vmulq_f32(vextq_s8(v63, v64, 8uLL), 0), 0, vextq_s8(v65, v65, 8uLL));
    v67 = vrev64q_s32(v63);
    v67.i32[0] = v64.i32[1];
    v67.i32[3] = v64.i32[2];
    v68 = vaddq_f32(v67, v66);
    v69 = vnegq_f32(v68);
    v70 = vtrn2q_s32(v68, vtrn1q_s32(v68, v69));
    v71 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v68, v69, 8uLL), *v62.f32, 1), vextq_s8(v70, v70, 8uLL), v62.f32[0]);
    v72 = vrev64q_s32(v68);
    v72.i32[0] = v69.i32[1];
    v72.i32[3] = v69.i32[2];
    v73 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v68, v62, 3), v72, v62, 2), v71);
    v69.i64[0] = COERCE_UNSIGNED_INT(fmaxf(v73.f32[2], 0.00000011921));
    *v68.f32 = vrecpe_f32(*v69.i8);
    *v68.f32 = vmul_f32(*v68.f32, vrecps_f32(v69.u32[0], *v68.f32));
    v74 = vmul_n_f32(*v73.f32, *a2 * vmul_f32(*v68.f32, vrecps_f32(v69.u32[0], *v68.f32)).f32[0]);
    [*(a1 + 26960) filteredBlurVector];
    v76 = vaddv_f32(vmul_f32(v74, v74));
    if (v76 > 0.0)
    {
      *&v77 = fmaxf(vaddv_f32(vmul_f32(*v75.f32, *v75.f32)), v76) / v76;
      v78 = vrsqrte_f32(v77);
      v79 = vmul_f32(v78, vrsqrts_f32(v77, vmul_f32(v78, v78)));
      *v75.f32 = vmul_n_f32(*v75.f32, 1.0 - vmul_f32(v79, vrsqrts_f32(v77, vmul_f32(v79, v79))).f32[0]);
    }

    if (vaddv_f32(vmul_f32(*v75.f32, *v75.f32)) > 0.0)
    {
      v80 = vld1_dup_f32(a2);
      *v75.f32 = vdiv_f32(*v75.f32, v80);
      v75.i32[2] = 1.0;
      v81 = vmulq_f32(v75, v75);
      v82.i32[1] = 0;
      v83 = COERCE_UNSIGNED_INT(v81.f32[2] + vaddv_f32(*v81.f32));
      *v81.f32 = vrsqrte_f32(v83);
      *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v83.u32[0], vmul_f32(*v81.f32, *v81.f32)));
      v84 = vmulq_n_f32(v75, vmul_f32(*v81.f32, vrsqrts_f32(v83.u32[0], vmul_f32(*v81.f32, *v81.f32))).f32[0]);
      v85 = vmulq_f32(v84, xmmword_11B70);
      if ((v85.f32[2] + vaddv_f32(*v85.f32)) >= 0.0)
      {
        v116 = vaddq_f32(v84, xmmword_11B70);
        v117 = vmulq_f32(v116, v116);
        v82.f32[0] = v117.f32[2] + vaddv_f32(*v117.f32);
        *v117.f32 = vrsqrte_f32(v82);
        *v117.f32 = vmul_f32(*v117.f32, vrsqrts_f32(v82, vmul_f32(*v117.f32, *v117.f32)));
        v118 = vmulq_n_f32(v116, vmul_f32(*v117.f32, vrsqrts_f32(v82, vmul_f32(*v117.f32, *v117.f32))).f32[0]);
        v119 = vmulq_f32(v118, xmmword_11B80);
        v120 = vmlaq_f32(vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL), xmmword_11B40, v118);
        v115 = vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL);
        v121 = vmulq_f32(v118, xmmword_11B70);
        v115.f32[3] = v121.f32[2] + vaddv_f32(*v121.f32);
      }

      else
      {
        v86 = vrsqrte_f32(1065353216);
        v87 = vmul_f32(v86, vrsqrts_f32(1065353216, vmul_f32(v86, v86)));
        LODWORD(v88) = vmul_f32(v87, vrsqrts_f32(1065353216, vmul_f32(v87, v87))).u32[0];
        v89 = vmulq_f32(v84, v84);
        v82.f32[0] = v89.f32[2] + vaddv_f32(*v89.f32);
        *v89.f32 = vrsqrte_f32(v82);
        *v89.f32 = vmul_f32(*v89.f32, vrsqrts_f32(v82, vmul_f32(*v89.f32, *v89.f32)));
        v90 = vaddq_f32(vmulq_n_f32(xmmword_11B70, v88), vmulq_n_f32(v84, vmul_f32(*v89.f32, vrsqrts_f32(v82, vmul_f32(*v89.f32, *v89.f32))).f32[0]));
        v91 = vmulq_f32(v90, v90);
        v92 = v91.f32[2] + vaddv_f32(*v91.f32);
        if (v92 <= 1.4211e-14)
        {
          v115 = vmulq_n_f32(xmmword_11B50, v88);
          v115.i32[3] = 0;
        }

        else
        {
          v93 = v92;
          v94 = vrsqrte_f32(LODWORD(v92));
          v95 = vmul_f32(v94, vrsqrts_f32(LODWORD(v93), vmul_f32(v94, v94)));
          v96 = vmulq_n_f32(v90, vmul_f32(v95, vrsqrts_f32(LODWORD(v93), vmul_f32(v95, v95))).f32[0]);
          v97 = vaddq_f32(v96, xmmword_11B70);
          v98 = vmulq_f32(v97, v97);
          *&v99 = v98.f32[2] + vaddv_f32(*v98.f32);
          v100 = vrsqrte_f32(v99);
          v101 = vmul_f32(v100, vrsqrts_f32(v99, vmul_f32(v100, v100)));
          v102 = vmulq_n_f32(v97, vmul_f32(v101, vrsqrts_f32(v99, vmul_f32(v101, v101))).f32[0]);
          v103 = vmulq_f32(v102, xmmword_11B80);
          v104 = vmlaq_f32(vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), xmmword_11B40, v102);
          v105 = vmulq_f32(v102, xmmword_11B70);
          v106 = vaddq_f32(v84, v96);
          v107 = vmulq_f32(v106, v106);
          v98.f32[0] = v107.f32[2] + vaddv_f32(*v107.f32);
          *v107.f32 = vrsqrte_f32(v98.u32[0]);
          *v107.f32 = vmul_f32(*v107.f32, vrsqrts_f32(v98.u32[0], vmul_f32(*v107.f32, *v107.f32)));
          v108 = vmulq_n_f32(v106, vmul_f32(*v107.f32, vrsqrts_f32(v98.u32[0], vmul_f32(*v107.f32, *v107.f32))).f32[0]);
          v109 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL), vnegq_f32(v96)), v108, vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL));
          v110 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
          v111 = vmulq_f32(v96, v108);
          v110.f32[3] = v111.f32[2] + vaddv_f32(*v111.f32);
          v112 = vnegq_f32(v110);
          v113 = vtrn2q_s32(v110, vtrn1q_s32(v110, v112));
          v114 = vrev64q_s32(v110);
          v114.i32[0] = v112.i32[1];
          v114.i32[3] = v112.i32[2];
          v115 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v105.f32[2] + vaddv_f32(*v105.f32)), v114, *v104.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v110, v112, 8uLL), v104.f32[0]), vextq_s8(v113, v113, 8uLL), v104, 2));
        }
      }

      v122 = 0;
      v123 = vnegq_f32(v115);
      v124 = vtrn2q_s32(v115, vtrn1q_s32(v115, v123));
      v125 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v115, v123, 8uLL), *a4.f32, 1), vextq_s8(v124, v124, 8uLL), a4.f32[0]);
      v126 = vrev64q_s32(v115);
      v126.i32[0] = v123.i32[1];
      v126.i32[3] = v123.i32[2];
      v127 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v115, a4, 3), v126, a4, 2), v125);
      v128 = vnegq_f32(v152);
      v129 = vtrn2q_s32(v152, vtrn1q_s32(v152, v128));
      v130 = vrev64q_s32(v152);
      v130.i32[0] = v128.i32[1];
      v130.i32[3] = v128.i32[2];
      v131 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v152, v128, 8uLL), *v127.f32, 1), vextq_s8(v129, v129, 8uLL), v127.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v152, v127, 3), v130, v127, 2));
      v132 = vmulq_f32(v151, xmmword_11B60);
      v133 = vnegq_f32(v131);
      v134 = vtrn2q_s32(v131, vtrn1q_s32(v131, v133));
      v135 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v131, v133, 8uLL), *v132.f32, 1), vextq_s8(v134, v134, 8uLL), v132.f32[0]);
      v136 = vrev64q_s32(v131);
      v136.i32[0] = v133.i32[1];
      v136.i32[3] = v133.i32[2];
      v137 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v131, v132, 3), v136, v132, 2), v135);
      v138 = vnegq_f32(v137);
      v139 = vtrn2q_s32(v137, vtrn1q_s32(v137, v138));
      v140 = vextq_s8(v139, v139, 8uLL);
      v141 = vextq_s8(v137, v138, 8uLL);
      v142 = vrev64q_s32(v137);
      v142.i32[0] = v138.i32[1];
      v142.i32[3] = v138.i32[2];
      do
      {
        v8[v122] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(v141, *v8[v122].f32, 1), v140, COERCE_FLOAT(*&v8[v122])), vmlaq_laneq_f32(vmulq_laneq_f32(v137, v8[v122], 3), v142, v8[v122], 2));
        v122 += 2;
      }

      while (v122 != 8);
    }

    v49 = v156;
    v54 = v146;
    v52 = x;
    v53 = v145;
  }

  v143 = v8[1];
  *a3 = *v8;
  a3[1] = v143;
  result = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(v53, *a3->f32, 1), v52, COERCE_FLOAT(*a3)), vmlaq_laneq_f32(vmulq_laneq_f32(v49, *a3, 3), v54, *a3, 2));
  *a3 = result;
  return result;
}

- (double)_computeHomographyFromRotation:(simd_float3)a3 focalLength:(simd_float3)a4 inputOpticalCenter:(float)a5 outputOpticalCenter:(float32x4_t)a6
{
  v9 = 0;
  *v10.f32 = vcvt_f32_s32(*(a1 + 26712));
  v10.i64[1] = 1065353216;
  v11 = vrecpeq_f32(v10);
  v12 = vmulq_f32(v11, vrecpsq_f32(v10, v11));
  v13 = vmulq_f32(v12, vrecpsq_f32(v10, v12));
  v10.i64[0] = vmulq_n_f32(v13, a5).u64[0];
  v14 = v10.u32[0];
  v15.i32[0] = 0;
  v15.i64[1] = 0;
  v15.i32[1] = v10.i32[1];
  a6.i32[2] = 1.0;
  *v10.f32 = vcvt_f32_f64(*(a1 + 26744));
  v19.columns[0].i64[1] = 1065353216;
  v19.columns[1] = vrecpeq_f32(v19.columns[0]);
  v19.columns[1] = vmulq_f32(v19.columns[1], vrecpsq_f32(v19.columns[0], v19.columns[1]));
  v16 = vmulq_f32(v19.columns[1], vrecpsq_f32(v19.columns[0], v19.columns[1]));
  v17 = vmulq_n_f32(v16, a5).u64[0];
  v19.columns[0].i32[1] = 0;
  v19.columns[0].i32[2] = 0;
  v19.columns[0].i32[0] = v17;
  v19.columns[1].i32[0] = 0;
  v19.columns[1].i32[2] = 0;
  v19.columns[1].i32[1] = HIDWORD(v17);
  *a7.f32 = vsub_f32(*a7.f32, vcvt_f32_f64(*(a1 + 26728)));
  a7.i32[2] = 1.0;
  v25.columns[0] = a2;
  v25.columns[1] = a3;
  v18 = vmulq_f32(a6, v13);
  v25.columns[2] = a4;
  v19.columns[2] = vmulq_f32(v16, a7);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  do
  {
    *(&v26 + v9 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v25.columns[v9])), v15, *v25.columns[v9].f32, 1), v18, v25.columns[v9], 2);
    ++v9;
  }

  while (v9 != 3);
  v19.columns[0].i32[3] = 0;
  v19.columns[1].i32[3] = 0;
  v23 = v27;
  v24 = v26;
  v22 = v28;
  v29 = __invert_f3(v19);
  v20 = 0;
  v25 = v29;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  do
  {
    *(&v26 + v20 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*&v25.columns[v20])), v23, *v25.columns[v20].f32, 1), v22, v25.columns[v20], 2);
    ++v20;
  }

  while (v20 != 3);
  return *v26.i64;
}

- (double)_computeHomographyForStabilizedCamera:(float32x2_t)a3 inputPose:(float32x4_t)a4 oisOffset:(float32x4_t)a5 cameraMetadata:(float32x4_t)a6 rollingShutterTransform:(uint64_t)a7
{
  v13 = vmulq_f32(a2, xmmword_11B60);
  v14 = vnegq_f32(*a8);
  v15 = vtrn2q_s32(*a8, vtrn1q_s32(*a8, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*a8, v14, 8uLL), *v13.f32, 1), vextq_s8(v15, v15, 8uLL), v13.f32[0]);
  v17 = vrev64q_s32(*a8);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  v18 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*a8, v13, 3), v17, v13, 2), v16);
  *(a1 + 26928) = v18;
  v19 = simd_matrix3x3(v18);
  v20 = *(a8 + 16);
  v21 = vadd_f32(*&v20, *(a8 + 24));
  LODWORD(v20) = a9->i32[0];
  [a1 _computeHomographyFromRotation:v19 focalLength:v22 inputOpticalCenter:v23 outputOpticalCenter:{v20, COERCE_DOUBLE(vadd_f32(a9[5], a3)), COERCE_DOUBLE(vmla_n_f32(*(a1 + 26720), v21, a9->f32[0]))}];
  v24 = 0;
  HIDWORD(v25) = 0;
  HIDWORD(v26) = 0;
  HIDWORD(v27) = 0;
  v32[0] = v25;
  v32[1] = v26;
  v32[2] = v27;
  memset(v33, 0, sizeof(v33));
  do
  {
    v33[v24] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v32[v24])), a5, *&v32[v24], 1), a6, v32[v24], 2);
    ++v24;
  }

  while (v24 != 3);
  return *v33;
}

- (__n128)_findCameraModelWithinBoundingCorners:(__n128 *)a3@<X3> boundingEllipse:(__n128 *)a4@<X4> outsideBoundsModel:(__n128 *)a5@<X8> insideBoundsModel:(float32x4_t)a6@<Q0> outsideBoundsMargin:(__n128)a7@<Q1> insideBoundsMargin:(__n128)a8@<Q2> inputPose:(__n128)a9@<Q3> oisOffset:(__n128)a10@<Q4> cameraMetadata:(__n128)a11@<Q5>
{
  v53 = a7.n128_f64[0];
  v54 = a12.n128_f64[0];
  v17 = a11.n128_f32[0];
  v18 = a10.n128_f32[0];
  v19 = a9.n128_f64[0];
  v20 = a8.n128_u64[0];
  v48 = fmaxf(a6.f32[2] - a6.f32[0], a7.n128_f32[2] - a7.n128_f32[0]) * -0.0001;
  v23 = matrix_identity_float3x3.columns[0];
  v50 = matrix_identity_float3x3.columns[1];
  v51 = matrix_identity_float3x3.columns[0];
  v49 = matrix_identity_float3x3.columns[2];
  v24 = 0.5;
  v25 = 16;
  do
  {
    v57 = v24;
    v59 = a12.n128_u32[3];
    v61 = a8.n128_u32[3];
    v63 = a10.n128_u32[3];
    v67 = a9.n128_u32[3];
    v69 = a11.n128_u32[3];
    v65 = v23.i32[3];
    v80 = 0u;
    v81 = 0u;
    v26 = a3[1];
    v71 = *a3;
    v72 = v26;
    v27 = a2[1];
    v78 = *a2;
    v79 = v27;
    rts_interpolateCameraModel(&v71, &v78, &v80, v24);
    v28 = vmulq_n_f32(*(a1 + 26976), v57);
    v28.i32[3] = v59;
    v29 = vmulq_n_f32(*(a1 + 26992), v57);
    v29.i32[3] = v61;
    v30 = vmulq_n_f32(*(a1 + 27008), v57);
    v30.i32[3] = v63;
    v31 = vmulq_n_f32(v51, 1.0 - v57);
    v31.i32[3] = v65;
    v32 = vmulq_n_f32(v50, 1.0 - v57);
    v32.i32[3] = v67;
    v33 = vmulq_n_f32(v49, 1.0 - v57);
    v33.i32[3] = v69;
    v68 = v65;
    v70 = v59;
    v31.i64[0] = vaddq_f32(v28, v31).u64[0];
    v64 = v32.u32[3];
    v66 = v61;
    v28.i64[0] = vaddq_f32(v29, v32).u64[0];
    v60 = v33.u32[3];
    v62 = v30.u32[3];
    v29.i64[0] = vaddq_f32(v30, v33).u64[0];
    v78 = v80;
    v79 = v81;
    v34 = a4[5];
    v75 = a4[4];
    v76 = v34;
    v77 = a4[6];
    v35 = a4[1];
    v71 = *a4;
    v72 = v35;
    v36 = a4[3];
    v73 = a4[2];
    v74 = v36;
    [a1 _computeHomographyForStabilizedCamera:&v78 inputPose:&v71 oisOffset:v54 cameraMetadata:a13 rollingShutterTransform:{*v31.i64, *v28.i64, *v29.i64}];
    v37.i32[3] = 0;
    v38.i32[3] = 0;
    v39.i32[3] = 0;
    v56 = v38;
    v58 = v37;
    v55 = v39;
    *v40.i64 = rts_computeBoundingMarginsForHomography(v37, v38, v39, a6, v53, v20, v19);
    v43 = vmaxvq_f32(vmaxnmq_f32(vmaxnmq_f32(v40, v41), v42));
    if (v43 <= 0.0)
    {
      v45 = v81;
      *a3 = v80;
      a3[1] = v45;
      *(a1 + 27088) = v58;
      *(a1 + 27104) = v56;
      *(a1 + 27120) = v55;
      v17 = v43;
      if (v43 > v48)
      {
        break;
      }
    }

    else
    {
      v44 = v81;
      *a2 = v80;
      a2[1] = v44;
      v18 = v43;
    }

    v24 = fminf(fmaxf(-v17 / (v18 - v17), 0.125), 0.875);
    --v25;
    v23.i32[3] = v68;
    a12.n128_u32[3] = v70;
    a9.n128_u32[3] = v64;
    a8.n128_u32[3] = v66;
    a11.n128_u32[3] = v60;
    a10.n128_u32[3] = v62;
  }

  while (v25);
  result = *a3;
  v47 = a3[1];
  *a5 = *a3;
  a5[1] = v47;
  return result;
}

- (void)_clampStabilizedCamera:(double)a3 ToBoundingCorners:(int32x2_t)a4 boundingEllipse:(double)a5 currentBoundingMargin:(float)a6 inputPose:(float32x4_t)a7 oisOffset:(float32x2_t)a8 cameraMetadata:(uint64_t)a9
{
  v17 = vld1_dup_f32(a11);
  v18 = *(a1 + 26720);
  v19 = vadd_f32(*(a11 + 40), a8);
  v20 = *(a10 + 24);
  v82 = a7;
  v21 = vsub_f32(vdiv_f32(vsub_f32(v19, v18), v17), v20);
  *&v83 = v21;
  *(&v83 + 1) = v20;
  v22 = a1 + 27088;
  v23 = a11[3];
  v24 = a11[5];
  v25 = a11[6];
  v79 = a11[4];
  v80 = v24;
  v81 = v25;
  v26 = a11[1];
  v75 = *a11;
  v76 = v26;
  v77 = a11[2];
  v78 = v23;
  [a1 _computeHomographyForStabilizedCamera:&v82 inputPose:&v75 oisOffset:*a7.i64 cameraMetadata:*&a8 rollingShutterTransform:{*matrix_identity_float3x3.columns[0].i64, *matrix_identity_float3x3.columns[1].i64, *matrix_identity_float3x3.columns[2].i64}];
  *(v22 + 8) = v27;
  *(a1 + 27088) = v28;
  *(a1 + 27112) = v29;
  *(a1 + 27104) = v30;
  *(a1 + 27128) = v31;
  *(a1 + 27120) = v32;
  *v33.i64 = rts_computeBoundingMarginsForHomography(*(a1 + 27088), *(a1 + 27104), *(a1 + 27120), a2, a3, a4, a5);
  v37 = vmaxnmq_f32(v33, v36);
  if (vmaxvq_f32(vmaxnmq_f32(v37, v38)) <= 0.0)
  {
    *&v35 = vmaxvq_f32(v37);
    v82 = 0u;
    v83 = 0u;
    v39 = *(a10 + 16);
    v74[0] = *a10;
    v74[1] = v39;
    v71 = a7;
    v72 = v21;
    v73 = v20;
    v40 = a11[5];
    v79 = a11[4];
    v80 = v40;
    v81 = a11[6];
    v41 = a11[1];
    v75 = *a11;
    v76 = v41;
    v42 = a11[3];
    v77 = a11[2];
    v78 = v42;
    *&v34 = a6;
    [a1 _findCameraModelWithinBoundingCorners:v74 boundingEllipse:&v71 outsideBoundsModel:&v75 insideBoundsModel:*a2.i64 outsideBoundsMargin:a3 insideBoundsMargin:*&a4 inputPose:a5 oisOffset:v34 cameraMetadata:v35];
    v43 = vmulq_f32(*a10, xmmword_11B60);
    v44 = *(a1 + 26800);
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v43.f32, 1), vextq_s8(v46, v46, 8uLL), v43.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v44, v43, 3), v47, v43, 2));
    v49 = vmulq_f32(v44, xmmword_11B60);
    v50 = vnegq_f32(v48);
    v51 = vtrn2q_s32(v48, vtrn1q_s32(v48, v50));
    v52 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v48, v50, 8uLL), *v82.f32, 1), vextq_s8(v51, v51, 8uLL), v82.f32[0]);
    v53 = vrev64q_s32(v48);
    v53.i32[0] = v50.i32[1];
    v53.i32[3] = v50.i32[2];
    v54 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v48, v82, 3), v53, v82, 2), v52);
    v55 = vnegq_f32(v54);
    v56 = vtrn2q_s32(v54, vtrn1q_s32(v54, v55));
    v57 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v54, v55, 8uLL), *v49.f32, 1), vextq_s8(v56, v56, 8uLL), v49.f32[0]);
    v58 = vrev64q_s32(v54);
    v58.i32[0] = v55.i32[1];
    v58.i32[3] = v55.i32[2];
    v59 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v54, v49, 3), v58, v49, 2), v57);
    v60 = vsub_f32(*&v83, *(a10 + 16));
    v61 = vnegq_f32(v59);
    v62 = vtrn2q_s32(v59, vtrn1q_s32(v59, v61));
    v63 = vextq_s8(v62, v62, 8uLL);
    v65 = vrev64q_s32(v59);
    v65.i32[0] = v61.i32[1];
    v64 = vextq_s8(v59, v61, 8uLL);
    v65.i32[3] = v61.i32[2];
    v66 = (a1 + 26816);
    v67 = 4;
    do
    {
      *v66 = vadd_f32(v60, *v66);
      *v66[-2].f32 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(v64, v66[-2], 1), v63, COERCE_FLOAT(*v66[-2].f32)), vmlaq_laneq_f32(vmulq_laneq_f32(v59, *v66[-2].f32, 3), v65, *v66[-2].f32, 2));
      v66 += 4;
      --v67;
    }

    while (v67);
  }
}

- (int)updateStabilizationHomographyUsingMetadata:(id)a3 inputCalibration:(id)a4 pixelBufferDimensions:(id)a5 outputFOVRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  if (!v13)
  {
    [RTSCRealTimeStabilization updateStabilizationHomographyUsingMetadata:? inputCalibration:? pixelBufferDimensions:? outputFOVRect:?];
    v75 = v84.i32[0];
    goto LABEL_23;
  }

  *&self->_bufferWidth = a5;
  *&v15 = vcvts_n_f32_s32(a5.var0, 1uLL);
  HIDWORD(v15) = vcvts_n_f32_s32(a5.var1, 1uLL);
  *self->_imageCenter = v15;
  self->_outputCropRect.origin.x = x * a5.var0;
  self->_outputCropRect.origin.y = y * a5.var1;
  self->_outputCropRect.size.width = width * a5.var0;
  self->_outputCropRect.size.height = height * a5.var1;
  v104 = 0uLL;
  v102 = 0.0;
  v103 = 0.0;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v16 = [(RTSCRealTimeStabilization *)self _extractMetadataAndMotionDataFromDictionary:v13 calibration:v14 cameraMetadata:&v95 cameraPose:&v104 oisOffset:&v103 sagOffset:&v102];
  if (v16)
  {
    v75 = v16;
    [RTSCRealTimeStabilization updateStabilizationHomographyUsingMetadata:inputCalibration:pixelBufferDimensions:outputFOVRect:];
    goto LABEL_23;
  }

  p_didHaveMotionData = &self->_motionData.didHaveMotionData;
  self->_forceIdentity = self->_motionData.didHaveMotionData == 0;
  v93 = 0u;
  v94 = 0u;
  LODWORD(v17) = v95.i32[0];
  [(RTSCRealTimeStabilization *)self _constructCameraModel:*v104.i64 focalLength:v17 staticOpticalCenter:*(&v97 + 1) oisOffset:v103 sagOffset:v102];
  if (self->_stabilizationSmoothingDisabled)
  {
    v93 = v104;
    *(&v94 + 1) = vdiv_f32(*&v103, vdup_lane_s32(*v95.f32, 0));
  }

  if (self->_isFirstFrame)
  {
LABEL_6:
    for (i = 0; i != 128; i += 32)
    {
      v21 = &self->_anon_68b0[i + 4];
      v22 = v94;
      *v21 = v93;
      *(v21 + 1) = v22;
    }

    v23 = v104;
    *self->_anon_69b0 = v104;
    *&self->_anon_6940[4] = v23;
    if (!*p_didHaveMotionData)
    {
      goto LABEL_19;
    }

LABEL_12:
    faceReframing = self->_faceReframing;
    if (faceReframing)
    {
      v25 = vmulq_f32(v104, xmmword_11B60);
      v26 = *self->_anon_69b0;
      v27 = vnegq_f32(v26);
      v28 = vtrn2q_s32(v26, vtrn1q_s32(v26, v27));
      v29 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v27, 8uLL), *v25.f32, 1), vextq_s8(v28, v28, 8uLL), v25.f32[0]);
      v30 = vrev64q_s32(v26);
      v30.i32[0] = v27.i32[1];
      v30.i32[3] = v27.i32[2];
      v31 = vaddq_f32(v95, 0);
      *&v78 = vtrn1q_s32(0, v31).u64[0];
      *&v80 = v31.u32[0];
      __asm { FMOV            V2.4S, #1.0 }

      v77 = COERCE_DOUBLE(vadd_f32(*(&v97 + 8), *&v103));
      v37 = COERCE_DOUBLE(vcvt_f32_s32(*&self->_bufferWidth));
      v38 = simd_matrix3x3(vaddq_f32(v29, vmlaq_laneq_f32(vmulq_laneq_f32(v26, v25, 3), v30, v25, 2)));
      [(RTSCFaceReframingV1 *)faceReframing updateFacesWithMetadata:v13 bufferSize:v37 cameraMatrix:v80 rotationFromPrevFrame:v78 atTime:v77, v38, v39, v40, *&v96];
      *self->_anon_69b0 = v104;
    }

    v41 = matrix_identity_float3x3.columns[1];
    *self->_anon_6960 = matrix_identity_float3x3.columns[0];
    *&self->_anon_6960[16] = v41;
    *&self->_anon_6960[32] = matrix_identity_float3x3.columns[2];
    if (self->_rollingShutterCompensationEnabled)
    {
      [(RTSCRealTimeStabilization *)self _computeClampedRollingShutterTransformForBoundingRect:&v99];
      *&self->_anon_6960[8] = v42;
      *&self->_anon_6960[24] = v43;
      *self->_anon_6960 = v44;
      *&self->_anon_6960[16] = v45;
      *&self->_anon_6960[40] = v46;
      *&self->_anon_6960[32] = v47;
    }

    v48 = rts_estimatePanningSpeed(self->_panningAnalyzerSlow);
    *&v49 = fmaxf(v48, rts_estimatePanningSpeed(self->_panningAnalyzerFast));
    [(RTSCAdaptiveFilterStrength *)self->_adaptiveFilterStrength update:4 order:v49 atTime:*&v96];
    [(RTSCAdaptiveFilterStrength *)self->_adaptiveFilterStrength smoothingPole];
    v91 = v93;
    v92 = v94;
    [(RTSCRealTimeStabilization *)self _applySmoothingToCameraModel:&v91 filterPole:?];
    v91 = 0u;
    v92 = 0u;
    v88 = v99;
    v89 = v100;
    v90 = v101;
    v84 = v95;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    [(RTSCRealTimeStabilization *)self _applyFinalAdjustmentsToStabilizedCameraForInputPose:&v84 cameraMetadata:*v104.i64];
    v82 = v91;
    v83 = v92;
    v88 = v99;
    v89 = v100;
    v90 = v101;
    v84 = v95;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    [(RTSCRealTimeStabilization *)self _computeHomographyForStabilizedCamera:&v82 inputPose:&v84 oisOffset:*v104.i64 cameraMetadata:v103 rollingShutterTransform:*self->_anon_6960, *&self->_anon_6960[16], *&self->_anon_6960[32]];
    self[1]._motionData.fusedRingIndex = v50;
    self[1].super.isa = v51;
    LODWORD(self[1]._motionData.fusedRingTime[1]) = v52.i32[2];
    *&self[1]._motionData.fusedRingTime[0] = v53;
    LODWORD(self[1]._motionData.fusedRingTime[3]) = v54.i32[2];
    *&self[1]._motionData.fusedRingTime[2] = v55;
    v56 = vcvt_f32_s32(*&self->_bufferWidth);
    v53.f32[0] = *&v99;
    v57 = *&v100;
    v53.f32[1] = v53.f32[0] + v57;
    *v52.i8 = vadd_f32(v53, COERCE_FLOAT32X2_T(-0.0000305175853));
    v55.f32[0] = *(&v99 + 1);
    v58 = *(&v100 + 1);
    v55.f32[1] = v55.f32[0] + v58;
    *v54.i8 = vadd_f32(v55, COERCE_FLOAT32X2_T(-0.0000305175853));
    v59 = vrecpe_f32(v56);
    v60 = vmul_f32(v59, vrecps_f32(v56, v59));
    v61 = vmul_f32(v60, vrecps_f32(v56, v60));
    *&v79 = vmulq_lane_f32(vzip1q_s32(v54, v54), v61, 1).u64[0];
    v81 = vmulq_n_f32(vzip1q_s32(v52, vrev64q_s32(v52)), v61.f32[0]);
    *v62.i64 = rts_computeBoundingMarginsForHomography(*&self[1].super.isa, *self[1]._motionData.fusedRingTime, *&self[1]._motionData.fusedRingTime[2], v81, v79, *&v101, *(&v101 + 1));
    if (vmaxvq_f32(vmaxnmq_f32(vmaxnmq_f32(v62, v63), v64)) > 0.0)
    {
      v82 = v91;
      v83 = v92;
      v88 = v99;
      v89 = v100;
      v90 = v101;
      v84 = v95;
      v85 = v96;
      v86 = v97;
      v87 = v98;
      [RTSCRealTimeStabilization _clampStabilizedCamera:"_clampStabilizedCamera:ToBoundingCorners:boundingEllipse:currentBoundingMargin:inputPose:oisOffset:cameraMetadata:" ToBoundingCorners:&v82 boundingEllipse:&v84 currentBoundingMargin:*v81.i64 inputPose:v79 oisOffset:v101 cameraMetadata:?];
    }

    v65 = *&self->_anon_6930[4];
    v66 = vnegq_f32(v65);
    v67 = vtrn2q_s32(v65, vtrn1q_s32(v65, v66));
    v68 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v65, v66, 8uLL), *v104.f32, 1), vextq_s8(v67, v67, 8uLL), v104.f32[0]);
    v19 = vrev64q_s32(v65);
    v19.i32[0] = v66.i32[1];
    v19.i32[3] = v66.i32[2];
    *&self->_anon_6940[4] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v65, v104, 3), v19, v104, 2), v68);
    goto LABEL_19;
  }

  if (*p_didHaveMotionData)
  {
    if (self->_motionData.prevDidHaveMotionData)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

LABEL_19:
  if (self->_forceIdentity)
  {
    v19.i32[0] = 1.0;
    [(RTSCRealTimeStabilization *)self _computeHomographyFromRotation:*&_PromotedConst focalLength:unk_11BC0 inputOpticalCenter:0.0 outputOpticalCenter:*v19.i64, *self->_imageCenter, *self->_imageCenter];
    self[1]._motionData.fusedRingIndex = v69;
    LODWORD(self[1]._motionData.fusedRingTime[1]) = v70;
    self[1].super.isa = v71;
    self[1]._motionData.fusedRingTime[0] = v72;
    LODWORD(self[1]._motionData.fusedRingTime[3]) = v73;
    self[1]._motionData.fusedRingTime[2] = v74;
  }

  self->_motionData.prevDidHaveMotionData = self->_motionData.didHaveMotionData;
  v75 = 0;
  if (self->_isFirstFrame)
  {
    self->_isFirstFrame = 0;
  }

LABEL_23:

  return v75;
}

- (float32x2_t)nominalFaceFramingOffset
{
  v2 = a1[3384];
  if (v2)
  {
    [v2 nominalFaceFramingOffset];
    v3 = vcvt_f32_s32(a1[3339]);
    v4 = vrecpe_f32(v3);
    v5 = vmul_f32(v4, vrecps_f32(v3, v4));
    return vmul_f32(v6, vmul_f32(v5, vrecps_f32(v3, v5)));
  }

  else
  {
    return 0;
  }
}

- (__n128)stabilizationHomography
{
  result = *(a1 + 27088);
  v2 = *(a1 + 27104);
  v3 = *(a1 + 27120);
  return result;
}

- (int)_getCalibrationDataFromDictionary:(id)a3 cameraMetadata:(RTSCameraMetadata *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4)
  {
    a4->var1 = 1.0;
    v7 = [v5 objectForKeyedSubscript:kFigCameraCalibrationDataMetadataAttachmentKey_PixelSize];
    [v7 floatValue];
    v9 = v8;

    if (v9 > 0.0)
    {
      a4->var1 = 0.001 / v9;
    }

    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    v10 = [v6 objectForKeyedSubscript:kFigCameraCalibrationDataMetadataAttachmentKey_IntrinsicMatrix];
    if (v10)
    {
      v11 = v10;
      [v10 getBytes:v14 length:48];

      v12 = 0;
      *&a4->var6 = v15;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_0();
    FigDebugAssert3();
    OUTLINED_FUNCTION_5_0();
    v12 = FigSignalErrorAtGM();
  }

  return v12;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:cameraMetadata:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_getAllMetadataFromDictionary:(_DWORD *)a1 cameraMetadata:.cold.8(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_updateRollingShutterModelWithMotionSample:cameraMetadata:currentPort:atTime:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:(_DWORD *)a1 calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:(_DWORD *)a1 calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.8(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  FigDebugAssert3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataAndMotionDataFromDictionary:(_DWORD *)a1 calibration:cameraMetadata:cameraPose:oisOffset:sagOffset:.cold.10(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)updateStabilizationHomographyUsingMetadata:inputCalibration:pixelBufferDimensions:outputFOVRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)updateStabilizationHomographyUsingMetadata:(_DWORD *)a1 inputCalibration:pixelBufferDimensions:outputFOVRect:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end