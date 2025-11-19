@interface PTEffectRelighting
+ (SmoothFaceRectData)computeSmoothFaceRect:(SEL)a3 transform:(id)a4 weightHeadEye:(CGAffineTransform *)a5 eyeRadiusFactor:(float)a6 aspectRatio:(float)a7;
- (PTEffectRelighting)initWithMetalContext:(id)a3 availableEffectTypes:(unint64_t)a4 prewarmOnly:(BOOL)a5 colorSize:(id *)a6 msrColorPyramid:(id)a7 studiolightFromSegmentation:(BOOL)a8 sharedResources:(id)a9;
- (id)approximateDiffuseFromSegmentation:(id)a3;
- (int)filterLightGainApplyInRGB:(id)a3;
- (void)estimateLightIntensity:(id)a3 inFaceRects:numberOfFaceRects:humanDetections:effectRenderRequest:asyncWork:;
- (void)fgBgDebugWithDisparity:(id)a3 inDiffuse:(id)a4 inFocusDisparityModifier:(id)a5 outMask:(id)a6 debugType:(int64_t)a7;
- (void)initRelightingParam;
- (void)lightMaskDebugWithMSRPyramid:(id)a3 outFaceMask:(id)a4;
- (void)renderLightMask:(id)a3 lightMasks:(id)a4 smoothFaceRects:(SmoothFaceRectData *)a5;
- (void)reset;
- (void)studioLightInColor:(id)a3 inDiffuse:(id)a4 inDisparity:(id)a5 inFocusDisparityModifier:(id)a6 outColor:(id)a7 relightStrength:(float)a8 studioLightFromSegmentationBlend:(float)a9 studioLightEffectModifier:(id)a10;
- (void)updateColorCube;
- (void)updateParamters:(id)a3 relightStrength:(float)a4;
@end

@implementation PTEffectRelighting

- (PTEffectRelighting)initWithMetalContext:(id)a3 availableEffectTypes:(unint64_t)a4 prewarmOnly:(BOOL)a5 colorSize:(id *)a6 msrColorPyramid:(id)a7 studiolightFromSegmentation:(BOOL)a8 sharedResources:(id)a9
{
  v11 = a5;
  v183 = a4;
  v191 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  v16 = a9;
  v189.receiver = self;
  v189.super_class = PTEffectRelighting;
  v17 = [(PTEffectRelighting *)&v189 init];
  v18 = v17;
  if (v17)
  {
    LODWORD(v17->_boxFilter) = -1;
    objc_storeStrong(&v17->_metalContext, a3);
    v18->_frameIndex = 0;
    LODWORD(v18->_colorCube) = 0;
    v19 = [v16 util];
    util = v18->_util;
    v18->_util = v19;

    p_quarterSizeRGBA = &v18->_quarterSizeRGBA;
    objc_storeStrong(&v18->_quarterSizeRGBA, a7);
    [(PTEffectRelighting *)v18 updateColorCube];
    v22 = [PTBrightSceneDetector alloc];
    LODWORD(v23) = 1045220557;
    LODWORD(v24) = 3.0;
    v25 = [(PTBrightSceneDetector *)v22 initWithLuxLevelThreshold:2.1857382e27 emaFilterCoefficient:v23 transitionTime:v24];
    v26 = *&v18->_lastFrameTimeSeconds;
    *&v18->_lastFrameTimeSeconds = v25;

    if (*&v18->_lastFrameTimeSeconds)
    {
      v27 = [PTStudioLightColorCorrectionAndConversion alloc];
      metalContext = v18->_metalContext;
      v29 = [(PTMSRResize *)v18->_msrColorPyramid cubeTexture];
      v181 = v15;
      v30 = [(PTStudioLightColorCorrectionAndConversion *)v27 initWithMetalContext:metalContext correctionColorCube:v29];
      isa = v18[1].super.isa;
      v18[1].super.isa = v30;

      v32 = 0.0;
      v33 = -1;
      v34 = v190;
      do
      {
        v35 = 0;
        v36 = -1;
        do
        {
          v37 = pow(2.71828183, (((v36 * v36) + (v33 * v33)) * -0.5)) * 0.159154943;
          v32 = v32 + v37;
          *&v34[v35] = v37;
          v35 += 3;
          ++v36;
        }

        while (v35 != 9);
        ++v33;
        ++v34;
      }

      while (v33 != 2);
      for (i = 0; i != 9; ++i)
      {
        *&v190[i] = *&v190[i] / v32;
      }

      LODWORD(v18->_lightGainMapLowRes) = 1056964608;
      v39 = _PTLogSystem();
      v15 = v181;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PTEffectRelighting initWithMetalContext:v39 availableEffectTypes:? prewarmOnly:? colorSize:? msrColorPyramid:? studiolightFromSegmentation:? sharedResources:?];
      }

      _S0 = v190[0];
      _S1 = v190[1];
      __asm { FCVT            H0, S0 }

      v188[0] = _S0;
      __asm { FCVT            H0, S1 }

      v188[1] = _S0;
      _S0 = v190[2];
      _S1 = v190[3];
      __asm { FCVT            H0, S0 }

      v188[2] = _S0;
      __asm { FCVT            H0, S1 }

      v187[0] = _S0;
      _S0 = v190[4];
      _S1 = v190[5];
      __asm { FCVT            H0, S0 }

      v187[1] = _S0;
      __asm { FCVT            H0, S1 }

      v187[2] = _S0;
      v50 = objc_opt_new();
      colorCorrectionAndConversion = v18->_colorCorrectionAndConversion;
      v18->_colorCorrectionAndConversion = v50;

      [(PTStudioLightColorCorrectionAndConversion *)v18->_colorCorrectionAndConversion setConstantHalf3:v188 withName:@"kWeights2DRow0_half3"];
      [(PTStudioLightColorCorrectionAndConversion *)v18->_colorCorrectionAndConversion setConstantHalf3:v187 withName:@"kWeights2DRow1_half3"];
      LODWORD(v52) = 1.5;
      if (*&v18->_lightGainMapLowRes > 0.25)
      {
        *&v52 = 2.0;
      }

      v186 = 3;
      [(PTStudioLightColorCorrectionAndConversion *)v18->_colorCorrectionAndConversion setConstantFloat:@"kDisparityFilterStepWidth_float" withName:v52];
      [(PTStudioLightColorCorrectionAndConversion *)v18->_colorCorrectionAndConversion setConstantValue:&v186 type:29 withName:@"kDisparityFilterType"];
      v53 = [v14 computePipelineStateFor:@"studioLight" withConstants:v18->_colorCorrectionAndConversion];
      studioLight = v18->_studioLight;
      v18->_studioLight = v53;

      if (v18->_studioLight)
      {
        v55 = [v14 computePipelineStateFor:@"createLightMask" withConstants:v18->_colorCorrectionAndConversion];
        createLightMask = v18->_createLightMask;
        v18->_createLightMask = v55;

        if (v18->_createLightMask)
        {
          v57 = [v14 computePipelineStateFor:@"relightFullsizeInput" withConstants:0];
          relightFullsizeInput = v18->_relightFullsizeInput;
          v18->_relightFullsizeInput = v57;

          if (v18->_relightFullsizeInput)
          {
            v59 = objc_opt_new();
            [v59 setConstantHalf3:v188 withName:@"kWeights2DRow0_half3"];
            [v59 setConstantHalf3:v187 withName:@"kWeights2DRow1_half3"];
            v60 = [v14 computePipelineStateFor:@"filterLightGainApplyToRGB" withConstants:v59];
            filterLightGainApplyToRGB = v18->_filterLightGainApplyToRGB;
            v18->_filterLightGainApplyToRGB = v60;

            if (v18->_filterLightGainApplyToRGB)
            {
              v62 = [PTSyntheticLight alloc];
              v63 = *p_quarterSizeRGBA;
              v184 = *&a6->var0;
              var2 = a6->var2;
              v64 = [(PTSyntheticLight *)v62 initWithMetalContext:v14 msrColorPyramid:v63 colorSize:&v184 prewarmOnly:v11 sharedResources:v16];
              syntheticLight = v18->_syntheticLight;
              v18->_syntheticLight = v64;

              if (v18->_syntheticLight)
              {
                [(PTEffectRelighting *)v18 initRelightingParam];
                v66 = *&v18->_lightGainMapLowRes;
                var0 = a6->var0;
                var1 = a6->var1;
                v69 = [v14 textureUtil];
                v70 = ((v66 * var0) * 0.5);
                v71 = ((v66 * var1) * 0.5);
                v72 = [v69 createWithWidth:v70 height:v71 pixelFormat:115];
                lightGainMapLowResFiltered = v18->_lightGainMapLowResFiltered;
                v18->_lightGainMapLowResFiltered = v72;

                v15 = v181;
                if (v18->_lightGainMapLowResFiltered)
                {
                  v74 = [v14 textureUtil];
                  v75 = [v74 createWithWidth:a6->var0 >> 2 height:a6->var1 >> 2 pixelFormat:115];
                  lightGainMapFiltered = v18->_lightGainMapFiltered;
                  v18->_lightGainMapFiltered = v75;

                  v15 = v181;
                  if (v18->_lightGainMapFiltered)
                  {
                    v77 = [v14 textureUtil];
                    v78 = [v77 createWithWidth:a6->var0 >> 1 height:a6->var1 >> 1 pixelFormat:115];
                    brightSceneDetector = v18->_brightSceneDetector;
                    v18->_brightSceneDetector = v78;

                    v15 = v181;
                    if (v18->_brightSceneDetector)
                    {
                      v80 = [v14 textureUtil];
                      v81 = [v80 createWithWidth:v70 height:v71 pixelFormat:30];
                      v82 = *v18->_bgVignetteLightIntensity;
                      *v18->_bgVignetteLightIntensity = v81;

                      v15 = v181;
                      if (*v18->_bgVignetteLightIntensity)
                      {
                        if ((v183 & 0x40) == 0 || !a8 && !PTDefaultsPublicGetBool(@"harvesting.enabled", 0))
                        {
LABEL_73:
                          v173 = [*p_quarterSizeRGBA pyramidRGBA];
                          v174 = [v173 firstObject];
                          relightSizeRGBA = v18->_relightSizeRGBA;
                          v18->_relightSizeRGBA = v174;

                          v176 = [(MTLTexture *)v18->_quarterSizeRGBA pyramidRGBA];
                          v177 = [(MTLTexture *)v18->_lightGainMapLowResFiltered width];
                          v178 = [(MTLTexture *)v18->_lightGainMapLowResFiltered height];
                          *&v184 = v177;
                          *(&v184 + 1) = v178;
                          var2 = 1;
                          v179 = [PTUtil findMipmapLevel:v176 largerThan:&v184];
                          v180 = *&v18->_colorCubeType;
                          *&v18->_colorCubeType = v179;

                          v15 = v181;
                          v98 = v18;
                          goto LABEL_58;
                        }

                        v83 = [[PTBoxFilter alloc] initWithMetalContext:v18->_metalContext options:8];
                        approximatedDiffuseIntermediate = v18->_approximatedDiffuseIntermediate;
                        v18->_approximatedDiffuseIntermediate = v83;

                        v85 = [PTEffectUtil aspectRatio:a6->var0, a6->var1];
                        v86 = a6->var0;
                        v87 = a6->var1;
                        if (a6->var0 <= v87)
                        {
                          if (v85 != 3)
                          {
                            if (v85 == 1)
                            {
                              v88 = 176;
                              v89 = 320;
                            }

                            else
                            {
                              v88 = 216;
                              v89 = 288;
                            }

LABEL_66:
                            if (v86 >= v87)
                            {
                              v165 = v89;
                            }

                            else
                            {
                              v165 = v88;
                            }

                            if (v86 >= v87)
                            {
                              v166 = v88;
                            }

                            else
                            {
                              v166 = v89;
                            }

                            v167 = [(PTMetalContext *)v18->_metalContext textureUtil];
                            v168 = [v167 createWithWidth:v166 height:v165 pixelFormat:10];
                            approximatedDiffuse = v18->_approximatedDiffuse;
                            v18->_approximatedDiffuse = v168;

                            v170 = [(PTMetalContext *)v18->_metalContext textureUtil];
                            v171 = [v170 createWithWidth:v166 height:v165 pixelFormat:10];
                            functionConstants = v18->_functionConstants;
                            v18->_functionConstants = v171;

                            goto LABEL_73;
                          }
                        }

                        else
                        {
                          if (v85 == 1)
                          {
                            v88 = 320;
                            v89 = 176;
                            goto LABEL_66;
                          }

                          if (v85 != 3)
                          {
                            v88 = 288;
                            v89 = 216;
                            goto LABEL_66;
                          }
                        }

                        v89 = 320;
                        v88 = 320;
                        goto LABEL_66;
                      }

                      v128 = _PTLogSystem();
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                      {
                        [(PTEffectRelighting *)v128 initWithMetalContext:v157 availableEffectTypes:v158 prewarmOnly:v159 colorSize:v160 msrColorPyramid:v161 studiolightFromSegmentation:v162 sharedResources:v163];
                      }
                    }

                    else
                    {
                      v128 = _PTLogSystem();
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                      {
                        [(PTEffectRelighting *)v128 initWithMetalContext:v150 availableEffectTypes:v151 prewarmOnly:v152 colorSize:v153 msrColorPyramid:v154 studiolightFromSegmentation:v155 sharedResources:v156];
                      }
                    }
                  }

                  else
                  {
                    v128 = _PTLogSystem();
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      [(PTEffectRelighting *)v128 initWithMetalContext:v143 availableEffectTypes:v144 prewarmOnly:v145 colorSize:v146 msrColorPyramid:v147 studiolightFromSegmentation:v148 sharedResources:v149];
                    }
                  }
                }

                else
                {
                  v128 = _PTLogSystem();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                  {
                    [(PTEffectRelighting *)v128 initWithMetalContext:v136 availableEffectTypes:v137 prewarmOnly:v138 colorSize:v139 msrColorPyramid:v140 studiolightFromSegmentation:v141 sharedResources:v142];
                  }
                }
              }

              else
              {
                v128 = _PTLogSystem();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  [(PTEffectRelighting *)v128 initWithMetalContext:v129 availableEffectTypes:v130 prewarmOnly:v131 colorSize:v132 msrColorPyramid:v133 studiolightFromSegmentation:v134 sharedResources:v135];
                }
              }
            }

            else
            {
              v120 = _PTLogSystem();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
              {
                [(PTEffectRelighting *)v120 initWithMetalContext:v121 availableEffectTypes:v122 prewarmOnly:v123 colorSize:v124 msrColorPyramid:v125 studiolightFromSegmentation:v126 sharedResources:v127];
              }
            }
          }

          else
          {
            v59 = _PTLogSystem();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectRelighting *)v59 initWithMetalContext:v113 availableEffectTypes:v114 prewarmOnly:v115 colorSize:v116 msrColorPyramid:v117 studiolightFromSegmentation:v118 sharedResources:v119];
            }
          }
        }

        else
        {
          v59 = _PTLogSystem();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [(PTEffectRelighting *)v59 initWithMetalContext:v106 availableEffectTypes:v107 prewarmOnly:v108 colorSize:v109 msrColorPyramid:v110 studiolightFromSegmentation:v111 sharedResources:v112];
          }
        }
      }

      else
      {
        v59 = _PTLogSystem();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [(PTEffectRelighting *)v59 initWithMetalContext:v99 availableEffectTypes:v100 prewarmOnly:v101 colorSize:v102 msrColorPyramid:v103 studiolightFromSegmentation:v104 sharedResources:v105];
        }
      }

      v98 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v90 = _PTLogSystem();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectRelighting *)v90 initWithMetalContext:v91 availableEffectTypes:v92 prewarmOnly:v93 colorSize:v94 msrColorPyramid:v95 studiolightFromSegmentation:v96 sharedResources:v97];
    }
  }

  v98 = 0;
LABEL_59:

  return v98;
}

- (void)updateColorCube
{
  if (LODWORD(self->_boxFilter) != 1)
  {
    LODWORD(self->_boxFilter) = 1;
    v3 = [PTSingleColorCubeCorrectionStage alloc];
    v6 = [(PTMetalContext *)self->_metalContext device];
    v4 = [PTSingleColorCubeCorrectionStage init:v3 cubeSize:"init:cubeSize:data:" data:?];
    msrColorPyramid = self->_msrColorPyramid;
    self->_msrColorPyramid = v4;
  }
}

- (void)initRelightingParam
{
  v2 = 0;
  *&self->_anon_60[8] = 1064011039;
  *self->_anon_60 = vdupq_n_s32(0x3F5EB852u).u64[0];
  *&self->_bgVignetteLightIntensity[8] = xmmword_2244A5E80;
  v3 = *&self->_anon_60[16];
  do
  {
    v5 = xmmword_2244A5E80;
    v4 = *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3)));
    v6 = v3;
    *(&v6 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) = v4;
    v3 = v6;
    ++v2;
  }

  while (v2 != 3);
  *&self->_anon_60[24] = DWORD2(v6);
  *&self->_anon_60[16] = v3;
  *&self->_anon_60[32] = 0x3F8666663F000000;
  *&self->_anon_60[40] = 1063675494;
  *&self->_anon_60[72] = 1061158912;
  *&self->_anon_60[64] = 0x3F6666663F800000;
  *&self->_anon_60[88] = 1065353216;
  *&self->_anon_60[80] = vdupq_n_s32(0x3F83F571u).u64[0];
  *&self->_anon_60[48] = 1056964608;
  *&self->_weightHeadEye[4] = 0x3E19999A3E800000;
  LODWORD(self->_lightMasks) = 1075838976;
}

- (void)updateParamters:(id)a3 relightStrength:(float)a4
{
  v6 = [*&self->_lastFrameTimeSeconds brightScene];
  v26 = v7;
  PTDefaultsFlush(v6);
  [(PTEffectRelighting *)self updateColorCube];
  v8 = 0;
  *&self->_anon_60[96] = 0x3FC000003F000000;
  *&self->_anon_60[104] = 0x400000003F000000;
  v9 = *&self->_bgVignetteLightIntensity[8];
  v11 = *self->_anon_60;
  v10 = *&self->_anon_60[16];
  do
  {
    v28 = xmmword_2244A5EA0;
    v12 = (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 1.25) + (a4 * ((*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 0.85) - (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 1.25)));
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    v30 = v11;
    *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v12;
    v11 = v30;
    v27 = v9;
    v13 = *(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
    v14 = (v13 * 1.25) + (a4 * ((v13 * 0.85) - (v13 * 1.25)));
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    v29 = v10;
    *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v14;
    v10 = v29;
    ++v8;
  }

  while (v8 != 3);
  *&self->_anon_60[8] = DWORD2(v11);
  *self->_anon_60 = v11;
  *&self->_anon_60[24] = DWORD2(v10);
  *&self->_anon_60[16] = v10;
  v15 = *&self->_anon_60[80];
  __asm { FMOV            V0.4S, #1.0 }

  v21 = vmlaq_n_f32(*&self->_anon_60[16], vsubq_f32(_Q0, *&self->_anon_60[16]), v26);
  *self->_anon_60 = vmlaq_n_f32(*self->_anon_60, vsubq_f32(_Q0, *self->_anon_60), v26);
  *&self->_anon_60[16] = v21;
  v22 = vmlaq_n_f32(v15, vsubq_f32(_Q0, v15), v26);
  v23 = vceqq_f32(v15, v22);
  v23.i32[3] = v23.i32[2];
  if ((vminvq_u32(v23) & 0x80000000) == 0)
  {
    *&self->_anon_60[80] = vdivq_f32(_Q0, v22);
  }

  if (*&self->_anon_60[36] <= *&self->_anon_60[40])
  {
    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PTEffectRelighting updateParamters:v24 relightStrength:?];
    }

    v25 = *&self->_anon_60[40] + 0.05;
    *&self->_anon_60[36] = v25;
  }
}

+ (SmoothFaceRectData)computeSmoothFaceRect:(SEL)a3 transform:(id)a4 weightHeadEye:(CGAffineTransform *)a5 eyeRadiusFactor:(float)a6 aspectRatio:(float)a7
{
  v8 = v7;
  v9 = *&a6;
  v12 = a4;
  v13 = 0;
  LODWORD(_Q0) = 1.0;
  v15.f32[0] = fmaxf(v8, 1.0);
  if (v8 <= 1.0)
  {
    *&_Q0 = 1.0 / v8;
  }

  v15.i32[1] = _Q0;
  v36 = v15;
  *&retstr->var0 = v15;
  retstr->var5[0].var1 = 0.25;
  *&retstr->var5[0].var2 = v9;
  __asm { FMOV            V0.2S, #2.5 }

  *&_Q0 = a7;
  v33 = _Q0;
  v20 = -288;
  v37 = v12;
  do
  {
    v21 = *([v12 detectionsFiltered] + v13 + 16);
    v22 = vextq_s8(v21, v21, 8uLL).u64[0];
    v23 = (retstr + v20);
    v23[42] = vadd_f32(*v21.i8, vmul_f32(v22, 0x3F0000003F000000));
    *v21.i8 = vmul_f32(vmul_f32(v36, v22), 0x3F0000003F000000);
    v35 = sqrtf(vaddv_f32(vmul_f32(*v21.i8, *v21.i8))) * 0.68943;
    v23[43].f32[0] = v35;
    v23[50].i32[0] = *([v37 detectionsFiltered] + v13 + 132);
    v24 = *([v37 detectionsFiltered] + v13 + 96);
    v25 = vextq_s8(v24, v24, 8uLL).u64[0];
    v26 = (retstr + v20);
    v26[46] = vadd_f32(*v24.i8, vmul_f32(v25, 0x3F0000003F000000));
    *v24.i8 = vmul_f32(vmul_f32(v36, v25), 0x3F0000003F000000);
    v26[47].f32[0] = sqrtf(vaddv_f32(vmul_f32(*v24.i8, *v24.i8))) * a7;
    v27 = *([v37 detectionsFiltered] + v13 + 112);
    v28 = vextq_s8(v27, v27, 8uLL).u64[0];
    v29 = vmul_f32(v28, 0x3F0000003F000000);
    v30 = vmul_f32(vmul_f32(v36, v28), 0x3F0000003F000000);
    v30.f32[0] = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
    v30.f32[1] = v35;
    v26[48] = vadd_f32(*v27.i8, v29);
    v26[49] = vmul_f32(v30, *&v33);
    v13 += 144;
    v20 += 72;
    v12 = v37;
  }

  while (v20);
  v31 = vcvt_f32_f64(*&a5->c);
  *&retstr->var5[0].var4 = vcvt_f32_f64(*&a5->a);
  *&retstr->var5[1].var1 = v31;
  retstr->var5[0].var0 = 0.9;
  *&retstr->var2 = 0x404000003FC00000;

  return result;
}

- (void)fgBgDebugWithDisparity:(id)a3 inDiffuse:(id)a4 inFocusDisparityModifier:(id)a5 outMask:(id)a6 debugType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v32 = a7;
  if (!self->_fgBgForDebug)
  {
    v16 = [(PTMetalContext *)self->_metalContext computePipelineStateFor:@"fgBgForDebug" withConstants:self->_colorCorrectionAndConversion];
    fgBgForDebug = self->_fgBgForDebug;
    self->_fgBgForDebug = v16;

    if (!self->_fgBgForDebug)
    {
      v18 = _PTLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(PTEffectRelighting *)v18 fgBgDebugWithDisparity:v19 inDiffuse:v20 inFocusDisparityModifier:v21 outMask:v22 debugType:v23, v24, v25];
      }
    }
  }

  v26 = [(PTMetalContext *)self->_metalContext commandBuffer];
  v27 = [v26 computeCommandEncoder];

  [v27 setComputePipelineState:self->_fgBgForDebug];
  [v27 setTexture:v12 atIndex:0];
  [v27 setTexture:v13 atIndex:1];
  [v27 setTexture:v15 atIndex:2];
  [v27 setBuffer:v14 offset:24 atIndex:0];
  [v27 setBytes:self->_anon_60 length:128 atIndex:1];
  [v27 setBytes:&self->_smoothFaceRects length:336 atIndex:2];
  [v27 setBytes:&v32 length:8 atIndex:3];
  v28 = [(PTSyntheticLight *)self->_syntheticLight lightEstimation];
  [v27 setBuffer:v28 offset:0 atIndex:4];

  v31[0] = [v15 width];
  v31[1] = [v15 height];
  v31[2] = 1;
  v29 = xmmword_2244A5230;
  v30 = 1;
  [v27 dispatchThreads:v31 threadsPerThreadgroup:&v29];
  [v27 endEncoding];
}

- (void)lightMaskDebugWithMSRPyramid:(id)a3 outFaceMask:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_lightMaskForDebug)
  {
    v8 = [(PTMetalContext *)self->_metalContext computePipelineStateFor:@"lightMaskForDebug" withConstants:0];
    lightMaskForDebug = self->_lightMaskForDebug;
    self->_lightMaskForDebug = v8;

    if (!self->_lightMaskForDebug)
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PTEffectRelighting *)v10 lightMaskDebugWithMSRPyramid:v11 outFaceMask:v12, v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(PTMetalContext *)self->_metalContext commandBuffer];
  v19 = [v18 computeCommandEncoder];

  [v19 setComputePipelineState:self->_lightMaskForDebug];
  v20 = [v6 pyramidRGBA];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v19 setTexture:v21 atIndex:0];

  [v19 setTexture:v7 atIndex:1];
  [v19 setBytes:&self->_smoothFaceRects length:336 atIndex:0];
  v24[0] = [v7 width];
  v24[1] = [v7 height];
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [v19 dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [v19 endEncoding];
}

- (void)estimateLightIntensity:(id)a3 inFaceRects:numberOfFaceRects:humanDetections:effectRenderRequest:asyncWork:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v14 = a3;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v16 frameTimeSeconds];
  [v16 frameTimeSeconds];
  *&v18 = v18;
  LODWORD(self->_colorCube) = LODWORD(v18);
  v19 = *&self->_lastFrameTimeSeconds;
  [v16 luxLevel];
  [v19 updateWithLuxLevel:? deltaTime:?];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (v16)
  {
    [v16 transform];
  }

  [v16 relightStrengthStudioLight];
  [(PTEffectRelighting *)self updateParamters:v16 relightStrength:?];
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v20 = *&self->_weightHeadEye[4];
  lightMasks = self->_lightMasks;
  v22 = [v14 width];
  *&v23 = v22 / [v14 height];
  LODWORD(v24) = lightMasks;
  [PTEffectRelighting computeSmoothFaceRect:v15 transform:v26 weightHeadEye:v20 eyeRadiusFactor:v24 aspectRatio:v23];
  memcpy(&self->_smoothFaceRects, __src, 0x150uLL);
  syntheticLight = self->_syntheticLight;
  __src[0] = v28;
  __src[1] = v29;
  __src[2] = v30;
  [(PTSyntheticLight *)syntheticLight estimateLightIntensityWithFaceRects:v12 inColor:v14 numberOfFaceRects:v11 transform:__src humanDetections:v15 asyncWork:v17];
}

- (void)studioLightInColor:(id)a3 inDiffuse:(id)a4 inDisparity:(id)a5 inFocusDisparityModifier:(id)a6 outColor:(id)a7 relightStrength:(float)a8 studioLightFromSegmentationBlend:(float)a9 studioLightEffectModifier:(id)a10
{
  v18 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  v19 = a7;
  v20 = a10;
  v49 = v19;
  v21 = [v18 asRGBAFromYUV];
  v22 = [v18 asYUV];
  v23 = [v19 asYUV];
  v24 = [v22 texLuma];
  v25 = [v23 texLuma];
  v26 = v25;
  if (v24 == v25)
  {
  }

  else
  {
    v27 = [v22 texChroma];
    v28 = [v23 texChroma];

    if (v27 != v28)
    {
      goto LABEL_8;
    }
  }

  v29 = _PTLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [PTEffectRelighting studioLightInColor:v29 inDiffuse:? inDisparity:? inFocusDisparityModifier:? outColor:? relightStrength:? studioLightFromSegmentationBlend:? studioLightEffectModifier:?];
  }

LABEL_8:
  v30 = [v22 transferFunction];
  v31 = [PTColorConversion getTransferFunction:v30 toLinear:0];

  v60[0] = v31;
  *&self->_anon_60[112] = a9;
  *&v32 = a8;
  [(PTSyntheticLight *)self->_syntheticLight interpolateLightIntensity:v32];
  memset(v59, 0, sizeof(v59));
  [PTColorConversion getColorMatrix:v22 toRGB:0];
  memset(v58, 0, sizeof(v58));
  [PTColorConversion getColorMatrix:v22 toRGB:1];
  v33 = [(PTMetalContext *)self->_metalContext commandBuffer];
  if (!self->_frameIndex)
  {
    [(objc_class *)self[1].super.isa initializeCubeMap:v33 inputTexture:v18];
  }

  [(PTEffectRelighting *)self renderLightMask:v33 lightMasks:*self->_bgVignetteLightIntensity smoothFaceRects:&self->_smoothFaceRects];
  v34 = [v33 computeCommandEncoder];
  [v34 setComputePipelineState:self->_studioLight];
  [v34 setTexture:*&self->_colorCubeType atIndex:0];
  [v34 setTexture:v52 atIndex:1];
  [v34 setTexture:v51 atIndex:2];
  [v34 setTexture:*self->_bgVignetteLightIntensity atIndex:3];
  [v34 setTexture:self->_lightGainMapLowResFiltered atIndex:4];
  [v34 setBytes:v59 length:24 atIndex:0];
  [v34 setBytes:v58 length:24 atIndex:1];
  [v34 setBytes:v60 length:4 atIndex:2];
  [v34 setBytes:self->_anon_60 length:128 atIndex:3];
  v35 = [(PTSyntheticLight *)self->_syntheticLight lightEstimation];
  [v34 setBuffer:v35 offset:0 atIndex:4];

  [v34 setBuffer:v50 offset:24 atIndex:5];
  [v34 setBytes:&self->_smoothFaceRects length:336 atIndex:6];
  [v34 setBuffer:v20 offset:0 atIndex:7];
  v36 = [(MTLTexture *)self->_lightGainMapLowResFiltered width];
  v37 = [(MTLTexture *)self->_lightGainMapLowResFiltered height];
  v55 = v36;
  v56 = v37;
  v57 = 1;
  v53 = xmmword_2244A5230;
  v54 = 1;
  [v34 dispatchThreads:&v55 threadsPerThreadgroup:&v53];
  [v34 endEncoding];
  util = self->_util;
  v39 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [(PTUtil *)util gaussianFilter3x3:v39 inRGB:self->_lightGainMapLowResFiltered outRGB:self->_lightGainMapFiltered];

  [(PTEffectRelighting *)self filterLightGainApplyInRGB:self->_relightSizeRGBA];
  v40 = [[PTImageblockConfig alloc] initWithPTTexture:v23];
  v41 = [v33 computeCommandEncoder];

  [v41 setComputePipelineState:self->_relightFullsizeInput];
  [v41 setImageblockWidth:-[PTImageblockConfig imageblockSize](v40 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v40, "imageblockSize")}];
  [v41 setTexture:self->_brightSceneDetector atIndex:0];
  if (v21)
  {
    v42 = [v21 texRGBA];
    [v41 setTexture:v42 atIndex:1];

    [v41 setTexture:0 atIndex:2];
  }

  else
  {
    v43 = [v22 texLuma];
    [v41 setTexture:v43 atIndex:1];

    v44 = [v22 texChroma];
    [v41 setTexture:v44 atIndex:2];
  }

  v45 = [(objc_class *)self[1].super.isa cubeTexture];
  [v41 setTexture:v45 atIndex:3];

  v46 = [v23 texLuma];
  [v41 setTexture:v46 atIndex:4];

  v47 = [v23 texChroma];
  [v41 setTexture:v47 atIndex:5];

  [v41 setBytes:v59 length:24 atIndex:0];
  [v41 setBytes:v58 length:24 atIndex:1];
  [v41 setBytes:v60 length:4 atIndex:2];
  [v41 setBytes:self->_anon_60 length:128 atIndex:3];
  v48 = [(objc_class *)self[1].super.isa rgbMinMax];
  [v41 setBuffer:v48 offset:0 atIndex:4];

  if (v40)
  {
    [(PTImageblockConfig *)v40 threads];
    [(PTImageblockConfig *)v40 threadsPerGroup];
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v53 = 0uLL;
    v54 = 0;
  }

  [v41 dispatchThreads:&v55 threadsPerThreadgroup:&v53];
  [v41 endEncoding];
  ++self->_frameIndex;
}

- (void)renderLightMask:(id)a3 lightMasks:(id)a4 smoothFaceRects:(SmoothFaceRectData *)a5
{
  v8 = a4;
  v9 = [a3 computeCommandEncoder];
  [v9 setComputePipelineState:self->_createLightMask];
  [v9 setTexture:v8 atIndex:0];
  [v9 setBytes:a5 length:336 atIndex:0];
  v12[0] = [v8 width];
  v12[1] = [v8 height];
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [v9 dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [v9 endEncoding];
}

- (id)approximateDiffuseFromSegmentation:(id)a3
{
  v4 = a3;
  approximatedDiffuseIntermediate = self->_approximatedDiffuseIntermediate;
  v6 = [(PTMetalContext *)self->_metalContext commandBuffer];
  __asm { FMOV            V0.2S, #-1.0 }

  [(MTLTexture *)approximatedDiffuseIntermediate boxFilter1Channel:v6 inTex:v4 intermediate:self->_approximatedDiffuse outTex:self->_functionConstants kernelWidth:13 outputRemapping:-_D0];

  functionConstants = self->_functionConstants;
  v13 = functionConstants;

  return functionConstants;
}

- (int)filterLightGainApplyInRGB:(id)a3
{
  v4 = a3;
  v5 = [(PTMetalContext *)self->_metalContext commandBuffer];
  v6 = [v5 computeCommandEncoder];

  [v6 setComputePipelineState:self->_filterLightGainApplyToRGB];
  [v6 setTexture:self->_lightGainMapFiltered atIndex:0];
  [v6 setTexture:self->_brightSceneDetector atIndex:1];
  [v6 setTexture:v4 atIndex:2];
  v7 = [(PTBrightSceneDetector *)self->_brightSceneDetector width];
  v8 = [(PTBrightSceneDetector *)self->_brightSceneDetector height];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = 1;
  v10 = xmmword_2244A5440;
  v11 = 1;
  [v6 dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [v6 endEncoding];

  return 0;
}

- (void)reset
{
  kdebug_trace();
  self->_frameIndex = 0;
  [(PTSyntheticLight *)self->_syntheticLight reset];
  [*&self->_lastFrameTimeSeconds reset];

  kdebug_trace();
}

- (double)initWithMetalContext:(float *)a1 availableEffectTypes:(NSObject *)a2 prewarmOnly:colorSize:msrColorPyramid:studiolightFromSegmentation:sharedResources:.cold.1(float *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "lightGainMapScale: %f", &v4, 0xCu);
  return result;
}

@end