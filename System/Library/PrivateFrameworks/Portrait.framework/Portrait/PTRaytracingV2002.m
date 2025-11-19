@interface PTRaytracingV2002
- (PTRaytracingV2002)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9;
- (int)renderContinuousWithSource:(id)a3 renderRequest:(id)a4;
@end

@implementation PTRaytracingV2002

- (PTRaytracingV2002)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9
{
  v9 = *&a9;
  height = a5.height;
  width = a5.width;
  v238 = a4.height;
  v239 = a4.width;
  v16 = a3;
  v17 = a8;
  v245.receiver = self;
  v245.super_class = PTRaytracingV2002;
  v18 = [(PTRaytracingV2002 *)&v245 init];
  if (!v18)
  {
    goto LABEL_56;
  }

  PTKTraceInit();
  objc_storeStrong(v18 + 5, a3);
  *(v18 + 4) = a6;
  objc_storeStrong(v18 + 1, a8);
  v19 = [PTQualitySettings createWithQuality:v9 options:v17];
  v20 = *(v18 + 9);
  *(v18 + 9) = v19;

  if (*(v18 + 9))
  {
    +[PTRaytracingUtilsV2 createFocusEdge];
    *(v18 + 13) = v21;
    *(v18 + 14) = v22;
    *(v18 + 15) = v23;
    *(v18 + 16) = v24;
    v244 = [*(v18 + 9) quality] < 100;
    v25 = [v17 objectForKeyedSubscript:&unk_2837F2E00];
    v18[48] = v25 != 0;

    if (v18[48] == 1)
    {
      v26 = [v17 objectForKeyedSubscript:&unk_2837F2E00];
      v27 = *(v18 + 2);
      *(v18 + 2) = v26;

      goto LABEL_8;
    }

    v36 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:]([PTPyramid alloc], "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", *(v18 + 5), 115, v244, [*(v18 + 9) doFirstLevelGaussianDownsample], 4, v239, v238);
    v37 = *(v18 + 2);
    *(v18 + 2) = v36;

    if (*(v18 + 2))
    {
LABEL_8:
      v38 = [[PTRaytracingUtilsV2 alloc] initWithMetalContext:*(v18 + 5)];
      v39 = *(v18 + 10);
      *(v18 + 10) = v38;

      if (*(v18 + 10))
      {
        v40 = -[PTRaytracingInterpolateResultV2 initWithMetalContext:useExportQualityNoise:]([PTRaytracingInterpolateResultV2 alloc], "initWithMetalContext:useExportQualityNoise:", *(v18 + 5), [*(v18 + 9) useExportQualityNoise]);
        v41 = *(v18 + 11);
        *(v18 + 11) = v40;

        if (*(v18 + 11))
        {
          v42 = +[PTPrecomputeRandom computeUnitDiskPoints:numberOfPatternCircles:](PTPrecomputeRandom, "computeUnitDiskPoints:numberOfPatternCircles:", *(v18 + 5), [*(v18 + 9) numberOfPatternCircles]);
          v44 = v43;
          v45 = *(v18 + 14);
          *(v18 + 14) = v42;

          *(v18 + 62) = WORD2(v44);
          *(v18 + 30) = v44;
          if (*(v18 + 14))
          {
            v46 = [PTPrecomputeRandom computeRandomUChars:*(v18 + 5) rayCount:v44];
            v47 = *(v18 + 16);
            *(v18 + 16) = v46;

            if (*(v18 + 16))
            {
              *(v18 + 55) = *(v18 + 30);
              v18[216] = 0;
              _H0 = *(v18 + 62);
              __asm { FCVT            S10, H0 }

              v54.f64[0] = v239;
              v54.f64[1] = v238;
              *(v18 + 28) = vcvt_f32_f64(v54);
              *(v18 + 232) = xmmword_2244A55E0;
              v243 = [*(v18 + 9) rayMarch];
              [*(v18 + 9) renderDownscale];
              v55 = 3.0;
              if (v56 <= 3.0)
              {
                [*(v18 + 9) renderDownscale];
                v55 = 1.0;
                if (v57 >= 2.0)
                {
                  v55 = 2.0;
                }
              }

              [*(v18 + 9) renderDownscale];
              v59 = fmaxf(v58, 2.0) + 0.5;
              *&v60 = 1.0 / (0.5 - v59);
              *(&v60 + 1) = -v59;
              v237 = v60;
              v61 = objc_opt_new();
              [v61 setConstantValue:v18 + 220 type:29 withName:@"kRaycount"];
              [v61 setConstantValue:&v243 type:53 withName:@"kRayMarch"];
              [v61 setConstantValue:&v244 type:53 withName:@"kSkipFullSizeLayer"];
              LODWORD(v62) = _S10;
              [v61 setConstantFloat:@"kRadiusLocal_float" withName:v62];
              LODWORD(v63) = 0.25;
              [v61 setConstantFloat:@"kRadiusLocalFraction_float" withName:v63];
              *&v64 = v55;
              [v61 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v64];
              [v61 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v237];
              LODWORD(v65) = *(v18 + 58);
              [v61 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v65];
              LODWORD(v66) = 6.0;
              [v61 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v66];
              v67 = [*(v18 + 5) computePipelineStateFor:@"raytracingV2002" withConstants:v61];
              v68 = *(v18 + 31);
              *(v18 + 31) = v67;

              if (!*(v18 + 31))
              {
                v122 = _PTLogSystem();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v122 initWithMetalContext:v160 colorSize:v161 disparitySize:v162 debugRendering:v163 verbose:v164 options:v165 quality:v166];
                }

                goto LABEL_80;
              }

              if ([*(v18 + 9) rayMarch])
              {
                v69 = [[PTGlobalReduction alloc] initWithMetalContext:*(v18 + 5) textureSize:width, height];
                v70 = *(v18 + 12);
                *(v18 + 12) = v69;

                if (!*(v18 + 12))
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v167 colorSize:v168 disparitySize:v169 debugRendering:v170 verbose:v171 options:v172 quality:v173];
                  }

                  goto LABEL_80;
                }

                v71 = [*(v18 + 5) device];
                v72 = [v71 newBufferWithLength:8 options:0];
                v73 = *(v18 + 17);
                *(v18 + 17) = v72;

                if (!*(v18 + 17))
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v174 colorSize:v175 disparitySize:v176 debugRendering:v177 verbose:v178 options:v179 quality:v180];
                  }

                  goto LABEL_80;
                }

                v74 = [*(v18 + 5) textureUtil];
                v75 = [v74 createWithSize:10 pixelFormat:width, height];
                v76 = *(v18 + 18);
                *(v18 + 18) = v75;

                if (!*(v18 + 18))
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v202 colorSize:v203 disparitySize:v204 debugRendering:v205 verbose:v206 options:v207 quality:v208];
                  }

                  goto LABEL_80;
                }

                v77 = [*(v18 + 5) textureUtil];
                v78 = [v77 createWithSize:10 pixelFormat:width, height];
                v79 = *(v18 + 19);
                *(v18 + 19) = v78;

                if (!*(v18 + 19))
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v223 colorSize:v224 disparitySize:v225 debugRendering:v226 verbose:v227 options:v228 quality:v229];
                  }

                  goto LABEL_80;
                }
              }

              [*(v18 + 9) disparityUpsampleFactor];
              v81 = width * v80;
              [*(v18 + 9) disparityUpsampleFactor];
              v83 = height * v82;
              [*(v18 + 9) disparityUpsampleFactor];
              if (v84 > 1.0 && v81 < v239 && v83 < v238)
              {
                v85 = [PTGuidedFilter alloc];
                v86 = *(v18 + 5);
                v240 = width;
                v241 = height;
                v242 = 1;
                LODWORD(v87) = 1028443341;
                v88 = [(PTGuidedFilter *)v85 initWithMetalContext:v86 inputSize:&v240 epsilon:v87];
                v89 = *(v18 + 13);
                *(v18 + 13) = v88;

                if (!*(v18 + 13))
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v181 colorSize:v182 disparitySize:v183 debugRendering:v184 verbose:v185 options:v186 quality:v187];
                  }

                  goto LABEL_80;
                }

                v90 = [*(v18 + 5) textureUtil];
                v91 = [v90 createWithSize:25 pixelFormat:v81, v83];
                v92 = *(v18 + 21);
                *(v18 + 21) = v91;

                v93 = *(v18 + 21);
                if (!v93)
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v209 colorSize:v210 disparitySize:v211 debugRendering:v212 verbose:v213 options:v214 quality:v215];
                  }

                  goto LABEL_80;
                }

                v94 = *(v18 + 2);
                v95 = [v93 width];
                v96 = [*(v18 + 21) height];
                v240 = v95;
                v241 = v96;
                v242 = 1;
                v97 = [v94 findMipmapLevelLargerThan:&v240];
                v98 = *(v18 + 26);
                *(v18 + 26) = v97;

                v99 = *(v18 + 2);
                v240 = width;
                v241 = height;
                v242 = 1;
                v100 = [v99 findMipmapLevelLargerThan:&v240];
                v101 = *(v18 + 25);
                *(v18 + 25) = v100;
              }

              if ([*(v18 + 9) doCenterDisparity] && (objc_msgSend(*(v18 + 5), "textureUtil"), v102 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v102, "createWithSize:pixelFormat:", 25, width, height), v103 = objc_claimAutoreleasedReturnValue(), v104 = *(v18 + 20), *(v18 + 20) = v103, v104, v102, !*(v18 + 20)))
              {
                v122 = _PTLogSystem();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v122 initWithMetalContext:v195 colorSize:v196 disparitySize:v197 debugRendering:v198 verbose:v199 options:v200 quality:v201];
                }
              }

              else if ([*(v18 + 9) doFocusEdgeMask] && ((objc_msgSend(*(v18 + 5), "textureUtil"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v105, (v107 = *(v18 + 21)) != 0) ? (v108 = v83) : (v108 = height), v107 ? (v109 = v81) : (v109 = width), objc_msgSend(v105, "createWithSize:pixelFormat:", 25, v109, v108), v110 = objc_claimAutoreleasedReturnValue(), v111 = *(v18 + 22), *(v18 + 22) = v110, v111, v106, !*(v18 + 22)))
              {
                v122 = _PTLogSystem();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v122 initWithMetalContext:v216, v217, v218, v219, v220, v221, v222];
                }
              }

              else
              {
                v112 = [*(v18 + 5) textureUtil];
                [*(v18 + 9) renderDownscale];
                v114 = (v239 / v113);
                [*(v18 + 9) renderDownscale];
                v116 = [v112 createWithWidth:v114 height:(v238 / v115) pixelFormat:objc_msgSend(*(v18 + 9), "intermediatePixelFormat")];
                v117 = *(v18 + 23);
                *(v18 + 23) = v116;

                if (*(v18 + 23))
                {
                  if (![*(v18 + 9) doIntermediate2XUpscale] || (objc_msgSend(*(v18 + 5), "textureUtil"), v118 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v118, "createWithWidth:height:pixelFormat:", 2 * objc_msgSend(*(v18 + 23), "width"), 2 * objc_msgSend(*(v18 + 23), "height"), objc_msgSend(*(v18 + 9), "intermediatePixelFormat")), v119 = objc_claimAutoreleasedReturnValue(), v120 = *(v18 + 24), *(v18 + 24) = v119, v120, v118, *(v18 + 24)))
                  {
                    v121 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(v18 + 23), *(v18 + 18), *(v18 + 19), 0}];
                    v122 = v121;
                    if (*(v18 + 21))
                    {
                      [v121 addObject:?];
                    }

                    if (*(v18 + 22))
                    {
                      [v122 addObject:?];
                    }

                    v123 = v18;
                    goto LABEL_81;
                  }

                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v230 colorSize:v231 disparitySize:v232 debugRendering:v233 verbose:v234 options:v235 quality:v236];
                  }
                }

                else
                {
                  v122 = _PTLogSystem();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v122 initWithMetalContext:v188 colorSize:v189 disparitySize:v190 debugRendering:v191 verbose:v192 options:v193 quality:v194];
                  }
                }
              }

LABEL_80:
              v123 = 0;
LABEL_81:

              goto LABEL_57;
            }

            v28 = _PTLogSystem();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v28 initWithMetalContext:v152 colorSize:v153 disparitySize:v154 debugRendering:v155 verbose:v156 options:v157 quality:v158];
            }
          }

          else
          {
            v28 = _PTLogSystem();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v28 initWithMetalContext:v145 colorSize:v146 disparitySize:v147 debugRendering:v148 verbose:v149 options:v150 quality:v151];
            }
          }
        }

        else
        {
          v28 = _PTLogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV2002 *)v28 initWithMetalContext:v131 colorSize:v132 disparitySize:v133 debugRendering:v134 verbose:v135 options:v136 quality:v137];
          }
        }
      }

      else
      {
        v28 = _PTLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV2002 *)v28 initWithMetalContext:v124 colorSize:v125 disparitySize:v126 debugRendering:v127 verbose:v128 options:v129 quality:v130];
        }
      }

      goto LABEL_55;
    }

    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV2002 *)v28 initWithMetalContext:v138 colorSize:v139 disparitySize:v140 debugRendering:v141 verbose:v142 options:v143 quality:v144];
    }
  }

  else
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV2002 *)v28 initWithMetalContext:v29 colorSize:v30 disparitySize:v31 debugRendering:v32 verbose:v33 options:v34 quality:v35];
    }
  }

LABEL_55:

LABEL_56:
  v123 = 0;
LABEL_57:

  return v123;
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

  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  kPyramidSamplingFraction = self->_kPyramidSamplingFraction;
  anamorphicFactor = self->_anamorphicFactor;
  kRayCount = self->_kRayCount;
  v12 = *self->_colorSize;
  v13 = [(PTQualitySettings *)self->_qualitySettings doMacroApertureLimit];
  *&v14 = kPyramidSamplingFraction;
  *&v15 = anamorphicFactor;
  [PTRaytracingUtilsV2 createFocusObject:v7 pyramidSamplingFraction:kRayCount anamorphicFactor:v13 rayCount:v14 colorSize:v15 doMacroApertureLimit:v12];
  v89 = 0u;
  v90 = 0u;
  if (v7)
  {
    [v7 scissorRect];
  }

  if (!self->_injectedRGBAPyramid)
  {
    rgbaPyramid = self->_rgbaPyramid;
    v17 = [v7 sourceColor];
    [(PTPyramid *)rgbaPyramid updatePyramid:v6 inPTTexture:v17];
  }

  if ([(PTQualitySettings *)self->_qualitySettings doCenterDisparity])
  {
    raytracingUtils = self->_raytracingUtils;
    v19 = [v7 sourceDisparity];
    disparityDiff = self->_disparityDiff;
    *&v21 = self->_foregroundBlurLimitingFactor;
    v86 = v91;
    v87 = v92;
    v88 = v93;
    [(PTRaytracingUtilsV2 *)raytracingUtils centerDisparityOnFocus:v6 inDisparity:v19 outDisparity:disparityDiff focusObject:&v86 foregroundBlurLimitingFactor:v21];

    v22 = self->_disparityDiff;
  }

  else
  {
    v22 = [v7 sourceDisparity];
  }

  v25 = v22;
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:v6 inTexture:v25 globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];
    v27 = self->_raytracingUtils;
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v31 = self->_edgeTolerance;
    v86 = v91;
    v87 = v92;
    v88 = v93;
    [(PTRaytracingUtilsV2 *)v27 detectDilatedEdges:v6 inDisparity:v25 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v86 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v31];
  }

  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    v36 = [v7 renderState];
    -[PTGuidedFilter guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:](guidedFilter, "guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:", v6, v25, guideRGBACoefficients, guideRGBAUpscale, disparityDiffUpscaled, [v36 sourceColorBitDepth], 0);

    v37 = self->_disparityDiffUpscaled;
    v25 = v37;
  }

  if (self->_focusEdgeMask)
  {
    v38 = self->_raytracingUtils;
    HIDWORD(v39) = DWORD1(v92);
    v86 = v91;
    v87 = v92;
    HIDWORD(v40) = DWORD1(v93);
    v88 = v93;
    *&v40 = self->_focusEdge.width;
    *&v39 = self->_focusEdge.gradientThreshold;
    *&v23 = self->_focusEdge.gradientWeight;
    *&v24 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtilsV2 *)v38 focusEdgeMask:v6 inDisparityDiff:v25 focusObject:&v86 focusEdge:v40 outFocusEdgeMask:v39, v23, v24];
  }

  v41 = [v7 sourceDisparity];
  v79 = [v41 width];
  v42 = [v7 sourceDisparity];
  v43 = [v42 height];
  *v44.i32 = v79;
  *&v44.i32[1] = v43;
  v80 = v44;

  v45 = v80;
  v85 = v80;
  v45.i16[0] = v89;
  v78 = v45;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v80.i32[0] = v46;
  v47 = v78;
  v47.i16[2] = WORD4(v89);
  v48 = vcvt_f32_u32(vand_s8(v47, 0xFFFF0000FFFFLL));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v50 = vcvt_s32_f32(vdiv_f32(v48, __PAIR64__(v49, v80.u32[0])));
  v84[1] = v50.i16[2];
  v84[0] = v50.i16[0];
  v48.f32[0] = v90;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v52 = vcvtps_u32_f32(v48.f32[0] / v51);
  v48.f32[0] = *(&v90 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v54 = vcvtps_u32_f32(v48.f32[0] / v53);
  v55 = [v6 computeCommandEncoder];
  if (!v55)
  {
    v56 = _PTLogSystem();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v56 disparityApplyPostModifier:v57 inDisparity:v58 outDisparity:v59 postModifier:v60, v61, v62, v63];
    }
  }

  [v55 setComputePipelineState:self->_raytracingSDOF];
  v64 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [v55 setTexture:v64 atIndex:0];

  [v55 setTexture:v25 atIndex:1];
  [v55 setTexture:self->_disparityEdges atIndex:2];
  [v55 setTexture:self->_raytracedRGBWeight atIndex:3];
  [v55 setTexture:self->_focusEdgeMask atIndex:4];
  [v55 setBytes:&v91 length:48 atIndex:0];
  [v55 setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [v55 setBuffer:self->_randomUChars offset:0 atIndex:2];
  [v55 setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [v55 setBytes:&v85 length:8 atIndex:4];
  [v55 setBytes:v84 length:4 atIndex:5];
  *&v86 = v52;
  *(&v86 + 1) = v54;
  *&v87 = 1;
  v82 = vdupq_n_s64(8uLL);
  v83 = 1;
  [v55 dispatchThreads:&v86 threadsPerThreadgroup:&v82];
  [v55 endEncoding];
  v65 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    v66 = [(PTMetalContext *)self->_metalContext textureUtil];
    [v66 copy:v6 inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v67 = self->_raytracedRGBWeightUpscaled;
    v65 = v67;
  }

  v68 = [v6 computeCommandEncoder];

  if (!v68)
  {
    v69 = _PTLogSystem();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v69 disparityApplyPostModifier:v70 inDisparity:v71 outDisparity:v72 postModifier:v73, v74, v75, v76];
    }
  }

  [(PTRaytracingInterpolateResultV2 *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:v68 renderRequest:v7 inRGBWeight:v65];
  [v68 endEncoding];
  if (kdebug_is_enabled())
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __62__PTRaytracingV2002_renderContinuousWithSource_renderRequest___block_invoke;
    v81[3] = &unk_278522E68;
    v81[4] = self;
    [v6 addCompletedHandler:v81];
  }

  return 0;
}

void __62__PTRaytracingV2002_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 72) renderDownscale];
  kdebug_trace();
  if ([v3 status] != 4)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(v3, v4);
    }

    if ([v3 status] != 4)
    {
      v5 = _PTLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(v3, v5);
      }
    }
  }
}

@end