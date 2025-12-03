@interface PTRaytracingUtilsV1
+ (PTFocus)createFocusObject:(SEL)object pyramidSamplingFraction:(id)fraction anamorphicFactor:(float)factor raytracingRadiusLocal:(float)local rayCount:(float)count colorSize:(int)size doMacroApertureLimit:(BOOL)limit;
+ (PTFocusEdge)createFocusEdge;
+ (PTNoiseValues)calculateVarReadNoise:(id)noise;
+ (id)precomputeNoise:(id)noise sideLength:(int)length;
- (PTRaytracingUtilsV1)initWithMetalContext:(id)context;
- (int)convertRGBPyramidFromSource:(id)source renderRequest:(id)request rgbaPyramidArray:(id)array skipLevel0:(BOOL)level0;
- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance;
- (void)centerDisparityOnFocus:(id)focus inDisparity:(id)disparity outDisparity:(id)outDisparity focusObject:(PTFocus *)object;
- (void)focusEdgeMask:(id)mask inDisparityDiff:(id)diff focusObject:(PTFocus *)object focusEdge:(PTFocusEdge)edge outFocusEdgeMask:(id)edgeMask;
- (void)interpolateRGBRadiusToDest:(id)dest renderRequest:(id)request inRGBA:(id)a inRGBRadius:(id)radius inRandomGauss:(id)gauss bicubicSampling:(BOOL)sampling;
- (void)interpolateRGBRadiusUsingSourceToDest:(id)dest renderRequest:(id)request inRGBRadius:(id)radius inRandomGauss:(id)gauss bicubicSampling:(BOOL)sampling;
@end

@implementation PTRaytracingUtilsV1

- (PTRaytracingUtilsV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v127.receiver = self;
  v127.super_class = PTRaytracingUtilsV1;
  v6 = [(PTRaytracingUtilsV1 *)&v127 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = objc_opt_new();
    [v8 setNormalizedCoordinates:1];
    [v8 setMinFilter:1];
    [v8 setMagFilter:1];
    device = [contextCopy device];
    v10 = [device newSamplerStateWithDescriptor:v8];
    sNLE = v7->_sNLE;
    v7->_sNLE = v10;

    if (v7->_sNLE)
    {
      [v8 setMinFilter:2];
      [v8 setMagFilter:2];
      device2 = [contextCopy device];
      v13 = [device2 newSamplerStateWithDescriptor:v8];
      sNBE = v7->_sNBE;
      v7->_sNBE = v13;

      v15 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"centerDisparityOnFocus_V1" withConstants:0];
      centerDisparityOnFocus = v7->_centerDisparityOnFocus;
      v7->_centerDisparityOnFocus = v15;

      if (v7->_centerDisparityOnFocus)
      {
        v17 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"sobelEdgeDetector_V1" withConstants:0];
        sobelEdgeDetector = v7->_sobelEdgeDetector;
        v7->_sobelEdgeDetector = v17;

        if (v7->_sobelEdgeDetector)
        {
          v19 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"edgeDilation_V1" withConstants:0];
          edgeDilation = v7->_edgeDilation;
          v7->_edgeDilation = v19;

          if (v7->_edgeDilation)
          {
            v21 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"focusEdgeMask_V1" withConstants:0];
            focusEdgeMask = v7->_focusEdgeMask;
            v7->_focusEdgeMask = v21;

            if (v7->_focusEdgeMask)
            {
              v125 = contextCopy;
              v23 = objc_opt_new();
              v24 = 0;
              interpolateRGBRadiusToDestYUV = v7->_interpolateRGBRadiusToDestYUV;
              interpolateRGBRadiusToDestYUVFromSource = v7->_interpolateRGBRadiusToDestYUVFromSource;
              interpolateRGBRadiusToDestRGBA = v7->_interpolateRGBRadiusToDestRGBA;
              interpolateRGBRadiusToDestRGBAFromSource = v7->_interpolateRGBRadiusToDestRGBAFromSource;
              convertRGBPyramid = v7->_convertRGBPyramid;
              convertRGBPyramidFromYUV = v7->_convertRGBPyramidFromYUV;
              while (1)
              {
                v126 = supportedColorTransferFunctions[v24];
                [v23 reset];
                [v23 setConstantValue:&v126 type:29 withName:@"kColorTransferFunctionToLinear"];
                v31 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"interpolateRGBRadiusToDestYUV_V1" withConstants:v23];
                v32 = interpolateRGBRadiusToDestYUV[v126];
                interpolateRGBRadiusToDestYUV[v126] = v31;

                if (!interpolateRGBRadiusToDestYUV[v126])
                {
                  break;
                }

                v33 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"interpolateRGBRadiusToDestYUVFromSource_V1" withConstants:v23];
                v34 = interpolateRGBRadiusToDestYUVFromSource[v126];
                interpolateRGBRadiusToDestYUVFromSource[v126] = v33;

                if (!interpolateRGBRadiusToDestYUVFromSource[v126])
                {
                  v81 = _PTLogSystem();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v89, v90, v91, v92, v93, v94, v95];
                  }

                  goto LABEL_39;
                }

                v35 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"interpolateRGBRadiusToDestRGB_V1" withConstants:v23];
                v36 = interpolateRGBRadiusToDestRGBA[v126];
                interpolateRGBRadiusToDestRGBA[v126] = v35;

                if (!interpolateRGBRadiusToDestRGBA[v126])
                {
                  v81 = _PTLogSystem();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v96, v97, v98, v99, v100, v101, v102];
                  }

                  goto LABEL_39;
                }

                v37 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"interpolateRGBRadiusToDestRGBFromSource_V1" withConstants:v23];
                v38 = interpolateRGBRadiusToDestRGBAFromSource[v126];
                interpolateRGBRadiusToDestRGBAFromSource[v126] = v37;

                if (!interpolateRGBRadiusToDestRGBAFromSource[v126])
                {
                  v81 = _PTLogSystem();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v103, v104, v105, v106, v107, v108, v109];
                  }

                  goto LABEL_39;
                }

                v39 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"convertRGBPyramid_V1" withConstants:v23];
                v40 = convertRGBPyramid[v126];
                convertRGBPyramid[v126] = v39;

                if (!convertRGBPyramid[v126])
                {
                  v81 = _PTLogSystem();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v110, v111, v112, v113, v114, v115, v116];
                  }

                  goto LABEL_39;
                }

                v41 = [(PTMetalContext *)v7->_metalContext computePipelineStateFor:@"convertRGBPyramidFromYUV_V1" withConstants:v23];
                v42 = convertRGBPyramidFromYUV[v126];
                convertRGBPyramidFromYUV[v126] = v41;

                if (!convertRGBPyramidFromYUV[v126])
                {
                  v81 = _PTLogSystem();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v117, v118, v119, v120, v121, v122, v123];
                  }

                  goto LABEL_39;
                }

                if (++v24 == 5)
                {
                  v43 = [[PTRandom alloc] initWithSeed:0x7FFFFFFFLL];
                  random = v7->_random;
                  v7->_random = v43;

                  v45 = v7;
                  contextCopy = v125;
                  goto LABEL_41;
                }
              }

              v81 = _PTLogSystem();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v82, v83, v84, v85, v86, v87, v88];
              }

LABEL_39:
              contextCopy = v125;
            }

            else
            {
              v23 = _PTLogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingUtils *)v23 initWithMetalContext:v74, v75, v76, v77, v78, v79, v80];
              }
            }
          }

          else
          {
            v23 = _PTLogSystem();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingUtils *)v23 initWithMetalContext:v67, v68, v69, v70, v71, v72, v73];
            }
          }
        }

        else
        {
          v23 = _PTLogSystem();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingUtils *)v23 initWithMetalContext:v60, v61, v62, v63, v64, v65, v66];
          }
        }
      }

      else
      {
        v23 = _PTLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingUtilsV2 *)v23 initWithMetalContext:v53, v54, v55, v56, v57, v58, v59];
        }
      }
    }

    else
    {
      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtilsV1 *)v23 initWithMetalContext:v46, v47, v48, v49, v50, v51, v52];
      }
    }

    v45 = 0;
LABEL_41:
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (void)interpolateRGBRadiusUsingSourceToDest:(id)dest renderRequest:(id)request inRGBRadius:(id)radius inRandomGauss:(id)gauss bicubicSampling:(BOOL)sampling
{
  samplingCopy = sampling;
  destCopy = dest;
  requestCopy = request;
  radiusCopy = radius;
  gaussCopy = gauss;
  v16 = 0;
  v51 = 0u;
  v52 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
    v16 = vmovn_s64(v51);
  }

  v50[1] = v16.i16[2];
  v50[0] = v16.i16[0];
  v17 = 488;
  if (samplingCopy)
  {
    v17 = 480;
  }

  v18 = *(&self->super.isa + v17);
  v49 = 0;
  if (gaussCopy)
  {
    -[PTRandom nextUshort2:](self->_random, "nextUshort2:", [gaussCopy width] - 1);
    HIWORD(v49) = v19;
    LOWORD(v49) = v20;
  }

  [PTRaytracingUtilsV1 calculateVarReadNoise:requestCopy, v52];
  v48[0] = v21;
  v48[1] = v22;
  destinationColor = [requestCopy destinationColor];
  transferFunction = [destinationColor transferFunction];
  v25 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  destinationColor2 = [requestCopy destinationColor];
  LODWORD(transferFunction) = [destinationColor2 isRGB];

  if (transferFunction)
  {
    [destCopy setComputePipelineState:self->_interpolateRGBRadiusToDestRGBAFromSource[v25]];
    sourceColor = [requestCopy sourceColor];
    texRGBA = [sourceColor texRGBA];
    [destCopy setTexture:texRGBA atIndex:0];

    [destCopy setTexture:radiusCopy atIndex:1];
    [destCopy setTexture:gaussCopy atIndex:2];
    destinationColor3 = [requestCopy destinationColor];
    texRGBA2 = [destinationColor3 texRGBA];
    [destCopy setTexture:texRGBA2 atIndex:3];

    [destCopy setBytes:v48 length:8 atIndex:0];
    [destCopy setBytes:v50 length:4 atIndex:1];
    v31 = destCopy;
    v32 = 2;
  }

  else
  {
    v46 = 0uLL;
    v47 = 0;
    destinationColor4 = [requestCopy destinationColor];
    [PTColorConversion getColorMatrix:destinationColor4 toRGB:0];

    v44 = 0uLL;
    v45 = 0;
    destinationColor5 = [requestCopy destinationColor];
    [PTColorConversion getColorMatrix:destinationColor5 toRGB:1];

    [destCopy setComputePipelineState:self->_interpolateRGBRadiusToDestYUVFromSource[v25]];
    sourceColor2 = [requestCopy sourceColor];
    texLuma = [sourceColor2 texLuma];
    [destCopy setTexture:texLuma atIndex:0];

    sourceColor3 = [requestCopy sourceColor];
    texChroma = [sourceColor3 texChroma];
    [destCopy setTexture:texChroma atIndex:1];

    [destCopy setTexture:radiusCopy atIndex:2];
    [destCopy setTexture:gaussCopy atIndex:3];
    destinationColor6 = [requestCopy destinationColor];
    texLuma2 = [destinationColor6 texLuma];
    [destCopy setTexture:texLuma2 atIndex:4];

    destinationColor7 = [requestCopy destinationColor];
    texChroma2 = [destinationColor7 texChroma];
    [destCopy setTexture:texChroma2 atIndex:5];

    [destCopy setBytes:v48 length:8 atIndex:0];
    [destCopy setBytes:&v46 length:24 atIndex:1];
    [destCopy setBytes:&v44 length:24 atIndex:2];
    [destCopy setBytes:v50 length:4 atIndex:3];
    v31 = destCopy;
    v32 = 4;
  }

  [v31 setBytes:&v49 length:4 atIndex:v32];
  [destCopy setSamplerState:v18 atIndex:0];
  v46 = v43;
  v47 = 1;
  v44 = xmmword_2244A5220;
  v45 = 1;
  [destCopy dispatchThreads:&v46 threadsPerThreadgroup:&v44];
}

- (void)interpolateRGBRadiusToDest:(id)dest renderRequest:(id)request inRGBA:(id)a inRGBRadius:(id)radius inRandomGauss:(id)gauss bicubicSampling:(BOOL)sampling
{
  samplingCopy = sampling;
  requestCopy = request;
  aCopy = a;
  radiusCopy = radius;
  gaussCopy = gauss;
  destCopy = dest;
  [PTRaytracingUtilsV1 calculateVarReadNoise:requestCopy];
  v47[0] = v19;
  v47[1] = v20;
  v21 = 0;
  v45 = 0u;
  v46 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
    v21 = vmovn_s64(v45);
  }

  v44[1] = v21.i16[2];
  v44[0] = v21.i16[0];
  v22 = 488;
  if (samplingCopy)
  {
    v22 = 480;
  }

  v23 = *(&self->super.isa + v22);
  v43 = 0;
  if (gaussCopy)
  {
    -[PTRandom nextUshort2:](self->_random, "nextUshort2:", [gaussCopy width] - 1);
    HIWORD(v43) = v24;
    LOWORD(v43) = v25;
  }

  destinationColor = [requestCopy destinationColor];
  transferFunction = [destinationColor transferFunction];
  v28 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  destinationColor2 = [requestCopy destinationColor];
  LODWORD(transferFunction) = [destinationColor2 isRGB];

  if (transferFunction)
  {
    [destCopy setComputePipelineState:self->_interpolateRGBRadiusToDestRGBA[v28]];
    [destCopy setTexture:aCopy atIndex:0];
    [destCopy setTexture:radiusCopy atIndex:1];
    [destCopy setTexture:gaussCopy atIndex:2];
    destinationColor3 = [requestCopy destinationColor];
    texRGBA = [destinationColor3 texRGBA];
    [destCopy setTexture:texRGBA atIndex:3];

    [destCopy setBytes:v47 length:8 atIndex:0];
    [destCopy setBytes:v44 length:4 atIndex:1];
    v32 = destCopy;
    v33 = 2;
  }

  else
  {
    v41 = 0uLL;
    v42 = 0;
    destinationColor4 = [requestCopy destinationColor];
    [PTColorConversion getColorMatrix:destinationColor4 toRGB:0];

    [destCopy setComputePipelineState:self->_interpolateRGBRadiusToDestYUV[v28]];
    [destCopy setTexture:aCopy atIndex:0];
    [destCopy setTexture:radiusCopy atIndex:1];
    [destCopy setTexture:gaussCopy atIndex:2];
    destinationColor5 = [requestCopy destinationColor];
    texLuma = [destinationColor5 texLuma];
    [destCopy setTexture:texLuma atIndex:3];

    destinationColor6 = [requestCopy destinationColor];
    texChroma = [destinationColor6 texChroma];
    [destCopy setTexture:texChroma atIndex:4];

    [destCopy setBytes:v47 length:8 atIndex:0];
    [destCopy setBytes:&v41 length:24 atIndex:1];
    [destCopy setBytes:v44 length:4 atIndex:2];
    v32 = destCopy;
    v33 = 3;
  }

  [v32 setBytes:&v43 length:4 atIndex:v33];
  [destCopy setSamplerState:v23 atIndex:0];
  v41 = v46;
  v42 = 1;
  v39 = xmmword_2244A5220;
  v40 = 1;
  [destCopy dispatchThreads:&v41 threadsPerThreadgroup:&v39];
}

- (int)convertRGBPyramidFromSource:(id)source renderRequest:(id)request rgbaPyramidArray:(id)array skipLevel0:(BOOL)level0
{
  level0Copy = level0;
  requestCopy = request;
  arrayCopy = array;
  sourceCopy = source;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v15 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  computeCommandEncoder = [sourceCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v17 disparityApplyPostModifier:v18 inDisparity:v19 outDisparity:v20 postModifier:v21, v22, v23, v24];
    }
  }

  sourceColor2 = [requestCopy sourceColor];
  isRGB = [sourceColor2 isRGB];

  if (isRGB)
  {
    [computeCommandEncoder setComputePipelineState:self->_convertRGBPyramid[v15]];
    sourceColor3 = [requestCopy sourceColor];
    texRGBA = [sourceColor3 texRGBA];
    [computeCommandEncoder setTexture:texRGBA atIndex:0];

    if (level0Copy)
    {
      [computeCommandEncoder setTexture:0 atIndex:1];
    }

    else
    {
      v34 = [arrayCopy objectAtIndexedSubscript:0];
      [computeCommandEncoder setTexture:v34 atIndex:1];
    }

    v35 = [arrayCopy objectAtIndexedSubscript:1];
    [computeCommandEncoder setTexture:v35 atIndex:2];
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    sourceColor4 = [requestCopy sourceColor];
    [PTColorConversion getColorMatrix:sourceColor4 toRGB:1];

    [computeCommandEncoder setComputePipelineState:self->_convertRGBPyramidFromYUV[v15]];
    sourceColor5 = [requestCopy sourceColor];
    texLuma = [sourceColor5 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:0];

    sourceColor6 = [requestCopy sourceColor];
    texChroma = [sourceColor6 texChroma];
    [computeCommandEncoder setTexture:texChroma atIndex:1];

    if (level0Copy)
    {
      [computeCommandEncoder setTexture:0 atIndex:2];
    }

    else
    {
      v36 = [arrayCopy objectAtIndexedSubscript:0];
      [computeCommandEncoder setTexture:v36 atIndex:2];
    }

    v37 = [arrayCopy objectAtIndexedSubscript:1];
    [computeCommandEncoder setTexture:v37 atIndex:3];

    [computeCommandEncoder setBytes:&v45 length:24 atIndex:0];
  }

  sourceColor7 = [requestCopy sourceColor];
  v39 = [sourceColor7 width] >> 1;
  sourceColor8 = [requestCopy sourceColor];
  height = [sourceColor8 height];
  v45 = v39;
  v46 = height >> 1;
  v47 = 1;
  v43 = xmmword_2244A5230;
  v44 = 1;
  [computeCommandEncoder dispatchThreads:&v45 threadsPerThreadgroup:&v43];

  [computeCommandEncoder endEncoding];
  return 0;
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

- (void)centerDisparityOnFocus:(id)focus inDisparity:(id)disparity outDisparity:(id)outDisparity focusObject:(PTFocus *)object
{
  v26 = flt_2244A53A0[(object->var2 * 1000.0) > 70.0] / object->var0;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [focus computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_centerDisparityOnFocus];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&object->var1 length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v26 length:4 atIndex:1];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];
}

- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance
{
  toleranceCopy = tolerance;
  maxCopy = max;
  outEdgesCopy = outEdges;
  tempEdgesCopy = tempEdges;
  disparityCopy = disparity;
  computeCommandEncoder = [edges computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v20 = _PTLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_sobelEdgeDetector];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:outEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&toleranceCopy length:4 atIndex:0];
  width = [outEdgesCopy width];
  height = [outEdgesCopy height];
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v39];
  var2 = object->var2;
  +[PTRaytracingUtilsV1 frameWidth];
  v30 = (var2 / v29) * object->var0;
  width2 = [disparityCopy width];

  v38 = v30 * width2;
  v37 = 1;
  [computeCommandEncoder setComputePipelineState:self->_edgeDilation];
  [computeCommandEncoder setTexture:outEdgesCopy atIndex:0];
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v37 length:1 atIndex:0];
  [computeCommandEncoder setBytes:&v38 length:4 atIndex:1];
  [computeCommandEncoder setBuffer:maxCopy offset:0 atIndex:2];
  width3 = [outEdgesCopy width];
  height2 = [outEdgesCopy height];
  width = width3;
  height = height2;
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v39];
  v37 = 0;
  [computeCommandEncoder setComputePipelineState:self->_edgeDilation];
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:0];

  [computeCommandEncoder setTexture:outEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v37 length:1 atIndex:0];
  [computeCommandEncoder setBytes:&v38 length:4 atIndex:1];
  [computeCommandEncoder setBuffer:maxCopy offset:0 atIndex:2];

  width4 = [outEdgesCopy width];
  height3 = [outEdgesCopy height];

  width = width4;
  height = height3;
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v39];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)object pyramidSamplingFraction:(id)fraction anamorphicFactor:(float)factor raytracingRadiusLocal:(float)local rayCount:(float)count colorSize:(int)size doMacroApertureLimit:(BOOL)limit
{
  limitCopy = limit;
  v58 = v9;
  v61 = *MEMORY[0x277D85DE8];
  fractionCopy = fraction;
  [fractionCopy focusDisparity];
  v17 = v16;
  [fractionCopy fNumber];
  v19 = v18;
  [fractionCopy alphaLowLight];
  v21 = v20;
  [fractionCopy focalLenIn35mmFilm];
  v23 = v22;
  [fractionCopy visCropFactor];
  v55 = v24;
  [fractionCopy visCropFactor];
  if (v55 >= v25)
  {
    v27 = v55;
  }

  else
  {
    v27 = v25;
  }

  v28 = v17;
  if (v17 > 10.0 || v28 < 0.025)
  {
    v29 = _PTLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v60 = v17;
      _os_log_impl(&dword_2243FB000, v29, OS_LOG_TYPE_INFO, "FocusDistance will be clipped during rendering. Was %f", buf, 0xCu);
    }
  }

  *&retstr->var4 = 0;
  *&retstr[1].var0 = 0;
  *&retstr[1].var2 = 0;
  v30 = 0.025;
  if (v28 >= 0.025)
  {
    v30 = v17;
  }

  v31 = fmin(v30, 10.0);
  retstr->var1 = v31;
  if (limitCopy)
  {
    v56 = v27;
    v32 = v23;
    countCopy = count;
    factorCopy = factor;
    if ([fractionCopy sensorID] == 19)
    {
      v35 = 6.6;
      v36 = 0.4;
    }

    else
    {
      v35 = 2.8;
      v36 = 1.3333;
    }

    [fractionCopy networkBias];
    v38 = (((v35 * (v31 - v37)) / v36) * 0.33333) + v19 * 0.666666657;
    if (v38 >= v19)
    {
      v39 = v38;
      v19 = v39;
    }

    factor = factorCopy;
    count = countCopy;
    v23 = v32;
    v27 = v56;
  }

  v40 = v19;
  if (v19 < 0.1)
  {
    v40 = 0.1;
  }

  v42 = COERCE_INT32X2_T(22.0);
  v41 = (1.0 - v21) * 22.0 + v40 * v21;
  *v42.i32 = v23 / 1000.0 * v27;
  LODWORD(retstr->var2) = v42.i32[0];
  v43 = *v42.i32 / (v41 + v41);
  retstr->var0 = v43;
  v45 = v43 / (count + 1.0);
  v44 = v45;
  LODWORD(v45) = v58.i32[1];
  v26.i32[0] = 1024685244;
  if (v58.f32[1] <= v58.f32[0])
  {
    v46.i32[0] = vdup_lane_s32(v26, 0).u32[0];
    v46.f32[1] = vmuls_lane_f32(0.036, v58, 1) / v58.f32[0];
  }

  else
  {
    v46 = vdup_lane_s32(v26, 0);
    v46.f32[0] = (v58.f32[0] * 0.036) / v58.f32[1];
  }

  *v47.i32 = 1.0 / local;
  *&v47.i32[1] = local;
  v48 = vdiv_f32(vdup_lane_s32(v42, 0), v46);
  *&retstr[1].var0 = vmul_n_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v45, v58), 0), vrev64_s32(v47), v47), v48), v44);
  *v47.i32 = 1.0 / sqrt(size / 3.14159265) * factor;
  retstr->var3 = (v58.f32[0] * (v44 * v48.f32[0])) * *v47.i32;
  LODWORD(retstr->var4) = v47.i32[0];
  retstr[1].var2 = 0.02 / *v47.i32;
  if (v58.f32[0] <= v58.f32[1])
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[1] = v58.f32[1] / v58.f32[0];
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[0] = v58.f32[0] / v58.f32[1];
  }

  *&retstr[1].var4 = vmul_f32(_D0, vdup_n_s32(0xBE582D86));

  return result;
}

+ (PTFocusEdge)createFocusEdge
{
  v2 = 0.0015;
  v3 = 0.1;
  v4 = 0.5;
  v5 = 1.5;
  result.minMaxThreshold = v3;
  result.gradientWeight = v5;
  result.gradientThreshold = v4;
  result.width = v2;
  return result;
}

+ (id)precomputeNoise:(id)noise sideLength:(int)length
{
  noiseCopy = noise;
  v6 = length * length;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:(4 * length * length)];
  v8 = [[PTRandom alloc] initWithSeed:0x7FFFFFFFLL];
  bytes = [v7 bytes];
  v10 = bytes;
  if (length)
  {
    if ((2 * v6) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (2 * v6);
    }

    v12 = bytes;
    do
    {
      [(PTRandom *)v8 nextFloat];
      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:60 width:length height:length mipmapped:0];
  [v14 setUsage:3];
  v15 = [noiseCopy newTextureWithDescriptor:v14];
  memset(v17, 0, 24);
  v17[3] = length;
  v17[4] = length;
  v17[5] = 1;
  [v15 replaceRegion:v17 mipmapLevel:0 withBytes:v10 bytesPerRow:4 * length];

  return v15;
}

+ (PTNoiseValues)calculateVarReadNoise:(id)noise
{
  noiseCopy = noise;
  v4 = [noiseCopy AGC];
  conversionGain = [noiseCopy conversionGain];
  readNoise_1x = [noiseCopy readNoise_1x];
  readNoise_8x = [noiseCopy readNoise_8x];
  sensorID = [noiseCopy sensorID];
  if (sensorID == 1811 || sensorID == 1300)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = 1.0;
  }

  renderState = [noiseCopy renderState];
  sourceColorBitDepth = [renderState sourceColorBitDepth];

  [noiseCopy totalSensorCropRectSize];
  v14 = v13;
  sourceColor = [noiseCopy sourceColor];
  v16 = v14 / [sourceColor width];
  [noiseCopy totalSensorCropRectSize];
  v18 = v16 * v17;
  sourceColor2 = [noiseCopy sourceColor];

  v20 = v10 / (v18 / [sourceColor2 height]);
  v21 = v20 / 1023.0;
  if (sourceColorBitDepth == 10)
  {
    v21 = (v20 / 1023.0) * 12.0;
  }

  v22 = v4 / 255.0;
  v23 = (conversionGain / 65535.0) * v21;
  v24 = (readNoise_1x / 65535.0) * (readNoise_1x / 65535.0);
  v25 = (v24 - ((readNoise_8x / 65535.0) * (readNoise_8x / 65535.0))) / 0.98438;
  v26 = v23 * ((v25 + ((v22 * (v24 - v25)) * v22)) * v23);
  v27 = v22 * v23;
  result.var1 = v27;
  result.var0 = v26;
  return result;
}

@end