@interface PTRaytracingV3001
- (PTRaytracingV3001)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9;
- (int)renderContinuousWithSource:(id)a3 renderRequest:(id)a4;
@end

@implementation PTRaytracingV3001

- (PTRaytracingV3001)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5 debugRendering:(int64_t)a6 verbose:(BOOL)a7 options:(id)a8 quality:(int)a9
{
  v9 = *&a9;
  width = a5.width;
  height = a5.height;
  v283 = a4.height;
  v284 = a4.width;
  v14 = a3;
  v15 = a8;
  v289.receiver = self;
  v289.super_class = PTRaytracingV3001;
  v16 = [(PTRaytracingV3001 *)&v289 init];
  if (!v16)
  {
    goto LABEL_76;
  }

  PTKTraceInit();
  objc_storeStrong(v16 + 5, a3);
  *(v16 + 4) = a6;
  objc_storeStrong(v16 + 1, a8);
  v17 = [PTQualitySettings createWithQuality:v9 options:v15];
  v18 = *(v16 + 11);
  *(v16 + 11) = v17;

  if (!*(v16 + 11))
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV3001 *)v25 initWithMetalContext:v26 colorSize:v27 disparitySize:v28 debugRendering:v29 verbose:v30 options:v31 quality:v32];
    }

    goto LABEL_75;
  }

  +[PTRaytracingUtils createFocusEdge];
  *(v16 + 14) = v19;
  *(v16 + 15) = v20;
  *(v16 + 16) = v21;
  *(v16 + 13) = 1082130432;
  v16[144] = 0;
  v22 = [*(v16 + 11) quality];
  v23 = v16[144];
  if (v22 >= 100)
  {
    v16[49] = 0;
    v24 = v16 + 49;
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16[49] = (v23 & 1) == 0;
    v24 = v16 + 49;
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v33 = [[PTColorConversion alloc] initWithMetalContext:*(v16 + 5)];
  v34 = *(v16 + 16);
  *(v16 + 16) = v33;

  if (!*(v16 + 16))
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(PTApplyHomographies *)v25 initWithMetalContext:v153 colorSize:v154 disparitySize:v155, v156, v157, v158, v159];
    }

    goto LABEL_75;
  }

  v35 = [*(v16 + 5) textureUtil];
  v36 = [v35 createWithSize:115 pixelFormat:v284, v283];
  v37 = *(v16 + 17);
  *(v16 + 17) = v36;

  if (!*(v16 + 17))
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV3001 *)v25 initWithMetalContext:v174 colorSize:v175 disparitySize:v176 debugRendering:v177 verbose:v178 options:v179 quality:v180];
    }

    goto LABEL_75;
  }

LABEL_11:
  v38 = [v15 objectForKeyedSubscript:&unk_2837F3010];
  v16[48] = v38 != 0;

  if (v16[48] == 1)
  {
    v39 = [v15 objectForKeyedSubscript:&unk_2837F3010];
    v40 = *(v16 + 2);
    *(v16 + 2) = v39;

    goto LABEL_14;
  }

  v41 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:]([PTPyramid alloc], "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", *(v16 + 5), 115, v16[49], [*(v16 + 11) doFirstLevelGaussianDownsample], 4, v284, v283);
  v42 = *(v16 + 2);
  *(v16 + 2) = v41;

  if (*(v16 + 2))
  {
LABEL_14:
    v43 = [[PTRaytracingUtils alloc] initWithMetalContext:*(v16 + 5)];
    v44 = *(v16 + 12);
    *(v16 + 12) = v43;

    if (*(v16 + 12))
    {
      v45 = -[PTRaytracingInterpolateResult initWithMetalContext:useExportQualityNoise:]([PTRaytracingInterpolateResult alloc], "initWithMetalContext:useExportQualityNoise:", *(v16 + 5), [*(v16 + 11) useExportQualityNoise]);
      v46 = *(v16 + 13);
      *(v16 + 13) = v45;

      if (*(v16 + 13))
      {
        v47 = +[PTPrecomputeRandom computeUnitDiskPoints:numberOfPatternCircles:](PTPrecomputeRandom, "computeUnitDiskPoints:numberOfPatternCircles:", *(v16 + 5), [*(v16 + 11) numberOfPatternCircles]);
        v49 = v48;
        v50 = *(v16 + 19);
        *(v16 + 19) = v47;

        *(v16 + 82) = WORD2(v49);
        *(v16 + 40) = v49;
        if (*(v16 + 19))
        {
          v51 = [PTPrecomputeRandom computeRandomUChars:*(v16 + 5) rayCount:v49];
          v52 = *(v16 + 21);
          *(v16 + 21) = v51;

          if (*(v16 + 21))
          {
            v16[264] = 0;
            v53 = [*(v16 + 11) doMacroApertureLimit];
            v54 = 0.0051429;
            if (v53)
            {
              v54 = 0.00043025;
            }

            *(v16 + 17) = v54;
            *(v16 + 18) = 1051372203;
            *(v16 + 10) = vmul_n_f32(0x3FC0000040800000, v54);
            [*(v16 + 11) circleOfConfusionLimitBackground];
            if ((v55 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              [*(v16 + 11) circleOfConfusionLimitBackground];
              *(v16 + 20) = v56;
            }

            [*(v16 + 11) circleOfConfusionLimitForeground];
            if ((v57 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              [*(v16 + 11) circleOfConfusionLimitForeground];
              *(v16 + 21) = v58;
            }

            *(v16 + 67) = *(v16 + 40);
            v59.f64[0] = v284;
            v59.f64[1] = v283;
            _H8 = *(v16 + 82);
            v61.f64[0] = width;
            v61.f64[1] = height;
            *(v16 + 34) = vcvt_f32_f64(v59);
            *(v16 + 35) = vcvt_f32_f64(v61);
            *(v16 + 292) = 0x3F6666663F99999ALL;
            v62 = [v15 objectForKeyedSubscript:&unk_2837F3028];

            if (v62)
            {
              v63 = [v15 objectForKeyedSubscript:&unk_2837F3028];
              [v63 floatValue];
              *(v16 + 73) = v64;
            }

            v65 = [v15 objectForKeyedSubscript:&unk_2837F3040];

            if (v65)
            {
              v66 = [v15 objectForKeyedSubscript:&unk_2837F3040];
              [v66 floatValue];
              *(v16 + 74) = v67;
            }

            __asm { FCVT            S8, H8 }

            *(v16 + 72) = 1059732849;
            *(v16 + 75) = 1020054733;
            v288 = [*(v16 + 11) rayMarch];
            [*(v16 + 11) renderDownscale];
            v73 = 3.0;
            if (v74 <= 3.0)
            {
              [*(v16 + 11) renderDownscale];
              v73 = 1.0;
              if (v75 >= 2.0)
              {
                v73 = 2.0;
              }
            }

            [*(v16 + 11) renderDownscale];
            v77 = fmaxf(v76, 2.0) + 0.5;
            *&v78 = 1.0 / (0.5 - v77);
            *(&v78 + 1) = -v77;
            v280 = v78;
            v79 = objc_opt_new();
            [v79 setConstantValue:v16 + 268 type:29 withName:@"kRaycount"];
            [v79 setConstantValue:&v288 type:53 withName:@"kRayMarch"];
            [v79 setConstantValue:v24 type:53 withName:@"kSkipFullSizeLayer"];
            LODWORD(v80) = _S8;
            [v79 setConstantFloat:@"kRadiusLocal_float" withName:v80];
            LODWORD(v81) = 0.25;
            [v79 setConstantFloat:@"kRadiusLocalFraction_float" withName:v81];
            *&v82 = v73;
            [v79 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v82];
            [v79 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v280];
            LODWORD(v83) = *(v16 + 72);
            [v79 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v83];
            LODWORD(v84) = 6.0;
            [v79 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v84];
            LODWORD(v85) = 1017370378;
            [v79 setConstantFloat:@"kHighlightBoostFactor_float" withName:v85];
            v86 = [*(v16 + 5) computePipelineStateFor:@"raytracingV3001" withConstants:v79];
            v87 = *(v16 + 38);
            *(v16 + 38) = v86;

            if (!*(v16 + 38))
            {
              v144 = _PTLogSystem();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v144 initWithMetalContext:v196 colorSize:v197 disparitySize:v198 debugRendering:v199 verbose:v200 options:v201 quality:v202];
              }

              goto LABEL_102;
            }

            if ([*(v16 + 11) rayMarch])
            {
              v88 = [[PTGlobalReduction alloc] initWithMetalContext:*(v16 + 5) textureSize:width, height];
              v89 = *(v16 + 14);
              *(v16 + 14) = v88;

              if (!*(v16 + 14))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v144 initWithMetalContext:v203 colorSize:v204 disparitySize:v205 debugRendering:v206 verbose:v207 options:v208 quality:v209];
                }

                goto LABEL_102;
              }

              v90 = [*(v16 + 5) device];
              v91 = [v90 newBufferWithLength:8 options:0];
              v92 = *(v16 + 22);
              *(v16 + 22) = v91;

              if (!*(v16 + 22))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v144 initWithMetalContext:v210 colorSize:v211 disparitySize:v212 debugRendering:v213 verbose:v214 options:v215 quality:v216];
                }

                goto LABEL_102;
              }

              v93 = [*(v16 + 5) textureUtil];
              v94 = [v93 createWithSize:10 pixelFormat:width, height];
              v95 = *(v16 + 23);
              *(v16 + 23) = v94;

              if (!*(v16 + 23))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v144 initWithMetalContext:v238 colorSize:v239 disparitySize:v240 debugRendering:v241 verbose:v242 options:v243 quality:v244];
                }

                goto LABEL_102;
              }

              v96 = [*(v16 + 5) textureUtil];
              v97 = [v96 createWithSize:10 pixelFormat:width, height];
              v98 = *(v16 + 24);
              *(v16 + 24) = v97;

              if (!*(v16 + 24))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v144 initWithMetalContext:v266 colorSize:v267 disparitySize:v268 debugRendering:v269 verbose:v270 options:v271 quality:v272];
                }

                goto LABEL_102;
              }
            }

            [*(v16 + 11) disparityUpsampleFactor];
            v100 = width * v99;
            [*(v16 + 11) disparityUpsampleFactor];
            v102 = height * v101;
            [*(v16 + 11) disparityUpsampleFactor];
            if (v103 > 1.0 && v100 < v284 && v102 < v283)
            {
              v104 = [PTGuidedFilter alloc];
              v105 = *(v16 + 5);
              HIDWORD(v106) = HIDWORD(height);
              v285 = width;
              v286 = height;
              v287 = 1;
              LODWORD(v106) = 1028443341;
              v107 = [(PTGuidedFilter *)v104 initWithMetalContext:v105 inputSize:&v285 epsilon:v106];
              v108 = *(v16 + 15);
              *(v16 + 15) = v107;

              if (!*(v16 + 15))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v144 initWithMetalContext:v217 colorSize:v218 disparitySize:v219 debugRendering:v220 verbose:v221 options:v222 quality:v223];
                }

                goto LABEL_102;
              }

              v109 = [*(v16 + 5) textureUtil];
              v110 = [v109 createWithSize:25 pixelFormat:v100, v102];
              v111 = *(v16 + 27);
              *(v16 + 27) = v110;

              v112 = *(v16 + 27);
              if (!v112)
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v144 initWithMetalContext:v245 colorSize:v246 disparitySize:v247 debugRendering:v248 verbose:v249 options:v250 quality:v251];
                }

                goto LABEL_102;
              }

              v113 = *(v16 + 2);
              v114 = [v112 width];
              v115 = [*(v16 + 27) height];
              v285 = v114;
              v286 = v115;
              v287 = 1;
              v116 = [v113 findMipmapLevelLargerThan:&v285];
              v117 = *(v16 + 32);
              *(v16 + 32) = v116;

              v118 = *(v16 + 2);
              v285 = width;
              v286 = height;
              v287 = 1;
              v119 = [v118 findMipmapLevelLargerThan:&v285];
              v120 = *(v16 + 31);
              *(v16 + 31) = v119;
            }

            if (![*(v16 + 11) doCenterDisparity])
            {
              goto LABEL_106;
            }

            v121 = [*(v16 + 5) textureUtil];
            v122 = [v121 createWithSize:25 pixelFormat:width, height];
            v123 = *(v16 + 26);
            *(v16 + 26) = v122;

            if (!*(v16 + 26))
            {
              v144 = _PTLogSystem();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v144 initWithMetalContext:v231 colorSize:v232 disparitySize:v233 debugRendering:v234 verbose:v235 options:v236 quality:v237];
              }

              goto LABEL_102;
            }

            v124 = [*(v16 + 5) textureUtil];
            v125 = [v124 createWithSize:25 pixelFormat:width, height];
            v126 = *(v16 + 25);
            *(v16 + 25) = v125;

            if (!*(v16 + 25))
            {
              v144 = _PTLogSystem();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v144 initWithMetalContext:v259 colorSize:v260 disparitySize:v261 debugRendering:v262 verbose:v263 options:v264 quality:v265];
              }
            }

            else
            {
              if (![*(v16 + 11) doFocusEdgeMask])
              {
                goto LABEL_53;
              }

LABEL_106:
              v127 = [*(v16 + 5) textureUtil];
              v128 = v127;
              v129 = *(v16 + 27);
              v130 = width;
              if (v129)
              {
                v131 = v102;
              }

              else
              {
                v131 = height;
              }

              if (v129)
              {
                v130 = v100;
              }

              v132 = [v127 createWithSize:25 pixelFormat:v130, v131];
              v133 = *(v16 + 28);
              *(v16 + 28) = v132;

              if (!*(v16 + 28))
              {
                v144 = _PTLogSystem();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v144 initWithMetalContext:v252, v253, v254, v255, v256, v257, v258];
                }
              }

              else
              {
LABEL_53:
                v134 = [*(v16 + 5) textureUtil];
                [*(v16 + 11) renderDownscale];
                v136 = (v284 / v135);
                [*(v16 + 11) renderDownscale];
                v138 = [v134 createWithWidth:v136 height:(v283 / v137) pixelFormat:objc_msgSend(*(v16 + 11), "intermediatePixelFormat")];
                v139 = *(v16 + 29);
                *(v16 + 29) = v138;

                if (*(v16 + 29))
                {
                  if (![*(v16 + 11) doIntermediate2XUpscale] || (objc_msgSend(*(v16 + 5), "textureUtil"), v140 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v140, "createWithWidth:height:pixelFormat:", 2 * objc_msgSend(*(v16 + 29), "width"), 2 * objc_msgSend(*(v16 + 29), "height"), objc_msgSend(*(v16 + 11), "intermediatePixelFormat")), v141 = objc_claimAutoreleasedReturnValue(), v142 = *(v16 + 30), *(v16 + 30) = v141, v142, v140, *(v16 + 30)))
                  {
                    v143 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(v16 + 29), *(v16 + 23), *(v16 + 24), 0}];
                    v144 = v143;
                    if (*(v16 + 27))
                    {
                      [v143 addObject:?];
                    }

                    if (*(v16 + 28))
                    {
                      [v144 addObject:?];
                    }

                    v145 = v16;
                    goto LABEL_103;
                  }

                  v144 = _PTLogSystem();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV3001 *)v144 initWithMetalContext:v273 colorSize:v274 disparitySize:v275 debugRendering:v276 verbose:v277 options:v278 quality:v279];
                  }
                }

                else
                {
                  v144 = _PTLogSystem();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV3001 *)v144 initWithMetalContext:v224 colorSize:v225 disparitySize:v226 debugRendering:v227 verbose:v228 options:v229 quality:v230];
                  }
                }
              }
            }

LABEL_102:
            v145 = 0;
LABEL_103:

            goto LABEL_77;
          }

          v25 = _PTLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV3001 *)v25 initWithMetalContext:v188 colorSize:v189 disparitySize:v190 debugRendering:v191 verbose:v192 options:v193 quality:v194];
          }
        }

        else
        {
          v25 = _PTLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV3001 *)v25 initWithMetalContext:v181 colorSize:v182 disparitySize:v183 debugRendering:v184 verbose:v185 options:v186 quality:v187];
          }
        }
      }

      else
      {
        v25 = _PTLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV3001 *)v25 initWithMetalContext:v160 colorSize:v161 disparitySize:v162 debugRendering:v163 verbose:v164 options:v165 quality:v166];
        }
      }
    }

    else
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV3001 *)v25 initWithMetalContext:v146 colorSize:v147 disparitySize:v148 debugRendering:v149 verbose:v150 options:v151 quality:v152];
      }
    }

    goto LABEL_75;
  }

  v25 = _PTLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [(PTRaytracingV3001 *)v25 initWithMetalContext:v167 colorSize:v168 disparitySize:v169 debugRendering:v170 verbose:v171 options:v172 quality:v173];
  }

LABEL_75:

LABEL_76:
  v145 = 0;
LABEL_77:

  return v145;
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
  *&v9 = self->_radialObstructionFactor;
  *&v10 = self->_circleOfConfusionReference;
  *&v11 = self->_fNumberLimitWeight;
  [PTRaytracingUtils createFocusObject:v7 anamorphicFactor:COERCE_DOUBLE(LODWORD(self->_anamorphicFactor)) radialObstructionFactor:v9 colorSize:*self->_sourceColorSize circleOfConfusionReference:v10 fNumberLimitWeight:v11];
  memset(v90, 0, sizeof(v90));
  v12 = [v7 sourceDisparity];
  if (!self->_injectedRGBAPyramid)
  {
    v13 = [v7 sourceColor];
    [(PTPyramid *)self->_rgbaPyramid updatePyramid:v6 inPTTexture:v13];
  }

  v14 = [(PTQualitySettings *)self->_qualitySettings doCenterDisparity];
  v15 = v12;
  if (v14)
  {
    v16 = (*&v91 + *&v91) * *(&v91 + 2);
    *&v16 = v16;
    v17 = vdiv_f32(*&self->_circleOfConfusionLimitBgFg[4], vdup_lane_s32(*&v16, 0));
    v18 = -v17.f32[0];
    v19 = v17.i32[1];
    v20 = [(PTQualitySettings *)self->_qualitySettings portraitPreviewDeadzone];
    raytracingUtils = self->_raytracingUtils;
    disparityDiff = self->_disparityDiff;
    *&v23 = -*(&v91 + 1);
    *&v24 = v18;
    LODWORD(v25) = v19;
    if (v20)
    {
      [(PTRaytracingUtils *)raytracingUtils disparityPortraitPreviewDeadzone:v6 inDisparity:v12 outDisparity:disparityDiff postModifier:v23, v24, v25];
    }

    else
    {
      [(PTRaytracingUtils *)raytracingUtils disparityApplyPostModifier:v6 inDisparity:v12 outDisparity:disparityDiff postModifier:v23, v24, v25];
    }

    v15 = self->_disparityDiff;
  }

  v26 = v15;
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:v6 inTexture:v26 globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];
    v32 = self->_raytracingUtils;
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v36 = self->_edgeTolerance;
    v87 = v91;
    v88 = v92;
    v89 = v93;
    [(PTRaytracingUtils *)v32 detectDilatedEdges:v6 inDisparity:v26 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v87 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v36];
  }

  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    v41 = [v7 renderState];
    -[PTGuidedFilter guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:](guidedFilter, "guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:", v6, v26, guideRGBACoefficients, guideRGBAUpscale, disparityDiffUpscaled, [v41 sourceColorBitDepth], 0);

    v42 = self->_disparityDiffUpscaled;
    v26 = v42;
  }

  if (self->_focusEdgeMask)
  {
    *&v27 = self->_focusEdge.width;
    *&v28 = self->_focusEdge.gradientThreshold;
    *&v29 = self->_focusEdge.gradientWeight;
    *&v30 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtils *)self->_raytracingUtils focusEdgeMask:v6 inDisparityDiff:v26 focusEdge:v27 outFocusEdgeMask:v28, v29, v30];
  }

  v87 = 0u;
  v88 = 0u;
  if (v7)
  {
    [v7 scissorRect];
  }

  else
  {
    v85 = 0uLL;
    v86 = 0uLL;
  }

  v43 = [v7 destinationColor];
  +[PTImageblockConfig adjustScissorRectToImageBlocks:imageBlockSize:](PTImageblockConfig, "adjustScissorRectToImageBlocks:imageBlockSize:", &v85, [v43 imageBlockSize]);

  v79 = v87;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v80 = v44;
  v45 = vcvt_f32_f64(vcvtq_f64_u64(__PAIR128__(*(&v87 + 1), v79)));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  __asm { FMOV            V1.2D, #-0.5 }

  v52 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(v45, __PAIR64__(v46, v80))), _Q1)), 0)));
  v84[1] = v52.i16[2];
  v84[0] = v52.i16[0];
  v53 = [(MTLTexture *)self->_raytracedRGBWeight width];
  v45.f32[0] = v88;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v55 = ceil((v45.f32[0] / v54) + 0.5);
  if (v55 > v53)
  {
    v55 = v53;
  }

  v56 = v55;
  v57 = [(MTLTexture *)self->_raytracedRGBWeight height];
  v58 = *(&v88 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v60 = ceil((v58 / v59) + 0.5);
  if (v60 > v57)
  {
    v60 = v57;
  }

  v61 = v60;
  v62 = [v6 computeCommandEncoder];
  if (!v62)
  {
    v63 = _PTLogSystem();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v63 disparityApplyPostModifier:v64 inDisparity:v65 outDisparity:v66 postModifier:v67, v68, v69, v70];
    }
  }

  [v62 setComputePipelineState:self->_raytracingSDOF];
  v71 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [v62 setTexture:v71 atIndex:0];

  [v62 setTexture:v26 atIndex:1];
  [v62 setTexture:self->_disparityEdges atIndex:2];
  [v62 setTexture:self->_raytracedRGBWeight atIndex:3];
  [v62 setTexture:self->_focusEdgeMask atIndex:4];
  [v62 setBytes:v90 length:24 atIndex:0];
  [v62 setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [v62 setBuffer:self->_randomUChars offset:0 atIndex:2];
  [v62 setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [v62 setBytes:self->_sourceColorSize length:8 atIndex:4];
  [v62 setBytes:self->_sourceDisparitySize length:8 atIndex:5];
  [v62 setBytes:v84 length:4 atIndex:6];
  *&v85 = v56;
  *(&v85 + 1) = v61;
  *&v86 = 1;
  v82 = vdupq_n_s64(8uLL);
  v83 = 1;
  [v62 dispatchThreads:&v85 threadsPerThreadgroup:&v82];
  [v62 endEncoding];
  v72 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    v73 = [(PTMetalContext *)self->_metalContext textureUtil];
    [v73 copy:v6 inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v74 = self->_raytracedRGBWeightUpscaled;
    v72 = v74;
  }

  raytracingInterpolateResult = self->_raytracingInterpolateResult;
  if (self->_skipFullSizeLayer)
  {
    [(PTRaytracingInterpolateResult *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:v6 renderRequest:v7 inRGBWeight:v72];
  }

  else
  {
    v76 = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v77 = [v76 objectAtIndexedSubscript:0];
    [(PTRaytracingInterpolateResult *)raytracingInterpolateResult interpolateRGBWeightUsingRGBALinearToDest:v6 renderRequest:v7 inRGBWeight:v72 inRGBA:v77];
  }

  if (kdebug_is_enabled())
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __62__PTRaytracingV3001_renderContinuousWithSource_renderRequest___block_invoke;
    v81[3] = &unk_278522E68;
    v81[4] = self;
    [v6 addCompletedHandler:v81];
  }

  return 0;
}

void __62__PTRaytracingV3001_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
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

@end