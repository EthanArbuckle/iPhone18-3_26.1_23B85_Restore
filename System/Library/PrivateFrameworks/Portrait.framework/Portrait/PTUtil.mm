@interface PTUtil
+ (double)mirrorMatrix4x4OverX:(__n128)x;
+ (double)transformFromRotation:(__n128)rotation translation:(__n128)translation;
+ (float)adjustIntrinsics:(double)intrinsics fromImageSize:(double)size toViewPortSize:(double)portSize;
+ (float)projectionMatrixForOrientation:(double)orientation intrinsics:(double)intrinsics fromImageSize:(double)size viewportSize:(__n128)viewportSize reverseZ:(float64_t)z depthNearFar:;
+ (id)findMipmapLevel:(id)level largerThan:(id *)than;
+ (id)findMipmapLevel:(id)level largerThan:(id *)than fromLevel:(int)fromLevel;
+ (id)temporaryDirectory:(id)directory;
+ (int)getRotationDegreesFromAffineTransform:(CGAffineTransform *)transform;
+ (int)orientationForTransform:(CGAffineTransform *)transform size:(id *)size;
+ (unsigned)orientationFromTransform:(CGAffineTransform *)transform;
+ (unsigned)orientationFromTransform:(CGAffineTransform *)transform inverse:(BOOL)inverse;
- (PTUtil)initWithMetalContext:(id)context;
- (int)_drawTurboLegendTick:(id)tick outTexture:(id)texture rect:(id *)rect maxValue:(float)value;
- (int)drawTurboLegend:(id)legend outLuma:(id)luma outChroma:(id)chroma rect:(id *)rect maxValue:(float)value;
- (int)drawTurboLegend:(id)legend outRGBA:(id)a rect:(id *)rect maxValue:(float)value;
- (int)gaussianFilter3x3:(id)filter3x3 inRGB:(id)b outRGB:(id)gB;
- (int)gaussianNoise:(id)noise inNoise:(id)inNoise outTex:(id)tex;
- (int)reciprocalTex:(id)tex inTex:(id)inTex outTex:(id)outTex epsilon:(float)epsilon;
- (int)renderDisparity:(id)disparity inDisparity:(id)inDisparity outYUV:(id)v region:(PTRegion)region drawLegend:(BOOL)legend;
- (int)renderLine:(PTUtil *)self line:(SEL)line color:(id)color outTexture:(id)texture;
- (int)renderRect:(PTUtil *)self rect:(SEL)rect color:(id)color fill:(BOOL)fill outTexture:(id)texture;
- (int)sobelFilterSingleChannelColor:(id)color input:(id)input output:(id)output scale:(float)scale;
- (int)visualizeCircleUsingRect:(id)rect center:(float)center radius:(id)radius outTexture:;
- (void)rotateTexture:(id)texture inTex:(id)tex outTex:(id)outTex rotationDegrees:(int)degrees;
@end

@implementation PTUtil

- (PTUtil)initWithMetalContext:(id)context
{
  v126 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v124.receiver = self;
  v124.super_class = PTUtil;
  v6 = [(PTUtil *)&v124 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"renderDisparity" withConstants:0];
  renderDisparity = v7->_renderDisparity;
  v7->_renderDisparity = v8;

  if (!v7->_renderDisparity)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v43, v44, v45, v46, v47, v48, v49];
    }

    goto LABEL_34;
  }

  v10 = [contextCopy computePipelineStateFor:@"reciprocal" withConstants:0];
  reciprocal = v7->_reciprocal;
  v7->_reciprocal = v10;

  if (!v7->_reciprocal)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v50, v51, v52, v53, v54, v55, v56];
    }

    goto LABEL_34;
  }

  v12 = [contextCopy computePipelineStateFor:@"sobelFilter" withConstants:0];
  sobelFilter = v7->_sobelFilter;
  v7->_sobelFilter = v12;

  if (!v7->_sobelFilter)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v57, v58, v59, v60, v61, v62, v63];
    }

    goto LABEL_34;
  }

  v14 = [contextCopy computePipelineStateFor:@"gaussianNoise" withConstants:0];
  gaussianNoise = v7->_gaussianNoise;
  v7->_gaussianNoise = v14;

  if (!v7->_gaussianNoise)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v64, v65, v66, v67, v68, v69, v70];
    }

    goto LABEL_34;
  }

  v16 = [contextCopy computePipelineStateFor:@"renderRect" withConstants:0];
  renderRect = v7->_renderRect;
  v7->_renderRect = v16;

  if (!v7->_renderRect)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v71, v72, v73, v74, v75, v76, v77];
    }

    goto LABEL_34;
  }

  v18 = [contextCopy computePipelineStateFor:@"renderLine" withConstants:0];
  renderLine = v7->_renderLine;
  v7->_renderLine = v18;

  if (!v7->_renderLine)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v78, v79, v80, v81, v82, v83, v84];
    }

    goto LABEL_34;
  }

  v20 = [contextCopy computePipelineStateFor:@"visualizeCircleUsingRect" withConstants:0];
  visualizeCircleUsingRect = v7->_visualizeCircleUsingRect;
  v7->_visualizeCircleUsingRect = v20;

  if (!v7->_visualizeCircleUsingRect)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v85, v86, v87, v88, v89, v90, v91];
    }

    goto LABEL_34;
  }

  v22 = [contextCopy computePipelineStateFor:@"drawTurboLegend" withConstants:0];
  drawTurboLegend = v7->_drawTurboLegend;
  v7->_drawTurboLegend = v22;

  if (!v7->_drawTurboLegend)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v92, v93, v94, v95, v96, v97, v98];
    }

    goto LABEL_34;
  }

  v24 = [contextCopy computePipelineStateFor:@"drawTurboLegendYUV" withConstants:0];
  drawTurboLegendYUV = v7->_drawTurboLegendYUV;
  v7->_drawTurboLegendYUV = v24;

  if (!v7->_drawTurboLegendYUV)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v99, v100, v101, v102, v103, v104, v105];
    }

    goto LABEL_34;
  }

  v26 = [contextCopy computePipelineStateFor:@"rotateTexture" withConstants:0];
  rotateTexture = v7->_rotateTexture;
  v7->_rotateTexture = v26;

  if (!v7->_rotateTexture)
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v42 initWithMetalContext:v106, v107, v108, v109, v110, v111, v112];
    }

LABEL_34:

LABEL_35:
    v41 = 0;
    goto LABEL_36;
  }

  computeGaussianKernel2D(v125);
  _S0 = v125[0];
  _S1 = v125[1];
  __asm { FCVT            H0, S0 }

  v123[0] = _S0;
  __asm { FCVT            H0, S1 }

  v123[1] = _S0;
  _S0 = v125[2];
  _S1 = v125[3];
  __asm { FCVT            H0, S0 }

  v123[2] = _S0;
  __asm { FCVT            H0, S1 }

  v122[0] = _S0;
  _S0 = v125[4];
  _S1 = v125[5];
  __asm { FCVT            H0, S0 }

  v122[1] = _S0;
  __asm { FCVT            H0, S1 }

  v122[2] = _S0;
  v38 = objc_opt_new();
  [v38 setConstantHalf3:v123 withName:@"kWeights2DRow0_half3"];
  [v38 setConstantHalf3:v122 withName:@"kWeights2DRow1_half3"];
  v39 = [contextCopy computePipelineStateFor:@"gaussianFilter3x3" withConstants:v38];
  gaussianFilter3x3 = v7->_gaussianFilter3x3;
  v7->_gaussianFilter3x3 = v39;

  if (v7->_gaussianFilter3x3)
  {
    v41 = v7;
  }

  else
  {
    v114 = _PTLogSystem();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      [(PTUtil *)v114 initWithMetalContext:v115, v116, v117, v118, v119, v120, v121];
    }

    v41 = 0;
  }

LABEL_36:
  return v41;
}

+ (id)temporaryDirectory:(id)directory
{
  directoryCopy = directory;
  if ([directoryCopy hasPrefix:@"/"])
  {
    if (([directoryCopy hasSuffix:@"/"] & 1) == 0)
    {
      v4 = [directoryCopy stringByAppendingString:@"/"];

      directoryCopy = v4;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:directoryCopy])
    {
      v6 = 0;
    }

    else
    {
      v17 = 0;
      [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v17];
      v6 = v17;
    }

    directoryCopy = directoryCopy;
    date = temporaryDirectory__res;
    temporaryDirectory__res = directoryCopy;
    goto LABEL_10;
  }

  if (!temporaryDirectory__res)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = NSTemporaryDirectory();
    v8 = temporaryDirectory__res;
    temporaryDirectory__res = v7;

    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v6 setDateFormat:@"dd-MM-yyyy_HHmmss"];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [v6 stringFromDate:date];
    v11 = [temporaryDirectory__res stringByAppendingFormat:@"%@/", v10];
    v12 = temporaryDirectory__res;
    temporaryDirectory__res = v11;

    v16 = 0;
    [defaultManager createDirectoryAtPath:temporaryDirectory__res withIntermediateDirectories:1 attributes:0 error:&v16];

LABEL_10:
  }

  v13 = temporaryDirectory__res;
  v14 = temporaryDirectory__res;

  return v13;
}

- (int)reciprocalTex:(id)tex inTex:(id)inTex outTex:(id)outTex epsilon:(float)epsilon
{
  epsilonCopy = epsilon;
  outTexCopy = outTex;
  inTexCopy = inTex;
  computeCommandEncoder = [tex computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_reciprocal];
  [computeCommandEncoder setTexture:inTexCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  [computeCommandEncoder setBytes:&epsilonCopy length:4 atIndex:0];
  width = [outTexCopy width];
  height = [outTexCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_drawTurboLegendTick:(id)tick outTexture:(id)texture rect:(id *)rect maxValue:(float)value
{
  if (value >= 0.0)
  {
    v11 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v19 = _Q0;
    do
    {
      LODWORD(v17) = ((rect->var1.var0 * v11) / value) + LODWORD(rect->var0.var0);
      HIDWORD(v17) = rect->var0.var1;
      [(PTUtil *)self renderRect:tick rect:0 color:texture fill:v17 outTexture:*&v19, v19];
      ++v11;
    }

    while (v11 <= value);
  }

  return 0;
}

- (int)drawTurboLegend:(id)legend outLuma:(id)luma outChroma:(id)chroma rect:(id *)rect maxValue:(float)value
{
  chromaCopy = chroma;
  lumaCopy = luma;
  legendCopy = legend;
  computeCommandEncoder = [legendCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v16 disparityApplyPostModifier:v17 inDisparity:v18 outDisparity:v19 postModifier:v20, v21, v22, v23];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_drawTurboLegendYUV];
  [computeCommandEncoder setTexture:lumaCopy atIndex:0];
  [computeCommandEncoder setTexture:chromaCopy atIndex:1];

  v24 = vmovn_s64(*&rect->var0.var0);
  v24.i16[1] = v24.i16[2];
  v24.i16[2] = rect->var1.var0;
  v24.i16[3] = LOWORD(rect->var1.var1) - 20;
  v32 = v24;
  [computeCommandEncoder setBytes:&v32 length:8 atIndex:0];
  *&v27 = v32.u16[2];
  *(&v27 + 1) = v32.u16[3];
  *&v28 = 1;
  v30 = xmmword_2244A5230;
  v31 = 1;
  [computeCommandEncoder dispatchThreads:&v27 threadsPerThreadgroup:&v30];
  [computeCommandEncoder endEncoding];
  rect->var0.var1 = rect->var1.var1 + rect->var0.var1 - 20;
  rect->var1.var1 = 20;
  v25 = *&rect->var0.var2;
  v27 = *&rect->var0.var0;
  v28 = v25;
  v29 = *&rect->var1.var1;
  [(PTUtil *)self _drawTurboLegendTick:legendCopy outTexture:lumaCopy rect:&v27 maxValue:COERCE_DOUBLE(__PAIR64__(DWORD1(v29), LODWORD(value)))];

  return 0;
}

- (int)drawTurboLegend:(id)legend outRGBA:(id)a rect:(id *)rect maxValue:(float)value
{
  aCopy = a;
  legendCopy = legend;
  computeCommandEncoder = [legendCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_drawTurboLegend];
  [computeCommandEncoder setTexture:aCopy atIndex:0];
  v21 = vmovn_s64(*&rect->var0.var0);
  v21.i16[1] = v21.i16[2];
  v21.i16[2] = rect->var1.var0;
  v21.i16[3] = LOWORD(rect->var1.var1) - 20;
  v30 = v21;
  [computeCommandEncoder setBytes:&v30 length:8 atIndex:0];
  v22 = rect->var1.var1 - 20;
  *&v25 = rect->var1.var0;
  *(&v25 + 1) = v22;
  *&v26 = 1;
  v28 = xmmword_2244A5230;
  v29 = 1;
  [computeCommandEncoder dispatchThreads:&v25 threadsPerThreadgroup:&v28];
  [computeCommandEncoder endEncoding];
  rect->var0.var1 = rect->var1.var1 + rect->var0.var1 - 20;
  rect->var1.var1 = 20;
  v23 = *&rect->var0.var2;
  v25 = *&rect->var0.var0;
  v26 = v23;
  v27 = *&rect->var1.var1;
  [(PTUtil *)self _drawTurboLegendTick:legendCopy outTexture:aCopy rect:&v25 maxValue:COERCE_DOUBLE(__PAIR64__(DWORD1(v27), LODWORD(value)))];

  return 0;
}

- (int)gaussianNoise:(id)noise inNoise:(id)inNoise outTex:(id)tex
{
  texCopy = tex;
  inNoiseCopy = inNoise;
  computeCommandEncoder = [noise computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_gaussianNoise];
  [computeCommandEncoder setTexture:inNoiseCopy atIndex:0];

  [computeCommandEncoder setTexture:texCopy atIndex:1];
  width = [texCopy width];
  height = [texCopy height];

  v24[0] = width;
  v24[1] = height;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)sobelFilterSingleChannelColor:(id)color input:(id)input output:(id)output scale:(float)scale
{
  scaleCopy = scale;
  outputCopy = output;
  inputCopy = input;
  computeCommandEncoder = [color computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_sobelFilter];
  [computeCommandEncoder setTexture:inputCopy atIndex:0];

  [computeCommandEncoder setTexture:outputCopy atIndex:1];
  [computeCommandEncoder setBytes:&scaleCopy length:4 atIndex:0];
  width = [outputCopy width];
  height = [outputCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)renderDisparity:(id)disparity inDisparity:(id)inDisparity outYUV:(id)v region:(PTRegion)region drawLegend:(BOOL)legend
{
  legendCopy = legend;
  v8 = *&region.var0.var0;
  v33 = *&region.var0.var0;
  disparityCopy = disparity;
  vCopy = v;
  inDisparityCopy = inDisparity;
  v15 = objc_opt_new();
  [v15 setNormalizedCoordinates:1];
  [v15 setMinFilter:0];
  [v15 setMagFilter:0];
  device = [(PTMetalContext *)self->_metalContext device];
  v17 = [device newSamplerStateWithDescriptor:v15];

  v18 = WORD2(v8);
  v19 = HIWORD(v8);
  computeCommandEncoder = [disparityCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_renderDisparity];
  [computeCommandEncoder setTexture:inDisparityCopy atIndex:0];

  texLuma = [vCopy texLuma];
  [computeCommandEncoder setTexture:texLuma atIndex:1];

  texChroma = [vCopy texChroma];
  [computeCommandEncoder setTexture:texChroma atIndex:2];

  [computeCommandEncoder setBytes:&v33 length:8 atIndex:0];
  [computeCommandEncoder setSamplerState:v17 atIndex:0];
  v26 = v18;
  v27 = v19;
  v28 = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [computeCommandEncoder dispatchThreads:&v26 threadsPerThreadgroup:&v31];
  [computeCommandEncoder endEncoding];
  if (legendCopy)
  {
    texLuma2 = [vCopy texLuma];
    texChroma2 = [vCopy texChroma];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = xmmword_2244C6170;
    v30 = 1;
    [(PTUtil *)self drawTurboLegend:disparityCopy outLuma:texLuma2 outChroma:texChroma2 rect:&v26 maxValue:COERCE_DOUBLE(COERCE_UNSIGNED_INT(3.5))];
  }

  return 0;
}

- (int)visualizeCircleUsingRect:(id)rect center:(float)center radius:(id)radius outTexture:
{
  v24 = *&center;
  v23 = v5;
  radiusCopy = radius;
  computeCommandEncoder = [rect computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v10 disparityApplyPostModifier:v11 inDisparity:v12 outDisparity:v13 postModifier:v14, v15, v16, v17];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_visualizeCircleUsingRect];
  [computeCommandEncoder setTexture:radiusCopy atIndex:0];

  [computeCommandEncoder setBytes:&v24 length:8 atIndex:0];
  [computeCommandEncoder setBytes:&v23 length:4 atIndex:1];
  v18 = ceilf(v23);
  v22[0] = (v18 + v18);
  v22[1] = v22[0];
  v22[2] = 1;
  v20 = xmmword_2244A5230;
  v21 = 1;
  [computeCommandEncoder dispatchThreads:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)renderRect:(PTUtil *)self rect:(SEL)rect color:(id)color fill:(BOOL)fill outTexture:(id)texture
{
  v26 = v6;
  fillCopy = fill;
  v5.u64[1] = vmax_s32(*&vextq_s8(v5, v5, 8uLL), 0x100000001);
  v27 = v5;
  textureCopy = texture;
  computeCommandEncoder = [color computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_renderRect];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setBytes:&v27 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&v26 length:16 atIndex:1];
  [computeCommandEncoder setBytes:&fillCopy length:1 atIndex:2];
  *&v19 = v27.i32[2];
  *(&v19 + 1) = v27.i32[3];
  v23 = v19;
  v24 = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [computeCommandEncoder dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)renderLine:(PTUtil *)self line:(SEL)line color:(id)color outTexture:(id)texture
{
  v26 = v5;
  v27 = v4;
  v6 = v4 - DWORD2(v4);
  if (v4 - DWORD2(v4) < 0)
  {
    v6 = DWORD2(v4) - v4;
  }

  v7 = DWORD1(v4) - HIDWORD(v4);
  if (DWORD1(v4) - HIDWORD(v4) < 0)
  {
    v7 = HIDWORD(v4) - DWORD1(v4);
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    textureCopy = texture;
    computeCommandEncoder = [color computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_renderLine];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];

    [computeCommandEncoder setBytes:&v27 length:16 atIndex:0];
    [computeCommandEncoder setBytes:&v26 length:16 atIndex:1];
    v23 = 1;
    v24 = v8 + 1;
    v25 = vdupq_n_s64(1uLL);
    v22 = xmmword_2244A5230;
    [computeCommandEncoder dispatchThreads:&v24 threadsPerThreadgroup:&v22];
    [computeCommandEncoder endEncoding];
  }

  return 0;
}

- (int)gaussianFilter3x3:(id)filter3x3 inRGB:(id)b outRGB:(id)gB
{
  gBCopy = gB;
  bCopy = b;
  computeCommandEncoder = [filter3x3 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_gaussianFilter3x3];
  [computeCommandEncoder setTexture:bCopy atIndex:0];

  [computeCommandEncoder setTexture:gBCopy atIndex:1];
  width = [gBCopy width];
  height = [gBCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = xmmword_2244A5440;
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)rotateTexture:(id)texture inTex:(id)tex outTex:(id)outTex rotationDegrees:(int)degrees
{
  v17 = (degrees + 360) % 360;
  outTexCopy = outTex;
  texCopy = tex;
  computeCommandEncoder = [texture computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_rotateTexture];
  [computeCommandEncoder setTexture:texCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  [computeCommandEncoder setBytes:&v17 length:4 atIndex:0];
  width = [outTexCopy width];
  height = [outTexCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

+ (unsigned)orientationFromTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  return [self orientationFromTransform:v5 inverse:0];
}

+ (unsigned)orientationFromTransform:(CGAffineTransform *)transform inverse:(BOOL)inverse
{
  v4 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v4;
  v8[2] = *&transform->tx;
  v5 = orientationForTransform(v8);
  if (v5 < 4)
  {
    return dword_2244C6190[v5];
  }

  v7 = _PTLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PTUtil orientationFromTransform:v7 inverse:?];
  }

  return -1;
}

+ (int)orientationForTransform:(CGAffineTransform *)transform size:(id *)size
{
  v5 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v5;
  v11[2] = *&transform->tx;
  v6 = orientationForTransform(v11);
  var1 = size->var1;
  v8 = v6 - 1;
  if (size->var0 < var1)
  {
    result = 1;
  }

  else
  {
    result = 3;
  }

  if (v8 <= 6)
  {
    if (size->var0 >= var1)
    {
      v10 = &unk_2244C6348;
    }

    else
    {
      v10 = &unk_2244C6364;
    }

    return v10[v8];
  }

  return result;
}

+ (int)getRotationDegreesFromAffineTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v4;
  v9[2] = *&transform->tx;
  v5 = orientationForTransform(v9);
  v6 = v5;
  if (v5 < 8)
  {
    return dword_2244C6380[v5];
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(PTUtil *)transform getRotationDegreesFromAffineTransform:v6, v8];
  }

  return 0;
}

+ (float)adjustIntrinsics:(double)intrinsics fromImageSize:(double)size toViewPortSize:(double)portSize
{
  if (size != a6 || portSize != a7)
  {
    HIDWORD(self) = HIDWORD(a2);
    v8 = a6 / a7;
    v9 = a6 / a7 < size / portSize;
    *&v8 = a7 / portSize;
    v10 = COERCE_DOUBLE(vdup_lane_s32(*&v8, 0));
    *&a6 = a6 / size;
    v11 = COERCE_DOUBLE(vdup_lane_s32(*&a6, 0));
    if (v9)
    {
      *&v12 = v10;
    }

    else
    {
      *&v12 = v11;
    }

    LODWORD(self) = vmul_f32(*&self, v12).u32[0];
  }

  return *&self;
}

+ (float)projectionMatrixForOrientation:(double)orientation intrinsics:(double)intrinsics fromImageSize:(double)size viewportSize:(__n128)viewportSize reverseZ:(float64_t)z depthNearFar:
{
  *&v7 = *&orientation + 0.5;
  v8 = size - (*(&orientation + 1) + 0.5);
  *(&v7 + 1) = v8;
  [PTUtil adjustIntrinsics:self fromImageSize:a2 toViewPortSize:v7, *&viewportSize];
  v9.f64[0] = v17;
  v9.f64[1] = z;
  __asm { FMOV            V3.2S, #1.0 }

  return (v15 + v15) / vcvt_f32_f64(v9).f32[0];
}

+ (id)findMipmapLevel:(id)level largerThan:(id *)than
{
  v6 = *than;
  v4 = [self findMipmapLevel:level largerThan:&v6 fromLevel:0];

  return v4;
}

+ (id)findMipmapLevel:(id)level largerThan:(id *)than fromLevel:(int)fromLevel
{
  levelCopy = level;
  if ([levelCopy count])
  {
    fromLevelCopy = fromLevel;
    while (1)
    {
      v9 = fromLevelCopy;
      if ([levelCopy count] - 1 <= fromLevelCopy)
      {
        lastObject = [levelCopy lastObject];
        goto LABEL_11;
      }

      ++fromLevelCopy;
      v10 = [levelCopy objectAtIndexedSubscript:v9 + 1];
      if ([v10 width] < than->var0)
      {
        break;
      }

      v11 = [levelCopy objectAtIndexedSubscript:v9 + 1];
      height = [v11 height];
      var1 = than->var1;

      if (height < var1)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    lastObject = [levelCopy objectAtIndexedSubscript:v9];
LABEL_11:
    v14 = lastObject;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (double)transformFromRotation:(__n128)rotation translation:(__n128)translation
{
  v4.i64[0] = vzip1q_s32(self, a2).u64[0];
  v4.i64[1] = __PAIR64__(translation.n128_u32[0], rotation.n128_u32[0]);
  v5.i64[0] = vtrn2q_s32(self, a2).u64[0];
  v5.i64[1] = __PAIR64__(translation.n128_u32[1], rotation.n128_u32[1]);
  v6.i64[0] = vzip2q_s32(self, a2).u64[0];
  v6.i64[1] = __PAIR64__(translation.n128_u32[2], rotation.n128_u32[2]);
  *&result = vzip1q_s32(vzip1q_s32(v4, v6), vzip1q_s32(v5, 0)).u64[0];
  return result;
}

+ (double)mirrorMatrix4x4OverX:(__n128)x
{
  v4 = 0;
  v5 = *(MEMORY[0x277D860B8] + 16);
  v6 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  v15 = a2;
  xCopy = x;
  v17 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v18 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2244A5380, COERCE_FLOAT(*(&v14 + v4))), v5, *(&v14 + v4), 1), v6, *(&v14 + v4), 2), v7, *(&v14 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v8 = 0;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v14 = xmmword_2244A5380;
  v15 = v5;
  xCopy = v6;
  v17 = v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v18 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(&v14 + v8))), v10, *(&v14 + v8), 1), v11, *(&v14 + v8), 2), v12, *(&v14 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  return *v18.i64;
}

+ (void)getRotationDegreesFromAffineTransform:(os_log_t)log .cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9[0] = 67110656;
  v9[1] = a2;
  v10 = 2048;
  v11 = v3;
  v12 = 2048;
  v13 = v4;
  v14 = 2048;
  v15 = v5;
  v16 = 2048;
  v17 = v6;
  v18 = 2048;
  v19 = v7;
  v20 = 2048;
  v21 = v8;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Unexpected rotation %i for transform (%f %f %f %f) (%f %f)", v9, 0x44u);
}

@end