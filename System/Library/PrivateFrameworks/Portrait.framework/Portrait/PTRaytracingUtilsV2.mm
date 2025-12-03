@interface PTRaytracingUtilsV2
+ (PTFocus)createFocusObject:(SEL)object pyramidSamplingFraction:(id)fraction anamorphicFactor:(float)factor rayCount:(float)count colorSize:(int)size doMacroApertureLimit:(BOOL)limit;
+ (PTFocusEdge)createFocusEdge;
- (PTRaytracingUtilsV2)initWithMetalContext:(id)context;
- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance;
- (int)sobelEdgeDetection:(id)detection inImage:(id)image outEdges:(id)edges edgeTolerance:(float)tolerance;
- (void)centerDisparityOnFocus:(id)focus inDisparity:(id)disparity outDisparity:(id)outDisparity focusObject:(PTFocus *)object foregroundBlurLimitingFactor:(float)factor;
- (void)focusEdgeMask:(id)mask inDisparityDiff:(id)diff focusObject:(PTFocus *)object focusEdge:(PTFocusEdge)edge outFocusEdgeMask:(id)edgeMask;
@end

@implementation PTRaytracingUtilsV2

- (PTRaytracingUtilsV2)initWithMetalContext:(id)context
{
  contextCopy = context;
  v47.receiver = self;
  v47.super_class = PTRaytracingUtilsV2;
  v6 = [(PTRaytracingUtilsV2 *)&v47 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"centerDisparityOnFocusV2" withConstants:0];
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

  v10 = [contextCopy computePipelineStateFor:@"sobelEdgeDetectorV2" withConstants:0];
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

  v12 = [contextCopy computePipelineStateFor:@"edgeDilationV2" withConstants:0];
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

  v14 = [contextCopy computePipelineStateFor:@"focusEdgeMaskV2" withConstants:0];
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

- (void)focusEdgeMask:(id)mask inDisparityDiff:(id)diff focusObject:(PTFocus *)object focusEdge:(PTFocusEdge)edge outFocusEdgeMask:(id)edgeMask
{
  edgeCopy = edge;
  edgeMaskCopy = edgeMask;
  diffCopy = diff;
  computeCommandEncoder = [mask computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_focusEdgeMask];
  [computeCommandEncoder setTexture:diffCopy atIndex:0];

  [computeCommandEncoder setTexture:edgeMaskCopy atIndex:1];
  [computeCommandEncoder setBytes:object length:48 atIndex:0];
  [computeCommandEncoder setBytes:&edgeCopy length:16 atIndex:1];
  width = [edgeMaskCopy width];
  height = [edgeMaskCopy height];

  v18[0] = width;
  v18[1] = height;
  v18[2] = 1;
  v16 = xmmword_2244A5220;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)centerDisparityOnFocus:(id)focus inDisparity:(id)disparity outDisparity:(id)outDisparity focusObject:(PTFocus *)object foregroundBlurLimitingFactor:(float)factor
{
  factorCopy = factor;
  v27 = flt_2244A53A0[(object->var2 * 1000.0) > 70.0] / object->var0;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [focus computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v14 disparityApplyPostModifier:v15 inDisparity:v16 outDisparity:v17 postModifier:v18, v19, v20, v21];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_centerDisparityOnFocus];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&object->var1 length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v27 length:4 atIndex:1];
  [computeCommandEncoder setBytes:&factorCopy length:4 atIndex:2];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v26[0] = width;
  v26[1] = height;
  v26[2] = 1;
  v24 = xmmword_2244A5230;
  v25 = 1;
  [computeCommandEncoder dispatchThreads:v26 threadsPerThreadgroup:&v24];
  [computeCommandEncoder endEncoding];
}

- (int)sobelEdgeDetection:(id)detection inImage:(id)image outEdges:(id)edges edgeTolerance:(float)tolerance
{
  toleranceCopy = tolerance;
  edgesCopy = edges;
  imageCopy = image;
  computeCommandEncoder = [detection computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_sobelEdgeDetector];
  [computeCommandEncoder setTexture:imageCopy atIndex:0];

  [computeCommandEncoder setTexture:edgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&toleranceCopy length:4 atIndex:0];
  width = [edgesCopy width];
  height = [edgesCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance
{
  maxCopy = max;
  outEdgesCopy = outEdges;
  tempEdgesCopy = tempEdges;
  disparityCopy = disparity;
  edgesCopy = edges;
  *&v21 = tolerance;
  [(PTRaytracingUtilsV2 *)self sobelEdgeDetection:edgesCopy inImage:disparityCopy outEdges:outEdgesCopy edgeTolerance:v21];
  computeCommandEncoder = [edgesCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v23 disparityApplyPostModifier:v24 inDisparity:v25 outDisparity:v26 postModifier:v27, v28, v29, v30];
    }
  }

  var2 = object->var2;
  +[PTRaytracingUtilsV2 frameWidth];
  v33 = (var2 / v32) * object->var0;
  width = [disparityCopy width];

  v44 = v33 * width;
  v43 = 1;
  [computeCommandEncoder setComputePipelineState:self->_edgeDilation];
  [computeCommandEncoder setTexture:outEdgesCopy atIndex:0];
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v43 length:1 atIndex:0];
  [computeCommandEncoder setBytes:&v44 length:4 atIndex:1];
  [computeCommandEncoder setBuffer:maxCopy offset:0 atIndex:2];

  width2 = [outEdgesCopy width];
  height = [outEdgesCopy height];
  v42 = 1;
  v38 = xmmword_2244A5230;
  v39 = 1;
  [computeCommandEncoder dispatchThreads:&width2 threadsPerThreadgroup:&v38];
  v43 = 0;
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:0];

  [computeCommandEncoder setTexture:outEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v43 length:1 atIndex:0];
  width3 = [outEdgesCopy width];
  height2 = [outEdgesCopy height];

  width2 = width3;
  height = height2;
  v42 = 1;
  v38 = xmmword_2244A5230;
  v39 = 1;
  [computeCommandEncoder dispatchThreads:&width2 threadsPerThreadgroup:&v38];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)object pyramidSamplingFraction:(id)fraction anamorphicFactor:(float)factor rayCount:(float)count colorSize:(int)size doMacroApertureLimit:(BOOL)limit
{
  limitCopy = limit;
  v54 = v8;
  fractionCopy = fraction;
  [fractionCopy focusDisparity];
  v14 = v13;
  [fractionCopy fNumber];
  v16 = v15;
  [fractionCopy alphaLowLight];
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
  if (limitCopy)
  {
    if ([fractionCopy sensorID] == 19)
    {
      v21 = 6.6;
      v22 = 0.4;
    }

    else
    {
      v21 = 2.8;
      v22 = 1.3333;
    }

    [fractionCopy focusDisparity];
    v24 = v23;
    [fractionCopy networkBias];
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
  [fractionCopy visCropFactor];
  v51 = v30;
  [fractionCopy visCropFactor];
  if (v51 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v51;
  }

  [fractionCopy visCropFactorPreview];
  v52 = v33;
  [fractionCopy visCropFactorPreview];
  if (v52 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v52;
  }

  [fractionCopy focalLenIn35mmFilm];
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

  *v42.i32 = 1.0 / count;
  *&v42.i32[1] = count;
  v43 = vdiv_f32(vdup_lane_s32(v37, 0), v41);
  *&retstr[1].var0 = vmul_n_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v39, v54), 0), vrev64_s32(v42), v42), v43), v38);
  v44 = 1.0 / sqrt(size / 3.14159265) * factor;
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