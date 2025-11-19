@interface PTRaytracingUtilsV1
+ (PTFocus)createFocusObject:(SEL)a3 pyramidSamplingFraction:(id)a4 anamorphicFactor:(float)a5 raytracingRadiusLocal:(float)a6 rayCount:(float)a7 colorSize:(int)a8 doMacroApertureLimit:(BOOL)a9;
+ (PTFocusEdge)createFocusEdge;
+ (PTNoiseValues)calculateVarReadNoise:(id)a3;
+ (id)precomputeNoise:(id)a3 sideLength:(int)a4;
- (PTRaytracingUtilsV1)initWithMetalContext:(id)a3;
- (int)convertRGBPyramidFromSource:(id)a3 renderRequest:(id)a4 rgbaPyramidArray:(id)a5 skipLevel0:(BOOL)a6;
- (int)detectDilatedEdges:(id)a3 inDisparity:(id)a4 tempEdges:(id)a5 outEdges:(id)a6 focusObject:(PTFocus *)a7 disparityDiffMinMax:(id)a8 edgeTolerance:(float)a9;
- (void)centerDisparityOnFocus:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 focusObject:(PTFocus *)a6;
- (void)focusEdgeMask:(id)a3 inDisparityDiff:(id)a4 focusObject:(PTFocus *)a5 focusEdge:(PTFocusEdge)a6 outFocusEdgeMask:(id)a7;
- (void)interpolateRGBRadiusToDest:(id)a3 renderRequest:(id)a4 inRGBA:(id)a5 inRGBRadius:(id)a6 inRandomGauss:(id)a7 bicubicSampling:(BOOL)a8;
- (void)interpolateRGBRadiusUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBRadius:(id)a5 inRandomGauss:(id)a6 bicubicSampling:(BOOL)a7;
@end

@implementation PTRaytracingUtilsV1

- (PTRaytracingUtilsV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v127.receiver = self;
  v127.super_class = PTRaytracingUtilsV1;
  v6 = [(PTRaytracingUtilsV1 *)&v127 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v8 = objc_opt_new();
    [v8 setNormalizedCoordinates:1];
    [v8 setMinFilter:1];
    [v8 setMagFilter:1];
    v9 = [v5 device];
    v10 = [v9 newSamplerStateWithDescriptor:v8];
    sNLE = v7->_sNLE;
    v7->_sNLE = v10;

    if (v7->_sNLE)
    {
      [v8 setMinFilter:2];
      [v8 setMagFilter:2];
      v12 = [v5 device];
      v13 = [v12 newSamplerStateWithDescriptor:v8];
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
              v125 = v5;
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
                  v5 = v125;
                  goto LABEL_41;
                }
              }

              v81 = _PTLogSystem();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingUtilsV1 *)v81 initWithMetalContext:v82, v83, v84, v85, v86, v87, v88];
              }

LABEL_39:
              v5 = v125;
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

- (void)interpolateRGBRadiusUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBRadius:(id)a5 inRandomGauss:(id)a6 bicubicSampling:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = 0;
  v51 = 0u;
  v52 = 0u;
  if (v13)
  {
    [v13 scissorRect];
    v16 = vmovn_s64(v51);
  }

  v50[1] = v16.i16[2];
  v50[0] = v16.i16[0];
  v17 = 488;
  if (v7)
  {
    v17 = 480;
  }

  v18 = *(&self->super.isa + v17);
  v49 = 0;
  if (v15)
  {
    -[PTRandom nextUshort2:](self->_random, "nextUshort2:", [v15 width] - 1);
    HIWORD(v49) = v19;
    LOWORD(v49) = v20;
  }

  [PTRaytracingUtilsV1 calculateVarReadNoise:v13, v52];
  v48[0] = v21;
  v48[1] = v22;
  v23 = [v13 destinationColor];
  v24 = [v23 transferFunction];
  v25 = [PTColorConversion getTransferFunction:v24 toLinear:1];

  v26 = [v13 destinationColor];
  LODWORD(v24) = [v26 isRGB];

  if (v24)
  {
    [v12 setComputePipelineState:self->_interpolateRGBRadiusToDestRGBAFromSource[v25]];
    v27 = [v13 sourceColor];
    v28 = [v27 texRGBA];
    [v12 setTexture:v28 atIndex:0];

    [v12 setTexture:v14 atIndex:1];
    [v12 setTexture:v15 atIndex:2];
    v29 = [v13 destinationColor];
    v30 = [v29 texRGBA];
    [v12 setTexture:v30 atIndex:3];

    [v12 setBytes:v48 length:8 atIndex:0];
    [v12 setBytes:v50 length:4 atIndex:1];
    v31 = v12;
    v32 = 2;
  }

  else
  {
    v46 = 0uLL;
    v47 = 0;
    v33 = [v13 destinationColor];
    [PTColorConversion getColorMatrix:v33 toRGB:0];

    v44 = 0uLL;
    v45 = 0;
    v34 = [v13 destinationColor];
    [PTColorConversion getColorMatrix:v34 toRGB:1];

    [v12 setComputePipelineState:self->_interpolateRGBRadiusToDestYUVFromSource[v25]];
    v35 = [v13 sourceColor];
    v36 = [v35 texLuma];
    [v12 setTexture:v36 atIndex:0];

    v37 = [v13 sourceColor];
    v38 = [v37 texChroma];
    [v12 setTexture:v38 atIndex:1];

    [v12 setTexture:v14 atIndex:2];
    [v12 setTexture:v15 atIndex:3];
    v39 = [v13 destinationColor];
    v40 = [v39 texLuma];
    [v12 setTexture:v40 atIndex:4];

    v41 = [v13 destinationColor];
    v42 = [v41 texChroma];
    [v12 setTexture:v42 atIndex:5];

    [v12 setBytes:v48 length:8 atIndex:0];
    [v12 setBytes:&v46 length:24 atIndex:1];
    [v12 setBytes:&v44 length:24 atIndex:2];
    [v12 setBytes:v50 length:4 atIndex:3];
    v31 = v12;
    v32 = 4;
  }

  [v31 setBytes:&v49 length:4 atIndex:v32];
  [v12 setSamplerState:v18 atIndex:0];
  v46 = v43;
  v47 = 1;
  v44 = xmmword_2244A5220;
  v45 = 1;
  [v12 dispatchThreads:&v46 threadsPerThreadgroup:&v44];
}

- (void)interpolateRGBRadiusToDest:(id)a3 renderRequest:(id)a4 inRGBA:(id)a5 inRGBRadius:(id)a6 inRandomGauss:(id)a7 bicubicSampling:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a3;
  [PTRaytracingUtilsV1 calculateVarReadNoise:v14];
  v47[0] = v19;
  v47[1] = v20;
  v21 = 0;
  v45 = 0u;
  v46 = 0u;
  if (v14)
  {
    [v14 scissorRect];
    v21 = vmovn_s64(v45);
  }

  v44[1] = v21.i16[2];
  v44[0] = v21.i16[0];
  v22 = 488;
  if (v8)
  {
    v22 = 480;
  }

  v23 = *(&self->super.isa + v22);
  v43 = 0;
  if (v17)
  {
    -[PTRandom nextUshort2:](self->_random, "nextUshort2:", [v17 width] - 1);
    HIWORD(v43) = v24;
    LOWORD(v43) = v25;
  }

  v26 = [v14 destinationColor];
  v27 = [v26 transferFunction];
  v28 = [PTColorConversion getTransferFunction:v27 toLinear:1];

  v29 = [v14 destinationColor];
  LODWORD(v27) = [v29 isRGB];

  if (v27)
  {
    [v18 setComputePipelineState:self->_interpolateRGBRadiusToDestRGBA[v28]];
    [v18 setTexture:v15 atIndex:0];
    [v18 setTexture:v16 atIndex:1];
    [v18 setTexture:v17 atIndex:2];
    v30 = [v14 destinationColor];
    v31 = [v30 texRGBA];
    [v18 setTexture:v31 atIndex:3];

    [v18 setBytes:v47 length:8 atIndex:0];
    [v18 setBytes:v44 length:4 atIndex:1];
    v32 = v18;
    v33 = 2;
  }

  else
  {
    v41 = 0uLL;
    v42 = 0;
    v34 = [v14 destinationColor];
    [PTColorConversion getColorMatrix:v34 toRGB:0];

    [v18 setComputePipelineState:self->_interpolateRGBRadiusToDestYUV[v28]];
    [v18 setTexture:v15 atIndex:0];
    [v18 setTexture:v16 atIndex:1];
    [v18 setTexture:v17 atIndex:2];
    v35 = [v14 destinationColor];
    v36 = [v35 texLuma];
    [v18 setTexture:v36 atIndex:3];

    v37 = [v14 destinationColor];
    v38 = [v37 texChroma];
    [v18 setTexture:v38 atIndex:4];

    [v18 setBytes:v47 length:8 atIndex:0];
    [v18 setBytes:&v41 length:24 atIndex:1];
    [v18 setBytes:v44 length:4 atIndex:2];
    v32 = v18;
    v33 = 3;
  }

  [v32 setBytes:&v43 length:4 atIndex:v33];
  [v18 setSamplerState:v23 atIndex:0];
  v41 = v46;
  v42 = 1;
  v39 = xmmword_2244A5220;
  v40 = 1;
  [v18 dispatchThreads:&v41 threadsPerThreadgroup:&v39];
}

- (int)convertRGBPyramidFromSource:(id)a3 renderRequest:(id)a4 rgbaPyramidArray:(id)a5 skipLevel0:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 sourceColor];
  v14 = [v13 transferFunction];
  v15 = [PTColorConversion getTransferFunction:v14 toLinear:1];

  v16 = [v12 computeCommandEncoder];

  if (!v16)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v17 disparityApplyPostModifier:v18 inDisparity:v19 outDisparity:v20 postModifier:v21, v22, v23, v24];
    }
  }

  v25 = [v10 sourceColor];
  v26 = [v25 isRGB];

  if (v26)
  {
    [v16 setComputePipelineState:self->_convertRGBPyramid[v15]];
    v27 = [v10 sourceColor];
    v28 = [v27 texRGBA];
    [v16 setTexture:v28 atIndex:0];

    if (v6)
    {
      [v16 setTexture:0 atIndex:1];
    }

    else
    {
      v34 = [v11 objectAtIndexedSubscript:0];
      [v16 setTexture:v34 atIndex:1];
    }

    v35 = [v11 objectAtIndexedSubscript:1];
    [v16 setTexture:v35 atIndex:2];
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v29 = [v10 sourceColor];
    [PTColorConversion getColorMatrix:v29 toRGB:1];

    [v16 setComputePipelineState:self->_convertRGBPyramidFromYUV[v15]];
    v30 = [v10 sourceColor];
    v31 = [v30 texLuma];
    [v16 setTexture:v31 atIndex:0];

    v32 = [v10 sourceColor];
    v33 = [v32 texChroma];
    [v16 setTexture:v33 atIndex:1];

    if (v6)
    {
      [v16 setTexture:0 atIndex:2];
    }

    else
    {
      v36 = [v11 objectAtIndexedSubscript:0];
      [v16 setTexture:v36 atIndex:2];
    }

    v37 = [v11 objectAtIndexedSubscript:1];
    [v16 setTexture:v37 atIndex:3];

    [v16 setBytes:&v45 length:24 atIndex:0];
  }

  v38 = [v10 sourceColor];
  v39 = [v38 width] >> 1;
  v40 = [v10 sourceColor];
  v41 = [v40 height];
  v45 = v39;
  v46 = v41 >> 1;
  v47 = 1;
  v43 = xmmword_2244A5230;
  v44 = 1;
  [v16 dispatchThreads:&v45 threadsPerThreadgroup:&v43];

  [v16 endEncoding];
  return 0;
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

- (void)centerDisparityOnFocus:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 focusObject:(PTFocus *)a6
{
  v26 = flt_2244A53A0[(a6->var2 * 1000.0) > 70.0] / a6->var0;
  v10 = a5;
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

  [v12 setComputePipelineState:self->_centerDisparityOnFocus];
  [v12 setTexture:v11 atIndex:0];

  [v12 setTexture:v10 atIndex:1];
  [v12 setBytes:&a6->var1 length:4 atIndex:0];
  [v12 setBytes:&v26 length:4 atIndex:1];
  v21 = [v10 width];
  v22 = [v10 height];

  v25[0] = v21;
  v25[1] = v22;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [v12 dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [v12 endEncoding];
}

- (int)detectDilatedEdges:(id)a3 inDisparity:(id)a4 tempEdges:(id)a5 outEdges:(id)a6 focusObject:(PTFocus *)a7 disparityDiffMinMax:(id)a8 edgeTolerance:(float)a9
{
  v44 = a9;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [a3 computeCommandEncoder];
  if (!v19)
  {
    v20 = _PTLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
    }
  }

  [v19 setComputePipelineState:self->_sobelEdgeDetector];
  [v19 setTexture:v18 atIndex:0];
  [v19 setTexture:v16 atIndex:1];
  [v19 setBytes:&v44 length:4 atIndex:0];
  v41 = [v16 width];
  v42 = [v16 height];
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [v19 dispatchThreads:&v41 threadsPerThreadgroup:&v39];
  var2 = a7->var2;
  +[PTRaytracingUtilsV1 frameWidth];
  v30 = (var2 / v29) * a7->var0;
  v31 = [v18 width];

  v38 = v30 * v31;
  v37 = 1;
  [v19 setComputePipelineState:self->_edgeDilation];
  [v19 setTexture:v16 atIndex:0];
  [v19 setTexture:v17 atIndex:1];
  [v19 setBytes:&v37 length:1 atIndex:0];
  [v19 setBytes:&v38 length:4 atIndex:1];
  [v19 setBuffer:v15 offset:0 atIndex:2];
  v32 = [v16 width];
  v33 = [v16 height];
  v41 = v32;
  v42 = v33;
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [v19 dispatchThreads:&v41 threadsPerThreadgroup:&v39];
  v37 = 0;
  [v19 setComputePipelineState:self->_edgeDilation];
  [v19 setTexture:v17 atIndex:0];

  [v19 setTexture:v16 atIndex:1];
  [v19 setBytes:&v37 length:1 atIndex:0];
  [v19 setBytes:&v38 length:4 atIndex:1];
  [v19 setBuffer:v15 offset:0 atIndex:2];

  v34 = [v16 width];
  v35 = [v16 height];

  v41 = v34;
  v42 = v35;
  v43 = 1;
  v39 = xmmword_2244A5230;
  v40 = 1;
  [v19 dispatchThreads:&v41 threadsPerThreadgroup:&v39];
  [v19 endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)a3 pyramidSamplingFraction:(id)a4 anamorphicFactor:(float)a5 raytracingRadiusLocal:(float)a6 rayCount:(float)a7 colorSize:(int)a8 doMacroApertureLimit:(BOOL)a9
{
  v10 = a9;
  v58 = v9;
  v61 = *MEMORY[0x277D85DE8];
  v15 = a4;
  [v15 focusDisparity];
  v17 = v16;
  [v15 fNumber];
  v19 = v18;
  [v15 alphaLowLight];
  v21 = v20;
  [v15 focalLenIn35mmFilm];
  v23 = v22;
  [v15 visCropFactor];
  v55 = v24;
  [v15 visCropFactor];
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
  if (v10)
  {
    v56 = v27;
    v32 = v23;
    v33 = a7;
    v34 = a5;
    if ([v15 sensorID] == 19)
    {
      v35 = 6.6;
      v36 = 0.4;
    }

    else
    {
      v35 = 2.8;
      v36 = 1.3333;
    }

    [v15 networkBias];
    v38 = (((v35 * (v31 - v37)) / v36) * 0.33333) + v19 * 0.666666657;
    if (v38 >= v19)
    {
      v39 = v38;
      v19 = v39;
    }

    a5 = v34;
    a7 = v33;
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
  v45 = v43 / (a7 + 1.0);
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

  *v47.i32 = 1.0 / a6;
  *&v47.i32[1] = a6;
  v48 = vdiv_f32(vdup_lane_s32(v42, 0), v46);
  *&retstr[1].var0 = vmul_n_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v45, v58), 0), vrev64_s32(v47), v47), v48), v44);
  *v47.i32 = 1.0 / sqrt(a8 / 3.14159265) * a5;
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

+ (id)precomputeNoise:(id)a3 sideLength:(int)a4
{
  v5 = a3;
  v6 = a4 * a4;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:(4 * a4 * a4)];
  v8 = [[PTRandom alloc] initWithSeed:0x7FFFFFFFLL];
  v9 = [v7 bytes];
  v10 = v9;
  if (a4)
  {
    if ((2 * v6) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (2 * v6);
    }

    v12 = v9;
    do
    {
      [(PTRandom *)v8 nextFloat];
      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:60 width:a4 height:a4 mipmapped:0];
  [v14 setUsage:3];
  v15 = [v5 newTextureWithDescriptor:v14];
  memset(v17, 0, 24);
  v17[3] = a4;
  v17[4] = a4;
  v17[5] = 1;
  [v15 replaceRegion:v17 mipmapLevel:0 withBytes:v10 bytesPerRow:4 * a4];

  return v15;
}

+ (PTNoiseValues)calculateVarReadNoise:(id)a3
{
  v3 = a3;
  v4 = [v3 AGC];
  v5 = [v3 conversionGain];
  v6 = [v3 readNoise_1x];
  v7 = [v3 readNoise_8x];
  v8 = [v3 sensorID];
  if (v8 == 1811 || v8 == 1300)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = [v3 renderState];
  v12 = [v11 sourceColorBitDepth];

  [v3 totalSensorCropRectSize];
  v14 = v13;
  v15 = [v3 sourceColor];
  v16 = v14 / [v15 width];
  [v3 totalSensorCropRectSize];
  v18 = v16 * v17;
  v19 = [v3 sourceColor];

  v20 = v10 / (v18 / [v19 height]);
  v21 = v20 / 1023.0;
  if (v12 == 10)
  {
    v21 = (v20 / 1023.0) * 12.0;
  }

  v22 = v4 / 255.0;
  v23 = (v5 / 65535.0) * v21;
  v24 = (v6 / 65535.0) * (v6 / 65535.0);
  v25 = (v24 - ((v7 / 65535.0) * (v7 / 65535.0))) / 0.98438;
  v26 = v23 * ((v25 + ((v22 * (v24 - v25)) * v22)) * v23);
  v27 = v22 * v23;
  result.var1 = v27;
  result.var0 = v26;
  return result;
}

@end