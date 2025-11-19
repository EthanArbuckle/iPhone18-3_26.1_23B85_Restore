@interface PTRaytracingUtils
+ (PTFocus)createFocusObject:(SEL)a3 anamorphicFactor:(id)a4 radialObstructionFactor:(float)a5 colorSize:(float)a6 circleOfConfusionReference:(float)a7 fNumberLimitWeight:(float)a8;
+ (PTFocusEdge)createFocusEdge;
- (PTRaytracingUtils)initWithMetalContext:(id)a3;
- (int)detectDilatedEdges:(id)a3 inDisparity:(id)a4 tempEdges:(id)a5 outEdges:(id)a6 focusObject:(PTFocus *)a7 disparityDiffMinMax:(id)a8 edgeTolerance:(float)a9;
- (int)sobelEdgeDetection:(id)a3 inImage:(id)a4 outEdges:(id)a5 edgeTolerance:(float)a6;
- (void)disparityApplyPostModifier:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 postModifier:(PTPostModifier)a6;
- (void)disparityMinMaxApplyPostModifier:(id)a3 disparityMinMaxBuffer:(id)a4 postModifier:(PTPostModifier)a5;
- (void)disparityPortraitPreviewDeadzone:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 postModifier:(PTPostModifier)a6;
- (void)focusEdgeMask:(id)a3 inDisparityDiff:(id)a4 focusEdge:(PTFocusEdge)a5 outFocusEdgeMask:(id)a6;
@end

@implementation PTRaytracingUtils

- (PTRaytracingUtils)initWithMetalContext:(id)a3
{
  v5 = a3;
  v65.receiver = self;
  v65.super_class = PTRaytracingUtils;
  v6 = [(PTRaytracingUtils *)&v65 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [v5 computePipelineStateFor:@"disparityApplyPostModifier" withConstants:0];
  disparityApplyPostModifier = v7->_disparityApplyPostModifier;
  v7->_disparityApplyPostModifier = v8;

  if (!v7->_disparityApplyPostModifier)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v22, v23, v24, v25, v26, v27, v28];
    }

    goto LABEL_21;
  }

  v10 = [v5 computePipelineStateFor:@"disparityPortraitPreviewDeadzone" withConstants:0];
  disparityPortraitPreviewDeadzone = v7->_disparityPortraitPreviewDeadzone;
  v7->_disparityPortraitPreviewDeadzone = v10;

  if (!v7->_disparityPortraitPreviewDeadzone)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v29, v30, v31, v32, v33, v34, v35];
    }

    goto LABEL_21;
  }

  v12 = [v5 computePipelineStateFor:@"disparityMinMaxApplyPostModifier" withConstants:0];
  disparityMinMaxApplyPostModifier = v7->_disparityMinMaxApplyPostModifier;
  v7->_disparityMinMaxApplyPostModifier = v12;

  if (!v7->_disparityMinMaxApplyPostModifier)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v36, v37, v38, v39, v40, v41, v42];
    }

    goto LABEL_21;
  }

  v14 = [v5 computePipelineStateFor:@"sobelEdgeDetector" withConstants:0];
  sobelEdgeDetector = v7->_sobelEdgeDetector;
  v7->_sobelEdgeDetector = v14;

  if (!v7->_sobelEdgeDetector)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v43, v44, v45, v46, v47, v48, v49];
    }

    goto LABEL_21;
  }

  v16 = [v5 computePipelineStateFor:@"edgeDilation" withConstants:0];
  edgeDilation = v7->_edgeDilation;
  v7->_edgeDilation = v16;

  if (!v7->_edgeDilation)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v50, v51, v52, v53, v54, v55, v56];
    }

    goto LABEL_21;
  }

  v18 = [v5 computePipelineStateFor:@"focusEdgeMask" withConstants:0];
  focusEdgeMask = v7->_focusEdgeMask;
  v7->_focusEdgeMask = v18;

  if (!v7->_focusEdgeMask)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 initWithMetalContext:v57, v58, v59, v60, v61, v62, v63];
    }

LABEL_21:

LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  v20 = v7;
LABEL_23:

  return v20;
}

- (void)focusEdgeMask:(id)a3 inDisparityDiff:(id)a4 focusEdge:(PTFocusEdge)a5 outFocusEdgeMask:(id)a6
{
  v17 = a5;
  v9 = a6;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  [v11 setComputePipelineState:self->_focusEdgeMask];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v17 length:16 atIndex:0];
  v12 = [v9 width];
  v13 = [v9 height];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = xmmword_2244A5220;
  v15 = 1;
  [v11 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v11 endEncoding];
}

- (void)disparityApplyPostModifier:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 postModifier:(PTPostModifier)a6
{
  v25 = a6;
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

  [v11 setComputePipelineState:self->_disparityApplyPostModifier];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v25 length:12 atIndex:0];
  v20 = [v9 width];
  v21 = [v9 height];

  v24[0] = v20;
  v24[1] = v21;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [v11 dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [v11 endEncoding];
}

- (void)disparityPortraitPreviewDeadzone:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 postModifier:(PTPostModifier)a6
{
  v29 = a6;
  v9 = 1.0 / (0.1 - (1.0 / a6.var0));
  v10 = 1.0 / fmax(-0.100000001 - 1.0 / a6.var0, 0.05);
  v27 = v10;
  v28 = v9;
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

  [v13 setComputePipelineState:self->_disparityPortraitPreviewDeadzone];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setBytes:&v29 length:12 atIndex:0];
  [v13 setBytes:&v28 length:4 atIndex:1];
  [v13 setBytes:&v27 length:4 atIndex:2];
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

- (void)disparityMinMaxApplyPostModifier:(id)a3 disparityMinMaxBuffer:(id)a4 postModifier:(PTPostModifier)a5
{
  v21 = a5;
  v7 = a4;
  v8 = [a3 computeCommandEncoder];
  if (!v8)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v9 disparityApplyPostModifier:v10 inDisparity:v11 outDisparity:v12 postModifier:v13, v14, v15, v16];
    }
  }

  [v8 setComputePipelineState:self->_disparityMinMaxApplyPostModifier];
  [v8 setBuffer:v7 offset:0 atIndex:0];

  [v8 setBytes:&v21 length:12 atIndex:1];
  v19 = vdupq_n_s64(1uLL);
  v20 = 1;
  v17 = xmmword_2244A5230;
  v18 = 1;
  [v8 dispatchThreads:&v19 threadsPerThreadgroup:&v17];
  [v8 endEncoding];
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
  v16 = a4;
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  *&v21 = a9;
  [(PTRaytracingUtils *)self sobelEdgeDetection:v20 inImage:v16 outEdges:v18 edgeTolerance:v21];
  v22 = [v20 computeCommandEncoder];

  if (!v22)
  {
    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v23 disparityApplyPostModifier:v24 inDisparity:v25 outDisparity:v26 postModifier:v27, v28, v29, v30];
    }
  }

  var3 = a7->var3;
  v41 = var3 * [v16 width];
  v40 = 1;
  [v22 setComputePipelineState:self->_edgeDilation];
  [v22 setTexture:v18 atIndex:0];
  [v22 setTexture:v19 atIndex:1];
  [v22 setBytes:&v40 length:1 atIndex:0];
  [v22 setBytes:&v41 length:4 atIndex:1];
  [v22 setBuffer:v17 offset:0 atIndex:2];

  v37 = [v18 width];
  v38 = [v18 height];
  v39 = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [v22 dispatchThreads:&v37 threadsPerThreadgroup:&v35];
  v40 = 0;
  [v22 setTexture:v19 atIndex:0];

  [v22 setTexture:v18 atIndex:1];
  [v22 setBytes:&v40 length:1 atIndex:0];
  v32 = [v18 width];
  v33 = [v18 height];

  v37 = v32;
  v38 = v33;
  v39 = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [v22 dispatchThreads:&v37 threadsPerThreadgroup:&v35];
  [v22 endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)a3 anamorphicFactor:(id)a4 radialObstructionFactor:(float)a5 colorSize:(float)a6 circleOfConfusionReference:(float)a7 fNumberLimitWeight:(float)a8
{
  v9 = v8;
  v47 = *&a7;
  v13 = a4;
  [v13 visCropFactor];
  v50 = v14;
  [v13 visCropFactor];
  if (v50 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v50;
  }

  [v13 visCropFactorPreview];
  v51 = v17;
  [v13 visCropFactorPreview];
  if (v51 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v51;
  }

  [v13 focalLenIn35mmFilm];
  *&v21 = v20 / 1000.0 * v16;
  *v21.i32 = *v21.i32;
  v52 = v21;
  [v13 fNumber];
  v23 = v22 / v19;
  [v13 focusDisparity];
  v25 = v24;
  [v13 networkBias];
  v27 = ((((v25 - v26) * (*v52.i32 * *v52.i32)) / a8) * v9) + v23 * (1.0 - v9);
  if (v27 >= v23)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  [v13 alphaLowLight];
  v30 = v28;
  if (v28 < 0.1)
  {
    v30 = 0.1;
  }

  *&retstr[1].var0 = 0;
  *&retstr[1].var2 = 0;
  v31 = (1.0 - v29) * 22.0 + v30 * v29;
  *&retstr->var4 = 0;
  [v13 focusDisparity];
  v33 = v32;

  retstr->var1 = v33;
  LODWORD(retstr->var2) = v52.i32[0];
  v36 = *v52.i32 / (v31 + v31);
  v35 = v36;
  retstr->var0 = v35;
  LODWORD(v36) = v48.i32[1];
  v37.i32[0] = 1024685244;
  if (v48.f32[1] <= v48.f32[0])
  {
    v38.i32[0] = vdup_lane_s32(v37, 0).u32[0];
    v38.f32[1] = vmuls_lane_f32(0.036, v48, 1) / v48.f32[0];
  }

  else
  {
    v38 = vdup_lane_s32(v37, 0);
    v38.f32[0] = (v48.f32[0] * 0.036) / v48.f32[1];
  }

  *v39.i32 = 1.0 / a5;
  *&v39.i32[1] = a5;
  v40 = vmul_n_f32(vdiv_f32(vdup_lane_s32(v52, 0), v38), v35);
  *&retstr[1].var0 = vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v36, v48), 0), vrev64_s32(v39), v39), v40);
  LODWORD(retstr->var3) = v40.i32[0];
  if (v48.f32[0] <= v48.f32[1])
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[1] = v48.f32[1] / v48.f32[0];
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[0] = v48.f32[0] / v48.f32[1];
  }

  v46 = a6 + -1.0 / a6;
  *&retstr[1].var4 = vmul_n_f32(_D0, v46);
  return result;
}

+ (PTFocusEdge)createFocusEdge
{
  v2 = 0.1;
  v3 = 3.0;
  v4 = 0.125;
  v5 = 6.0;
  result.minMaxThreshold = v2;
  result.gradientWeight = v5;
  result.gradientThreshold = v4;
  result.width = v3;
  return result;
}

@end