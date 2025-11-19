@interface PTRaytracingV14
- (PTRaytracingV14)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9;
- (int)renderContinuousWithSource:(id)a3 renderRequest:(id)a4;
@end

@implementation PTRaytracingV14

- (PTRaytracingV14)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9
{
  v9 = *&a9;
  height = a5.height;
  width = a5.width;
  v14 = a4.height;
  v15 = a4.width;
  v18 = a3;
  v19 = a8;
  v89.receiver = self;
  v89.super_class = PTRaytracingV14;
  v20 = [(PTRaytracingV14 *)&v89 init];
  if (!v20)
  {
    goto LABEL_21;
  }

  PTKTraceInit();
  v20->_disparitySize.width = width;
  v20->_disparitySize.height = height;
  objc_storeStrong(&v20->_metalContext, a3);
  v20->_debugRendering = a6;
  objc_storeStrong(&v20->_options, a8);
  +[PTRaytracingUtilsV1 createFocusEdge];
  v20->_focusEdge.width = v21;
  v20->_focusEdge.gradientThreshold = v22;
  v20->_focusEdge.gradientWeight = v23;
  v20->_focusEdge.minMaxThreshold = v24;
  v25 = [[PTColorConversion alloc] initWithMetalContext:v18];
  colorConversion = v20->_colorConversion;
  v20->_colorConversion = v25;

  if (!v20->_colorConversion)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(PTApplyHomographies *)v34 initWithMetalContext:v35 colorSize:v36 disparitySize:v37, v38, v39, v40, v41];
    }

    goto LABEL_20;
  }

  v27 = [[PTRaytracingUtilsV1 alloc] initWithMetalContext:v20->_metalContext];
  raytracingUtils = v20->_raytracingUtils;
  v20->_raytracingUtils = v27;

  if (!v20->_raytracingUtils)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v34 initWithMetalContext:v42 colorSize:v43 disparitySize:v44 debugRendering:v45 verbose:v46 options:v47 quality:v48];
    }

    goto LABEL_20;
  }

  v29 = [[PTUtil alloc] initWithMetalContext:v20->_metalContext];
  util = v20->_util;
  v20->_util = v29;

  if (!v20->_util)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v34 initWithMetalContext:v49 colorSize:v50 disparitySize:v51 debugRendering:v52 verbose:v53 options:v54 quality:v55];
    }

    goto LABEL_20;
  }

  v20->_bicubicUpscale = 0;
  v31 = [v19 objectForKeyedSubscript:&unk_2837F3208];
  v20->_injectedRGBAPyramid = v31 != 0;

  if (v20->_injectedRGBAPyramid)
  {
    v32 = [v19 objectForKeyedSubscript:&unk_2837F3208];
    rgbaPyramid = v20->_rgbaPyramid;
    v20->_rgbaPyramid = v32;
  }

  else
  {
    v56 = [PTPyramid alloc];
    metalContext = v20->_metalContext;
    v58 = [(PTRaytracingV14RenderState *)v20->_renderState qualitySettings];
    v59 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:](v56, "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", metalContext, 115, 0, [v58 doFirstLevelGaussianDownsample], 4, v15, v14);
    v60 = v20->_rgbaPyramid;
    v20->_rgbaPyramid = v59;

    if (!v20->_rgbaPyramid)
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV14 *)v34 initWithMetalContext:v78 colorSize:v79 disparitySize:v80 debugRendering:v81 verbose:v82 options:v83 quality:v84];
      }

      goto LABEL_20;
    }
  }

  v61 = [PTRaytracingV14RenderState alloc];
  v87 = v20->_metalContext;
  v88 = v61;
  v86 = v20->_util;
  v62 = [(PTPyramid *)v20->_rgbaPyramid mipmapTexture];
  v63 = [v62 pixelFormat];
  options = v20->_options;
  v65 = objc_alloc(MEMORY[0x277CBEA60]);
  v66 = [(PTPyramid *)v20->_rgbaPyramid mipmapTexture];
  v67 = [v65 initWithObjects:{v66, 0}];
  v68 = [(PTRaytracingV14RenderState *)v88 initWithMetalContext:v87 util:v86 quality:v9 colorSize:a6 disparitySize:v63 debugRendering:options pyramidPixelFormat:v15 options:v14 debugTextures:v20->_disparitySize.width, v20->_disparitySize.height, v67];
  renderState = v20->_renderState;
  v20->_renderState = v68;

  if (!v20->_renderState)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v34 initWithMetalContext:v71 colorSize:v72 disparitySize:v73 debugRendering:v74 verbose:v75 options:v76 quality:v77];
    }

LABEL_20:

LABEL_21:
    v70 = 0;
    goto LABEL_22;
  }

  v70 = v20;
LABEL_22:

  return v70;
}

- (int)renderContinuousWithSource:(id)a3 renderRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 renderState];
  [v8 quality];
  [v7 fNumber];
  [v7 focusDisparity];
  [v7 alphaLowLight];
  kdebug_trace();

  v141 = 0u;
  v142 = 0u;
  v140 = 0u;
  [(PTRaytracingV14RenderState *)self->_renderState pyramidSamplingFraction];
  v10 = v9;
  [(PTRaytracingV14RenderState *)self->_renderState anamorphicFactor];
  v12 = v11;
  [(PTRaytracingV14RenderState *)self->_renderState raytracingRadiusLocal];
  v14 = v13;
  v15 = [(PTRaytracingV14RenderState *)self->_renderState rayCount];
  [(PTRaytracingV14RenderState *)self->_renderState colorSize];
  v17 = v16;
  v18 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  v19 = [v18 doMacroApertureLimit];
  LODWORD(v20) = v10;
  LODWORD(v21) = v12;
  LODWORD(v22) = v14;
  [PTRaytracingUtilsV1 createFocusObject:v7 pyramidSamplingFraction:v15 anamorphicFactor:v19 raytracingRadiusLocal:v20 rayCount:v21 colorSize:v22 doMacroApertureLimit:v17];

  v138 = 0u;
  v139 = 0u;
  if (v7)
  {
    [v7 scissorRect];
  }

  if (self->_injectedRGBAPyramid)
  {
    v23 = 0;
    goto LABEL_21;
  }

  v24 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  v25 = [v24 doFirstLevelGaussianDownsample];

  if (v25)
  {
    colorConversion = self->_colorConversion;
    v27 = [v7 sourceColor];
    v28 = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v29 = [v28 objectAtIndexedSubscript:0];
    LODWORD(colorConversion) = [(PTColorConversion *)colorConversion convertRGBLinearFromPTTexture:v6 inPTTexture:v27 outRGBA:v29];

    if (colorConversion)
    {
      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v23 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:v6 offset:0];
    if (v23)
    {
      v31 = _PTLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
    raytracingUtils = self->_raytracingUtils;
    v33 = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    LODWORD(raytracingUtils) = [(PTRaytracingUtilsV1 *)raytracingUtils convertRGBPyramidFromSource:v6 renderRequest:v7 rgbaPyramidArray:v33 skipLevel0:1];

    if (raytracingUtils)
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v23 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:v6 offset:1];
    if (v23)
    {
      v31 = _PTLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        [PTEffect render:];
      }

LABEL_20:
    }
  }

LABEL_21:
  v35 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  v36 = [v35 doCenterDisparity];

  if (v36)
  {
    v37 = self->_raytracingUtils;
    v38 = [v7 sourceDisparity];
    v39 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
    v135 = v140;
    v136 = v141;
    v137 = v142;
    [(PTRaytracingUtilsV1 *)v37 centerDisparityOnFocus:v6 inDisparity:v38 outDisparity:v39 focusObject:&v135];

    v40 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
  }

  else
  {
    v40 = [v7 sourceDisparity];
  }

  v41 = v40;
  v42 = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];

  if (v42)
  {
    v43 = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];
    v44 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [v43 parallelReductionMinMax:v6 inTexture:v41 globalMinMaxBuffer:v44];

    v45 = self->_raytracingUtils;
    v46 = [(PTRaytracingV14RenderState *)self->_renderState disparityEdgesTemp];
    v47 = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
    v48 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [(PTRaytracingV14RenderState *)self->_renderState edgeTolerance];
    v135 = v140;
    v136 = v141;
    v137 = v142;
    [(PTRaytracingUtilsV1 *)v45 detectDilatedEdges:v6 inDisparity:v41 tempEdges:v46 outEdges:v47 focusObject:&v135 disparityDiffMinMax:v48 edgeTolerance:?];
  }

  v126 = v23;
  v49 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];

  if (v49)
  {
    rgbaPyramid = self->_rgbaPyramid;
    v51 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    v52 = [v51 upscaledTexture];
    v53 = [v52 width];
    [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    v54 = v41;
    v56 = v55 = v6;
    v57 = [v56 upscaledTexture];
    v58 = [v57 height];
    *&v135 = v53;
    *(&v135 + 1) = v58;
    *&v136 = 0;
    v59 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
    v60 = -[PTPyramid findMipmapLevelLargerThan:fromLevel:](rgbaPyramid, "findMipmapLevelLargerThan:fromLevel:", &v135, [v59 doFirstLevelGaussianDownsample] ^ 1);

    v6 = v55;
    v61 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    v62 = [v7 sourceColor];
    v41 = [v61 guidedUpsampling:v55 inDisparity:v54 inRGBA:v60 colorDepth:{objc_msgSend(v62, "YCbCrColorDepth")}];
  }

  v63 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];

  if (v63)
  {
    v64 = self->_raytracingUtils;
    v65 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
    HIDWORD(v66) = DWORD1(v141);
    v135 = v140;
    v136 = v141;
    HIDWORD(v67) = DWORD1(v142);
    v137 = v142;
    *&v67 = self->_focusEdge.width;
    *&v66 = self->_focusEdge.gradientThreshold;
    *&v68 = self->_focusEdge.gradientWeight;
    *&v69 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtilsV1 *)v64 focusEdgeMask:v6 inDisparityDiff:v41 focusObject:&v135 focusEdge:v65 outFocusEdgeMask:v67, v66, v68, v69];
  }

  v70 = [v7 sourceDisparity];
  v127 = [v70 width];
  v71 = [v7 sourceDisparity];
  v72 = [v71 height];
  *v73.i32 = v127;
  *&v73.i32[1] = v72;
  v128 = v73;

  v74 = v128;
  v134 = v128;
  v74.i16[0] = v138;
  v125 = v74;
  v75 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [v75 renderDownscale];
  v128.i32[0] = v76;
  v77 = v125;
  v77.i16[2] = WORD4(v138);
  v78 = vcvt_f32_u32(vand_s8(v77, 0xFFFF0000FFFFLL));
  v79 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [v79 renderDownscale];
  v129 = vcvt_s32_f32(vdiv_f32(v78, __PAIR64__(v80, v128.u32[0])));

  v133[1] = v129.i16[2];
  v133[0] = v129.i16[0];
  v78.f32[0] = v139;
  v81 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [v81 renderDownscale];
  v83 = vcvtps_u32_f32(v78.f32[0] / v82);
  v78.f32[0] = *(&v139 + 1);
  v84 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [v84 renderDownscale];
  v86 = vcvtps_u32_f32(v78.f32[0] / v85);

  v87 = [v6 computeCommandEncoder];
  if (!v87)
  {
    v88 = _PTLogSystem();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v88 disparityApplyPostModifier:v89 inDisparity:v90 outDisparity:v91 postModifier:v92, v93, v94, v95];
    }
  }

  v96 = [(PTRaytracingV14RenderState *)self->_renderState raytracingSDOF];
  [v87 setComputePipelineState:v96];

  v97 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [v87 setTexture:v97 atIndex:0];

  [v87 setTexture:v41 atIndex:1];
  v98 = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
  [v87 setTexture:v98 atIndex:2];

  v99 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  [v87 setTexture:v99 atIndex:3];

  v100 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
  [v87 setTexture:v100 atIndex:4];

  [v87 setBytes:&v140 length:48 atIndex:0];
  v101 = [(PTRaytracingV14RenderState *)self->_renderState aperturePointsXY];
  [v87 setBuffer:v101 offset:0 atIndex:1];

  v102 = [(PTRaytracingV14RenderState *)self->_renderState randomUChars];
  [v87 setBuffer:v102 offset:0 atIndex:2];

  v103 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
  [v87 setBuffer:v103 offset:0 atIndex:3];

  [v87 setBytes:&v134 length:8 atIndex:4];
  [v87 setBytes:v133 length:4 atIndex:5];
  *&v135 = v83;
  *(&v135 + 1) = v86;
  *&v136 = 1;
  v131 = vdupq_n_s64(8uLL);
  v132 = 1;
  [v87 dispatchThreads:&v135 threadsPerThreadgroup:&v131];
  [v87 endEncoding];
  v104 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  v105 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

  if (v105)
  {
    v106 = [(PTMetalContext *)self->_metalContext textureUtil];
    v107 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
    v108 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];
    [v106 copy:v6 inTex:v107 outTex:v108];

    v109 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

    v104 = v109;
  }

  v110 = [v6 computeCommandEncoder];

  if (!v110)
  {
    v111 = _PTLogSystem();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v111 disparityApplyPostModifier:v112 inDisparity:v113 outDisparity:v114 postModifier:v115, v116, v117, v118];
    }
  }

  v119 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  v120 = [v119 doFirstLevelGaussianDownsample];

  v121 = self->_raytracingUtils;
  if (v120)
  {
    v122 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
    v123 = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v121 interpolateRGBRadiusToDest:v110 renderRequest:v7 inRGBA:v122 inRGBRadius:v104 inRandomGauss:v123 bicubicSampling:self->_bicubicUpscale];
  }

  else
  {
    v122 = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v121 interpolateRGBRadiusUsingSourceToDest:v110 renderRequest:v7 inRGBRadius:v104 inRandomGauss:v122 bicubicSampling:self->_bicubicUpscale];
  }

  [v110 endEncoding];
  if (kdebug_is_enabled())
  {
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __60__PTRaytracingV14_renderContinuousWithSource_renderRequest___block_invoke;
    v130[3] = &unk_278522E68;
    v130[4] = self;
    [v6 addCompletedHandler:v130];
  }

  return v126;
}

void __60__PTRaytracingV14_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) disparityUpscale];
  v5 = [*(*(a1 + 32) + 8) qualitySettings];
  [v5 renderDownscale];
  kdebug_trace();

  if ([v3 status] != 4)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(v3, v6);
    }

    if ([v3 status] != 4)
    {
      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(v3, v7);
      }
    }
  }
}

@end