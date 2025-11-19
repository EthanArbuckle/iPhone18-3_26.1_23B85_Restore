@interface PTEffectUtil
+ (BOOL)currentProcessIsCameracaptured;
+ (CGRect)rotateNormalizedRect:(CGRect)a3 transform:(CGAffineTransform *)a4 inverse:(BOOL)a5;
+ (__n64)computeRectInPixelCoordinates:(int8x8_t)a3 pixelBufferSize:(int8x8_t)a4 alignment:(uint16x4_t)a5;
+ (double)inverseRectTransform:(float32x4_t)a1;
+ (double)screenSpaceToCameraSpace:(float32x4_t)a3 zValue:(float32x4_t)a4 inverseProjection:(float32x4_t)a5;
+ (double)transformRect:(float32x4_t)a1 intoCropCoordinates:(float32x4_t)a2;
+ (id)faceRectsForVision:(id)a1 numberOfFaceRects:(SEL)a2 transform:;
+ (unint64_t)aspectRatio:(CGSize)a3;
+ (unint64_t)closestAspectRatio:(CGSize)a3;
- (PTEffectUtil)initWithMetalContext:(id)a3;
- (void)clearTexture:(id)a3 outTex:(id)a4;
- (void)sampleFaceRects:(id)a3 maxFaceRects:(int)a4 faceRects:faceRectsState:focusDisparityMax:inDisparity:outFaceDistanceArray:;
- (void)updateDisparity:(id)a3 inScreenCaptureRect:(CGRect)a4 inDisparity:(id)a5 outDisparity:(id)a6 focalLenIn35mmFilm:(float)a7 fNumber:(float)a8;
- (void)updateFocusObject:(id)a3 faceRectCount:(int)a4 disparityFocusOffsetSDOF:(PTDisparityFocusOffset)a5 disparityFocusOffsetReactions:(PTDisparityFocusOffset)a6 disparityFocusOffsetStudioLight:(PTDisparityFocusOffset)a7 exponentialMovingAverageSDOF:(float)a8 exponentialMovingAverageStudioLight:(float)a9 faceRectsState:(int *)a10 isFirstFrame:(BOOL)a11 emitNewReaction:(BOOL)a12 focusOnAll:(BOOL)a13 lastFocus:(id)a14 inFaceDisparityArray:(id)a15 outDisparityModifiers:(id)a16 outDisparityFocus:(id)a17 outStudioLightEffectModifier:(id)a18 outUseDisparityBufferForReactions:(id)a19;
@end

@implementation PTEffectUtil

- (PTEffectUtil)initWithMetalContext:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = PTEffectUtil;
  v6 = [(PTEffectUtil *)&v47 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [v5 computePipelineStateFor:@"updateFocusObject" withConstants:0];
  updateFocusObject = v7->_updateFocusObject;
  v7->_updateFocusObject = v8;

  if (!v7->_updateFocusObject)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectUtil *)v17 initWithMetalContext:v18, v19, v20, v21, v22, v23, v24];
    }

    goto LABEL_15;
  }

  v10 = [v5 computePipelineStateFor:@"effectSampleFaceRects" withConstants:0];
  effectSampleFaceRects = v7->_effectSampleFaceRects;
  v7->_effectSampleFaceRects = v10;

  if (!v7->_effectSampleFaceRects)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectUtil *)v17 initWithMetalContext:v25, v26, v27, v28, v29, v30, v31];
    }

    goto LABEL_15;
  }

  v12 = [v5 computePipelineStateFor:@"clear" withConstants:0];
  clear = v7->_clear;
  v7->_clear = v12;

  if (!v7->_clear)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectUtil *)v17 initWithMetalContext:v32, v33, v34, v35, v36, v37, v38];
    }

    goto LABEL_15;
  }

  v14 = [v5 computePipelineStateFor:@"updateDisparityWithScreenCaptureRect" withConstants:0];
  updateDisparityWithScreenCaptureRect = v7->_updateDisparityWithScreenCaptureRect;
  v7->_updateDisparityWithScreenCaptureRect = v14;

  if (!v7->_updateDisparityWithScreenCaptureRect)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectUtil *)v17 initWithMetalContext:v39, v40, v41, v42, v43, v44, v45];
    }

LABEL_15:

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v16 = v7;
LABEL_17:

  return v16;
}

- (void)updateFocusObject:(id)a3 faceRectCount:(int)a4 disparityFocusOffsetSDOF:(PTDisparityFocusOffset)a5 disparityFocusOffsetReactions:(PTDisparityFocusOffset)a6 disparityFocusOffsetStudioLight:(PTDisparityFocusOffset)a7 exponentialMovingAverageSDOF:(float)a8 exponentialMovingAverageStudioLight:(float)a9 faceRectsState:(int *)a10 isFirstFrame:(BOOL)a11 emitNewReaction:(BOOL)a12 focusOnAll:(BOOL)a13 lastFocus:(id)a14 inFaceDisparityArray:(id)a15 outDisparityModifiers:(id)a16 outDisparityFocus:(id)a17 outStudioLightEffectModifier:(id)a18 outUseDisparityBufferForReactions:(id)a19
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v35[0] = a5;
  v35[1] = a6;
  v35[2] = a7;
  v22 = 1.0;
  if (a11)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = a8;
  }

  v36 = v23;
  v37 = v23;
  if (!a11)
  {
    v22 = a9;
  }

  v38 = v22;
  v39 = 0x3F00000000000000;
  v40 = 0;
  LOBYTE(v41[0]) = a13;
  DWORD1(v41[0]) = 1010174817;
  BYTE8(v41[0]) = a11;
  *(v41 + 12) = 0x3F19999A3DCCCCCDLL;
  DWORD1(v41[1]) = 1053609165;
  *(&v41[1] + 1) = 0x3F19999A3F000000;
  LODWORD(v42) = 1058642330;
  BYTE4(v42) = a12;
  v24 = a19;
  v25 = a18;
  v26 = a17;
  v27 = a16;
  v28 = a15;
  v29 = a14;
  v30 = [a3 computeCommandEncoder];
  [v30 setComputePipelineState:self->_updateFocusObject];
  [v30 setBytes:v35 length:88 atIndex:0];
  [v30 setBuffer:v28 offset:0 atIndex:1];

  [v30 setBuffer:v29 offset:0 atIndex:2];
  [v30 setBuffer:v27 offset:0 atIndex:3];

  [v30 setBuffer:v26 offset:0 atIndex:4];
  [v30 setBytes:a10 length:16 atIndex:5];
  [v30 setBuffer:v25 offset:0 atIndex:6];

  [v30 setBuffer:v24 offset:0 atIndex:7];
  v33 = xmmword_2244A59F0;
  v34 = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [v30 dispatchThreads:&v33 threadsPerThreadgroup:&v31];
  [v30 endEncoding];
}

- (void)sampleFaceRects:(id)a3 maxFaceRects:(int)a4 faceRects:faceRectsState:focusDisparityMax:inDisparity:outFaceDistanceArray:
{
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v23 = v8;
  v15 = a4;
  v16 = v7;
  v17 = v9;
  v18 = [a3 computeCommandEncoder];
  [v18 setComputePipelineState:self->_effectSampleFaceRects];
  [v18 setTexture:v17 atIndex:0];

  [v18 setBytes:v11 length:16 * a4 atIndex:0];
  [v18 setBytes:v10 length:4 * a4 atIndex:1];
  [v18 setBuffer:v16 offset:0 atIndex:2];

  [v18 setBytes:&v23 length:4 atIndex:3];
  v21 = v15;
  v22 = vdupq_n_s64(1uLL);
  v19 = xmmword_2244A5A38;
  v20 = 1;
  [v18 dispatchThreads:&v21 threadsPerThreadgroup:&v19];
  [v18 endEncoding];
}

- (void)clearTexture:(id)a3 outTex:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  [v7 setComputePipelineState:self->_clear];
  [v7 setTexture:v6 atIndex:0];
  v8 = [v6 width];
  v9 = [v6 height];

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [v7 dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [v7 endEncoding];
}

- (void)updateDisparity:(id)a3 inScreenCaptureRect:(CGRect)a4 inDisparity:(id)a5 outDisparity:(id)a6 focalLenIn35mmFilm:(float)a7 fNumber:(float)a8
{
  width = a4.size.width;
  height = a4.size.height;
  x = a4.origin.x;
  y = a4.origin.y;
  v11 = a7 / 1000.0;
  v12 = (a7 / 1000.0) / (a8 + a8);
  v13 = a6;
  v14 = a5;
  v15 = a3;
  +[PTRaytracingUtils frameWidth];
  v31 = (v11 / v16) * v12;
  v17 = v31 * [v13 height];
  v18 = [v13 width];
  v19.f32[0] = v31;
  v19.f32[1] = v17 / v18;
  v20 = vcvtq_f64_f32(v19);
  v21 = v19;
  v22.f64[0] = x;
  v22.f64[1] = y;
  v23.f64[0] = width;
  v23.f64[1] = height;
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v22, v20)), vsubq_f64(vaddq_f64(v22, v23), vcvtq_f64_f32(vadd_f32(v21, v21))));
  v24 = [v15 computeCommandEncoder];

  [v24 setComputePipelineState:self->_updateDisparityWithScreenCaptureRect];
  [v24 setTexture:v14 atIndex:0];

  [v24 setTexture:v13 atIndex:1];
  [v24 setBytes:&v35 length:16 atIndex:0];
  v25 = [v13 width];
  v26 = [v13 height];

  v34[0] = v25;
  v34[1] = v26;
  v34[2] = 1;
  v32 = xmmword_2244A5230;
  v33 = 1;
  [v24 dispatchThreads:v34 threadsPerThreadgroup:&v32];
  [v24 endEncoding];
}

+ (CGRect)rotateNormalizedRect:(CGRect)a3 transform:(CGAffineTransform *)a4 inverse:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = *&a4->c;
  *&v19.a = *&a4->a;
  *&v19.c = v10;
  *&v19.tx = *&a4->tx;
  v11 = [PTUtil getRotationDegreesFromAffineTransform:&v19];
  if (v5)
  {
    if (v11 != 90)
    {
      if (v11 != 180)
      {
        if (v11 != 270)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_9:
      v12 = xmmword_2244A5A10;
      __asm { FMOV            V0.2D, #1.0 }

LABEL_13:
      v18 = 0.0;
      goto LABEL_14;
    }
  }

  else
  {
    if (v11 == 90)
    {
LABEL_11:
      _Q0 = xmmword_2244A5A00;
      v12 = xmmword_2244A5420;
      v18 = -1.0;
      goto LABEL_14;
    }

    if (v11 != 270)
    {
      if (v11 != 180)
      {
LABEL_12:
        v12 = xmmword_2244A5A00;
        _Q0 = 0uLL;
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  _Q0 = xmmword_2244A5420;
  v12 = xmmword_2244A5A20;
  v18 = 1.0;
LABEL_14:
  *&v19.a = v12;
  v19.c = v18;
  *&v19.d = v12;
  *&v19.tx = _Q0;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  return CGRectApplyAffineTransform(v20, &v19);
}

+ (id)faceRectsForVision:(id)a1 numberOfFaceRects:(SEL)a2 transform:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = objc_opt_new();
  if (v6 >= 1)
  {
    v10 = v6;
    do
    {
      v11 = *v7++;
      v12 = v5[1];
      v15[0] = *v5;
      v15[1] = v12;
      v15[2] = v5[2];
      [a1 rotateNormalizedRect:v15 transform:0 inverse:{*&v11, 1.0 - *(&v11 + 1) - *(&v11 + 3), *(&v11 + 2)}];
      v13 = [MEMORY[0x277CE2CD0] observationWithBoundingBox:?];
      [v9 addObject:v13];

      --v10;
    }

    while (v10);
  }

  return v9;
}

+ (unint64_t)closestAspectRatio:(CGSize)a3
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  v5 = a3.width;
  v6 = width / v5;
  *&v6 = v6;
  v9 = vabs_f32(vadd_f32(vdup_lane_s32(*&v6, 0), 0xBFAAAAABBFE38E39));
  v10 = fabsf(*&v6 + -1.0);
  for (i = 1; i != 3; ++i)
  {
    if (v9.f32[i] < v9.f32[v3])
    {
      v3 = i;
    }
  }

  return qword_2244A5A50[v3];
}

+ (unint64_t)aspectRatio:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  v4 = a3.width;
  v5 = width / v4;
  if (fabsf(v5 + -1.7778) < 0.05)
  {
    return 1;
  }

  if (fabsf(v5 + -1.3333) < 0.05)
  {
    return 2;
  }

  if (fabs(v5 + -1.0) >= 0.0500000007)
  {
    return 0;
  }

  return 3;
}

+ (double)screenSpaceToCameraSpace:(float32x4_t)a3 zValue:(float32x4_t)a4 inverseProjection:(float32x4_t)a5
{
  v6 = *&a1 * 2.0 + -1.0;
  v7 = *(&a1 + 1) * 2.0 + -1.0;
  v8 = vaddq_f32(a6, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a3, v6), a4, v7), a5, a2));
  *&result = vdivq_f32(v8, vdupq_laneq_s32(v8, 3)).u64[0];
  return result;
}

+ (double)inverseRectTransform:(float32x4_t)a1
{
  v1.i64[0] = vnegq_f32(a1).u64[0];
  __asm { FMOV            V2.4S, #1.0 }

  v1.i64[1] = *(&_Q2 + 1);
  *&result = vdivq_f32(v1, vdupq_laneq_s64(a1, 1)).u64[0];
  return result;
}

+ (__n64)computeRectInPixelCoordinates:(int8x8_t)a3 pixelBufferSize:(int8x8_t)a4 alignment:(uint16x4_t)a5
{
  if (*&a3 == 0.0 || *&a4 == 0.0)
  {
    result.n64_u32[0] = 0;
    result.n64_u32[1] = a8;
  }

  else
  {
    v9 = 0;
    a5.i32[0] = a9;
    v10 = vmovl_u16(a5).u64[0];
    v11.i64[0] = a8;
    v11.i64[1] = vshr_n_u32(vdup_n_s32(a8), 0x10uLL).u32[1];
    v12 = vcvtq_f64_u64(v11);
    v13.f64[0] = a1;
    v13.f64[1] = a2;
    v14 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v13, v12))));
    v15 = (a1 + *&a3) * v12.f64[0];
    v16 = vmuld_lane_f64(a2 + *&a4, v12, 1);
    v17 = __PAIR64__(vcvtps_s32_f32(v16), vcvtps_s32_f32(v15));
    v18 = 1;
    do
    {
      a3.i32[0] = 0;
      v19 = (&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v9 & 1)));
      v20 = &v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v9 & 1));
      v27 = v14;
      v21 = *v20;
      v22 = *v20;
      v25 = v10;
      v23 = *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v9 & 1)));
      *v20 = v21 + v22 / v23 * v23 - v21;
      v14 = v27;
      v26 = v17;
      a4.i32[0] = *v19 % v23;
      a3 = vdup_lane_s32(vceq_s32(vand_s8(a4, 0xFFFF0000FFFFLL), vand_s8(a3, 0xFFFF0000FFFFLL)), 0);
      LOBYTE(v20) = v18;
      *v19 = *v19 + v23 - a4.i32[0];
      a4.i32[1] = v26.i32[1];
      v17 = vbsl_s8(a3, v17, v26);
      v9 = 1;
      v18 = 0;
    }

    while ((v20 & 1) != 0);
    result.n64_u64[0] = vuzp1_s16(v14, vsub_s32(v17, v14));
  }

  return result;
}

+ (double)transformRect:(float32x4_t)a1 intoCropCoordinates:(float32x4_t)a2
{
  v2.i64[0] = vsubq_f32(a1, a2).u64[0];
  v2.i64[1] = a1.i64[1];
  *&result = vdivq_f32(v2, vdupq_laneq_s64(a2, 1)).u64[0];
  return result;
}

+ (BOOL)currentProcessIsCameracaptured
{
  if (currentProcessIsCameracaptured_once != -1)
  {
    +[PTEffectUtil currentProcessIsCameracaptured];
  }

  return currentProcessIsCameracaptured_answer != 0;
}

void __46__PTEffectUtil_currentProcessIsCameracaptured__block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopySigningIdentifier(v0, 0);
    currentProcessIsCameracaptured_answer = [(__CFString *)v2 isEqualToString:@"com.apple.cameracaptured"];
    CFRelease(v1);
  }
}

@end