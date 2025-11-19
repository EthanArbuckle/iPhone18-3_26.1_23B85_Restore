@interface PTUtil
+ (double)mirrorMatrix4x4OverX:(__n128)a3;
+ (double)transformFromRotation:(__n128)a3 translation:(__n128)a4;
+ (float)adjustIntrinsics:(double)a3 fromImageSize:(double)a4 toViewPortSize:(double)a5;
+ (float)projectionMatrixForOrientation:(double)a3 intrinsics:(double)a4 fromImageSize:(double)a5 viewportSize:(__n128)a6 reverseZ:(float64_t)a7 depthNearFar:;
+ (id)findMipmapLevel:(id)a3 largerThan:(id *)a4;
+ (id)findMipmapLevel:(id)a3 largerThan:(id *)a4 fromLevel:(int)a5;
+ (id)temporaryDirectory:(id)a3;
+ (int)getRotationDegreesFromAffineTransform:(CGAffineTransform *)a3;
+ (int)orientationForTransform:(CGAffineTransform *)a3 size:(id *)a4;
+ (unsigned)orientationFromTransform:(CGAffineTransform *)a3;
+ (unsigned)orientationFromTransform:(CGAffineTransform *)a3 inverse:(BOOL)a4;
- (PTUtil)initWithMetalContext:(id)a3;
- (int)_drawTurboLegendTick:(id)a3 outTexture:(id)a4 rect:(id *)a5 maxValue:(float)a6;
- (int)drawTurboLegend:(id)a3 outLuma:(id)a4 outChroma:(id)a5 rect:(id *)a6 maxValue:(float)a7;
- (int)drawTurboLegend:(id)a3 outRGBA:(id)a4 rect:(id *)a5 maxValue:(float)a6;
- (int)gaussianFilter3x3:(id)a3 inRGB:(id)a4 outRGB:(id)a5;
- (int)gaussianNoise:(id)a3 inNoise:(id)a4 outTex:(id)a5;
- (int)reciprocalTex:(id)a3 inTex:(id)a4 outTex:(id)a5 epsilon:(float)a6;
- (int)renderDisparity:(id)a3 inDisparity:(id)a4 outYUV:(id)a5 region:(PTRegion)a6 drawLegend:(BOOL)a7;
- (int)renderLine:(PTUtil *)self line:(SEL)a2 color:(id)a3 outTexture:(id)a4;
- (int)renderRect:(PTUtil *)self rect:(SEL)a2 color:(id)a3 fill:(BOOL)a4 outTexture:(id)a5;
- (int)sobelFilterSingleChannelColor:(id)a3 input:(id)a4 output:(id)a5 scale:(float)a6;
- (int)visualizeCircleUsingRect:(id)a3 center:(float)a4 radius:(id)a5 outTexture:;
- (void)rotateTexture:(id)a3 inTex:(id)a4 outTex:(id)a5 rotationDegrees:(int)a6;
@end

@implementation PTUtil

- (PTUtil)initWithMetalContext:(id)a3
{
  v126 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v124.receiver = self;
  v124.super_class = PTUtil;
  v6 = [(PTUtil *)&v124 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [v5 computePipelineStateFor:@"renderDisparity" withConstants:0];
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

  v10 = [v5 computePipelineStateFor:@"reciprocal" withConstants:0];
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

  v12 = [v5 computePipelineStateFor:@"sobelFilter" withConstants:0];
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

  v14 = [v5 computePipelineStateFor:@"gaussianNoise" withConstants:0];
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

  v16 = [v5 computePipelineStateFor:@"renderRect" withConstants:0];
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

  v18 = [v5 computePipelineStateFor:@"renderLine" withConstants:0];
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

  v20 = [v5 computePipelineStateFor:@"visualizeCircleUsingRect" withConstants:0];
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

  v22 = [v5 computePipelineStateFor:@"drawTurboLegend" withConstants:0];
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

  v24 = [v5 computePipelineStateFor:@"drawTurboLegendYUV" withConstants:0];
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

  v26 = [v5 computePipelineStateFor:@"rotateTexture" withConstants:0];
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
  v39 = [v5 computePipelineStateFor:@"gaussianFilter3x3" withConstants:v38];
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

+ (id)temporaryDirectory:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"/"])
  {
    if (([v3 hasSuffix:@"/"] & 1) == 0)
    {
      v4 = [v3 stringByAppendingString:@"/"];

      v3 = v4;
    }

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v5 fileExistsAtPath:v3])
    {
      v6 = 0;
    }

    else
    {
      v17 = 0;
      [v5 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v17];
      v6 = v17;
    }

    v3 = v3;
    v9 = temporaryDirectory__res;
    temporaryDirectory__res = v3;
    goto LABEL_10;
  }

  if (!temporaryDirectory__res)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = NSTemporaryDirectory();
    v8 = temporaryDirectory__res;
    temporaryDirectory__res = v7;

    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v6 setDateFormat:@"dd-MM-yyyy_HHmmss"];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v6 stringFromDate:v9];
    v11 = [temporaryDirectory__res stringByAppendingFormat:@"%@/", v10];
    v12 = temporaryDirectory__res;
    temporaryDirectory__res = v11;

    v16 = 0;
    [v5 createDirectoryAtPath:temporaryDirectory__res withIntermediateDirectories:1 attributes:0 error:&v16];

LABEL_10:
  }

  v13 = temporaryDirectory__res;
  v14 = temporaryDirectory__res;

  return v13;
}

- (int)reciprocalTex:(id)a3 inTex:(id)a4 outTex:(id)a5 epsilon:(float)a6
{
  v26 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  if (!v11)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [v11 setComputePipelineState:self->_reciprocal];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v26 length:4 atIndex:0];
  v20 = [v9 width];
  v21 = [v9 height];

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [v11 dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [v11 endEncoding];

  return 0;
}

- (int)_drawTurboLegendTick:(id)a3 outTexture:(id)a4 rect:(id *)a5 maxValue:(float)a6
{
  if (a6 >= 0.0)
  {
    v11 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v19 = _Q0;
    do
    {
      LODWORD(v17) = ((a5->var1.var0 * v11) / a6) + LODWORD(a5->var0.var0);
      HIDWORD(v17) = a5->var0.var1;
      [(PTUtil *)self renderRect:a3 rect:0 color:a4 fill:v17 outTexture:*&v19, v19];
      ++v11;
    }

    while (v11 <= a6);
  }

  return 0;
}

- (int)drawTurboLegend:(id)a3 outLuma:(id)a4 outChroma:(id)a5 rect:(id *)a6 maxValue:(float)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v14 computeCommandEncoder];
  if (!v15)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v16 disparityApplyPostModifier:v17 inDisparity:v18 outDisparity:v19 postModifier:v20, v21, v22, v23];
    }
  }

  [v15 setComputePipelineState:self->_drawTurboLegendYUV];
  [v15 setTexture:v13 atIndex:0];
  [v15 setTexture:v12 atIndex:1];

  v24 = vmovn_s64(*&a6->var0.var0);
  v24.i16[1] = v24.i16[2];
  v24.i16[2] = a6->var1.var0;
  v24.i16[3] = LOWORD(a6->var1.var1) - 20;
  v32 = v24;
  [v15 setBytes:&v32 length:8 atIndex:0];
  *&v27 = v32.u16[2];
  *(&v27 + 1) = v32.u16[3];
  *&v28 = 1;
  v30 = xmmword_2244A5230;
  v31 = 1;
  [v15 dispatchThreads:&v27 threadsPerThreadgroup:&v30];
  [v15 endEncoding];
  a6->var0.var1 = a6->var1.var1 + a6->var0.var1 - 20;
  a6->var1.var1 = 20;
  v25 = *&a6->var0.var2;
  v27 = *&a6->var0.var0;
  v28 = v25;
  v29 = *&a6->var1.var1;
  [(PTUtil *)self _drawTurboLegendTick:v14 outTexture:v13 rect:&v27 maxValue:COERCE_DOUBLE(__PAIR64__(DWORD1(v29), LODWORD(a7)))];

  return 0;
}

- (int)drawTurboLegend:(id)a3 outRGBA:(id)a4 rect:(id *)a5 maxValue:(float)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [v11 computeCommandEncoder];
  if (!v12)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
    }
  }

  [v12 setComputePipelineState:self->_drawTurboLegend];
  [v12 setTexture:v10 atIndex:0];
  v21 = vmovn_s64(*&a5->var0.var0);
  v21.i16[1] = v21.i16[2];
  v21.i16[2] = a5->var1.var0;
  v21.i16[3] = LOWORD(a5->var1.var1) - 20;
  v30 = v21;
  [v12 setBytes:&v30 length:8 atIndex:0];
  v22 = a5->var1.var1 - 20;
  *&v25 = a5->var1.var0;
  *(&v25 + 1) = v22;
  *&v26 = 1;
  v28 = xmmword_2244A5230;
  v29 = 1;
  [v12 dispatchThreads:&v25 threadsPerThreadgroup:&v28];
  [v12 endEncoding];
  a5->var0.var1 = a5->var1.var1 + a5->var0.var1 - 20;
  a5->var1.var1 = 20;
  v23 = *&a5->var0.var2;
  v25 = *&a5->var0.var0;
  v26 = v23;
  v27 = *&a5->var1.var1;
  [(PTUtil *)self _drawTurboLegendTick:v11 outTexture:v10 rect:&v25 maxValue:COERCE_DOUBLE(__PAIR64__(DWORD1(v27), LODWORD(a6)))];

  return 0;
}

- (int)gaussianNoise:(id)a3 inNoise:(id)a4 outTex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [v10 setComputePipelineState:self->_gaussianNoise];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v19 = [v8 width];
  v20 = [v8 height];

  v24[0] = v19;
  v24[1] = v20;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [v10 dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [v10 endEncoding];

  return 0;
}

- (int)sobelFilterSingleChannelColor:(id)a3 input:(id)a4 output:(id)a5 scale:(float)a6
{
  v26 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  if (!v11)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [v11 setComputePipelineState:self->_sobelFilter];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v26 length:4 atIndex:0];
  v20 = [v9 width];
  v21 = [v9 height];

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [v11 dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [v11 endEncoding];

  return 0;
}

- (int)renderDisparity:(id)a3 inDisparity:(id)a4 outYUV:(id)a5 region:(PTRegion)a6 drawLegend:(BOOL)a7
{
  v7 = a7;
  v8 = *&a6.var0.var0;
  v33 = *&a6.var0.var0;
  v12 = a3;
  v13 = a5;
  v14 = a4;
  v15 = objc_opt_new();
  [v15 setNormalizedCoordinates:1];
  [v15 setMinFilter:0];
  [v15 setMagFilter:0];
  v16 = [(PTMetalContext *)self->_metalContext device];
  v17 = [v16 newSamplerStateWithDescriptor:v15];

  v18 = WORD2(v8);
  v19 = HIWORD(v8);
  v20 = [v12 computeCommandEncoder];
  [v20 setComputePipelineState:self->_renderDisparity];
  [v20 setTexture:v14 atIndex:0];

  v21 = [v13 texLuma];
  [v20 setTexture:v21 atIndex:1];

  v22 = [v13 texChroma];
  [v20 setTexture:v22 atIndex:2];

  [v20 setBytes:&v33 length:8 atIndex:0];
  [v20 setSamplerState:v17 atIndex:0];
  v26 = v18;
  v27 = v19;
  v28 = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [v20 dispatchThreads:&v26 threadsPerThreadgroup:&v31];
  [v20 endEncoding];
  if (v7)
  {
    v23 = [v13 texLuma];
    v24 = [v13 texChroma];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = xmmword_2244C6170;
    v30 = 1;
    [(PTUtil *)self drawTurboLegend:v12 outLuma:v23 outChroma:v24 rect:&v26 maxValue:COERCE_DOUBLE(COERCE_UNSIGNED_INT(3.5))];
  }

  return 0;
}

- (int)visualizeCircleUsingRect:(id)a3 center:(float)a4 radius:(id)a5 outTexture:
{
  v24 = *&a4;
  v23 = v5;
  v8 = a5;
  v9 = [a3 computeCommandEncoder];
  if (!v9)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v10 disparityApplyPostModifier:v11 inDisparity:v12 outDisparity:v13 postModifier:v14, v15, v16, v17];
    }
  }

  [v9 setComputePipelineState:self->_visualizeCircleUsingRect];
  [v9 setTexture:v8 atIndex:0];

  [v9 setBytes:&v24 length:8 atIndex:0];
  [v9 setBytes:&v23 length:4 atIndex:1];
  v18 = ceilf(v23);
  v22[0] = (v18 + v18);
  v22[1] = v22[0];
  v22[2] = 1;
  v20 = xmmword_2244A5230;
  v21 = 1;
  [v9 dispatchThreads:v22 threadsPerThreadgroup:&v20];
  [v9 endEncoding];

  return 0;
}

- (int)renderRect:(PTUtil *)self rect:(SEL)a2 color:(id)a3 fill:(BOOL)a4 outTexture:(id)a5
{
  v26 = v6;
  v25 = a4;
  v5.u64[1] = vmax_s32(*&vextq_s8(v5, v5, 8uLL), 0x100000001);
  v27 = v5;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [v10 setComputePipelineState:self->_renderRect];
  [v10 setTexture:v9 atIndex:0];

  [v10 setBytes:&v27 length:16 atIndex:0];
  [v10 setBytes:&v26 length:16 atIndex:1];
  [v10 setBytes:&v25 length:1 atIndex:2];
  *&v19 = v27.i32[2];
  *(&v19 + 1) = v27.i32[3];
  v23 = v19;
  v24 = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [v10 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [v10 endEncoding];

  return 0;
}

- (int)renderLine:(PTUtil *)self line:(SEL)a2 color:(id)a3 outTexture:(id)a4
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
    v11 = a4;
    v12 = [a3 computeCommandEncoder];
    if (!v12)
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
      }
    }

    [v12 setComputePipelineState:self->_renderLine];
    [v12 setTexture:v11 atIndex:0];

    [v12 setBytes:&v27 length:16 atIndex:0];
    [v12 setBytes:&v26 length:16 atIndex:1];
    v23 = 1;
    v24 = v8 + 1;
    v25 = vdupq_n_s64(1uLL);
    v22 = xmmword_2244A5230;
    [v12 dispatchThreads:&v24 threadsPerThreadgroup:&v22];
    [v12 endEncoding];
  }

  return 0;
}

- (int)gaussianFilter3x3:(id)a3 inRGB:(id)a4 outRGB:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_gaussianFilter3x3];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v11 = [v8 width];
  v12 = [v8 height];

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = xmmword_2244A5440;
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];

  return 0;
}

- (void)rotateTexture:(id)a3 inTex:(id)a4 outTex:(id)a5 rotationDegrees:(int)a6
{
  v17 = (a6 + 360) % 360;
  v9 = a5;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  [v11 setComputePipelineState:self->_rotateTexture];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v17 length:4 atIndex:0];
  v12 = [v9 width];
  v13 = [v9 height];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [v11 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v11 endEncoding];
}

+ (unsigned)orientationFromTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  return [a1 orientationFromTransform:v5 inverse:0];
}

+ (unsigned)orientationFromTransform:(CGAffineTransform *)a3 inverse:(BOOL)a4
{
  v4 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v4;
  v8[2] = *&a3->tx;
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

+ (int)orientationForTransform:(CGAffineTransform *)a3 size:(id *)a4
{
  v5 = *&a3->c;
  v11[0] = *&a3->a;
  v11[1] = v5;
  v11[2] = *&a3->tx;
  v6 = orientationForTransform(v11);
  var1 = a4->var1;
  v8 = v6 - 1;
  if (a4->var0 < var1)
  {
    result = 1;
  }

  else
  {
    result = 3;
  }

  if (v8 <= 6)
  {
    if (a4->var0 >= var1)
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

+ (int)getRotationDegreesFromAffineTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v9[0] = *&a3->a;
  v9[1] = v4;
  v9[2] = *&a3->tx;
  v5 = orientationForTransform(v9);
  v6 = v5;
  if (v5 < 8)
  {
    return dword_2244C6380[v5];
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(PTUtil *)a3 getRotationDegreesFromAffineTransform:v6, v8];
  }

  return 0;
}

+ (float)adjustIntrinsics:(double)a3 fromImageSize:(double)a4 toViewPortSize:(double)a5
{
  if (a4 != a6 || a5 != a7)
  {
    HIDWORD(a1) = HIDWORD(a2);
    v8 = a6 / a7;
    v9 = a6 / a7 < a4 / a5;
    *&v8 = a7 / a5;
    v10 = COERCE_DOUBLE(vdup_lane_s32(*&v8, 0));
    *&a6 = a6 / a4;
    v11 = COERCE_DOUBLE(vdup_lane_s32(*&a6, 0));
    if (v9)
    {
      *&v12 = v10;
    }

    else
    {
      *&v12 = v11;
    }

    LODWORD(a1) = vmul_f32(*&a1, v12).u32[0];
  }

  return *&a1;
}

+ (float)projectionMatrixForOrientation:(double)a3 intrinsics:(double)a4 fromImageSize:(double)a5 viewportSize:(__n128)a6 reverseZ:(float64_t)a7 depthNearFar:
{
  *&v7 = *&a3 + 0.5;
  v8 = a5 - (*(&a3 + 1) + 0.5);
  *(&v7 + 1) = v8;
  [PTUtil adjustIntrinsics:a1 fromImageSize:a2 toViewPortSize:v7, *&a6];
  v9.f64[0] = v17;
  v9.f64[1] = a7;
  __asm { FMOV            V3.2S, #1.0 }

  return (v15 + v15) / vcvt_f32_f64(v9).f32[0];
}

+ (id)findMipmapLevel:(id)a3 largerThan:(id *)a4
{
  v6 = *a4;
  v4 = [a1 findMipmapLevel:a3 largerThan:&v6 fromLevel:0];

  return v4;
}

+ (id)findMipmapLevel:(id)a3 largerThan:(id *)a4 fromLevel:(int)a5
{
  v7 = a3;
  if ([v7 count])
  {
    v8 = a5;
    while (1)
    {
      v9 = v8;
      if ([v7 count] - 1 <= v8)
      {
        v15 = [v7 lastObject];
        goto LABEL_11;
      }

      ++v8;
      v10 = [v7 objectAtIndexedSubscript:v9 + 1];
      if ([v10 width] < a4->var0)
      {
        break;
      }

      v11 = [v7 objectAtIndexedSubscript:v9 + 1];
      v12 = [v11 height];
      var1 = a4->var1;

      if (v12 < var1)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    v15 = [v7 objectAtIndexedSubscript:v9];
LABEL_11:
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (double)transformFromRotation:(__n128)a3 translation:(__n128)a4
{
  v4.i64[0] = vzip1q_s32(a1, a2).u64[0];
  v4.i64[1] = __PAIR64__(a4.n128_u32[0], a3.n128_u32[0]);
  v5.i64[0] = vtrn2q_s32(a1, a2).u64[0];
  v5.i64[1] = __PAIR64__(a4.n128_u32[1], a3.n128_u32[1]);
  v6.i64[0] = vzip2q_s32(a1, a2).u64[0];
  v6.i64[1] = __PAIR64__(a4.n128_u32[2], a3.n128_u32[2]);
  *&result = vzip1q_s32(vzip1q_s32(v4, v6), vzip1q_s32(v5, 0)).u64[0];
  return result;
}

+ (double)mirrorMatrix4x4OverX:(__n128)a3
{
  v4 = 0;
  v5 = *(MEMORY[0x277D860B8] + 16);
  v6 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  v15 = a2;
  v16 = a3;
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
  v16 = v6;
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