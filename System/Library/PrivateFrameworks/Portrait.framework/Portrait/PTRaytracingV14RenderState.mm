@interface PTRaytracingV14RenderState
- (PTRaytracingV14RenderState)initWithMetalContext:(id)context util:(id)util quality:(int)quality colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering pyramidPixelFormat:(unint64_t)format options:(id)self0 debugTextures:(id)self1;
@end

@implementation PTRaytracingV14RenderState

- (PTRaytracingV14RenderState)initWithMetalContext:(id)context util:(id)util quality:(int)quality colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering pyramidPixelFormat:(unint64_t)format options:(id)self0 debugTextures:(id)self1
{
  height = disparitySize.height;
  width = disparitySize.width;
  v215 = size.width;
  v216 = size.height;
  v14 = *&quality;
  contextCopy = context;
  utilCopy = util;
  optionsCopy = options;
  texturesCopy = textures;
  v219.receiver = self;
  v219.super_class = PTRaytracingV14RenderState;
  v21 = [(PTRaytracingV14RenderState *)&v219 init];
  v21->_quality = v14;
  v22 = [PTQualitySettings createWithQuality:v14 options:optionsCopy];
  qualitySettings = v21->_qualitySettings;
  v21->_qualitySettings = v22;

  v24 = v21->_qualitySettings;
  if (v24)
  {
    [(PTQualitySettings *)v24 setDoFirstLevelGaussianDownsample:1];
    v25 = [PTPrecomputeRandom computeUnitDiskPoints:contextCopy numberOfPatternCircles:[(PTQualitySettings *)v21->_qualitySettings numberOfPatternCircles]];
    v27 = v26;
    objc_storeStrong(&v21->_aperturePointsXY, v25);
    if (v21->_aperturePointsXY)
    {
      v28 = [PTPrecomputeRandom computeRandomUChars:contextCopy rayCount:v27];
      randomUChars = v21->_randomUChars;
      v21->_randomUChars = v28;

      if (v21->_randomUChars)
      {
        _H0 = WORD2(v27);
        v21->_rayCount = v27;
        v21->_doVisualization = 0;
        __asm { FCVT            S0, H0 }

        v21->_raytracingRadiusLocal = _S0;
        v36.f64[0] = v215;
        v36.f64[1] = v216;
        *v21->_colorSize = vcvt_f32_f64(v36);
        v21->_anamorphicFactor = 1.2;
        *&v21->_kPyramidSamplingFraction = 0x3CCCCCCD3F99999ALL;
        rayMarch = [(PTQualitySettings *)v21->_qualitySettings rayMarch];
        raytracingRadiusLocal = v21->_raytracingRadiusLocal;
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v39 = v38;
        v40 = objc_opt_new();
        [v40 setConstantValue:&v21->_rayCount type:29 withName:@"kRaytracingRaycount"];
        [v40 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
        *&v41 = raytracingRadiusLocal * 0.25;
        [v40 setConstantFloat:@"kRadiusLocal_float" withName:v41];
        *&v42 = v21->_kPyramidSamplingFraction;
        [v40 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v42];
        v43 = fmax(v39 * 0.25 + 1.5, 2.0);
        *&v43 = v43;
        [v40 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v43];
        LODWORD(v44) = 4.0;
        [v40 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v44];
        v45 = [contextCopy computePipelineStateFor:@"raytracingV14" withConstants:v40];
        raytracingSDOF = v21->_raytracingSDOF;
        v21->_raytracingSDOF = v45;

        if (!v21->_raytracingSDOF)
        {
          v73 = _PTLogSystem();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v73 util:v112 quality:v113 colorSize:v114 disparitySize:v115 debugRendering:v116 pyramidPixelFormat:v117 options:v118 debugTextures:?];
          }

          goto LABEL_72;
        }

        if ([(PTQualitySettings *)v21->_qualitySettings rayMarch])
        {
          height = [[PTGlobalReduction alloc] initWithMetalContext:contextCopy textureSize:width, height];
          globalReduction = v21->_globalReduction;
          v21->_globalReduction = height;

          if (!v21->_globalReduction)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v73 initWithMetalContext:v119 colorSize:v120 disparitySize:v121 debugRendering:v122 verbose:v123 options:v124 quality:v125];
            }

            goto LABEL_72;
          }

          device = [contextCopy device];
          v50 = [device newBufferWithLength:8 options:0];
          disparityDiffGlobalMinMax = v21->_disparityDiffGlobalMinMax;
          v21->_disparityDiffGlobalMinMax = v50;

          if (!v21->_disparityDiffGlobalMinMax)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v126 quality:v127 colorSize:v128 disparitySize:v129 debugRendering:v130 pyramidPixelFormat:v131 options:v132 debugTextures:?];
            }

            goto LABEL_72;
          }

          textureUtil = [contextCopy textureUtil];
          height2 = [textureUtil createWithSize:10 pixelFormat:width, height];
          disparityEdges = v21->_disparityEdges;
          v21->_disparityEdges = height2;

          if (!v21->_disparityEdges)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v147 quality:v148 colorSize:v149 disparitySize:v150 debugRendering:v151 pyramidPixelFormat:v152 options:v153 debugTextures:?];
            }

            goto LABEL_72;
          }

          textureUtil2 = [contextCopy textureUtil];
          height3 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
          disparityEdgesTemp = v21->_disparityEdgesTemp;
          v21->_disparityEdgesTemp = height3;

          if (!v21->_disparityEdgesTemp)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v175 quality:v176 colorSize:v177 disparitySize:v178 debugRendering:v179 pyramidPixelFormat:v180 options:v181 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        [(PTQualitySettings *)v21->_qualitySettings disparityUpsampleFactor];
        if (v58 > 1.0)
        {
          height4 = [[PTDisparityUpscale alloc] initWithMetalContext:contextCopy colorSize:v215 disparitySize:v216, width, height];
          disparityUpscale = v21->_disparityUpscale;
          v21->_disparityUpscale = height4;

          if (!v21->_disparityUpscale)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v133 quality:v134 colorSize:v135 disparitySize:v136 debugRendering:v137 pyramidPixelFormat:v138 options:v139 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings doCenterDisparity])
        {
          textureUtil3 = [contextCopy textureUtil];
          height5 = [textureUtil3 createWithSize:25 pixelFormat:width, height];
          disparityDiff = v21->_disparityDiff;
          v21->_disparityDiff = height5;

          if (!v21->_disparityDiff)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v140 quality:v141 colorSize:v142 disparitySize:v143 debugRendering:v144 pyramidPixelFormat:v145 options:v146 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings doFocusEdgeMask])
        {
          textureUtil4 = [contextCopy textureUtil];
          v65 = v21->_disparityUpscale;
          if (v65)
          {
            width = [(PTDisparityUpscale *)v65 width];
            v66 = v21->_disparityUpscale;
            if (v66)
            {
              height = [(PTDisparityUpscale *)v66 height];
            }
          }

          v67 = [textureUtil4 createWithWidth:width height:height pixelFormat:25];
          focusEdgeMask = v21->_focusEdgeMask;
          v21->_focusEdgeMask = v67;

          if (!v21->_focusEdgeMask)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingUtils *)v73 initWithMetalContext:v154, v155, v156, v157, v158, v159, v160];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings quality]<= 25)
        {
          textureUtil5 = [contextCopy textureUtil];
          v70 = [textureUtil5 createWithWidth:256 height:256 pixelFormat:12];
          randomGaussNoise = v21->_randomGaussNoise;
          v21->_randomGaussNoise = v70;

          if (!v21->_randomGaussNoise)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v168 quality:v169 colorSize:v170 disparitySize:v171 debugRendering:v172 pyramidPixelFormat:v173 options:v174 debugTextures:?];
            }

            goto LABEL_72;
          }

          commandQueue = [contextCopy commandQueue];
          v73 = commandQueue;
          if (!commandQueue)
          {
            v73 = _PTLogSystem();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v73 util:v182 quality:v183 colorSize:v184 disparitySize:v185 debugRendering:v186 pyramidPixelFormat:v187 options:v188 debugTextures:?];
            }

            goto LABEL_72;
          }

          commandBuffer = [commandQueue commandBuffer];
          if (!commandBuffer)
          {
            v189 = _PTLogSystem();
            if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v189 util:v190 quality:v191 colorSize:v192 disparitySize:v193 debugRendering:v194 pyramidPixelFormat:v195 options:v196 debugTextures:?];
            }

            goto LABEL_72;
          }

          v214 = commandBuffer;
          [commandBuffer setLabel:@"PTRaytracingV14RenderState init noise"];
          device2 = [contextCopy device];
          v213 = [PTRaytracingUtilsV1 precomputeNoise:device2 sideLength:256];

          if (!v213)
          {
            v204 = _PTLogSystem();
            if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v204 util:v205 quality:v206 colorSize:v207 disparitySize:v208 debugRendering:v209 pyramidPixelFormat:v210 options:v211 debugTextures:?];
            }

            goto LABEL_72;
          }

          [utilCopy gaussianNoise:v214 inNoise:v213 outTex:v21->_randomGaussNoise];
          [v214 commit];
          [v214 waitUntilScheduled];
        }

        textureUtil6 = [contextCopy textureUtil];
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v78 = v77;
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v80 = [textureUtil6 createWithWidth:(v215 / v78) height:(v216 / v79) pixelFormat:-[PTQualitySettings intermediatePixelFormat](v21->_qualitySettings, "intermediatePixelFormat")];
        raytracedRGBRadius = v21->_raytracedRGBRadius;
        v21->_raytracedRGBRadius = v80;

        if (v21->_raytracedRGBRadius)
        {
          if (!-[PTQualitySettings doIntermediate2XUpscale](v21->_qualitySettings, "doIntermediate2XUpscale") || ([contextCopy textureUtil], v217 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v217, "createWithWidth:height:pixelFormat:", 2 * -[MTLTexture width](v21->_raytracedRGBRadius, "width"), 2 * -[MTLTexture height](v21->_raytracedRGBRadius, "height"), -[PTQualitySettings intermediatePixelFormat](v21->_qualitySettings, "intermediatePixelFormat")), v82 = objc_claimAutoreleasedReturnValue(), raytracedRGBRadiusUpscaled = v21->_raytracedRGBRadiusUpscaled, v21->_raytracedRGBRadiusUpscaled = v82, raytracedRGBRadiusUpscaled, v217, v21->_raytracedRGBRadiusUpscaled))
          {
            v73 = [MEMORY[0x277CBEB18] arrayWithObjects:{v21->_raytracedRGBRadius, v21->_disparityEdges, v21->_disparityEdgesTemp, 0}];
            v84 = v21->_disparityUpscale;
            if (v84)
            {
              upscaledTexture = [(PTDisparityUpscale *)v84 upscaledTexture];

              if (upscaledTexture)
              {
                upscaledTexture2 = [(PTDisparityUpscale *)v21->_disparityUpscale upscaledTexture];
                [v73 addObject:upscaledTexture2];
              }
            }

            if (v21->_focusEdgeMask)
            {
              [v73 addObject:?];
            }

            v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, Rays: %i", v21->_qualitySettings, v27];
            description = v21->_description;
            v21->_description = v87;

            v89 = v21;
            goto LABEL_73;
          }

          v73 = _PTLogSystem();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v73 util:v197 quality:v198 colorSize:v199 disparitySize:v200 debugRendering:v201 pyramidPixelFormat:v202 options:v203 debugTextures:?];
          }
        }

        else
        {
          v73 = _PTLogSystem();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v73 util:v161 quality:v162 colorSize:v163 disparitySize:v164 debugRendering:v165 pyramidPixelFormat:v166 options:v167 debugTextures:?];
          }
        }

LABEL_72:
        v89 = 0;
LABEL_73:

        goto LABEL_74;
      }

      v97 = _PTLogSystem();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        [PTRaytracingV14RenderState initWithMetalContext:v97 util:v105 quality:v106 colorSize:v107 disparitySize:v108 debugRendering:v109 pyramidPixelFormat:v110 options:v111 debugTextures:?];
      }
    }

    else
    {
      v97 = _PTLogSystem();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        [PTRaytracingV14RenderState initWithMetalContext:v97 util:v98 quality:v99 colorSize:v100 disparitySize:v101 debugRendering:v102 pyramidPixelFormat:v103 options:v104 debugTextures:?];
      }
    }
  }

  else
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTRaytracingV14RenderState initWithMetalContext:v25 util:v90 quality:v91 colorSize:v92 disparitySize:v93 debugRendering:v94 pyramidPixelFormat:v95 options:v96 debugTextures:?];
    }
  }

  v89 = 0;
LABEL_74:

  return v89;
}

@end