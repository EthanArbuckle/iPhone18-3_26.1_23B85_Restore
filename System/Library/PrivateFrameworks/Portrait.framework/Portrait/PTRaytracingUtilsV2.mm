@interface PTRaytracingUtilsV2
+ (PTFocus)createFocusObject:(SEL)a3 pyramidSamplingFraction:(id)a4 anamorphicFactor:(float)a5 rayCount:(float)a6 colorSize:(int)a7 doMacroApertureLimit:(BOOL)a8;
+ (PTFocusEdge)createFocusEdge;
- (PTRaytracingUtilsV2)initWithMetalContext:(id)a3;
- (int)detectDilatedEdges:(id)a3 inDisparity:(id)a4 tempEdges:(id)a5 outEdges:(id)a6 focusObject:(PTFocus *)a7 disparityDiffMinMax:(id)a8 edgeTolerance:(float)a9;
- (int)sobelEdgeDetection:(id)a3 inImage:(id)a4 outEdges:(id)a5 edgeTolerance:(float)a6;
- (void)centerDisparityOnFocus:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 focusObject:(PTFocus *)a6 foregroundBlurLimitingFactor:(float)a7;
- (void)focusEdgeMask:(id)a3 inDisparityDiff:(id)a4 focusObject:(PTFocus *)a5 focusEdge:(PTFocusEdge)a6 outFocusEdgeMask:(id)a7;
@end

@implementation PTRaytracingUtilsV2

- (PTRaytracingUtilsV2)initWithMetalContext:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = PTRaytracingUtilsV2;
  v6 = [(PTRaytracingUtilsV2 *)&v47 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [v5 computePipelineStateFor:@"centerDisparityOnFocusV2" withConstants:0];
  centerDisparityOnFocus = v7->_centerDisparityOnFocus;
  v7->_centerDisparityOnFocus = v8;

  if (!v7->_centerDisparityOnFocus)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtilsV2 *)v17 initWithMetalContext:v18, v19, v20, v21, v22, v23, v24];
    }

    goto LABEL_15;
  }

  v10 = [v5 computePipelineStateFor:@"sobelEdgeDetectorV2" withConstants:0];
  sobelEdgeDetector = v7->_sobelEdgeDetector;
  v7->_sobelEdgeDetector = v10;

  if (!v7->_sobelEdgeDetector)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v17 initWithMetalContext:v25, v26, v27, v28, v29, v30, v31];
    }

    goto LABEL_15;
  }

  v12 = [v5 computePipelineStateFor:@"edgeDilationV2" withConstants:0];
  edgeDilation = v7->_edgeDilation;
  v7->_edgeDilation = v12;

  if (!v7->_edgeDilation)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v17 initWithMetalContext:v32, v33, v34, v35, v36, v37, v38];
    }

    goto LABEL_15;
  }

  v14 = [v5 computePipelineStateFor:@"focusEdgeMaskV2" withConstants:0];
  focusEdgeMask = v7->_focusEdgeMask;
  v7->_focusEdgeMask = v14;

  if (!v7->_focusEdgeMask)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v17 initWithMetalContext:v39, v40, v41, v42, v43, v44, v45];
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

- (void)focusEdgeMask:(id)a3 inDisparityDiff:(id)a4 focusObject:(PTFocus *)a5 focusEdge:(PTFocusEdge)a6 outFocusEdgeMask:(id)a7
{
  v19 = a6;
  v11 = a7;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->_focusEdgeMask];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setBytes:a5 length:48 atIndex:0];
  [v13 setBytes:&v19 length:16 atIndex:1];
  v14 = [v11 width];
  v15 = [v11 height];

  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 1;
  v16 = xmmword_2244A5220;
  v17 = 1;
  [v13 dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [v13 endEncoding];
}

- (void)centerDisparityOnFocus:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 focusObject:(PTFocus *)a6 foregroundBlurLimitingFactor:(float)a7
{
  v28 = a7;
  v27 = flt_2244A53A0[(a6->var2 * 1000.0) > 70.0] / a6->var0;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  if (!v13)
  {
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v14 disparityApplyPostModifier:v15 inDisparity:v16 outDisparity:v17 postModifier:v18, v19, v20, v21];
    }
  }

  [v13 setComputePipelineState:self->_centerDisparityOnFocus];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setBytes:&a6->var1 length:4 atIndex:0];
  [v13 setBytes:&v27 length:4 atIndex:1];
  [v13 setBytes:&v28 length:4 atIndex:2];
  v22 = [v11 width];
  v23 = [v11 height];

  v26[0] = v22;
  v26[1] = v23;
  v26[2] = 1;
  v24 = xmmword_2244A5230;
  v25 = 1;
  [v13 dispatchThreads:v26 threadsPerThreadgroup:&v24];
  [v13 endEncoding];
}

- (int)sobelEdgeDetection:(id)a3 inImage:(id)a4 outEdges:(id)a5 edgeTolerance:(float)a6
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

  [v11 setComputePipelineState:self->_sobelEdgeDetector];
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

- (int)detectDilatedEdges:(id)a3 inDisparity:(id)a4 tempEdges:(id)a5 outEdges:(id)a6 focusObject:(PTFocus *)a7 disparityDiffMinMax:(id)a8 edgeTolerance:(float)a9
{
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  *&v21 = a9;
  [(PTRaytracingUtilsV2 *)self sobelEdgeDetection:v20 inImage:v19 outEdges:v17 edgeTolerance:v21];
  v22 = [v20 computeCommandEncoder];

  if (!v22)
  {
    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v23 disparityApplyPostModifier:v24 inDisparity:v25 outDisparity:v26 postModifier:v27, v28, v29, v30];
    }
  }

  var2 = a7->var2;
  +[PTRaytracingUtilsV2 frameWidth];
  v33 = (var2 / v32) * a7->var0;
  v34 = [v19 width];

  v44 = v33 * v34;
  v43 = 1;
  [v22 setComputePipelineState:self->_edgeDilation];
  [v22 setTexture:v17 atIndex:0];
  [v22 setTexture:v18 atIndex:1];
  [v22 setBytes:&v43 length:1 atIndex:0];
  [v22 setBytes:&v44 length:4 atIndex:1];
  [v22 setBuffer:v16 offset:0 atIndex:2];

  v40 = [v17 width];
  v41 = [v17 height];
  v42 = 1;
  v38 = xmmword_2244A5230;
  v39 = 1;
  [v22 dispatchThreads:&v40 threadsPerThreadgroup:&v38];
  v43 = 0;
  [v22 setTexture:v18 atIndex:0];

  [v22 setTexture:v17 atIndex:1];
  [v22 setBytes:&v43 length:1 atIndex:0];
  v35 = [v17 width];
  v36 = [v17 height];

  v40 = v35;
  v41 = v36;
  v42 = 1;
  v38 = xmmword_2244A5230;
  v39 = 1;
  [v22 dispatchThreads:&v40 threadsPerThreadgroup:&v38];
  [v22 endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)a3 pyramidSamplingFraction:(id)a4 anamorphicFactor:(float)a5 rayCount:(float)a6 colorSize:(int)a7 doMacroApertureLimit:(BOOL)a8
{
  v9 = a8;
  v54 = v8;
  v55 = a4;
  [v55 focusDisparity];
  v14 = v13;
  [v55 fNumber];
  v16 = v15;
  [v55 alphaLowLight];
  v18 = v17;
  *&retstr[1].var0 = 0;
  *&retstr[1].var2 = 0;
  *&retstr->var4 = 0;
  v19 = v14;
  if (v14 < 0.025)
  {
    v19 = 0.025;
  }

  v20 = fmin(v19, 10.0);
  retstr->var1 = v20;
  if (v9)
  {
    if ([v55 sensorID] == 19)
    {
      v21 = 6.6;
      v22 = 0.4;
    }

    else
    {
      v21 = 2.8;
      v22 = 1.3333;
    }

    [v55 focusDisparity];
    v24 = v23;
    [v55 networkBias];
    v26 = (((v21 * (v24 - v25)) / v22) * 0.33333) + v16 * 0.666666657;
    if (v26 >= v16)
    {
      v27 = v26;
      v16 = v27;
    }
  }

  v28 = v16;
  if (v16 < 0.1)
  {
    v28 = 0.1;
  }

  v29 = (1.0 - v18) * 22.0 + v28 * v18;
  [v55 visCropFactor];
  v51 = v30;
  [v55 visCropFactor];
  if (v51 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v51;
  }

  [v55 visCropFactorPreview];
  v52 = v33;
  [v55 visCropFactorPreview];
  if (v52 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v52;
  }

  [v55 focalLenIn35mmFilm];
  *v37.i32 = v36 / 1000.0 * v32;
  LODWORD(retstr->var2) = v37.i32[0];
  v39 = *v37.i32 / (v29 + v29) * v35;
  v38 = v39;
  retstr->var0 = v38;
  LODWORD(v39) = v54.i32[1];
  v40.i32[0] = 1024685244;
  if (v54.f32[1] <= v54.f32[0])
  {
    v41.i32[0] = vdup_lane_s32(v40, 0).u32[0];
    v41.f32[1] = vmuls_lane_f32(0.036, v54, 1) / v54.f32[0];
  }

  else
  {
    v41 = vdup_lane_s32(v40, 0);
    v41.f32[0] = (v54.f32[0] * 0.036) / v54.f32[1];
  }

  *v42.i32 = 1.0 / a6;
  *&v42.i32[1] = a6;
  v43 = vdiv_f32(vdup_lane_s32(v37, 0), v41);
  *&retstr[1].var0 = vmul_n_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v39, v54), 0), vrev64_s32(v42), v42), v43), v38);
  v44 = 1.0 / sqrt(a7 / 3.14159265) * a5;
  retstr->var3 = (v54.f32[0] * (v38 * v43.f32[0])) * v44;
  retstr->var4 = v44;
  retstr[1].var2 = 0.02 / v44;
  if (v54.f32[0] <= v54.f32[1])
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[1] = v54.f32[1] / v54.f32[0];
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[0] = v54.f32[0] / v54.f32[1];
  }

  *&retstr[1].var4 = vmul_f32(_D0, vdup_n_s32(0xBE582D86));

  return result;
}

+ (PTFocusEdge)createFocusEdge
{
  v2 = 0.1;
  v3 = 4.0;
  v4 = 0.125;
  v5 = 6.0;
  result.minMaxThreshold = v2;
  result.gradientWeight = v5;
  result.gradientThreshold = v4;
  result.width = v3;
  return result;
}

@end