@interface TSDMetalEdgeDistanceFieldTraceEffect
- (BOOL)p_generateTraceTextureInfoWithStrokeWidth:(double)width clockwise:(BOOL)clockwise context:(id)context randomGenerator:(id)generator;
- (CGPoint)p_normalizedPointInTexturedRectangleFrameFromPoint:(CGPoint)point inBufferSize:(CGSize)size;
- (CGPoint)randomStrokePoint;
- (NSArray)strokeLineSegment;
- (TSDMetalEdgeDistanceFieldTraceEffect)initWithTR:(id)r strokeWidth:(double)width downsampleScale:(double)scale clockwise:(BOOL)clockwise context:(id)context randomGenerator:(id)generator capabilities:(id)capabilities;
- (id)p_houghTransformWithZeroes:(__CFArray *)zeroes bufferSize:(CGSize)size;
- (void)dealloc;
- (void)drawWithContext:(id)context andBuffer:(id)buffer atPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity color:(id)color strokeFadeHardnessLeading:(double)leading strokeFadeHardnessTrailing:(double)self0;
- (void)p_addNearbyPixelsToArray:(__CFArray *)array pixel:(CGPoint)pixel edgeDataBuffer:(float *)buffer dataBuffer:(char *)dataBuffer tempDataBuffer:(char *)tempDataBuffer localMaximumLookupBuffer:(BOOL *)lookupBuffer bufferSize:(CGSize)size;
- (void)p_fillFloatBuffer:(float *)buffer withRGBAData:(char *)data bufferSize:(CGSize)size;
- (void)teardown;
@end

@implementation TSDMetalEdgeDistanceFieldTraceEffect

- (TSDMetalEdgeDistanceFieldTraceEffect)initWithTR:(id)r strokeWidth:(double)width downsampleScale:(double)scale clockwise:(BOOL)clockwise context:(id)context randomGenerator:(id)generator capabilities:(id)capabilities
{
  clockwiseCopy = clockwise;
  rCopy = r;
  contextCopy = context;
  generatorCopy = generator;
  capabilitiesCopy = capabilities;
  v88.receiver = self;
  v88.super_class = TSDMetalEdgeDistanceFieldTraceEffect;
  v20 = [(TSDMetalEdgeDistanceFieldTraceEffect *)&v88 init];
  if (v20)
  {
    if (!generatorCopy)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldTraceEffect initWithTR:strokeWidth:downsampleScale:clockwise:context:randomGenerator:capabilities:]"];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
      [currentHandler handleFailureInFunction:v22 file:v23 lineNumber:1453 description:{@"invalid nil value for '%s'", "randomGenerator"}];
    }

    [rCopy frame];
    v26 = v24;
    v27 = v25;
    if (v24 > 65536.0 || v25 > 65536.0)
    {
      v31 = TSDScaleSizeWithinSize(v24, v25, 65536.0, 65536.0);
      v30 = TSDCeilSize(v31);
      v28 = v30 / v26;
      if (v30 / v26 >= v29 / v27)
      {
        v28 = v29 / v27;
      }
    }

    else
    {
      v28 = 1.0;
      v29 = v25;
      v30 = v26;
    }

    if (v28 <= scale)
    {
      scale = v28;
    }

    if (v30 <= v29)
    {
      v30 = v29;
    }

    v32 = round(v30 * -0.05);
    if (width >= 1.0)
    {
      widthCopy = width;
    }

    else
    {
      widthCopy = 1.0;
    }

    v34 = vcvtpd_s64_f64(widthCopy);
    metalTexture = [rCopy metalTexture];
    scale = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:metalTexture textureSize:v34 maxDistance:0 edgeInsets:1 downsampleScale:contextCopy floatTexture:capabilitiesCopy makeCPUReadable:v26 metalContext:v27 capabilities:v32, v32, v32, v32, scale];
    v37 = *(v20 + 43);
    *(v20 + 43) = scale;

    v38 = TSDMultiplySizeScalar(v26, v27, scale);
    v40 = v39;
    v41 = -v32;
    v42 = -v32 / [*(v20 + 43) width];
    v43 = v41 / [*(v20 + 43) height];
    v44 = v38 / [*(v20 + 43) width];
    v45 = v40 / [*(v20 + 43) height];
    v46 = MEMORY[0x277CBF2C0];
    v47 = *(MEMORY[0x277CBF2C0] + 16);
    *(v20 + 24) = *MEMORY[0x277CBF2C0];
    *(v20 + 40) = v47;
    *(v20 + 56) = *(v46 + 32);
    v48 = *(v20 + 40);
    *&v86.a = *(v20 + 24);
    *&v86.c = v48;
    *&v86.tx = *(v20 + 56);
    CGAffineTransformTranslate(&v87, &v86, v42, v43);
    v50 = *&v87.c;
    v49 = *&v87.tx;
    *(v20 + 24) = *&v87.a;
    *(v20 + 40) = v50;
    *(v20 + 56) = v49;
    v51 = *(v20 + 40);
    *&v86.a = *(v20 + 24);
    *&v86.c = v51;
    *&v86.tx = *(v20 + 56);
    CGAffineTransformScale(&v87, &v86, v44, v45);
    v53 = *&v87.c;
    v52 = *&v87.tx;
    *(v20 + 24) = *&v87.a;
    *(v20 + 40) = v53;
    *(v20 + 56) = v52;
    v54 = [v20 p_generateTraceTextureInfoWithStrokeWidth:clockwiseCopy clockwise:contextCopy context:generatorCopy randomGenerator:width];
    v20[336] = v54;
    if (v54)
    {
      v55 = objc_alloc_init(MEMORY[0x277CD6F68]);
      [v55 setPixelFormat:objc_msgSend(contextCopy, "pixelFormat")];
      [v55 setBlendingEnabled:1];
      [v55 setSourceRGBBlendFactor:1];
      [v55 setSourceAlphaBlendFactor:1];
      [v55 setDestinationRGBBlendFactor:5];
      [v55 setDestinationAlphaBlendFactor:5];
      v56 = [TSDMetalShader alloc];
      device = [contextCopy device];
      v58 = [(TSDMetalShader *)v56 initCustomShaderWithVertexShader:@"TSDMetalEdgeDistanceField_Trace_VertexShader" fragmentShader:@"TSDMetalEdgeDistanceField_Trace_FragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v55];
      v59 = *(v20 + 45);
      *(v20 + 45) = v58;

      v60 = vcvt_f32_f64(*(v20 + 24));
      v61 = vcvt_f32_f64(*(v20 + 40));
      v62 = vcvt_f32_f64(*(v20 + 56));
      *(v20 + 54) = 0;
      *(v20 + 26) = v60;
      *(v20 + 58) = 0;
      *(v20 + 28) = v61;
      *(v20 + 62) = 1065353216;
      *(v20 + 30) = v62;
      v60.f32[0] = width;
      *(v20 + 79) = v60.i32[0];
      [*(v20 + 43) size];
      v84 = v63;
      [*(v20 + 43) size];
      v82 = v64;
      [*(v20 + 43) size];
      v80 = 1.0 / v65;
      [*(v20 + 43) size];
      v66.f64[0] = v80;
      v66.f64[1] = 1.0 / v67;
      v68.f64[0] = v84;
      v68.f64[1] = v82;
      *(v20 + 17) = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v66);
      [contextCopy layerSize];
      v85 = v69;
      [contextCopy layerSize];
      v83 = v70;
      [contextCopy layerSize];
      v81 = 1.0 / v71;
      [contextCopy layerSize];
      v72.f64[0] = v81;
      v72.f64[1] = 1.0 / v73;
      v74.f64[0] = v85;
      v74.f64[1] = v83;
      *(v20 + 18) = vcvt_hight_f32_f64(vcvt_f32_f64(v74), v72);
      *(v20 + 82) = *(v20 + 2);
      *v74.f64 = 1.0 / scale;
      *(v20 + 78) = LODWORD(v74.f64[0]);
      [rCopy frameOnCanvas];
      *(v20 + 13) = v75;
      *(v20 + 14) = v76;
      *(v20 + 15) = v77;
      *(v20 + 16) = v78;
    }

    else
    {
      [v20 teardown];
    }
  }

  return v20;
}

- (void)dealloc
{
  if (!self->_didTeardown)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldTraceEffect dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:1525 description:@"Didn't teardown!"];
  }

  zeroesArray = self->_zeroesArray;
  if (zeroesArray)
  {
    CFRelease(zeroesArray);
    self->_zeroesArray = 0;
  }

  v7.receiver = self;
  v7.super_class = TSDMetalEdgeDistanceFieldTraceEffect;
  [(TSDMetalEdgeDistanceFieldTraceEffect *)&v7 dealloc];
}

- (void)teardown
{
  if (!self->_didTeardown)
  {
    edgeDistanceFieldTextureInfo = [(TSDMetalEdgeDistanceFieldTraceEffect *)self edgeDistanceFieldTextureInfo];
    [edgeDistanceFieldTextureInfo teardown];

    traceTextureInfo = [(TSDMetalEdgeDistanceFieldTraceEffect *)self traceTextureInfo];
    [traceTextureInfo teardown];

    edgeDistanceFieldTextureInfo = self->_edgeDistanceFieldTextureInfo;
    self->_edgeDistanceFieldTextureInfo = 0;

    traceTextureInfo = self->_traceTextureInfo;
    self->_traceTextureInfo = 0;

    shader = self->_shader;
    self->_shader = 0;

    self->_didTeardown = 1;
  }
}

- (void)drawWithContext:(id)context andBuffer:(id)buffer atPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity color:(id)color strokeFadeHardnessLeading:(double)leading strokeFadeHardnessTrailing:(double)self0
{
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m21), *&matrix->m23);
  v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m31), *&matrix->m33);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m41), *&matrix->m43);
  *self->_anon_90 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m11), *&matrix->m13);
  *&self->_anon_90[16] = v11;
  anon_90 = self->_anon_90;
  *&self->_anon_90[32] = v12;
  *&self->_anon_90[48] = v13;
  opacityCopy = opacity;
  var1 = color.var1;
  percentCopy = percent;
  v18 = *&color.var2;
  *&self->_anon_100[48] = opacityCopy;
  *&self->_anon_100[52] = percentCopy;
  *self->_anon_100 = color;
  leadingCopy = leading;
  trailingCopy = trailing;
  *&self->_anon_100[64] = leadingCopy;
  *&self->_anon_100[68] = trailingCopy;
  bufferCopy = buffer;
  contextCopy = context;
  renderEncoder = [contextCopy renderEncoder];
  name = [anon_90[25] name];
  [renderEncoder setFragmentTexture:name atIndex:0];

  renderEncoder2 = [contextCopy renderEncoder];
  name2 = [anon_90[26] name];
  [renderEncoder2 setFragmentTexture:name2 atIndex:1];

  v27 = anon_90[27];
  renderEncoder3 = [contextCopy renderEncoder];
  [v27 setPipelineStateWithEncoder:renderEncoder3 vertexBytes:anon_90 fragmentBytes:anon_90 + 14];

  renderEncoder4 = [contextCopy renderEncoder];

  [bufferCopy drawWithEncoder:renderEncoder4 atIndex:{objc_msgSend(anon_90[27], "bufferIndex")}];
}

- (NSArray)strokeLineSegment
{
  if (self->_zeroesArray)
  {
    v3 = [(TSDMetalEdgeDistanceFieldTraceEffect *)self p_houghTransformWithZeroes:self->_bufferSize.width bufferSize:self->_bufferSize.height];
    strokeLineSegment = self->_strokeLineSegment;
    self->_strokeLineSegment = v3;
    v5 = v3;

    CFRelease(self->_zeroesArray);
    self->_zeroesArray = 0;
  }

  v6 = self->_strokeLineSegment;

  return v6;
}

- (CGPoint)p_normalizedPointInTexturedRectangleFrameFromPoint:(CGPoint)point inBufferSize:(CGSize)size
{
  v8 = point.x / size.width;
  v4 = *&self->_textureEdgeInsetsAdjustmentMatrix.c;
  *&v9.a = *&self->_textureEdgeInsetsAdjustmentMatrix.a;
  *&v9.c = v4;
  *&v9.tx = *&self->_textureEdgeInsetsAdjustmentMatrix.tx;
  v7 = point.y / size.height;
  CGAffineTransformInvert(&v10, &v9);
  v5 = vaddq_f64(*&v10.tx, vmlaq_n_f64(vmulq_n_f64(*&v10.c, v7), *&v10.a, v8));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (id)p_houghTransformWithZeroes:(__CFArray *)zeroes bufferSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v73[2] = *MEMORY[0x277D85DE8];
  if (p_houghTransformWithZeroes_bufferSize__onceToken != -1)
  {
    [TSDMetalEdgeDistanceFieldTraceEffect p_houghTransformWithZeroes:bufferSize:];
  }

  v7 = width;
  v8 = sqrt((height * height + v7 * v7));
  v9 = malloc_type_calloc(2 * v8, 0x168uLL, 0x1000040BDFB0063uLL);
  Count = CFArrayGetCount(zeroes);
  if (Count <= 0)
  {
    free(v9);
    goto LABEL_21;
  }

  v10 = 0;
  v11 = 0;
  selfCopy = self;
  v68 = v7 / -2;
  v12 = v8;
  v13 = -1;
  v14 = v8 / 2;
  v15 = height / -2;
  v16 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(zeroes, v11);
    v18 = 0;
    v19 = &unk_2804B8760;
    do
    {
      v20 = *v19 * (v15 + (ValueAtIndex / v7)) + (v68 + (ValueAtIndex % v7)) * *(v19 - 1);
      v21 = v20;
      if (v12 / -2 < v20 && v14 > v21 && v21 != 0)
      {
        v24 = &v9[720 * v14 + 720 * v21];
        v25 = *&v24[2 * v18] + 1;
        *&v24[2 * v18] = v25;
        if (v10 < v25)
        {
          v16 = v18;
          v13 = v20;
          v10 = v25;
        }
      }

      ++v18;
      v19 += 2;
    }

    while (v18 != 360);
    ++v11;
  }

  while (v11 != Count);
  if (v10 >= 0xFFFF)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldTraceEffect p_houghTransformWithZeroes:bufferSize:]"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v28 file:v29 lineNumber:1657 description:@"max_value > 2^16!"];

    free(v9);
    goto LABEL_23;
  }

  free(v9);
  if (v10 < 11)
  {
LABEL_21:
    v26 = 0;
    goto LABEL_47;
  }

LABEL_23:
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  for (i = 0; i != Count; ++i)
  {
    v32 = CFArrayGetValueAtIndex(zeroes, i);
    v33 = &unk_2804B8760;
    v34 = 360;
    while (v13 != (*v33 * (v15 + (v32 / v7)) + (v68 + (v32 % v7)) * *(v33 - 1)) || v16 + v34 != 360)
    {
      v33 += 2;
      if (!--v34)
      {
        goto LABEL_30;
      }
    }

    CFArrayAppendValue(Mutable, v32);
LABEL_30:
    ;
  }

  v35 = CFArrayGetValueAtIndex(Mutable, 0);
  v36 = (v35 % v7);
  v37 = (v35 / v7);
  v38 = cos(v16 * 3.14159265 / 180.0);
  v39 = CFArrayGetCount(Mutable);
  if (v39 < 2)
  {
    v55 = (v35 / v7);
    v54 = (v35 % v7);
  }

  else
  {
    v40 = v39;
    v70 = width;
    *&theArraya = height;
    v41 = sin(v16 * 3.14159265 / 180.0);
    v42 = fabs(v41);
    v43 = fabs(v38);
    v44 = -v41;
    v45 = 0.0;
    v46 = 1;
    v47 = v35;
    v48 = 0.0;
    do
    {
      v49 = CFArrayGetValueAtIndex(Mutable, v46);
      v50 = v49 / v7;
      if (v42 <= v43)
      {
        v51 = v37;
      }

      else
      {
        v50 = v49 % v7;
        v51 = v36;
      }

      if (v42 > v43)
      {
        v52 = v44;
      }

      else
      {
        v52 = v38;
      }

      v53 = (v50 - v51) / v52;
      if (v53 < v48)
      {
        v48 = v53;
        v47 = v49;
      }

      if (v53 > v45)
      {
        v45 = v53;
        v35 = v49;
      }

      ++v46;
    }

    while (v40 != v46);
    v54 = (v47 % v7);
    v55 = (v47 / v7);
    v36 = (v35 % v7);
    v37 = (v35 / v7);
    width = v70;
    height = *&theArraya;
  }

  [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_normalizedPointInTexturedRectangleFrameFromPoint:v54 inBufferSize:v55, width, height];
  v57 = v56;
  v59 = v58;
  [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_normalizedPointInTexturedRectangleFrameFromPoint:v36 inBufferSize:v37, width, height];
  v61 = v60;
  v63 = v62;
  v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v57, v59}];
  v73[0] = v64;
  v65 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v63}];
  v73[1] = v65;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];

  CFRelease(Mutable);
LABEL_47:

  return v26;
}

uint64x2_t __78__TSDMetalEdgeDistanceFieldTraceEffect_p_houghTransformWithZeroes_bufferSize___block_invoke()
{
  result = xmmword_26CA639B0;
  v1 = &p_houghTransformWithZeroes_bufferSize__s_CosSinArray;
  v2 = 360;
  v6 = vdupq_n_s64(0x4066800000000000uLL);
  v7 = vdupq_n_s64(0x400921FB54442D18uLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    v9 = result;
    v8 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(result), v7), v6);
    v3 = __sincos_stret(v8.f64[1]);
    v4 = __sincos_stret(v8.f64[0]);
    v10.val[1].f64[0] = v4.__sinval;
    v10.val[0].f64[0] = v4.__cosval;
    v10.val[0].f64[1] = v3.__cosval;
    v10.val[1].f64[1] = v3.__sinval;
    vst2q_f64(v1, v10);
    v1 += 4;
    result = vaddq_s64(v9, v5);
    v2 -= 2;
  }

  while (v2);
  return result;
}

- (void)p_fillFloatBuffer:(float *)buffer withRGBAData:(char *)data bufferSize:(CGSize)size
{
  v5 = (size.width * size.height);
  if (v5 >= 1)
  {
    v6 = data + 3;
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      if (*(v6 - 3))
      {
        v10 = 0;
      }

      else
      {
        v10 = v7 == 0;
      }

      if (v10 && v8 == 0 && v9 == 0)
      {
        v14 = INFINITY;
      }

      else
      {
        v13 = (v7 / 255.0 + *(v6 - 3) + v8 / 65025.0 + v9 / 16581375.0) / 255.0 + -0.5;
        v14 = v13 + v13;
      }

      v6 += 4;
      *buffer++ = v14;
      --v5;
    }

    while (v5);
  }
}

- (BOOL)p_generateTraceTextureInfoWithStrokeWidth:(double)width clockwise:(BOOL)clockwise context:(id)context randomGenerator:(id)generator
{
  clockwiseCopy = clockwise;
  v167 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  generatorCopy = generator;
  if (!generatorCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldTraceEffect p_generateTraceTextureInfoWithStrokeWidth:clockwise:context:randomGenerator:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:1781 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  edgeDistanceFieldTextureInfo = [(TSDMetalEdgeDistanceFieldTraceEffect *)self edgeDistanceFieldTextureInfo];
  name = [edgeDistanceFieldTextureInfo name];

  edgeDistanceFieldTextureInfo2 = [(TSDMetalEdgeDistanceFieldTraceEffect *)self edgeDistanceFieldTextureInfo];
  width = [edgeDistanceFieldTextureInfo2 width];

  edgeDistanceFieldTextureInfo3 = [(TSDMetalEdgeDistanceFieldTraceEffect *)self edgeDistanceFieldTextureInfo];
  height = [edgeDistanceFieldTextureInfo3 height];

  edgeDistanceFieldTextureInfo4 = [(TSDMetalEdgeDistanceFieldTraceEffect *)self edgeDistanceFieldTextureInfo];
  [edgeDistanceFieldTextureInfo4 size];
  _D8 = v19;
  v22 = v21;

  v23 = height * width;
  v162 = 0uLL;
  v163 = 0.0;
  v24 = malloc_type_malloc(4 * v23, 0xE2AD13F8uLL);
  *&v164 = width;
  v165 = height;
  v166 = 1;
  v143 = 4 * width;
  v144 = name;
  [name getBytes:v24 bytesPerRow:v143 fromRegion:&v162 mipmapLevel:0];
  selfCopy = self;
  v159 = malloc_type_calloc(4uLL, v23, 0x100004052888210uLL);
  [(TSDMetalEdgeDistanceFieldTraceEffect *)self p_fillFloatBuffer:_D8 withRGBAData:v22 bufferSize:?];
  free(v24);
  v25 = malloc_type_calloc(4uLL, v23, 0xC1E9CE57uLL);
  data = malloc_type_calloc(4uLL, v23, 0xB13D734uLL);
  v26 = *MEMORY[0x277CBECE8];
  cf = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  Mutable = CFArrayCreateMutable(v26, 0, 0);
  v27 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
  width = width;
  allocator = v26;
  theArray = CFArrayCreateMutable(v26, width, 0);
  v160 = width;
  if (width)
  {
    v28 = 0;
    if (_D8 <= v22)
    {
      v29 = v22;
    }

    else
    {
      v29 = _D8;
    }

    v30 = v27;
    v31 = width / v29;
    do
    {
      if (height)
      {
        v32 = 0;
        v33 = v28;
        v34 = v30;
        do
        {
          if (v31 < fabsf(v159[(v33 + _D8 * v32)]) || TSDMetalEdgeDistanceFieldBufferPixelIsLocalMaximum(v159, v28, v32, _D8, v22))
          {
            *v34 = 1;
          }

          else if (TSDMetalEdgeDistanceFieldBufferNeighborPixelIsZero(v159, v28, v32, _D8, v22))
          {
            CFArrayAppendValue(theArray, (v33 + _D8 * v32));
          }

          ++v32;
          v34 += width;
        }

        while (height != v32);
      }

      ++v28;
      ++v30;
    }

    while (v28 != width);
  }

  v35 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count <= 0)
  {
    v99 = contextCopy;
    v100 = v159;
    v101 = data;
    goto LABEL_123;
  }

  selfCopy->_zeroesArray = CFArrayCreateCopy(allocator, theArray);
  selfCopy->_bufferSize.width = _D8;
  selfCopy->_bufferSize.height = v22;
  v37 = (Count - 1);
  v142 = Count;
  [generatorCopy doubleBetween:0.0 :Count];
  v38 = v159;
  if (v39 <= v37)
  {
    [generatorCopy doubleBetween:0.0 :Count];
    v37 = v40;
  }

  allocatora = height;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v37);
  v42 = _D8;
  [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_normalizedPointInTexturedRectangleFrameFromPoint:(ValueAtIndex % _D8) inBufferSize:(ValueAtIndex / _D8), _D8, v22];
  selfCopy->_randomStrokePoint.x = v43;
  selfCopy->_randomStrokePoint.y = v44;
  if (CFArrayGetCount(theArray) < 1)
  {
    v149 = 0;
    v150 = 0;
  }

  else
  {
    v149 = 0;
    v150 = 0;
    v45 = vcvtd_n_f64_u32(v160, 1uLL);
    v46 = v25 + 3;
    v47 = cf;
    while (CFArrayGetCount(v35))
    {
      v48 = CFArrayGetCount(v35);
      v49 = (v48 - 1);
      v50 = v48;
      [generatorCopy doubleBetween:0.0 :v48];
      if (v51 <= v49)
      {
        [generatorCopy doubleBetween:0.0 :v50];
        v49 = v52;
      }

      v35 = theArray;
      v53 = CFArrayGetValueAtIndex(theArray, v49);
      CFArrayRemoveValueAtIndex(theArray, v49);
      v54 = (v53 % v42);
      v55 = (v53 / v42);
      v56 = 4 * (v54 + _D8 * v55);
      if (!v46[v56])
      {
        v57 = TSDMetalEdgeDistanceFieldBufferNeighborPixelsClosestToZero(v159, 2, &v162, (v53 % v42), (v53 / v42), _D8, v22);
        if (v57)
        {
          if (v57 == 2)
          {
            v59 = TSDSubtractPoints(*&v162, *(&v162 + 1), v45);
            v61 = TSDAngleFromDelta(v59, v60);
            v62 = TSDSubtractPoints(v163, v164, v45);
            v58 = *(&v162 + ((TSDAngleFromDelta(v62, v63) > v61) ^ clockwiseCopy));
          }

          else if (v57 == 1)
          {
            v58 = v162;
          }

          else
          {
            v58 = TSDPointInfinity;
          }

          v154 = v58;
          v64 = &v25[v56];
          *v64 = 0x8000;
          v64[3] = -1;
          [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_addNearbyPixelsToArray:Mutable pixel:v159 edgeDataBuffer:v25 dataBuffer:data tempDataBuffer:v27 localMaximumLookupBuffer:v54 bufferSize:v55, _D8, v22];
          _D15 = *(&v154 + 1);
          __asm { FMLA            D0, D8, V1.D[1] }

          v69 = &v25[4 * _D0];
          *v69 = 0x7FFF;
          v69[3] = -1;
          [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_addNearbyPixelsToArray:Mutable pixel:v159 edgeDataBuffer:v25 dataBuffer:data tempDataBuffer:v27 localMaximumLookupBuffer:v154 bufferSize:_D8, v22];
          if (*&v154 != v54 && *(&v154 + 1) != v55)
          {
            *&v162 = (v53 % v42);
            *(&v162 + 1) = *(&v154 + 1);
            v71 = &v162;
            v72 = 1;
            v73 = 0x7FFF;
            v163 = *&v154;
            v164 = (v53 / v42);
            do
            {
              v74 = v72;
              v75 = *v71;
              v76 = v71[1];
              v77 = &v25[4 * (*v71 + _D8 * v76)];
              *v77 = v73;
              v77[3] = -1;
              [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_addNearbyPixelsToArray:Mutable pixel:v159 edgeDataBuffer:v25 dataBuffer:data tempDataBuffer:v27 localMaximumLookupBuffer:v75 bufferSize:v76, _D8, v22];
              v72 = 0;
              v71 = &v163;
              v73 = 0x8000;
            }

            while ((v74 & 1) != 0);
          }

          if (CFArrayGetCount(Mutable) < 1)
          {
            v98 = v47;
            v78 = Mutable;
          }

          else
          {
            v78 = Mutable;
            do
            {
              v79 = v47;
              v80 = CFArrayGetCount(v78);
              if (v80 >= 1)
              {
                v81 = v80;
                for (i = 0; i != v81; ++i)
                {
                  v83 = CFArrayGetValueAtIndex(v78, i);
                  v84 = (v83 % v42);
                  v85 = (v83 / v42);
                  v86 = 4 * (v84 + _D8 * v85);
                  if (!v46[v86])
                  {
                    v87 = v78;
                    v88 = &data[v86];
                    if (data[v86 + 3])
                    {
                      v78 = v87;
                    }

                    else
                    {
                      v89 = TSDMetalEdgeDistanceFieldBufferSurroundingTracePixelValueClosestToZero(v25, 0, (v83 % v42), (v83 / v42), _D8, v22);
                      if (v89 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v90 = ((v89 >> 63) | 1) + v89;
                        if (v150 >= v90)
                        {
                          v91 = ((v89 >> 63) | 1) + v89;
                        }

                        else
                        {
                          v91 = v150;
                        }

                        v92 = v149;
                        if (v149 <= v90)
                        {
                          v92 = ((v89 >> 63) | 1) + v89;
                        }

                        v149 = v92;
                        v150 = v91;
                        v93 = v90 + 0x8000;
                        if (v90 < -32768)
                        {
                          v93 = v90 - 32513;
                        }

                        *v88 = v90;
                        v88[1] = HIBYTE(v93);
                        v88[3] = -1;
                      }

                      v78 = v87;
                      [(TSDMetalEdgeDistanceFieldTraceEffect *)selfCopy p_addNearbyPixelsToArray:v79 pixel:v159 edgeDataBuffer:v25 dataBuffer:data tempDataBuffer:v27 localMaximumLookupBuffer:v84 bufferSize:v85, _D8, v22];
                    }
                  }
                }

                for (j = 0; j != v81; ++j)
                {
                  v95 = CFArrayGetValueAtIndex(v78, j);
                  v96 = (v95 % v42) + _D8 * (v95 / v42);
                  v97 = &v25[4 * v96];
                  if (!v97[3])
                  {
                    *v97 = *&data[4 * v96];
                    v97[3] = -1;
                  }
                }
              }

              CFArrayRemoveAllValues(v78);
              v98 = v78;
              v78 = v79;
              v47 = v98;
            }

            while (CFArrayGetCount(v79) > 0);
          }

          Mutable = v78;
          v35 = theArray;
          cf = v98;
          v47 = v98;
          if (CFArrayGetCount(theArray) < 1)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v35 = theArray;
        }
      }
    }

    cf = v47;
  }

LABEL_70:
  v102 = v160;
  if (_D8 <= v22)
  {
    v103 = v22;
  }

  else
  {
    v103 = _D8;
  }

  v104 = width / v103;
  v105 = allocatora;
  v106 = selfCopy;
  do
  {
    if (!width)
    {
      goto LABEL_122;
    }

    v107 = 0;
    v161 = 1;
    do
    {
      v155 = v107;
      if (!v105)
      {
        goto LABEL_113;
      }

      v108 = 0;
      v109 = v107;
      do
      {
        v110 = (v109 + _D8 * v108);
        v111 = &v25[4 * v110];
        if (v111[3])
        {
          goto LABEL_112;
        }

        if (v104 < fabsf(v38[v110]))
        {
          *v111 = -1;
          v111[3] = -1;
          goto LABEL_112;
        }

        v112 = 0;
        v113 = 0;
        v114 = 0x7FFFFFFFFFFFFFFFLL;
        v115 = 1;
        v116 = &unk_26CA65B08;
        v117 = 4;
        do
        {
          v118 = TSDAddPoints(v109, v108, *(v116 - 1));
          if (v118 < 0.0)
          {
            goto LABEL_94;
          }

          _NF = v119 >= 0.0 && v118 < _D8;
          if (!_NF || v119 >= v22)
          {
            goto LABEL_94;
          }

          if (v27[(v118 + v119 * v102)])
          {
            goto LABEL_94;
          }

          v122 = &v25[4 * (v118 + _D8 * v119)];
          if (!v122[3])
          {
            goto LABEL_94;
          }

          v123 = *v122;
          if (v123 == 0xFFFF)
          {
            goto LABEL_94;
          }

          v124 = v123 - 0x8000;
          if (v114 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v161 = 0;
            v115 = 0;
            v113 = v124;
            v112 = v124;
          }

          else
          {
            if (v124 >= v114)
            {
              v161 = 0;
              v115 = 0;
              if (v124 >= v112)
              {
                v113 = v112;
              }

              else
              {
                v113 = v124;
              }

              if (v124 > v112)
              {
                v112 = v124;
              }

LABEL_94:
              v124 = v114;
              goto LABEL_95;
            }

            v161 = 0;
            v115 = 0;
            v113 = v114;
          }

LABEL_95:
          v116 += 2;
          v114 = v124;
          --v117;
        }

        while (v117);
        v105 = allocatora;
        if ((v115 & 1) == 0)
        {
          v125 = ((v113 >> 63) | 1) + v113;
          v126 = v125 + 0x8000;
          if (v125 < -32768)
          {
            v126 = v125 - 32513;
          }

          *v111 = v125;
          v111[1] = HIBYTE(v126);
          v111[3] = -1;
          v27[(v109 + v108 * v102)] = 0;
        }

        v38 = v159;
LABEL_112:
        ++v108;
      }

      while (v108 != v105);
LABEL_113:
      v107 = v155 + 1;
    }

    while (v155 + 1 != width);
    v106 = selfCopy;
  }

  while ((v161 & 1) == 0);
  for (k = 0; k != width; ++k)
  {
    if (v105)
    {
      for (m = 0; m != v105; ++m)
      {
        v129 = k + _D8 * m;
        v130 = *&v25[4 * v129] - v150;
        v131 = v130 + 0x8000;
        if (v130 - 0x8000 < 0)
        {
          v131 = v130 - 32513;
        }

        v132 = &data[4 * v129];
        *v132 = v130;
        v132[1] = HIBYTE(v131);
        v132[3] = -1;
      }
    }
  }

LABEL_122:
  v106->_traceTextureMaxValue = v149 - v150;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v101 = data;
  v134 = v106;
  v135 = CGDataProviderCreateWithData(0, data, v143 * v105, 0);
  v136 = CGImageCreate(width, v105, 8uLL, 0x20uLL, v143, DeviceRGB, 3u, v135, 0, 0, kCGRenderingIntentDefault);
  v99 = contextCopy;
  device = [contextCopy device];
  v138 = [TSDMetalTextureInfo textureInfoWithCGImage:v136 forDevice:device];
  traceTextureInfo = v134->_traceTextureInfo;
  v134->_traceTextureInfo = v138;

  CGColorSpaceRelease(DeviceRGB);
  CGDataProviderRelease(v135);
  v100 = v159;
  CGImageRelease(v136);
  Count = v142;
LABEL_123:
  free(v100);
  free(v25);
  free(v101);
  free(v27);
  CFRelease(theArray);
  CFRelease(cf);
  CFRelease(Mutable);

  return Count > 0;
}

- (void)p_addNearbyPixelsToArray:(__CFArray *)array pixel:(CGPoint)pixel edgeDataBuffer:(float *)buffer dataBuffer:(char *)dataBuffer tempDataBuffer:(char *)tempDataBuffer localMaximumLookupBuffer:(BOOL *)lookupBuffer bufferSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = pixel.y;
  x = pixel.x;
  v15 = dataBuffer + 3;
  v16 = tempDataBuffer + 3;
  v17 = 4;
  v18 = &unk_26CA65B08;
  do
  {
    v19 = TSDAddPoints(x, y, *(v18 - 1));
    if (v19 >= 0.0 && v20 >= 0.0 && v19 < width && v20 < height)
    {
      v23 = v19 + width * v20;
      v24 = 4 * v23;
      if (!v15[v24] && !v16[v24] && !lookupBuffer[v23])
      {
        CFArrayAppendValue(array, v23);
      }
    }

    v18 += 2;
    --v17;
  }

  while (v17);
}

- (CGPoint)randomStrokePoint
{
  x = self->_randomStrokePoint.x;
  y = self->_randomStrokePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end