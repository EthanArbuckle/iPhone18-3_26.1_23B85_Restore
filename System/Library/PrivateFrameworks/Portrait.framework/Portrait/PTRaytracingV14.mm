@interface PTRaytracingV14
- (PTRaytracingV14)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV14

- (PTRaytracingV14)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  height = disparitySize.height;
  width = disparitySize.width;
  v14 = size.height;
  v15 = size.width;
  contextCopy = context;
  optionsCopy = options;
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
  objc_storeStrong(&v20->_metalContext, context);
  v20->_debugRendering = rendering;
  objc_storeStrong(&v20->_options, options);
  +[PTRaytracingUtilsV1 createFocusEdge];
  v20->_focusEdge.width = v21;
  v20->_focusEdge.gradientThreshold = v22;
  v20->_focusEdge.gradientWeight = v23;
  v20->_focusEdge.minMaxThreshold = v24;
  v25 = [[PTColorConversion alloc] initWithMetalContext:contextCopy];
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
  v31 = [optionsCopy objectForKeyedSubscript:&unk_2837F3208];
  v20->_injectedRGBAPyramid = v31 != 0;

  if (v20->_injectedRGBAPyramid)
  {
    v32 = [optionsCopy objectForKeyedSubscript:&unk_2837F3208];
    rgbaPyramid = v20->_rgbaPyramid;
    v20->_rgbaPyramid = v32;
  }

  else
  {
    v56 = [PTPyramid alloc];
    metalContext = v20->_metalContext;
    qualitySettings = [(PTRaytracingV14RenderState *)v20->_renderState qualitySettings];
    v59 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:](v56, "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", metalContext, 115, 0, [qualitySettings doFirstLevelGaussianDownsample], 4, v15, v14);
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
  mipmapTexture = [(PTPyramid *)v20->_rgbaPyramid mipmapTexture];
  pixelFormat = [mipmapTexture pixelFormat];
  options = v20->_options;
  v65 = objc_alloc(MEMORY[0x277CBEA60]);
  mipmapTexture2 = [(PTPyramid *)v20->_rgbaPyramid mipmapTexture];
  v67 = [v65 initWithObjects:{mipmapTexture2, 0}];
  v68 = [(PTRaytracingV14RenderState *)v88 initWithMetalContext:v87 util:v86 quality:v9 colorSize:rendering disparitySize:pixelFormat debugRendering:options pyramidPixelFormat:v15 options:v14 debugTextures:v20->_disparitySize.width, v20->_disparitySize.height, v67];
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

- (int)renderContinuousWithSource:(id)source renderRequest:(id)request
{
  sourceCopy = source;
  requestCopy = request;
  renderState = [requestCopy renderState];
  [renderState quality];
  [requestCopy fNumber];
  [requestCopy focusDisparity];
  [requestCopy alphaLowLight];
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
  rayCount = [(PTRaytracingV14RenderState *)self->_renderState rayCount];
  [(PTRaytracingV14RenderState *)self->_renderState colorSize];
  v17 = v16;
  qualitySettings = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doMacroApertureLimit = [qualitySettings doMacroApertureLimit];
  LODWORD(v20) = v10;
  LODWORD(v21) = v12;
  LODWORD(v22) = v14;
  [PTRaytracingUtilsV1 createFocusObject:requestCopy pyramidSamplingFraction:rayCount anamorphicFactor:doMacroApertureLimit raytracingRadiusLocal:v20 rayCount:v21 colorSize:v22 doMacroApertureLimit:v17];

  v138 = 0u;
  v139 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
  }

  if (self->_injectedRGBAPyramid)
  {
    v23 = 0;
    goto LABEL_21;
  }

  qualitySettings2 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doFirstLevelGaussianDownsample = [qualitySettings2 doFirstLevelGaussianDownsample];

  if (doFirstLevelGaussianDownsample)
  {
    colorConversion = self->_colorConversion;
    sourceColor = [requestCopy sourceColor];
    mipmapLevels = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v29 = [mipmapLevels objectAtIndexedSubscript:0];
    LODWORD(colorConversion) = [(PTColorConversion *)colorConversion convertRGBLinearFromPTTexture:sourceCopy inPTTexture:sourceColor outRGBA:v29];

    if (colorConversion)
    {
      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v23 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:sourceCopy offset:0];
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
    mipmapLevels2 = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    LODWORD(raytracingUtils) = [(PTRaytracingUtilsV1 *)raytracingUtils convertRGBPyramidFromSource:sourceCopy renderRequest:requestCopy rgbaPyramidArray:mipmapLevels2 skipLevel0:1];

    if (raytracingUtils)
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v23 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:sourceCopy offset:1];
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
  qualitySettings3 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doCenterDisparity = [qualitySettings3 doCenterDisparity];

  if (doCenterDisparity)
  {
    v37 = self->_raytracingUtils;
    sourceDisparity = [requestCopy sourceDisparity];
    disparityDiff = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
    v135 = v140;
    v136 = v141;
    v137 = v142;
    [(PTRaytracingUtilsV1 *)v37 centerDisparityOnFocus:sourceCopy inDisparity:sourceDisparity outDisparity:disparityDiff focusObject:&v135];

    disparityDiff2 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
  }

  else
  {
    disparityDiff2 = [requestCopy sourceDisparity];
  }

  v41 = disparityDiff2;
  globalReduction = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];

  if (globalReduction)
  {
    globalReduction2 = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];
    disparityDiffGlobalMinMax = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [globalReduction2 parallelReductionMinMax:sourceCopy inTexture:v41 globalMinMaxBuffer:disparityDiffGlobalMinMax];

    v45 = self->_raytracingUtils;
    disparityEdgesTemp = [(PTRaytracingV14RenderState *)self->_renderState disparityEdgesTemp];
    disparityEdges = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
    disparityDiffGlobalMinMax2 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [(PTRaytracingV14RenderState *)self->_renderState edgeTolerance];
    v135 = v140;
    v136 = v141;
    v137 = v142;
    [(PTRaytracingUtilsV1 *)v45 detectDilatedEdges:sourceCopy inDisparity:v41 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v135 disparityDiffMinMax:disparityDiffGlobalMinMax2 edgeTolerance:?];
  }

  v126 = v23;
  disparityUpscale = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];

  if (disparityUpscale)
  {
    rgbaPyramid = self->_rgbaPyramid;
    disparityUpscale2 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    upscaledTexture = [disparityUpscale2 upscaledTexture];
    width = [upscaledTexture width];
    [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    v54 = v41;
    v56 = v55 = sourceCopy;
    upscaledTexture2 = [v56 upscaledTexture];
    height = [upscaledTexture2 height];
    *&v135 = width;
    *(&v135 + 1) = height;
    *&v136 = 0;
    qualitySettings4 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
    v60 = -[PTPyramid findMipmapLevelLargerThan:fromLevel:](rgbaPyramid, "findMipmapLevelLargerThan:fromLevel:", &v135, [qualitySettings4 doFirstLevelGaussianDownsample] ^ 1);

    sourceCopy = v55;
    disparityUpscale3 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    sourceColor2 = [requestCopy sourceColor];
    v41 = [disparityUpscale3 guidedUpsampling:v55 inDisparity:v54 inRGBA:v60 colorDepth:{objc_msgSend(sourceColor2, "YCbCrColorDepth")}];
  }

  focusEdgeMask = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];

  if (focusEdgeMask)
  {
    v64 = self->_raytracingUtils;
    focusEdgeMask2 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
    HIDWORD(v66) = DWORD1(v141);
    v135 = v140;
    v136 = v141;
    HIDWORD(v67) = DWORD1(v142);
    v137 = v142;
    *&v67 = self->_focusEdge.width;
    *&v66 = self->_focusEdge.gradientThreshold;
    *&v68 = self->_focusEdge.gradientWeight;
    *&v69 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtilsV1 *)v64 focusEdgeMask:sourceCopy inDisparityDiff:v41 focusObject:&v135 focusEdge:focusEdgeMask2 outFocusEdgeMask:v67, v66, v68, v69];
  }

  sourceDisparity2 = [requestCopy sourceDisparity];
  width2 = [sourceDisparity2 width];
  sourceDisparity3 = [requestCopy sourceDisparity];
  height2 = [sourceDisparity3 height];
  *v73.i32 = width2;
  *&v73.i32[1] = height2;
  v128 = v73;

  v74 = v128;
  v134 = v128;
  v74.i16[0] = v138;
  v125 = v74;
  qualitySettings5 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings5 renderDownscale];
  v128.i32[0] = v76;
  v77 = v125;
  v77.i16[2] = WORD4(v138);
  v78 = vcvt_f32_u32(vand_s8(v77, 0xFFFF0000FFFFLL));
  qualitySettings6 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings6 renderDownscale];
  v129 = vcvt_s32_f32(vdiv_f32(v78, __PAIR64__(v80, v128.u32[0])));

  v133[1] = v129.i16[2];
  v133[0] = v129.i16[0];
  v78.f32[0] = v139;
  qualitySettings7 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings7 renderDownscale];
  v83 = vcvtps_u32_f32(v78.f32[0] / v82);
  v78.f32[0] = *(&v139 + 1);
  qualitySettings8 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings8 renderDownscale];
  v86 = vcvtps_u32_f32(v78.f32[0] / v85);

  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v88 = _PTLogSystem();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v88 disparityApplyPostModifier:v89 inDisparity:v90 outDisparity:v91 postModifier:v92, v93, v94, v95];
    }
  }

  raytracingSDOF = [(PTRaytracingV14RenderState *)self->_renderState raytracingSDOF];
  [computeCommandEncoder setComputePipelineState:raytracingSDOF];

  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  [computeCommandEncoder setTexture:v41 atIndex:1];
  disparityEdges2 = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
  [computeCommandEncoder setTexture:disparityEdges2 atIndex:2];

  raytracedRGBRadius = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  [computeCommandEncoder setTexture:raytracedRGBRadius atIndex:3];

  focusEdgeMask3 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
  [computeCommandEncoder setTexture:focusEdgeMask3 atIndex:4];

  [computeCommandEncoder setBytes:&v140 length:48 atIndex:0];
  aperturePointsXY = [(PTRaytracingV14RenderState *)self->_renderState aperturePointsXY];
  [computeCommandEncoder setBuffer:aperturePointsXY offset:0 atIndex:1];

  randomUChars = [(PTRaytracingV14RenderState *)self->_renderState randomUChars];
  [computeCommandEncoder setBuffer:randomUChars offset:0 atIndex:2];

  disparityDiffGlobalMinMax3 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
  [computeCommandEncoder setBuffer:disparityDiffGlobalMinMax3 offset:0 atIndex:3];

  [computeCommandEncoder setBytes:&v134 length:8 atIndex:4];
  [computeCommandEncoder setBytes:v133 length:4 atIndex:5];
  *&v135 = v83;
  *(&v135 + 1) = v86;
  *&v136 = 1;
  v131 = vdupq_n_s64(8uLL);
  v132 = 1;
  [computeCommandEncoder dispatchThreads:&v135 threadsPerThreadgroup:&v131];
  [computeCommandEncoder endEncoding];
  raytracedRGBRadius2 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  raytracedRGBRadiusUpscaled = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

  if (raytracedRGBRadiusUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    raytracedRGBRadius3 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
    raytracedRGBRadiusUpscaled2 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];
    [textureUtil copy:sourceCopy inTex:raytracedRGBRadius3 outTex:raytracedRGBRadiusUpscaled2];

    raytracedRGBRadiusUpscaled3 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

    raytracedRGBRadius2 = raytracedRGBRadiusUpscaled3;
  }

  computeCommandEncoder2 = [sourceCopy computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    v111 = _PTLogSystem();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v111 disparityApplyPostModifier:v112 inDisparity:v113 outDisparity:v114 postModifier:v115, v116, v117, v118];
    }
  }

  qualitySettings9 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doFirstLevelGaussianDownsample2 = [qualitySettings9 doFirstLevelGaussianDownsample];

  v121 = self->_raytracingUtils;
  if (doFirstLevelGaussianDownsample2)
  {
    mipmapTexture2 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
    randomGaussNoise = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v121 interpolateRGBRadiusToDest:computeCommandEncoder2 renderRequest:requestCopy inRGBA:mipmapTexture2 inRGBRadius:raytracedRGBRadius2 inRandomGauss:randomGaussNoise bicubicSampling:self->_bicubicUpscale];
  }

  else
  {
    mipmapTexture2 = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v121 interpolateRGBRadiusUsingSourceToDest:computeCommandEncoder2 renderRequest:requestCopy inRGBRadius:raytracedRGBRadius2 inRandomGauss:mipmapTexture2 bicubicSampling:self->_bicubicUpscale];
  }

  [computeCommandEncoder2 endEncoding];
  if (kdebug_is_enabled())
  {
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __60__PTRaytracingV14_renderContinuousWithSource_renderRequest___block_invoke;
    v130[3] = &unk_278522E68;
    v130[4] = self;
    [sourceCopy addCompletedHandler:v130];
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