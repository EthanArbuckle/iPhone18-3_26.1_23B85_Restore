@interface PTEffectRelighting
+ (SmoothFaceRectData)computeSmoothFaceRect:(SEL)rect transform:(id)transform weightHeadEye:(CGAffineTransform *)eye eyeRadiusFactor:(float)factor aspectRatio:(float)ratio;
- (PTEffectRelighting)initWithMetalContext:(id)context availableEffectTypes:(unint64_t)types prewarmOnly:(BOOL)only colorSize:(id *)size msrColorPyramid:(id)pyramid studiolightFromSegmentation:(BOOL)segmentation sharedResources:(id)resources;
- (id)approximateDiffuseFromSegmentation:(id)segmentation;
- (int)filterLightGainApplyInRGB:(id)b;
- (void)estimateLightIntensity:(id)intensity inFaceRects:numberOfFaceRects:humanDetections:effectRenderRequest:asyncWork:;
- (void)fgBgDebugWithDisparity:(id)disparity inDiffuse:(id)diffuse inFocusDisparityModifier:(id)modifier outMask:(id)mask debugType:(int64_t)type;
- (void)initRelightingParam;
- (void)lightMaskDebugWithMSRPyramid:(id)pyramid outFaceMask:(id)mask;
- (void)renderLightMask:(id)mask lightMasks:(id)masks smoothFaceRects:(SmoothFaceRectData *)rects;
- (void)reset;
- (void)studioLightInColor:(id)color inDiffuse:(id)diffuse inDisparity:(id)disparity inFocusDisparityModifier:(id)modifier outColor:(id)outColor relightStrength:(float)strength studioLightFromSegmentationBlend:(float)blend studioLightEffectModifier:(id)self0;
- (void)updateColorCube;
- (void)updateParamters:(id)paramters relightStrength:(float)strength;
@end

@implementation PTEffectRelighting

- (PTEffectRelighting)initWithMetalContext:(id)context availableEffectTypes:(unint64_t)types prewarmOnly:(BOOL)only colorSize:(id *)size msrColorPyramid:(id)pyramid studiolightFromSegmentation:(BOOL)segmentation sharedResources:(id)resources
{
  onlyCopy = only;
  typesCopy = types;
  v191 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  pyramidCopy = pyramid;
  resourcesCopy = resources;
  v189.receiver = self;
  v189.super_class = PTEffectRelighting;
  v17 = [(PTEffectRelighting *)&v189 init];
  v18 = v17;
  if (v17)
  {
    LODWORD(v17->_boxFilter) = -1;
    objc_storeStrong(&v17->_metalContext, context);
    v18->_frameIndex = 0;
    LODWORD(v18->_colorCube) = 0;
    util = [resourcesCopy util];
    util = v18->_util;
    v18->_util = util;

    p_quarterSizeRGBA = &v18->_quarterSizeRGBA;
    objc_storeStrong(&v18->_quarterSizeRGBA, pyramid);
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
      cubeTexture = [(PTMSRResize *)v18->_msrColorPyramid cubeTexture];
      v181 = pyramidCopy;
      v30 = [(PTStudioLightColorCorrectionAndConversion *)v27 initWithMetalContext:metalContext correctionColorCube:cubeTexture];
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
      pyramidCopy = v181;
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
      v53 = [contextCopy computePipelineStateFor:@"studioLight" withConstants:v18->_colorCorrectionAndConversion];
      studioLight = v18->_studioLight;
      v18->_studioLight = v53;

      if (v18->_studioLight)
      {
        v55 = [contextCopy computePipelineStateFor:@"createLightMask" withConstants:v18->_colorCorrectionAndConversion];
        createLightMask = v18->_createLightMask;
        v18->_createLightMask = v55;

        if (v18->_createLightMask)
        {
          v57 = [contextCopy computePipelineStateFor:@"relightFullsizeInput" withConstants:0];
          relightFullsizeInput = v18->_relightFullsizeInput;
          v18->_relightFullsizeInput = v57;

          if (v18->_relightFullsizeInput)
          {
            v59 = objc_opt_new();
            [v59 setConstantHalf3:v188 withName:@"kWeights2DRow0_half3"];
            [v59 setConstantHalf3:v187 withName:@"kWeights2DRow1_half3"];
            v60 = [contextCopy computePipelineStateFor:@"filterLightGainApplyToRGB" withConstants:v59];
            filterLightGainApplyToRGB = v18->_filterLightGainApplyToRGB;
            v18->_filterLightGainApplyToRGB = v60;

            if (v18->_filterLightGainApplyToRGB)
            {
              v62 = [PTSyntheticLight alloc];
              v63 = *p_quarterSizeRGBA;
              v184 = *&size->var0;
              var2 = size->var2;
              v64 = [(PTSyntheticLight *)v62 initWithMetalContext:contextCopy msrColorPyramid:v63 colorSize:&v184 prewarmOnly:onlyCopy sharedResources:resourcesCopy];
              syntheticLight = v18->_syntheticLight;
              v18->_syntheticLight = v64;

              if (v18->_syntheticLight)
              {
                [(PTEffectRelighting *)v18 initRelightingParam];
                v66 = *&v18->_lightGainMapLowRes;
                var0 = size->var0;
                var1 = size->var1;
                textureUtil = [contextCopy textureUtil];
                v70 = ((v66 * var0) * 0.5);
                v71 = ((v66 * var1) * 0.5);
                v72 = [textureUtil createWithWidth:v70 height:v71 pixelFormat:115];
                lightGainMapLowResFiltered = v18->_lightGainMapLowResFiltered;
                v18->_lightGainMapLowResFiltered = v72;

                pyramidCopy = v181;
                if (v18->_lightGainMapLowResFiltered)
                {
                  textureUtil2 = [contextCopy textureUtil];
                  v75 = [textureUtil2 createWithWidth:size->var0 >> 2 height:size->var1 >> 2 pixelFormat:115];
                  lightGainMapFiltered = v18->_lightGainMapFiltered;
                  v18->_lightGainMapFiltered = v75;

                  pyramidCopy = v181;
                  if (v18->_lightGainMapFiltered)
                  {
                    textureUtil3 = [contextCopy textureUtil];
                    v78 = [textureUtil3 createWithWidth:size->var0 >> 1 height:size->var1 >> 1 pixelFormat:115];
                    brightSceneDetector = v18->_brightSceneDetector;
                    v18->_brightSceneDetector = v78;

                    pyramidCopy = v181;
                    if (v18->_brightSceneDetector)
                    {
                      textureUtil4 = [contextCopy textureUtil];
                      v81 = [textureUtil4 createWithWidth:v70 height:v71 pixelFormat:30];
                      v82 = *v18->_bgVignetteLightIntensity;
                      *v18->_bgVignetteLightIntensity = v81;

                      pyramidCopy = v181;
                      if (*v18->_bgVignetteLightIntensity)
                      {
                        if ((typesCopy & 0x40) == 0 || !segmentation && !PTDefaultsPublicGetBool(@"harvesting.enabled", 0))
                        {
LABEL_73:
                          pyramidRGBA = [*p_quarterSizeRGBA pyramidRGBA];
                          firstObject = [pyramidRGBA firstObject];
                          relightSizeRGBA = v18->_relightSizeRGBA;
                          v18->_relightSizeRGBA = firstObject;

                          pyramidRGBA2 = [(MTLTexture *)v18->_quarterSizeRGBA pyramidRGBA];
                          width = [(MTLTexture *)v18->_lightGainMapLowResFiltered width];
                          height = [(MTLTexture *)v18->_lightGainMapLowResFiltered height];
                          *&v184 = width;
                          *(&v184 + 1) = height;
                          var2 = 1;
                          v179 = [PTUtil findMipmapLevel:pyramidRGBA2 largerThan:&v184];
                          v180 = *&v18->_colorCubeType;
                          *&v18->_colorCubeType = v179;

                          pyramidCopy = v181;
                          v98 = v18;
                          goto LABEL_58;
                        }

                        v83 = [[PTBoxFilter alloc] initWithMetalContext:v18->_metalContext options:8];
                        approximatedDiffuseIntermediate = v18->_approximatedDiffuseIntermediate;
                        v18->_approximatedDiffuseIntermediate = v83;

                        v85 = [PTEffectUtil aspectRatio:size->var0, size->var1];
                        v86 = size->var0;
                        v87 = size->var1;
                        if (size->var0 <= v87)
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

                            textureUtil5 = [(PTMetalContext *)v18->_metalContext textureUtil];
                            v168 = [textureUtil5 createWithWidth:v166 height:v165 pixelFormat:10];
                            approximatedDiffuse = v18->_approximatedDiffuse;
                            v18->_approximatedDiffuse = v168;

                            textureUtil6 = [(PTMetalContext *)v18->_metalContext textureUtil];
                            v171 = [textureUtil6 createWithWidth:v166 height:v165 pixelFormat:10];
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
    device = [(PTMetalContext *)self->_metalContext device];
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

- (void)updateParamters:(id)paramters relightStrength:(float)strength
{
  brightScene = [*&self->_lastFrameTimeSeconds brightScene];
  v26 = v7;
  PTDefaultsFlush(brightScene);
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
    v12 = (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 1.25) + (strength * ((*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 0.85) - (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) * 1.25)));
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    v30 = v11;
    *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v12;
    v11 = v30;
    v27 = v9;
    v13 = *(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
    v14 = (v13 * 1.25) + (strength * ((v13 * 0.85) - (v13 * 1.25)));
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

+ (SmoothFaceRectData)computeSmoothFaceRect:(SEL)rect transform:(id)transform weightHeadEye:(CGAffineTransform *)eye eyeRadiusFactor:(float)factor aspectRatio:(float)ratio
{
  v8 = v7;
  v9 = *&factor;
  transformCopy = transform;
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

  *&_Q0 = ratio;
  v33 = _Q0;
  v20 = -288;
  v37 = transformCopy;
  do
  {
    v21 = *([transformCopy detectionsFiltered] + v13 + 16);
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
    v26[47].f32[0] = sqrtf(vaddv_f32(vmul_f32(*v24.i8, *v24.i8))) * ratio;
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
    transformCopy = v37;
  }

  while (v20);
  v31 = vcvt_f32_f64(*&eye->c);
  *&retstr->var5[0].var4 = vcvt_f32_f64(*&eye->a);
  *&retstr->var5[1].var1 = v31;
  retstr->var5[0].var0 = 0.9;
  *&retstr->var2 = 0x404000003FC00000;

  return result;
}

- (void)fgBgDebugWithDisparity:(id)disparity inDiffuse:(id)diffuse inFocusDisparityModifier:(id)modifier outMask:(id)mask debugType:(int64_t)type
{
  disparityCopy = disparity;
  diffuseCopy = diffuse;
  modifierCopy = modifier;
  maskCopy = mask;
  typeCopy = type;
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

  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_fgBgForDebug];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:diffuseCopy atIndex:1];
  [computeCommandEncoder setTexture:maskCopy atIndex:2];
  [computeCommandEncoder setBuffer:modifierCopy offset:24 atIndex:0];
  [computeCommandEncoder setBytes:self->_anon_60 length:128 atIndex:1];
  [computeCommandEncoder setBytes:&self->_smoothFaceRects length:336 atIndex:2];
  [computeCommandEncoder setBytes:&typeCopy length:8 atIndex:3];
  lightEstimation = [(PTSyntheticLight *)self->_syntheticLight lightEstimation];
  [computeCommandEncoder setBuffer:lightEstimation offset:0 atIndex:4];

  v31[0] = [maskCopy width];
  v31[1] = [maskCopy height];
  v31[2] = 1;
  v29 = xmmword_2244A5230;
  v30 = 1;
  [computeCommandEncoder dispatchThreads:v31 threadsPerThreadgroup:&v29];
  [computeCommandEncoder endEncoding];
}

- (void)lightMaskDebugWithMSRPyramid:(id)pyramid outFaceMask:(id)mask
{
  pyramidCopy = pyramid;
  maskCopy = mask;
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

  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_lightMaskForDebug];
  pyramidRGBA = [pyramidCopy pyramidRGBA];
  v21 = [pyramidRGBA objectAtIndexedSubscript:0];
  [computeCommandEncoder setTexture:v21 atIndex:0];

  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setBytes:&self->_smoothFaceRects length:336 atIndex:0];
  v24[0] = [maskCopy width];
  v24[1] = [maskCopy height];
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];
}

- (void)estimateLightIntensity:(id)intensity inFaceRects:numberOfFaceRects:humanDetections:effectRenderRequest:asyncWork:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  intensityCopy = intensity;
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
  width = [intensityCopy width];
  *&v23 = width / [intensityCopy height];
  LODWORD(v24) = lightMasks;
  [PTEffectRelighting computeSmoothFaceRect:v15 transform:v26 weightHeadEye:v20 eyeRadiusFactor:v24 aspectRatio:v23];
  memcpy(&self->_smoothFaceRects, __src, 0x150uLL);
  syntheticLight = self->_syntheticLight;
  __src[0] = v28;
  __src[1] = v29;
  __src[2] = v30;
  [(PTSyntheticLight *)syntheticLight estimateLightIntensityWithFaceRects:v12 inColor:intensityCopy numberOfFaceRects:v11 transform:__src humanDetections:v15 asyncWork:v17];
}

- (void)studioLightInColor:(id)color inDiffuse:(id)diffuse inDisparity:(id)disparity inFocusDisparityModifier:(id)modifier outColor:(id)outColor relightStrength:(float)strength studioLightFromSegmentationBlend:(float)blend studioLightEffectModifier:(id)self0
{
  colorCopy = color;
  diffuseCopy = diffuse;
  disparityCopy = disparity;
  modifierCopy = modifier;
  outColorCopy = outColor;
  effectModifierCopy = effectModifier;
  v49 = outColorCopy;
  asRGBAFromYUV = [colorCopy asRGBAFromYUV];
  asYUV = [colorCopy asYUV];
  asYUV2 = [outColorCopy asYUV];
  texLuma = [asYUV texLuma];
  texLuma2 = [asYUV2 texLuma];
  v26 = texLuma2;
  if (texLuma == texLuma2)
  {
  }

  else
  {
    texChroma = [asYUV texChroma];
    texChroma2 = [asYUV2 texChroma];

    if (texChroma != texChroma2)
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
  transferFunction = [asYUV transferFunction];
  v31 = [PTColorConversion getTransferFunction:transferFunction toLinear:0];

  v60[0] = v31;
  *&self->_anon_60[112] = blend;
  *&v32 = strength;
  [(PTSyntheticLight *)self->_syntheticLight interpolateLightIntensity:v32];
  memset(v59, 0, sizeof(v59));
  [PTColorConversion getColorMatrix:asYUV toRGB:0];
  memset(v58, 0, sizeof(v58));
  [PTColorConversion getColorMatrix:asYUV toRGB:1];
  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  if (!self->_frameIndex)
  {
    [(objc_class *)self[1].super.isa initializeCubeMap:commandBuffer inputTexture:colorCopy];
  }

  [(PTEffectRelighting *)self renderLightMask:commandBuffer lightMasks:*self->_bgVignetteLightIntensity smoothFaceRects:&self->_smoothFaceRects];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_studioLight];
  [computeCommandEncoder setTexture:*&self->_colorCubeType atIndex:0];
  [computeCommandEncoder setTexture:diffuseCopy atIndex:1];
  [computeCommandEncoder setTexture:disparityCopy atIndex:2];
  [computeCommandEncoder setTexture:*self->_bgVignetteLightIntensity atIndex:3];
  [computeCommandEncoder setTexture:self->_lightGainMapLowResFiltered atIndex:4];
  [computeCommandEncoder setBytes:v59 length:24 atIndex:0];
  [computeCommandEncoder setBytes:v58 length:24 atIndex:1];
  [computeCommandEncoder setBytes:v60 length:4 atIndex:2];
  [computeCommandEncoder setBytes:self->_anon_60 length:128 atIndex:3];
  lightEstimation = [(PTSyntheticLight *)self->_syntheticLight lightEstimation];
  [computeCommandEncoder setBuffer:lightEstimation offset:0 atIndex:4];

  [computeCommandEncoder setBuffer:modifierCopy offset:24 atIndex:5];
  [computeCommandEncoder setBytes:&self->_smoothFaceRects length:336 atIndex:6];
  [computeCommandEncoder setBuffer:effectModifierCopy offset:0 atIndex:7];
  width = [(MTLTexture *)self->_lightGainMapLowResFiltered width];
  height = [(MTLTexture *)self->_lightGainMapLowResFiltered height];
  v55 = width;
  v56 = height;
  v57 = 1;
  v53 = xmmword_2244A5230;
  v54 = 1;
  [computeCommandEncoder dispatchThreads:&v55 threadsPerThreadgroup:&v53];
  [computeCommandEncoder endEncoding];
  util = self->_util;
  commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [(PTUtil *)util gaussianFilter3x3:commandBuffer2 inRGB:self->_lightGainMapLowResFiltered outRGB:self->_lightGainMapFiltered];

  [(PTEffectRelighting *)self filterLightGainApplyInRGB:self->_relightSizeRGBA];
  v40 = [[PTImageblockConfig alloc] initWithPTTexture:asYUV2];
  computeCommandEncoder2 = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_relightFullsizeInput];
  [computeCommandEncoder2 setImageblockWidth:-[PTImageblockConfig imageblockSize](v40 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v40, "imageblockSize")}];
  [computeCommandEncoder2 setTexture:self->_brightSceneDetector atIndex:0];
  if (asRGBAFromYUV)
  {
    texRGBA = [asRGBAFromYUV texRGBA];
    [computeCommandEncoder2 setTexture:texRGBA atIndex:1];

    [computeCommandEncoder2 setTexture:0 atIndex:2];
  }

  else
  {
    texLuma3 = [asYUV texLuma];
    [computeCommandEncoder2 setTexture:texLuma3 atIndex:1];

    texChroma3 = [asYUV texChroma];
    [computeCommandEncoder2 setTexture:texChroma3 atIndex:2];
  }

  cubeTexture = [(objc_class *)self[1].super.isa cubeTexture];
  [computeCommandEncoder2 setTexture:cubeTexture atIndex:3];

  texLuma4 = [asYUV2 texLuma];
  [computeCommandEncoder2 setTexture:texLuma4 atIndex:4];

  texChroma4 = [asYUV2 texChroma];
  [computeCommandEncoder2 setTexture:texChroma4 atIndex:5];

  [computeCommandEncoder2 setBytes:v59 length:24 atIndex:0];
  [computeCommandEncoder2 setBytes:v58 length:24 atIndex:1];
  [computeCommandEncoder2 setBytes:v60 length:4 atIndex:2];
  [computeCommandEncoder2 setBytes:self->_anon_60 length:128 atIndex:3];
  rgbMinMax = [(objc_class *)self[1].super.isa rgbMinMax];
  [computeCommandEncoder2 setBuffer:rgbMinMax offset:0 atIndex:4];

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

  [computeCommandEncoder2 dispatchThreads:&v55 threadsPerThreadgroup:&v53];
  [computeCommandEncoder2 endEncoding];
  ++self->_frameIndex;
}

- (void)renderLightMask:(id)mask lightMasks:(id)masks smoothFaceRects:(SmoothFaceRectData *)rects
{
  masksCopy = masks;
  computeCommandEncoder = [mask computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_createLightMask];
  [computeCommandEncoder setTexture:masksCopy atIndex:0];
  [computeCommandEncoder setBytes:rects length:336 atIndex:0];
  v12[0] = [masksCopy width];
  v12[1] = [masksCopy height];
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [computeCommandEncoder dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [computeCommandEncoder endEncoding];
}

- (id)approximateDiffuseFromSegmentation:(id)segmentation
{
  segmentationCopy = segmentation;
  approximatedDiffuseIntermediate = self->_approximatedDiffuseIntermediate;
  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  __asm { FMOV            V0.2S, #-1.0 }

  [(MTLTexture *)approximatedDiffuseIntermediate boxFilter1Channel:commandBuffer inTex:segmentationCopy intermediate:self->_approximatedDiffuse outTex:self->_functionConstants kernelWidth:13 outputRemapping:-_D0];

  functionConstants = self->_functionConstants;
  v13 = functionConstants;

  return functionConstants;
}

- (int)filterLightGainApplyInRGB:(id)b
{
  bCopy = b;
  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_filterLightGainApplyToRGB];
  [computeCommandEncoder setTexture:self->_lightGainMapFiltered atIndex:0];
  [computeCommandEncoder setTexture:self->_brightSceneDetector atIndex:1];
  [computeCommandEncoder setTexture:bCopy atIndex:2];
  width = [(PTBrightSceneDetector *)self->_brightSceneDetector width];
  height = [(PTBrightSceneDetector *)self->_brightSceneDetector height];
  v12[0] = width;
  v12[1] = height;
  v12[2] = 1;
  v10 = xmmword_2244A5440;
  v11 = 1;
  [computeCommandEncoder dispatchThreads:v12 threadsPerThreadgroup:&v10];
  [computeCommandEncoder endEncoding];

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