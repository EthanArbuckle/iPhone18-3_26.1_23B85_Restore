@interface PTRaytracingV4001
- (PTRaytracingV4001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV4001

- (PTRaytracingV4001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  width = disparitySize.width;
  height = disparitySize.height;
  v251 = size.height;
  v252 = size.width;
  contextCopy = context;
  optionsCopy = options;
  v257.receiver = self;
  v257.super_class = PTRaytracingV4001;
  v16 = [(PTRaytracingV4001 *)&v257 init];
  if (!v16)
  {
    goto LABEL_48;
  }

  PTKTraceInit();
  objc_storeStrong(v16 + 5, context);
  *(v16 + 4) = rendering;
  objc_storeStrong(v16 + 1, options);
  v17 = [PTQualitySettings createWithQuality:v9 options:optionsCopy];
  v18 = *(v16 + 11);
  *(v16 + 11) = v17;

  if (*(v16 + 11))
  {
    +[PTRaytracingUtils createFocusEdge];
    *(v16 + 13) = v19;
    *(v16 + 14) = v20;
    *(v16 + 15) = v21;
    *(v16 + 16) = v22;
    v16[49] = [*(v16 + 11) quality] < 100;
    v23 = [optionsCopy objectForKeyedSubscript:&unk_2837F2CF8];
    v16[48] = v23 != 0;

    if (v16[48] == 1)
    {
      v24 = [optionsCopy objectForKeyedSubscript:&unk_2837F2CF8];
      v25 = *(v16 + 2);
      *(v16 + 2) = v24;

      goto LABEL_8;
    }

    v34 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:]([PTPyramid alloc], "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", *(v16 + 5), 115, v16[49], [*(v16 + 11) doFirstLevelGaussianDownsample], 4, v252, v251);
    v35 = *(v16 + 2);
    *(v16 + 2) = v34;

    if (*(v16 + 2))
    {
LABEL_8:
      v36 = [[PTRaytracingUtils alloc] initWithMetalContext:*(v16 + 5)];
      v37 = *(v16 + 12);
      *(v16 + 12) = v36;

      if (*(v16 + 12))
      {
        v38 = -[PTRaytracingInterpolateResult initWithMetalContext:useExportQualityNoise:]([PTRaytracingInterpolateResult alloc], "initWithMetalContext:useExportQualityNoise:", *(v16 + 5), [*(v16 + 11) useExportQualityNoise]);
        v39 = *(v16 + 13);
        *(v16 + 13) = v38;

        if (*(v16 + 13))
        {
          v40 = +[PTPrecomputeRandom computeUnitDiskPoints:numberOfPatternCircles:](PTPrecomputeRandom, "computeUnitDiskPoints:numberOfPatternCircles:", *(v16 + 5), [*(v16 + 11) numberOfPatternCircles]);
          v42 = v41;
          v43 = *(v16 + 16);
          *(v16 + 16) = v40;

          *(v16 + 70) = WORD2(v42);
          *(v16 + 34) = v42;
          if (*(v16 + 16))
          {
            v44 = [PTPrecomputeRandom computeRandomUChars:*(v16 + 5) rayCount:v42];
            v45 = *(v16 + 18);
            *(v16 + 18) = v44;

            if (*(v16 + 18))
            {
              v16[232] = 0;
              doMacroApertureLimit = [*(v16 + 11) doMacroApertureLimit];
              v47 = 0.0051429;
              if (doMacroApertureLimit)
              {
                v47 = 0.00043025;
              }

              *(v16 + 17) = v47;
              *(v16 + 18) = 1051372203;
              *(v16 + 10) = vmul_n_f32(0x3FC0000040800000, v47);
              [*(v16 + 11) circleOfConfusionLimitBackground];
              if ((v48 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                [*(v16 + 11) circleOfConfusionLimitBackground];
                *(v16 + 20) = v49;
              }

              [*(v16 + 11) circleOfConfusionLimitForeground];
              if ((v50 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                [*(v16 + 11) circleOfConfusionLimitForeground];
                *(v16 + 21) = v51;
              }

              *(v16 + 59) = *(v16 + 34);
              v52.f64[0] = v252;
              v52.f64[1] = v251;
              *(v16 + 30) = vcvt_f32_f64(v52);
              v52.f64[0] = width;
              v52.f64[1] = height;
              _H8 = *(v16 + 70);
              *(v16 + 31) = vcvt_f32_f64(v52);
              *(v16 + 260) = 0x3F6666663F99999ALL;
              v54 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D10];

              if (v54)
              {
                v55 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D10];
                [v55 floatValue];
                *(v16 + 65) = v56;
              }

              v57 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D28];

              if (v57)
              {
                v58 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D28];
                [v58 floatValue];
                *(v16 + 66) = v59;
              }

              __asm { FCVT            S8, H8 }

              *(v16 + 64) = 1059732849;
              *(v16 + 67) = 1020054733;
              rayMarch = [*(v16 + 11) rayMarch];
              [*(v16 + 11) renderDownscale];
              v65 = 3.0;
              if (v66 <= 3.0)
              {
                [*(v16 + 11) renderDownscale];
                v65 = 1.0;
                if (v67 >= 2.0)
                {
                  v65 = 2.0;
                }
              }

              [*(v16 + 11) renderDownscale];
              v69 = fmaxf(v68, 2.0) + 0.5;
              *&v70 = 1.0 / (0.5 - v69);
              *(&v70 + 1) = -v69;
              v248 = v70;
              v71 = objc_opt_new();
              [v71 setConstantValue:v16 + 236 type:29 withName:@"kRaycount"];
              [v71 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
              [v71 setConstantValue:v16 + 49 type:53 withName:@"kSkipFullSizeLayer"];
              LODWORD(v72) = _S8;
              [v71 setConstantFloat:@"kRadiusLocal_float" withName:v72];
              LODWORD(v73) = 0.25;
              [v71 setConstantFloat:@"kRadiusLocalFraction_float" withName:v73];
              *&v74 = v65;
              [v71 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v74];
              [v71 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v248];
              LODWORD(v75) = *(v16 + 64);
              [v71 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v75];
              LODWORD(v76) = 6.0;
              [v71 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v76];
              LODWORD(v77) = 1017370378;
              [v71 setConstantFloat:@"kHighlightBoostFactor_float" withName:v77];
              v78 = [*(v16 + 5) computePipelineStateFor:@"raytracingV4001" withConstants:v71];
              v79 = *(v16 + 34);
              *(v16 + 34) = v78;

              if (!*(v16 + 34))
              {
                v150 = _PTLogSystem();
                if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV4001 *)v150 initWithMetalContext:v151 colorSize:v152 disparitySize:v153 debugRendering:v154 verbose:v155 options:v156 quality:v157];
                }

                goto LABEL_87;
              }

              if ([*(v16 + 11) rayMarch])
              {
                height = [[PTGlobalReduction alloc] initWithMetalContext:*(v16 + 5) textureSize:width, height];
                v81 = *(v16 + 14);
                *(v16 + 14) = height;

                if (!*(v16 + 14))
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v178 colorSize:v179 disparitySize:v180 debugRendering:v181 verbose:v182 options:v183 quality:v184];
                  }

                  goto LABEL_87;
                }

                device = [*(v16 + 5) device];
                v83 = [device newBufferWithLength:8 options:0];
                v84 = *(v16 + 19);
                *(v16 + 19) = v83;

                if (!*(v16 + 19))
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v185 colorSize:v186 disparitySize:v187 debugRendering:v188 verbose:v189 options:v190 quality:v191];
                  }

                  goto LABEL_87;
                }

                textureUtil = [*(v16 + 5) textureUtil];
                height2 = [textureUtil createWithSize:10 pixelFormat:width, height];
                v87 = *(v16 + 20);
                *(v16 + 20) = height2;

                if (!*(v16 + 20))
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v206 colorSize:v207 disparitySize:v208 debugRendering:v209 verbose:v210 options:v211 quality:v212];
                  }

                  goto LABEL_87;
                }

                textureUtil2 = [*(v16 + 5) textureUtil];
                height3 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
                v90 = *(v16 + 21);
                *(v16 + 21) = height3;

                if (!*(v16 + 21))
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v234 colorSize:v235 disparitySize:v236 debugRendering:v237 verbose:v238 options:v239 quality:v240];
                  }

                  goto LABEL_87;
                }
              }

              [*(v16 + 11) disparityUpsampleFactor];
              v92 = width * v91;
              [*(v16 + 11) disparityUpsampleFactor];
              v94 = height * v93;
              [*(v16 + 11) disparityUpsampleFactor];
              if (v95 <= 1.0 || v92 >= v252 || v94 >= v251)
              {
                if ([*(v16 + 11) doCenterDisparity])
                {
                  textureUtil3 = [*(v16 + 5) textureUtil];
                  height4 = [textureUtil3 createWithSize:25 pixelFormat:width, height];
                  v160 = *(v16 + 22);
                  *(v16 + 22) = height4;

                  if (!*(v16 + 22))
                  {
                    v150 = _PTLogSystem();
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                    {
                      [(PTRaytracingV4001 *)v150 initWithMetalContext:v227 colorSize:v228 disparitySize:v229 debugRendering:v230 verbose:v231 options:v232 quality:v233];
                    }

                    goto LABEL_87;
                  }
                }
              }

              else
              {
                v96 = [PTGuidedFilter alloc];
                v97 = *(v16 + 5);
                HIDWORD(v98) = HIDWORD(height);
                v253 = width;
                v254 = height;
                v255 = 1;
                LODWORD(v98) = 1028443341;
                v99 = [(PTGuidedFilter *)v96 initWithMetalContext:v97 inputSize:&v253 epsilon:v98];
                v100 = *(v16 + 15);
                *(v16 + 15) = v99;

                if (!*(v16 + 15))
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v192 colorSize:v193 disparitySize:v194 debugRendering:v195 verbose:v196 options:v197 quality:v198];
                  }

                  goto LABEL_87;
                }

                textureUtil4 = [*(v16 + 5) textureUtil];
                v102 = [textureUtil4 createWithSize:25 pixelFormat:v92, v94];
                v103 = *(v16 + 23);
                *(v16 + 23) = v102;

                v104 = *(v16 + 23);
                if (!v104)
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v213 colorSize:v214 disparitySize:v215 debugRendering:v216 verbose:v217 options:v218 quality:v219];
                  }

                  goto LABEL_87;
                }

                v105 = *(v16 + 2);
                width = [v104 width];
                height5 = [*(v16 + 23) height];
                v253 = width;
                v254 = height5;
                v255 = 1;
                v108 = [v105 findMipmapLevelLargerThan:&v253];
                v109 = *(v16 + 28);
                *(v16 + 28) = v108;

                v110 = *(v16 + 2);
                v253 = width;
                v254 = height;
                v255 = 1;
                v111 = [v110 findMipmapLevelLargerThan:&v253];
                v112 = *(v16 + 27);
                *(v16 + 27) = v111;
              }

              if (![*(v16 + 11) doFocusEdgeMask])
              {
                goto LABEL_61;
              }

              textureUtil5 = [*(v16 + 5) textureUtil];
              v162 = textureUtil5;
              v163 = *(v16 + 23);
              v164 = width;
              if (v163)
              {
                v165 = v94;
              }

              else
              {
                v165 = height;
              }

              if (v163)
              {
                v164 = v92;
              }

              v165 = [textureUtil5 createWithSize:25 pixelFormat:v164, v165];
              v167 = *(v16 + 24);
              *(v16 + 24) = v165;

              if (!*(v16 + 24))
              {
                v150 = _PTLogSystem();
                if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v150 initWithMetalContext:v220, v221, v222, v223, v224, v225, v226];
                }
              }

              else
              {
LABEL_61:
                textureUtil6 = [*(v16 + 5) textureUtil];
                [*(v16 + 11) renderDownscale];
                v170 = (v252 / v169);
                [*(v16 + 11) renderDownscale];
                v172 = [textureUtil6 createWithWidth:v170 height:(v251 / v171) pixelFormat:objc_msgSend(*(v16 + 11), "intermediatePixelFormat")];
                v173 = *(v16 + 25);
                *(v16 + 25) = v172;

                if (*(v16 + 25))
                {
                  if (![*(v16 + 11) doIntermediate2XUpscale] || (objc_msgSend(*(v16 + 5), "textureUtil"), v174 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v174, "createWithWidth:height:pixelFormat:", 2 * objc_msgSend(*(v16 + 25), "width"), 2 * objc_msgSend(*(v16 + 25), "height"), objc_msgSend(*(v16 + 11), "intermediatePixelFormat")), v175 = objc_claimAutoreleasedReturnValue(), v176 = *(v16 + 26), *(v16 + 26) = v175, v176, v174, *(v16 + 26)))
                  {
                    v177 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(v16 + 25), *(v16 + 20), *(v16 + 21), 0}];
                    v150 = v177;
                    if (*(v16 + 24))
                    {
                      [v177 addObject:?];
                    }

                    v148 = v16;
                    goto LABEL_88;
                  }

                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v241 colorSize:v242 disparitySize:v243 debugRendering:v244 verbose:v245 options:v246 quality:v247];
                  }
                }

                else
                {
                  v150 = _PTLogSystem();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v150 initWithMetalContext:v199 colorSize:v200 disparitySize:v201 debugRendering:v202 verbose:v203 options:v204 quality:v205];
                  }
                }
              }

LABEL_87:
              v148 = 0;
LABEL_88:

              goto LABEL_49;
            }

            v26 = _PTLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV4001 *)v26 initWithMetalContext:v141 colorSize:v142 disparitySize:v143 debugRendering:v144 verbose:v145 options:v146 quality:v147];
            }
          }

          else
          {
            v26 = _PTLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV4001 *)v26 initWithMetalContext:v134 colorSize:v135 disparitySize:v136 debugRendering:v137 verbose:v138 options:v139 quality:v140];
            }
          }
        }

        else
        {
          v26 = _PTLogSystem();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV4001 *)v26 initWithMetalContext:v120 colorSize:v121 disparitySize:v122 debugRendering:v123 verbose:v124 options:v125 quality:v126];
          }
        }
      }

      else
      {
        v26 = _PTLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV4001 *)v26 initWithMetalContext:v113 colorSize:v114 disparitySize:v115 debugRendering:v116 verbose:v117 options:v118 quality:v119];
        }
      }

      goto LABEL_47;
    }

    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV4001 *)v26 initWithMetalContext:v127 colorSize:v128 disparitySize:v129 debugRendering:v130 verbose:v131 options:v132 quality:v133];
    }
  }

  else
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV4001 *)v26 initWithMetalContext:v27 colorSize:v28 disparitySize:v29 debugRendering:v30 verbose:v31 options:v32 quality:v33];
    }
  }

LABEL_47:

LABEL_48:
  v148 = 0;
LABEL_49:

  return v148;
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

  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  *&v9 = self->_radialObstructionFactor;
  *&v10 = self->_circleOfConfusionReference;
  *&v11 = self->_fNumberLimitWeight;
  [PTRaytracingUtils createFocusObject:requestCopy anamorphicFactor:COERCE_DOUBLE(LODWORD(self->_anamorphicFactor)) radialObstructionFactor:v9 colorSize:*self->_sourceColorSize circleOfConfusionReference:v10 fNumberLimitWeight:v11];
  memset(v101, 0, sizeof(v101));
  if (!self->_injectedRGBAPyramid)
  {
    rgbaPyramid = self->_rgbaPyramid;
    sourceColor = [requestCopy sourceColor];
    [(PTPyramid *)rgbaPyramid updatePyramid:sourceCopy inPTTexture:sourceColor];
  }

  v14 = (*&v102 + *&v102) * *(&v102 + 2);
  *&v14 = v14;
  v15 = vdiv_f32(*&self->_circleOfConfusionLimitBgFg[4], vdup_lane_s32(*&v14, 0));
  v16 = -*(&v102 + 1);
  v17 = -v15.f32[0];
  v100[0] = -*(&v102 + 1);
  v100[1] = -v15.f32[0];
  v18 = v15.i32[1];
  v100[2] = v15.f32[1];
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    sourceDisparity = [requestCopy sourceDisparity];
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:sourceCopy inTexture:sourceDisparity globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];

    *&v21 = v16;
    *&v22 = v17;
    LODWORD(v23) = v18;
    [(PTRaytracingUtils *)self->_raytracingUtils disparityMinMaxApplyPostModifier:sourceCopy disparityMinMaxBuffer:self->_disparityDiffGlobalMinMax postModifier:v21, v22, v23];
    raytracingUtils = self->_raytracingUtils;
    sourceDisparity2 = [requestCopy sourceDisparity];
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v29 = self->_edgeTolerance;
    v97 = v102;
    v98 = v103;
    v99 = v104;
    [(PTRaytracingUtils *)raytracingUtils detectDilatedEdges:sourceCopy inDisparity:sourceDisparity2 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v97 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v29];
  }

  sourceDisparity3 = [requestCopy sourceDisparity];
  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    sourceDisparity4 = [requestCopy sourceDisparity];
    p_disparityDiffUpscaled = &self->_disparityDiffUpscaled;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    v34 = sourceDisparity3;
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    renderState2 = [requestCopy renderState];
    sourceColorBitDepth = [renderState2 sourceColorBitDepth];
    v39 = guideRGBAUpscale;
    sourceDisparity3 = v34;
    [(PTGuidedFilter *)guidedFilter guidedFilter:sourceCopy image:sourceDisparity4 guideRGBACoefficients:guideRGBACoefficients guideRGBAUpscale:v39 upscaledImage:disparityDiffUpscaled sourceColorBitDepth:sourceColorBitDepth postModifierPtr:v100];

LABEL_7:
    v40 = *p_disparityDiffUpscaled;

    sourceDisparity3 = v40;
    goto LABEL_8;
  }

  if ([(PTQualitySettings *)self->_qualitySettings doCenterDisparity])
  {
    portraitPreviewDeadzone = [(PTQualitySettings *)self->_qualitySettings portraitPreviewDeadzone];
    v46 = self->_raytracingUtils;
    sourceDisparity4 = [requestCopy sourceDisparity];
    p_disparityDiffUpscaled = &self->_disparityDiff;
    disparityDiff = self->_disparityDiff;
    *&v48 = v16;
    *&v49 = v17;
    LODWORD(v50) = v18;
    if (portraitPreviewDeadzone)
    {
      [(PTRaytracingUtils *)v46 disparityPortraitPreviewDeadzone:sourceCopy inDisparity:sourceDisparity4 outDisparity:disparityDiff postModifier:v48, v49, v50];
    }

    else
    {
      [(PTRaytracingUtils *)v46 disparityApplyPostModifier:sourceCopy inDisparity:sourceDisparity4 outDisparity:disparityDiff postModifier:v48, v49, v50];
    }

    goto LABEL_7;
  }

LABEL_8:
  if (self->_focusEdgeMask)
  {
    *&v41 = self->_focusEdge.width;
    *&v42 = self->_focusEdge.gradientThreshold;
    *&v43 = self->_focusEdge.gradientWeight;
    *&v44 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtils *)self->_raytracingUtils focusEdgeMask:sourceCopy inDisparityDiff:sourceDisparity3 focusEdge:v41 outFocusEdgeMask:v42, v43, v44];
  }

  v97 = 0u;
  v98 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
  }

  else
  {
    v95 = 0uLL;
    v96 = 0uLL;
  }

  destinationColor = [requestCopy destinationColor];
  +[PTImageblockConfig adjustScissorRectToImageBlocks:imageBlockSize:](PTImageblockConfig, "adjustScissorRectToImageBlocks:imageBlockSize:", &v95, [destinationColor imageBlockSize]);

  v87 = v97;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v89 = v52;
  v53 = vcvt_f32_f64(vcvtq_f64_u64(__PAIR128__(*(&v97 + 1), v87)));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  __asm { FMOV            V1.2D, #-0.5 }

  v60 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(v53, __PAIR64__(v54, v89))), _Q1)), 0)));
  v94[1] = v60.i16[2];
  v94[0] = v60.i16[0];
  width = [(MTLTexture *)self->_raytracedRGBWeight width];
  v53.f32[0] = v98;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v63 = ceil((v53.f32[0] / v62) + 0.5);
  if (v63 > width)
  {
    v63 = width;
  }

  v64 = v63;
  height = [(MTLTexture *)self->_raytracedRGBWeight height];
  v66 = *(&v98 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v68 = ceil((v66 / v67) + 0.5);
  if (v68 > height)
  {
    v68 = height;
  }

  v69 = v68;
  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v71 = _PTLogSystem();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v71 disparityApplyPostModifier:v72 inDisparity:v73 outDisparity:v74 postModifier:v75, v76, v77, v78];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_raytracingSDOF];
  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  v90 = sourceDisparity3;
  [computeCommandEncoder setTexture:sourceDisparity3 atIndex:1];
  [computeCommandEncoder setTexture:self->_disparityEdges atIndex:2];
  [computeCommandEncoder setTexture:self->_raytracedRGBWeight atIndex:3];
  [computeCommandEncoder setTexture:self->_focusEdgeMask atIndex:4];
  [computeCommandEncoder setBytes:v101 length:24 atIndex:0];
  [computeCommandEncoder setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_randomUChars offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [computeCommandEncoder setBytes:self->_sourceColorSize length:8 atIndex:4];
  [computeCommandEncoder setBytes:self->_sourceDisparitySize length:8 atIndex:5];
  [computeCommandEncoder setBytes:v94 length:4 atIndex:6];
  *&v95 = v64;
  *(&v95 + 1) = v69;
  *&v96 = 1;
  v92 = vdupq_n_s64(8uLL);
  v93 = 1;
  [computeCommandEncoder dispatchThreads:&v95 threadsPerThreadgroup:&v92];
  [computeCommandEncoder endEncoding];
  v80 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    [textureUtil copy:sourceCopy inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v82 = self->_raytracedRGBWeightUpscaled;
    v80 = v82;
  }

  raytracingInterpolateResult = self->_raytracingInterpolateResult;
  if (self->_skipFullSizeLayer)
  {
    [(PTRaytracingInterpolateResult *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v80];
  }

  else
  {
    mipmapLevels = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v85 = [mipmapLevels objectAtIndexedSubscript:0];
    [(PTRaytracingInterpolateResult *)raytracingInterpolateResult interpolateRGBWeightUsingRGBALinearToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v80 inRGBA:v85];
  }

  if (kdebug_is_enabled())
  {
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke;
    v91[3] = &unk_278522E68;
    v91[4] = self;
    [sourceCopy addCompletedHandler:v91];
  }

  return 0;
}

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 88) renderDownscale];
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

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Commandbuffer Error %@", &v4, 0xCu);
}

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 error];
  v5 = [a1 label];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "%@ label %@", &v6, 0x16u);
}

@end