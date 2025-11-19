@interface GVSFaceStabilizationProcessor
- (BOOL)updateBiasTrackingAndFaceCorrectionQuaternionWithFaceSmoothingArrays:(GVSFaceSmoothingArrays *)a3 biasTrackingSigma:(float)a4 centerFrameOffset:(int)a5;
- (GVSFaceStabilizationProcessor)init;
- (uint64_t)init;
- (void)_convertFaceRectangleToFacePose:(double)a3 withCameraPose:(double)a4 focalLength:(double)a5 imageCenter:(double)a6;
- (void)dealloc;
- (void)reset;
- (void)updateFaceCorrectionStrengthWithFaceSmoothingArrays:(GVSFaceSmoothingArrays *)a3;
- (void)updateFacePoseWithFaceDetections:(GVSFaceStabilizationProcessor *)self cameraPose:(SEL)a2 focalLength:(id)a3 imageCenter:(id)a4 sourcePixelBufferDimensions:(float)a5 finalCropRect:(CGRect)a6 currentCaptureTime:(double)a7;
@end

@implementation GVSFaceStabilizationProcessor

- (GVSFaceStabilizationProcessor)init
{
  v9.receiver = self;
  v9.super_class = GVSFaceStabilizationProcessor;
  v2 = [(GVSFaceStabilizationProcessor *)&v9 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = objc_alloc_init(GVSFaceSelectionProcessor);
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  if (!*(v2 + 1))
  {
    [GVSFaceStabilizationProcessor init];
LABEL_9:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = objc_alloc_init(GVSFacePosePreprocessor);
  v6 = *(v2 + 2);
  *(v2 + 2) = v5;

  if (!*(v2 + 2))
  {
    [GVSFaceStabilizationProcessor init];
    goto LABEL_9;
  }

  v2[64] = 1;
  *(v2 + 68) = xmmword_433F0;
  [v2 reset];
LABEL_5:
  v7 = v2;
LABEL_6:

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GVSFaceStabilizationProcessor;
  [(GVSFaceStabilizationProcessor *)&v2 dealloc];
}

- (void)reset
{
  *self->_anon_20 = xmmword_433D0;
  *self->_anon_30 = xmmword_433D0;
  [(GVSFaceSelectionProcessor *)self->_faceSelectionProcessor reset];
  facePosePreprocessor = self->_facePosePreprocessor;

  [(GVSFacePosePreprocessor *)facePosePreprocessor reset];
}

- (void)updateFacePoseWithFaceDetections:(GVSFaceStabilizationProcessor *)self cameraPose:(SEL)a2 focalLength:(id)a3 imageCenter:(id)a4 sourcePixelBufferDimensions:(float)a5 finalCropRect:(CGRect)a6 currentCaptureTime:(double)a7
{
  v9 = v7;
  [(GVSFaceSelectionProcessor *)self->_faceSelectionProcessor updateFaceSelectionWithFaceDetections:a3 imageCenter:v7 sourcePixelBufferDimensions:v8 finalCropRect:a6.origin.x currentCaptureTime:a6.origin.y, a6.size.width, a6.size.height, a7];
  [(GVSFaceSelectionProcessor *)self->_faceSelectionProcessor faceRectangle];
  GVSDenormalizeRectangle(v12, v13, v14, v15);
  facePosePreprocessor = self->_facePosePreprocessor;
  *&v19 = a5;
  [GVSFaceStabilizationProcessor _convertFaceRectangleToFacePose:"_convertFaceRectangleToFacePose:withCameraPose:focalLength:imageCenter:" withCameraPose:v19 focalLength:*&v9 imageCenter:?];
  [(GVSFacePosePreprocessor *)facePosePreprocessor updateWithFacePose:[(GVSFaceSelectionProcessor *)self->_faceSelectionProcessor faceIdentifier] faceIdentifier:v17];
  *self->_anon_20 = v18;
}

- (void)_convertFaceRectangleToFacePose:(double)a3 withCameraPose:(double)a4 focalLength:(double)a5 imageCenter:(double)a6
{
  if (!CGRectIsNull(*&a1))
  {
    v18.f32[0] = a1 + a3 * 0.5;
    v19 = a2 + a4 * 0.5;
    v18.f32[1] = v19;
    v20 = vsub_f32(v18, a18);
    v22 = v20.f32[0];
    *&v23 = -atanf(v20.f32[1] / a17);
    v21 = atanf(v22 / a17);
    GVSQuatfFromDeltaRotation(__PAIR64__(LODWORD(v21), v23), COERCE_DOUBLE(__PAIR64__(LODWORD(v21), v23)));
  }
}

- (void)updateFaceCorrectionStrengthWithFaceSmoothingArrays:(GVSFaceSmoothingArrays *)a3
{
  var4 = a3->var4;
  var5 = a3->var5;
  v5 = var4 - (var5 != var4);
  var6 = a3->var6;
  if (var5 == var4)
  {
    v5 = v5;
    var2 = 1.0;
  }

  else
  {
    var2 = a3->var0[12 * v5 + 8].var2;
  }

  v8 = a3->var2;
  v9 = v8[v5];
  maximumStrengthSlope = self->_maximumStrengthSlope;
  v11 = 1.0;
  if (self->_enableFaceStrengthModulation)
  {
    _VF = __OFSUB__(var4, var6);
    _ZF = var4 == var6;
    _NF = var4 - var6 < 0;
  }

  else
  {
    _VF = 0;
    _ZF = 0;
    _NF = 0;
  }

  if (_NF ^ _VF | _ZF)
  {
    rotationRateForZeroStrength = self->_rotationRateForZeroStrength;
    v16 = var6 + 1;
    v17 = &unk_43400;
    v18.i32[0] = vld1_dup_f32(v17).u32[0];
    __asm
    {
      FMOV            V17.2S, #1.0
      FMOV            V19.2S, #3.0
    }

    v22 = a3->var4;
    v11 = 1.0;
    do
    {
      v23 = v8[v22];
      v24 = 0.0;
      v25 = 0.0;
      if (var5 <= var6)
      {
        v26 = 0;
        v27 = 0;
        v28 = v16 - var5;
        v29 = a3->var5;
        do
        {
          if (vabdd_f64(v8[v29], v23) <= 1.0)
          {
            v30 = fabsf(a3->var1[v29]);
            if (v30 < self->_tripodRotationRateThreshold)
            {
              ++v27;
            }

            v24 = v24 + v30;
            ++v26;
          }

          ++v29;
          --v28;
        }

        while (v28);
        v25 = 0.0;
        if (v26 > 0)
        {
          v24 = v24 / v26;
          if (v26 >= 3)
          {
            v25 = v27 / v26;
          }
        }
      }

      v31.f32[0] = (1.0 - v25) + -0.65;
      v31.f32[1] = v24 - rotationRateForZeroStrength;
      v18.f32[1] = self->_rotationRateForFullStrength - rotationRateForZeroStrength;
      v32 = vminnm_f32(vmaxnm_f32(vdiv_f32(v31, v18), 0), _D17);
      v33 = vmul_f32(vmul_f32(v32, v32), vmla_f32(_D19, 0xC0000000C0000000, v32));
      v34 = vmul_lane_f32(v33, v33, 1).f32[0];
      v35 = v23 - v9;
      v31.f32[0] = v35;
      if (fmaxf(fminf(var2 + (maximumStrengthSlope * v31.f32[0]), 1.0), 0.0) > v34)
      {
        maximumStrengthSlope = (v34 - var2) / v35;
      }

      v11 = fminf(v11, v34);
      ++v22;
    }

    while (v16 != v22);
  }

  if (var4 <= var6)
  {
    v36 = var2;
    v37 = maximumStrengthSlope;
    v38 = &a3->var0[12 * var4 + 8];
    v39 = &v8[var4];
    v40 = var6 - var4 + 1;
    do
    {
      v41 = v11;
      if (var5 != var4)
      {
        v42 = v36 + v37 * (*v39 - v9);
        v41 = fmaxf(fminf(v42, 1.0), 0.0);
      }

      v38->var2 = v41;
      v38 += 12;
      ++v39;
      --v40;
    }

    while (v40);
  }
}

- (BOOL)updateBiasTrackingAndFaceCorrectionQuaternionWithFaceSmoothingArrays:(GVSFaceSmoothingArrays *)a3 biasTrackingSigma:(float)a4 centerFrameOffset:(int)a5
{
  v18 = *&a3->var0[12 * a3->var4 + 4 + 12 * a5].var2;
  GVSComputeSmoothedFaceQuaternion(a3, a5, a4);
  v9 = vmulq_f32(v8, xmmword_433E0);
  v10 = vnegq_f32(v18);
  v11 = vtrn2q_s32(v18, vtrn1q_s32(v18, v10));
  v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v10, 8uLL), *v9.f32, 1), vextq_s8(v11, v11, 8uLL), v9.f32[0]);
  v13 = vrev64q_s32(v18);
  v13.i32[0] = v10.i32[1];
  v13.i32[3] = v10.i32[2];
  *self->_anon_30 = vaddq_f32(v12, vmlaq_laneq_f32(vmulq_laneq_f32(v18, v9, 3), v13, v9, 2));
  v14 = *&a3->var0[12 * a3->var4 + 12 * a5].var2;
  v15 = vmulq_f32(v18, v14);
  *v15.i8 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v16 = vmulq_f32(v8, v14);
  *v16.i8 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  *v16.i8 = vcgtz_f32(vadd_f32(vzip1_s32(*v16.i8, *v15.i8), vzip2_s32(*v16.i8, *v15.i8)));
  return v16.i8[4] & v16.i8[0] & 1;
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end