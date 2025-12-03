@interface PTEffectUtil
+ (BOOL)currentProcessIsCameracaptured;
+ (CGRect)rotateNormalizedRect:(CGRect)rect transform:(CGAffineTransform *)transform inverse:(BOOL)inverse;
+ (__n64)computeRectInPixelCoordinates:(int8x8_t)coordinates pixelBufferSize:(int8x8_t)size alignment:(uint16x4_t)alignment;
+ (double)inverseRectTransform:(float32x4_t)transform;
+ (double)screenSpaceToCameraSpace:(float32x4_t)space zValue:(float32x4_t)value inverseProjection:(float32x4_t)projection;
+ (double)transformRect:(float32x4_t)rect intoCropCoordinates:(float32x4_t)coordinates;
+ (id)faceRectsForVision:(id)vision numberOfFaceRects:(SEL)rects transform:;
+ (unint64_t)aspectRatio:(CGSize)ratio;
+ (unint64_t)closestAspectRatio:(CGSize)ratio;
- (PTEffectUtil)initWithMetalContext:(id)context;
- (void)clearTexture:(id)texture outTex:(id)tex;
- (void)sampleFaceRects:(id)rects maxFaceRects:(int)faceRects faceRects:faceRectsState:focusDisparityMax:inDisparity:outFaceDistanceArray:;
- (void)updateDisparity:(id)disparity inScreenCaptureRect:(CGRect)rect inDisparity:(id)inDisparity outDisparity:(id)outDisparity focalLenIn35mmFilm:(float)film fNumber:(float)number;
- (void)updateFocusObject:(id)object faceRectCount:(int)count disparityFocusOffsetSDOF:(PTDisparityFocusOffset)f disparityFocusOffsetReactions:(PTDisparityFocusOffset)reactions disparityFocusOffsetStudioLight:(PTDisparityFocusOffset)light exponentialMovingAverageSDOF:(float)oF exponentialMovingAverageStudioLight:(float)studioLight faceRectsState:(int *)self0 isFirstFrame:(BOOL)self1 emitNewReaction:(BOOL)self2 focusOnAll:(BOOL)self3 lastFocus:(id)self4 inFaceDisparityArray:(id)self5 outDisparityModifiers:(id)self6 outDisparityFocus:(id)self7 outStudioLightEffectModifier:(id)self8 outUseDisparityBufferForReactions:(id)self9;
@end

@implementation PTEffectUtil

- (PTEffectUtil)initWithMetalContext:(id)context
{
  contextCopy = context;
  v47.receiver = self;
  v47.super_class = PTEffectUtil;
  v6 = [(PTEffectUtil *)&v47 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"updateFocusObject" withConstants:0];
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

  v10 = [contextCopy computePipelineStateFor:@"effectSampleFaceRects" withConstants:0];
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

  v12 = [contextCopy computePipelineStateFor:@"clear" withConstants:0];
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

  v14 = [contextCopy computePipelineStateFor:@"updateDisparityWithScreenCaptureRect" withConstants:0];
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

- (void)updateFocusObject:(id)object faceRectCount:(int)count disparityFocusOffsetSDOF:(PTDisparityFocusOffset)f disparityFocusOffsetReactions:(PTDisparityFocusOffset)reactions disparityFocusOffsetStudioLight:(PTDisparityFocusOffset)light exponentialMovingAverageSDOF:(float)oF exponentialMovingAverageStudioLight:(float)studioLight faceRectsState:(int *)self0 isFirstFrame:(BOOL)self1 emitNewReaction:(BOOL)self2 focusOnAll:(BOOL)self3 lastFocus:(id)self4 inFaceDisparityArray:(id)self5 outDisparityModifiers:(id)self6 outDisparityFocus:(id)self7 outStudioLightEffectModifier:(id)self8 outUseDisparityBufferForReactions:(id)self9
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v35[0] = f;
  v35[1] = reactions;
  v35[2] = light;
  studioLightCopy = 1.0;
  if (frame)
  {
    oFCopy = 1.0;
  }

  else
  {
    oFCopy = oF;
  }

  v36 = oFCopy;
  v37 = oFCopy;
  if (!frame)
  {
    studioLightCopy = studioLight;
  }

  v38 = studioLightCopy;
  v39 = 0x3F00000000000000;
  v40 = 0;
  LOBYTE(v41[0]) = all;
  DWORD1(v41[0]) = 1010174817;
  BYTE8(v41[0]) = frame;
  *(v41 + 12) = 0x3F19999A3DCCCCCDLL;
  DWORD1(v41[1]) = 1053609165;
  *(&v41[1] + 1) = 0x3F19999A3F000000;
  LODWORD(v42) = 1058642330;
  BYTE4(v42) = reaction;
  forReactionsCopy = forReactions;
  modifierCopy = modifier;
  disparityFocusCopy = disparityFocus;
  modifiersCopy = modifiers;
  arrayCopy = array;
  focusCopy = focus;
  computeCommandEncoder = [object computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_updateFocusObject];
  [computeCommandEncoder setBytes:v35 length:88 atIndex:0];
  [computeCommandEncoder setBuffer:arrayCopy offset:0 atIndex:1];

  [computeCommandEncoder setBuffer:focusCopy offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:modifiersCopy offset:0 atIndex:3];

  [computeCommandEncoder setBuffer:disparityFocusCopy offset:0 atIndex:4];
  [computeCommandEncoder setBytes:state length:16 atIndex:5];
  [computeCommandEncoder setBuffer:modifierCopy offset:0 atIndex:6];

  [computeCommandEncoder setBuffer:forReactionsCopy offset:0 atIndex:7];
  v33 = xmmword_2244A59F0;
  v34 = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [computeCommandEncoder dispatchThreads:&v33 threadsPerThreadgroup:&v31];
  [computeCommandEncoder endEncoding];
}

- (void)sampleFaceRects:(id)rects maxFaceRects:(int)faceRects faceRects:faceRectsState:focusDisparityMax:inDisparity:outFaceDistanceArray:
{
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v23 = v8;
  faceRectsCopy = faceRects;
  v16 = v7;
  v17 = v9;
  computeCommandEncoder = [rects computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_effectSampleFaceRects];
  [computeCommandEncoder setTexture:v17 atIndex:0];

  [computeCommandEncoder setBytes:v11 length:16 * faceRects atIndex:0];
  [computeCommandEncoder setBytes:v10 length:4 * faceRects atIndex:1];
  [computeCommandEncoder setBuffer:v16 offset:0 atIndex:2];

  [computeCommandEncoder setBytes:&v23 length:4 atIndex:3];
  v21 = faceRectsCopy;
  v22 = vdupq_n_s64(1uLL);
  v19 = xmmword_2244A5A38;
  v20 = 1;
  [computeCommandEncoder dispatchThreads:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
}

- (void)clearTexture:(id)texture outTex:(id)tex
{
  texCopy = tex;
  computeCommandEncoder = [texture computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_clear];
  [computeCommandEncoder setTexture:texCopy atIndex:0];
  width = [texCopy width];
  height = [texCopy height];

  v12[0] = width;
  v12[1] = height;
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [computeCommandEncoder dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [computeCommandEncoder endEncoding];
}

- (void)updateDisparity:(id)disparity inScreenCaptureRect:(CGRect)rect inDisparity:(id)inDisparity outDisparity:(id)outDisparity focalLenIn35mmFilm:(float)film fNumber:(float)number
{
  width = rect.size.width;
  height = rect.size.height;
  x = rect.origin.x;
  y = rect.origin.y;
  v11 = film / 1000.0;
  v12 = (film / 1000.0) / (number + number);
  outDisparityCopy = outDisparity;
  inDisparityCopy = inDisparity;
  disparityCopy = disparity;
  +[PTRaytracingUtils frameWidth];
  v31 = (v11 / v16) * v12;
  v17 = v31 * [outDisparityCopy height];
  width = [outDisparityCopy width];
  v19.f32[0] = v31;
  v19.f32[1] = v17 / width;
  v20 = vcvtq_f64_f32(v19);
  v21 = v19;
  v22.f64[0] = x;
  v22.f64[1] = y;
  v23.f64[0] = width;
  v23.f64[1] = height;
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v22, v20)), vsubq_f64(vaddq_f64(v22, v23), vcvtq_f64_f32(vadd_f32(v21, v21))));
  computeCommandEncoder = [disparityCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_updateDisparityWithScreenCaptureRect];
  [computeCommandEncoder setTexture:inDisparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&v35 length:16 atIndex:0];
  width2 = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v34[0] = width2;
  v34[1] = height;
  v34[2] = 1;
  v32 = xmmword_2244A5230;
  v33 = 1;
  [computeCommandEncoder dispatchThreads:v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder endEncoding];
}

+ (CGRect)rotateNormalizedRect:(CGRect)rect transform:(CGAffineTransform *)transform inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = *&transform->c;
  *&v19.a = *&transform->a;
  *&v19.c = v10;
  *&v19.tx = *&transform->tx;
  v11 = [PTUtil getRotationDegreesFromAffineTransform:&v19];
  if (inverseCopy)
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

+ (id)faceRectsForVision:(id)vision numberOfFaceRects:(SEL)rects transform:
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
      [vision rotateNormalizedRect:v15 transform:0 inverse:{*&v11, 1.0 - *(&v11 + 1) - *(&v11 + 3), *(&v11 + 2)}];
      v13 = [MEMORY[0x277CE2CD0] observationWithBoundingBox:?];
      [v9 addObject:v13];

      --v10;
    }

    while (v10);
  }

  return v9;
}

+ (unint64_t)closestAspectRatio:(CGSize)ratio
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  if (ratio.width >= ratio.height)
  {
    width = ratio.width;
  }

  else
  {
    width = ratio.height;
  }

  if (ratio.width >= ratio.height)
  {
    ratio.width = ratio.height;
  }

  v5 = ratio.width;
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

+ (unint64_t)aspectRatio:(CGSize)ratio
{
  if (ratio.width >= ratio.height)
  {
    width = ratio.width;
  }

  else
  {
    width = ratio.height;
  }

  if (ratio.width >= ratio.height)
  {
    ratio.width = ratio.height;
  }

  v4 = ratio.width;
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

+ (double)screenSpaceToCameraSpace:(float32x4_t)space zValue:(float32x4_t)value inverseProjection:(float32x4_t)projection
{
  v6 = *&self * 2.0 + -1.0;
  v7 = *(&self + 1) * 2.0 + -1.0;
  v8 = vaddq_f32(a6, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(space, v6), value, v7), projection, a2));
  *&result = vdivq_f32(v8, vdupq_laneq_s32(v8, 3)).u64[0];
  return result;
}

+ (double)inverseRectTransform:(float32x4_t)transform
{
  v1.i64[0] = vnegq_f32(transform).u64[0];
  __asm { FMOV            V2.4S, #1.0 }

  v1.i64[1] = *(&_Q2 + 1);
  *&result = vdivq_f32(v1, vdupq_laneq_s64(transform, 1)).u64[0];
  return result;
}

+ (__n64)computeRectInPixelCoordinates:(int8x8_t)coordinates pixelBufferSize:(int8x8_t)size alignment:(uint16x4_t)alignment
{
  if (*&coordinates == 0.0 || *&size == 0.0)
  {
    result.n64_u32[0] = 0;
    result.n64_u32[1] = a8;
  }

  else
  {
    v9 = 0;
    alignment.i32[0] = a9;
    v10 = vmovl_u16(alignment).u64[0];
    v11.i64[0] = a8;
    v11.i64[1] = vshr_n_u32(vdup_n_s32(a8), 0x10uLL).u32[1];
    v12 = vcvtq_f64_u64(v11);
    v13.f64[0] = self;
    v13.f64[1] = a2;
    v14 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v13, v12))));
    v15 = (self + *&coordinates) * v12.f64[0];
    v16 = vmuld_lane_f64(a2 + *&size, v12, 1);
    v17 = __PAIR64__(vcvtps_s32_f32(v16), vcvtps_s32_f32(v15));
    v18 = 1;
    do
    {
      coordinates.i32[0] = 0;
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
      size.i32[0] = *v19 % v23;
      coordinates = vdup_lane_s32(vceq_s32(vand_s8(size, 0xFFFF0000FFFFLL), vand_s8(coordinates, 0xFFFF0000FFFFLL)), 0);
      LOBYTE(v20) = v18;
      *v19 = *v19 + v23 - size.i32[0];
      size.i32[1] = v26.i32[1];
      v17 = vbsl_s8(coordinates, v17, v26);
      v9 = 1;
      v18 = 0;
    }

    while ((v20 & 1) != 0);
    result.n64_u64[0] = vuzp1_s16(v14, vsub_s32(v17, v14));
  }

  return result;
}

+ (double)transformRect:(float32x4_t)rect intoCropCoordinates:(float32x4_t)coordinates
{
  v2.i64[0] = vsubq_f32(rect, coordinates).u64[0];
  v2.i64[1] = rect.i64[1];
  *&result = vdivq_f32(v2, vdupq_laneq_s64(coordinates, 1)).u64[0];
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