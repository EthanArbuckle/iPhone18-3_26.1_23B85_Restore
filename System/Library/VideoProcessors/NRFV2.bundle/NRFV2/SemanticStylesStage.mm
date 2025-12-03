@interface SemanticStylesStage
+ (int)prewarmShaders:(id)shaders;
- (SemanticStylesStage)initWithMetalContext:(id)context;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label;
- (id)newTexture2DWithFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage label:(id)label;
- (int)calculateHistogramStatsWithLumaTex:(id)tex chromaTex:(id)chromaTex;
- (int)createGuideImage:(id)image;
- (int)processPersonMaskTex:(id)tex skinMaskTex:(id)maskTex skyMaskTex:(id)skyMaskTex;
- (int)renderWithLumaTex:(id)tex chromaTex:(id)chromaTex gainMapTex:(id)mapTex outputGainMapTex:(id)gainMapTex;
- (int)runWithStyle:(id)style tuningParams:(id)params refFrameMetadata:(const frameMetadata *)metadata sceneType:(id)type lumaTex:(id)tex chromaTex:(id)chromaTex gainMapTex:(id)mapTex outputGainMapTex:(id)self0 personMaskTex:(id)self1 skinMaskTex:(id)self2 skyMaskTex:(id)self3 isLowLight:(BOOL)self4;
- (int)upsampleLightMap;
- (void)calculateAdjustmentParametersWithParamsBuffer:(id)buffer statsBuffer:(id)statsBuffer;
- (void)releaseResources;
- (void)remapSliderValueForRendering;
@end

@implementation SemanticStylesStage

- (SemanticStylesStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_29588BC3C(self);
LABEL_12:
    v7 = 0;
    goto LABEL_6;
  }

  v24.receiver = self;
  v24.super_class = SemanticStylesStage;
  v6 = [(SemanticStylesStage *)&v24 init];
  v7 = v6;
  if (!v6)
  {
    sub_29588BBD8();
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v11 = objc_msgSend_sharedInstance(SemanticStylesShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7->_metalContext, v13);
  shaders = v7->_shaders;
  v7->_shaders = v14;

  if (!v7->_shaders)
  {
    sub_29588BB3C(v7);
    goto LABEL_12;
  }

  v16 = [GuidedFilter alloc];
  v19 = objc_msgSend_initWithMetalContext_(v16, v17, contextCopy, v18);
  guidedFilter = v7->_guidedFilter;
  v7->_guidedFilter = v19;

  if (!v7->_guidedFilter)
  {
    sub_29588BAA0(v7);
    goto LABEL_12;
  }

  v21 = objc_alloc_init(MEMORY[0x29EDBB630]);
  sharedEventListener = v7->_sharedEventListener;
  v7->_sharedEventListener = v21;

  if (!v7->_sharedEventListener)
  {
    sub_29588BA04(v7);
    goto LABEL_12;
  }

LABEL_6:

  return v7;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  if (shadersCopy)
  {
    v4 = [SemanticStylesShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v4, v5, shadersCopy, v6);
    if (v7)
    {
      v10 = v7;
      objc_msgSend_prewarmShaders_(GuidedFilter, v8, shadersCopy, v9);

      v11 = 0;
    }

    else
    {
      sub_29588BCE0();
      v11 = -12786;
    }
  }

  else
  {
    sub_29588BD44(&v13);
    v11 = v13;
  }

  return v11;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label
{
  v7 = objc_msgSend_device(self->_metalContext, a2, length, options, label);
  v9 = objc_msgSend_newBufferWithLength_options_(v7, v8, length, options);

  objc_msgSend_setLabel_(v9, v10, 0, v11);
  return v9;
}

- (id)newTexture2DWithFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage label:(id)label
{
  v12 = objc_msgSend_allocator(self->_metalContext, a2, format, width, height, usage, label);
  v16 = objc_msgSend_newTextureDescriptor(v12, v13, v14, v15);

  if (v16)
  {
    objc_msgSend_setLabel_(v16, v17, 0, v18);
    v22 = objc_msgSend_desc(v16, v19, v20, v21);
    objc_msgSend_setTextureType_(v22, v23, 2, v24);

    v28 = objc_msgSend_desc(v16, v25, v26, v27);
    objc_msgSend_setPixelFormat_(v28, v29, format, v30);

    v34 = objc_msgSend_desc(v16, v31, v32, v33);
    objc_msgSend_setWidth_(v34, v35, width, v36);

    v40 = objc_msgSend_desc(v16, v37, v38, v39);
    objc_msgSend_setHeight_(v40, v41, height, v42);

    v46 = objc_msgSend_desc(v16, v43, v44, v45);
    objc_msgSend_setDepth_(v46, v47, 1, v48);

    v52 = objc_msgSend_desc(v16, v49, v50, v51);
    objc_msgSend_setUsage_(v52, v53, usage, v54);

    v58 = objc_msgSend_allocator(self->_metalContext, v55, v56, v57);
    v61 = objc_msgSend_newTextureWithDescriptor_(v58, v59, v16, v60);

    if (!v61)
    {
      sub_29588BDE0();
    }
  }

  else
  {
    sub_29588BE78();
    v61 = 0;
  }

  return v61;
}

- (void)releaseResources
{
  paramsBuf = self->_paramsBuf;
  self->_paramsBuf = 0;

  statsBuf = self->_statsBuf;
  self->_statsBuf = 0;

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  FigMetalDecRef();
}

- (int)calculateHistogramStatsWithLumaTex:(id)tex chromaTex:(id)chromaTex
{
  texCopy = tex;
  chromaTexCopy = chromaTex;
  shaders = self->_shaders;
  if (!shaders)
  {
    sub_29588C3B4(&v92);
LABEL_26:
    v83 = v92.i32[0];
    goto LABEL_17;
  }

  if (!shaders->_ssCalculateLocalHistogramStats)
  {
    sub_29588C318(&v92);
    goto LABEL_26;
  }

  if (!shaders->_ssCalculateGlobalHistogram)
  {
    sub_29588C27C(&v92);
    goto LABEL_26;
  }

  if (!shaders->_ssCalculateGlobalStats)
  {
    sub_29588C1E0(&v92);
    goto LABEL_26;
  }

  v12 = objc_msgSend_commandQueue(self->_metalContext, v7, v8, v9);
  v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

  if (!v16)
  {
    sub_29588C144(&v92);
    goto LABEL_26;
  }

  v20 = objc_msgSend_computeCommandEncoder(v16, v17, v18, v19);
  if (!v20)
  {
    sub_29588C098();
    goto LABEL_26;
  }

  v22 = v20;
  v23 = objc_msgSend_newBufferWithLength_options_label_(self, v21, 1057824, 0, @"ss_buf_stats");
  statsBuf = self->_statsBuf;
  self->_statsBuf = v23;

  if (!self->_statsBuf)
  {
    sub_29588BFD4(v22, v16, &v92);
    goto LABEL_26;
  }

  v26 = objc_msgSend_newTexture2DWithFormat_width_height_usage_label_(self, v25, 25, 32, 32, 7, @"ss_tex_lightMap_small");
  lightMapSmallTex = self->_lightMapSmallTex;
  self->_lightMapSmallTex = v26;

  if (!self->_lightMapSmallTex)
  {
    sub_29588BF10(v22, v16, &v92);
    goto LABEL_26;
  }

  v28 = self->_shaders->_ssCalculateLocalHistogramStats;
  objc_msgSend_setComputePipelineState_(v22, v29, v28, v30);
  objc_msgSend_setTexture_atIndex_(v22, v31, texCopy, 0);
  objc_msgSend_setTexture_atIndex_(v22, v32, chromaTexCopy, 1);
  objc_msgSend_setTexture_atIndex_(v22, v33, self->_lightMapSmallTex, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v34, self->_paramsBuf, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v35, self->_statsBuf, 0, 1);
  v39 = objc_msgSend_maxTotalThreadsPerThreadgroup(v28, v36, v37, v38);
  v43 = objc_msgSend_threadExecutionWidth(v28, v40, v41, v42);

  v45 = 16;
  if (v43 >= 0x10)
  {
    v46 = 16;
  }

  else
  {
    v46 = v43;
  }

  v85 = vdupq_n_s64(0x20uLL);
  v92 = v85;
  v93 = 1;
  if (v39 / v46 < 0x10)
  {
    v45 = v39 / v46;
  }

  *&v87 = v46;
  *(&v87 + 1) = v45;
  v88 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v44, &v92, &v87);
  v47 = self->_shaders->_ssCalculateGlobalHistogram;
  objc_msgSend_setComputePipelineState_(v22, v48, v47, v49);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v50, self->_paramsBuf, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v51, self->_statsBuf, 0, 1);

  v92 = xmmword_2959D5C50;
  v93 = 1;
  v87 = v85;
  v88 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v52, &v92, &v87);
  v53 = self->_shaders->_ssCalculateGlobalStats;
  objc_msgSend_setComputePipelineState_(v22, v54, v53, v55);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v56, self->_paramsBuf, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v22, v57, self->_statsBuf, 0, 1);

  v92 = vdupq_n_s64(1uLL);
  v93 = 1;
  v87 = xmmword_2959D5C50;
  v88 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v58, &v92, &v87);
  objc_msgSend_endEncoding(v22, v59, v60, v61);
  v92.i64[0] = 0;
  v92.i64[1] = &v92;
  v93 = 0x3032000000;
  v94 = sub_295815304;
  v95 = sub_295815314;
  v96 = self->_paramsBuf;
  *&v87 = 0;
  *(&v87 + 1) = &v87;
  v88 = 0x3032000000;
  v89 = sub_295815304;
  v90 = sub_295815314;
  v91 = self->_statsBuf;
  sharedEvent = self->_sharedEvent;
  sharedEventListener = self->_sharedEventListener;
  v86[0] = MEMORY[0x29EDCA5F8];
  v86[1] = 3221225472;
  v86[2] = sub_29581531C;
  v86[3] = &unk_29EDDBEC0;
  v86[4] = self;
  v86[5] = &v92;
  v86[6] = &v87;
  objc_msgSend_notifyListener_atValue_block_(sharedEvent, v64, sharedEventListener, 1, v86);
  _Block_object_dispose(&v87, 8);

  _Block_object_dispose(&v92, 8);
  objc_msgSend_encodeSignalEvent_value_(v16, v65, self->_sharedEvent, 1);
  if (*MEMORY[0x29EDB9270])
  {
    v69 = objc_msgSend_commandQueue(v16, v66, v67, v68);
    v73 = objc_msgSend_commandBuffer(v69, v70, v71, v72);

    objc_msgSend_setLabel_(v73, v74, @"KTRACE_MTLCMDBUF", v75);
    objc_msgSend_addCompletedHandler_(v73, v76, &unk_2A1CA92C0, v77);
    objc_msgSend_commit(v73, v78, v79, v80);
    objc_msgSend_addCompletedHandler_(v16, v81, &unk_2A1CA92E0, v82);
  }

  objc_msgSend_commit(v16, v66, v67, v68);

  v83 = 0;
LABEL_17:

  return v83;
}

- (void)calculateAdjustmentParametersWithParamsBuffer:(id)buffer statsBuffer:(id)statsBuffer
{
  bufferCopy = buffer;
  statsBufferCopy = statsBuffer;
  v12 = objc_msgSend_contents(buffer, v9, v10, v11);
  v13 = statsBufferCopy;
  v17 = (objc_msgSend_contents(v13, v14, v15, v16) + 1056768);

  v18 = *(v12 + 16);
  v19 = *(v12 + 20);
  v20 = *(v12 + 32);
  v21.i32[0] = *(v12 + 24);
  v22 = v17[259];
  v23 = v17[260];
  v24 = v17[261];
  v25 = 0.8;
  v108 = v21;
  if (v23 < 0.18 && v24 < 0.85)
  {
    v26 = 0.18 - v23;
    v27 = powf(v26, 0.75);
    v21.i32[0] = v108.i32[0];
    v25 = v27 + 1.0;
  }

  if ((v24 - v22) <= 0.5)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 1.5;
  }

  __asm { FMOV            V0.2S, #1.0 }

  _D0.f32[0] = v25;
  v33.i32[0] = 1.25;
  if (v17[256] >= 0.5)
  {
    if ((v24 - v22) >= 0.4)
    {
      v33.i32[0] = 1.0;
      if ((v23 - v22) <= 0.2)
      {
        goto LABEL_13;
      }

      v34 = &unk_2959D5DD4;
      v35 = v25 * 1.1;
      _D0 = vld1_dup_f32(v34);
      _D0.f32[0] = v35;
    }

    else
    {
      _D0.i32[1] = 1.5;
    }

    v33.i32[0] = 0.75;
  }

LABEL_13:
  v36 = v18 / 3.14159265;
  v37 = v36;
  if (v36 >= 25.0 || v19 == 0)
  {
    v33.f32[1] = v28;
    v45 = 1.10000002;
    if (*v21.i32 > 0.0 && v20 == 1 && v36 < 75.0)
    {
      v39 = v37 * -0.007 + 1.525;
      _D0.i32[1] = vmuls_lane_f32(v39, _D0, 1);
    }
  }

  else
  {
    v40 = v37 * 0.013 + 0.675;
    v41.f32[0] = v37 * -0.01 + 1.25;
    v41.f32[1] = v28;
    v33 = vmul_n_f32(v41, v33.f32[0]);
    v42 = v40 * _D0.f32[0];
    v43 = v37 * 0.006 + 0.85;
    v44 = v43 * 1.1;
    v45 = v44;
    _D0.f32[0] = v42;
  }

  v46 = vcvtq_f64_f32(_D0);
  v104 = v46.f64[0];
  v106 = vcvt_f32_f64(vmulq_f64(v46, xmmword_2959D5C60));
  v101 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v33), xmmword_2959D5C70));
  v47 = self->_tuningParams;
  v50 = v47;
  if (v20 == 1)
  {
    if (*v108.i32 > 0.0 && v36 < 75.0)
    {
      v58 = *v108.i32 * 1.7579 + *v108.i32 * -0.6316 * *v108.i32;
      v59 = v37 * -0.02 + 1.5;
      *&v60 = (v59 * v58) + (1.0 - v59) * *v108.i32;
      *v60.i32 = *v60.i32;
      v108 = v60;
    }
  }

  else if (v20 == 3)
  {
    v51 = objc_msgSend_bgTuningForSceneType_(v47, v48, 3, v49, *&v101);
    v52 = *v108.i32;
    if (*v108.i32 >= 0.0)
    {
      v53.f32[0] = *v108.i32 * v106.f32[0];
      v54 = (v45 + -0.85) * v52 + 1.0;
      v55 = vmuls_lane_f32(v51[3], v106, 1);
      v57 = v103 * 0.1 * v52;
      v56 = 0.0;
      v107 = 0;
    }

    else
    {
      v53.f32[0] = v106.f32[0] * -0.25 * v52;
      v54 = 1.0 - (v45 + -0.85) * v52;
      v55 = v51[11];
      v56 = vmuls_lane_f32(v51[8], v106, 1);
      v107 = vcvt_f32_f64(vmulq_n_f64(xmmword_2959D5C80, v52));
      v57 = 0.0;
    }

    v63 = *v108.i32 * v56;
    v65 = v54;
    v53.f32[1] = *v108.i32 * v55;
    v105 = v53;
    v76.i32[0] = 0;
    v76.f32[1] = v57;
    goto LABEL_39;
  }

  v61 = objc_msgSend_bgTuningForSceneType_(v47, v48, v20, v49, *&v101);
  v62 = *v108.i32;
  if (*v108.i32 < 0.0)
  {
    v63 = *v108.i32 * v61[4].f32[0];
    v105 = vmul_n_f32(vmul_f32(v61[5], v106), *v108.i32);
    v64 = (v45 + -1.0) * (v62 * 0.1) + 1.0;
    v65 = v61[6].f32[0] * v64;
    v109 = vmul_n_f32(vmul_f32(v61[7], v102), *v108.i32);
    v107 = 0;
    goto LABEL_40;
  }

  v66 = 0.4 * v104;
  v67 = v62 > 1.2;
  v68 = v62 < 1.2;
  v63 = *v108.i32 * vmuls_lane_f32(v61->f32[0], v106, 1);
  v69 = vdup_lane_s32(v108, 0);
  v105 = vmul_n_f32(vmul_f32(v61[1], v106), *v108.i32);
  v70 = (v45 + -1.0) * v62 + 1.0;
  v71 = v61[2].f32[0] * v70;
  v72 = v62 * 1.1 * v71;
  if (!v67)
  {
    v72 = v71;
  }

  if (v72 >= 1.1)
  {
    v65 = 1.1;
  }

  else
  {
    v65 = v72;
  }

  v74 = vld1_dup_f32(&dword_2959D5DDC);
  v74.f32[0] = v66;
  v73.i32[1] = v61[2].i32[1];
  v75 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v68, *v108.i32 < 0.5), 0x1FuLL)), v69, 0x3F99999A3F000000);
  v73.i32[0] = v61->i32[1];
  v107 = vmul_n_f32(vmul_f32(v73, v74), v75.f32[0]);
  v76 = vmul_f32(v75, vmul_f32(v61[3], v102));
LABEL_39:
  v109 = v76;
LABEL_40:

  v77 = *(v12 + 28);
  v81 = objc_msgSend_fgTuning(self->_tuningParams, v78, v79, v80);
  v82 = *v81;
  v83 = v77;
  if (v77 <= 0.5)
  {
    v85 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(v81 + 20)), 1.0 - (v77 + v77)));
    v86 = *(v81 + 28);
    v87 = v83 + -0.5;
  }

  else
  {
    v84 = v83 + -0.5 + v83 + -0.5;
    v85 = vmul_n_f32(*(v81 + 8), v84);
    v86 = *(v81 + 16);
    v87 = 0.5 - v83;
  }

  v88 = v87 * v86;
  *(v12 + 40) = v107.i32[0];
  *(v12 + 44) = v105;
  *(v12 + 52) = v65;
  *(v12 + 60) = v109;
  *(v12 + 112) = v82;
  *(v12 + 120) = v85;
  *(v12 + 128) = v88;
  if (v63 >= -1.0)
  {
    v91 = 0x3FB333333F99999ALL;
    v90 = 1.0;
  }

  else
  {
    v89 = v63 + 1.0;
    v90 = v89 * -0.15 + 1.0;
    v91 = vcvt_f32_f64(vmlaq_n_f64(xmmword_2959D5CA0, xmmword_2959D5C90, v89));
  }

  v92 = *(v12 + 32);
  if (v92 > 1)
  {
    if (v92 != 2)
    {
      if (v92 == 3)
      {
        v93 = xmmword_2959D5CC0;
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    v90 = v90 * 0.955;
    v93 = xmmword_2959D5CD0;
  }

  else
  {
    if (v92)
    {
      if (v92 == 1)
      {
        v93 = xmmword_2959D5CE0;
        goto LABEL_56;
      }

LABEL_53:
      v93 = 0uLL;
      goto LABEL_56;
    }

    v93 = xmmword_2959D5CB0;
  }

LABEL_56:
  *(v12 + 68) = v90;
  *(v12 + 72) = v91;
  *(v12 + 36) = fminf(fabsf(v63), 1.0);
  *(v12 + 80) = v93;
  v94 = fmin(v107.f32[1] * 10.0, 1.0);
  *(v12 + 56) = v94;
  v95 = *(v12 + 28);
  v96 = v95;
  v97 = (1.0 - v95);
  v67 = v95 <= 0.5;
  v98 = 0.33;
  if (v67)
  {
    v98 = 0.5;
  }

  v99 = vmulq_n_f64(xmmword_2959D5CF0, v97);
  v100 = v99.f64[1] + v96 * -0.015;
  *&v99.f64[0] = vcvt_f32_f64(vmlaq_n_f64(v99, xmmword_2959D5D00, v96));
  *(v12 + 96) = LODWORD(v99.f64[0]);
  *(v12 + 100) = v100;
  *(v12 + 104) = vmul_n_f32(*&v99.f64[0], v98);
}

- (int)createGuideImage:(id)image
{
  imageCopy = image;
  shaders = self->_shaders;
  if (!shaders)
  {
    sub_29588C6E0(v69);
LABEL_15:
    v65 = v69[0];
    goto LABEL_9;
  }

  if (!shaders->_ssCreateGuide)
  {
    sub_29588C644(v69);
    goto LABEL_15;
  }

  v9 = objc_msgSend_commandQueue(self->_metalContext, v4, v5, v6);
  v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

  if (!v13)
  {
    sub_29588C5A8(v69);
    goto LABEL_15;
  }

  v17 = objc_msgSend_width(imageCopy, v14, v15, v16) >> 1;
  v21 = objc_msgSend_height(imageCopy, v18, v19, v20);
  v23 = objc_msgSend_newTexture2DWithFormat_width_height_usage_label_(self, v22, 25, v17, v21 >> 1, 7, @"ss_tex_guide");
  guideTex = self->_guideTex;
  self->_guideTex = v23;

  if (!self->_guideTex)
  {
    sub_29588C4FC();
    goto LABEL_15;
  }

  v28 = objc_msgSend_computeCommandEncoder(v13, v25, v26, v27);
  if (!v28)
  {
    sub_29588C450();
    goto LABEL_15;
  }

  v29 = v28;
  v30 = self->_shaders->_ssCreateGuide;
  objc_msgSend_setComputePipelineState_(v29, v31, v30, v32);
  objc_msgSend_setTexture_atIndex_(v29, v33, imageCopy, 0);
  objc_msgSend_setTexture_atIndex_(v29, v34, self->_guideTex, 7);
  objc_msgSend_setImageblockWidth_height_(v29, v35, 32, 32);
  v39 = objc_msgSend_width(self->_guideTex, v36, v37, v38);
  v43 = objc_msgSend_height(self->_guideTex, v40, v41, v42);

  v69[0] = v39;
  v69[1] = v43;
  v69[2] = 1;
  v67 = vdupq_n_s64(0x20uLL);
  v68 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v29, v44, v69, &v67);
  objc_msgSend_endEncoding(v29, v45, v46, v47);

  if (*MEMORY[0x29EDB9270])
  {
    v51 = objc_msgSend_commandQueue(v13, v48, v49, v50);
    v55 = objc_msgSend_commandBuffer(v51, v52, v53, v54);

    objc_msgSend_setLabel_(v55, v56, @"KTRACE_MTLCMDBUF", v57);
    objc_msgSend_addCompletedHandler_(v55, v58, &unk_2A1CA9300, v59);
    objc_msgSend_commit(v55, v60, v61, v62);
    objc_msgSend_addCompletedHandler_(v13, v63, &unk_2A1CA9320, v64);
  }

  objc_msgSend_commit(v13, v48, v49, v50);

  v65 = 0;
LABEL_9:

  return v65;
}

- (int)upsampleLightMap
{
  if (!self->_shaders)
  {
    sub_29588C9E0(&v44);
    return v44;
  }

  if (!self->_guidedFilter)
  {
    sub_29588C944(&v44);
    return v44;
  }

  v5 = objc_msgSend_commandQueue(self->_metalContext, a2, v2, v3);
  v9 = objc_msgSend_commandBuffer(v5, v6, v7, v8);

  if (!v9)
  {
    sub_29588C8A8(&v44);
    return v44;
  }

  v13 = objc_msgSend_width(self->_guideTex, v10, v11, v12);
  v17 = objc_msgSend_height(self->_guideTex, v14, v15, v16);
  v19 = objc_msgSend_newTexture2DWithFormat_width_height_usage_label_(self, v18, 25, v13, v17, 7, @"ss_tex_lightMap");
  lightMapTex = self->_lightMapTex;
  self->_lightMapTex = v19;

  v23 = self->_lightMapTex;
  if (!v23)
  {
    sub_29588C7FC();
    return v44;
  }

  LODWORD(v22) = 1028443341;
  v24 = objc_msgSend_encodeToCommandBuffer_inputTexture_guideTexture_outputTexture_kernelRadius_epsilon_(self->_guidedFilter, v21, v9, self->_lightMapSmallTex, self->_guideTex, v23, 1, v22);
  if (v24)
  {
    v42 = v24;
    sub_29588C77C(v24, v9);
  }

  else
  {
    FigMetalDecRef();
    if (*MEMORY[0x29EDB9270])
    {
      v28 = objc_msgSend_commandQueue(v9, v25, v26, v27);
      v32 = objc_msgSend_commandBuffer(v28, v29, v30, v31);

      objc_msgSend_setLabel_(v32, v33, @"KTRACE_MTLCMDBUF", v34);
      objc_msgSend_addCompletedHandler_(v32, v35, &unk_2A1CA9340, v36);
      objc_msgSend_commit(v32, v37, v38, v39);
      objc_msgSend_addCompletedHandler_(v9, v40, &unk_2A1CA9360, v41);
    }

    objc_msgSend_commit(v9, v25, v26, v27);

    return 0;
  }

  return v42;
}

- (int)processPersonMaskTex:(id)tex skinMaskTex:(id)maskTex skyMaskTex:(id)skyMaskTex
{
  texCopy = tex;
  maskTexCopy = maskTex;
  skyMaskTexCopy = skyMaskTex;
  if (!self->_shaders)
  {
    sub_29588CCE0(&v55);
LABEL_14:
    v53 = v55;
    goto LABEL_9;
  }

  if (!self->_guidedFilter)
  {
    sub_29588CC44(&v55);
    goto LABEL_14;
  }

  v14 = objc_msgSend_commandQueue(self->_metalContext, v10, v11, v12);
  v18 = objc_msgSend_commandBuffer(v14, v15, v16, v17);

  if (!v18)
  {
    sub_29588CBA8(&v55);
    goto LABEL_14;
  }

  v22 = objc_msgSend_width(self->_guideTex, v19, v20, v21);
  v26 = objc_msgSend_height(self->_guideTex, v23, v24, v25);
  v28 = objc_msgSend_newTexture2DWithFormat_width_height_usage_label_(self, v27, 25, v22, v26, 7, @"ss_tex_matte_fgbg");
  fgbgMatteTex = self->_fgbgMatteTex;
  self->_fgbgMatteTex = v28;

  v32 = self->_fgbgMatteTex;
  if (!v32)
  {
    sub_29588CAFC();
    goto LABEL_14;
  }

  LODWORD(v31) = 1028443341;
  v33 = objc_msgSend_encodeToCommandBuffer_inputTexture_guideTexture_outputTexture_kernelRadius_epsilon_(self->_guidedFilter, v30, v18, texCopy, self->_guideTex, v32, 5, v31);
  if (v33)
  {
    v53 = v33;
    sub_29588CA7C(v33, v18);
  }

  else
  {
    objc_storeStrong(&self->_skinMatteTex, maskTex);
    skinMatteTex = self->_skinMatteTex;
    FigMetalIncRef();
    objc_storeStrong(&self->_skyMatteTex, skyMaskTex);
    skyMatteTex = self->_skyMatteTex;
    FigMetalIncRef();
    if (*MEMORY[0x29EDB9270])
    {
      v39 = objc_msgSend_commandQueue(v18, v36, v37, v38);
      v43 = objc_msgSend_commandBuffer(v39, v40, v41, v42);

      objc_msgSend_setLabel_(v43, v44, @"KTRACE_MTLCMDBUF", v45);
      objc_msgSend_addCompletedHandler_(v43, v46, &unk_2A1CA9380, v47);
      objc_msgSend_commit(v43, v48, v49, v50);
      objc_msgSend_addCompletedHandler_(v18, v51, &unk_2A1CA93A0, v52);
    }

    objc_msgSend_commit(v18, v36, v37, v38);

    v53 = 0;
  }

LABEL_9:

  return v53;
}

- (int)renderWithLumaTex:(id)tex chromaTex:(id)chromaTex gainMapTex:(id)mapTex outputGainMapTex:(id)gainMapTex
{
  texCopy = tex;
  chromaTexCopy = chromaTex;
  mapTexCopy = mapTex;
  gainMapTexCopy = gainMapTex;
  shaders = self->_shaders;
  if (!shaders)
  {
    sub_29588CF60(v73);
LABEL_13:
    v69 = v73[0];
    goto LABEL_8;
  }

  if (!shaders->_ssRenderAdjustments)
  {
    sub_29588CEC4(v73);
    goto LABEL_13;
  }

  v18 = objc_msgSend_commandQueue(self->_metalContext, v13, v14, v15);
  v22 = objc_msgSend_commandBuffer(v18, v19, v20, v21);

  if (!v22)
  {
    sub_29588CE28(v73);
    goto LABEL_13;
  }

  objc_msgSend_encodeWaitForEvent_value_(v22, v23, self->_sharedEvent, 2);
  v27 = objc_msgSend_computeCommandEncoder(v22, v24, v25, v26);
  if (!v27)
  {
    sub_29588CD7C();
    goto LABEL_13;
  }

  v28 = v27;
  v29 = self->_shaders->_ssRenderAdjustments;
  objc_msgSend_setComputePipelineState_(v28, v30, v29, v31);
  objc_msgSend_setTexture_atIndex_(v28, v32, texCopy, 0);
  objc_msgSend_setTexture_atIndex_(v28, v33, chromaTexCopy, 1);
  objc_msgSend_setTexture_atIndex_(v28, v34, mapTexCopy, 2);
  objc_msgSend_setTexture_atIndex_(v28, v35, gainMapTexCopy, 3);
  objc_msgSend_setTexture_atIndex_(v28, v36, self->_lightMapTex, 9);
  objc_msgSend_setTexture_atIndex_(v28, v37, self->_fgbgMatteTex, 10);
  objc_msgSend_setTexture_atIndex_(v28, v38, self->_skinMatteTex, 11);
  objc_msgSend_setTexture_atIndex_(v28, v39, self->_skyMatteTex, 12);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v40, self->_paramsBuf, 0, 0);

  objc_msgSend_setImageblockWidth_height_(v28, v41, 32, 32);
  v73[0] = objc_msgSend_width(texCopy, v42, v43, v44);
  v73[1] = objc_msgSend_height(texCopy, v45, v46, v47);
  v73[2] = 1;
  v71 = vdupq_n_s64(0x20uLL);
  v72 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v28, v48, v73, &v71);
  objc_msgSend_endEncoding(v28, v49, v50, v51);
  if (*MEMORY[0x29EDB9270])
  {
    v55 = objc_msgSend_commandQueue(v22, v52, v53, v54);
    v59 = objc_msgSend_commandBuffer(v55, v56, v57, v58);

    objc_msgSend_setLabel_(v59, v60, @"KTRACE_MTLCMDBUF", v61);
    objc_msgSend_addCompletedHandler_(v59, v62, &unk_2A1CA93C0, v63);
    objc_msgSend_commit(v59, v64, v65, v66);
    objc_msgSend_addCompletedHandler_(v22, v67, &unk_2A1CA93E0, v68);
  }

  objc_msgSend_commit(v22, v52, v53, v54);

  v69 = 0;
LABEL_8:

  return v69;
}

- (void)remapSliderValueForRendering
{
  v5 = objc_msgSend_contents(self->_paramsBuf, a2, v2, v3);
  *(v5 + 24) = *(v5 + 24) * 1.2;
  v9 = objc_msgSend_toneBiasRemap(self->_tuningParams, v6, v7, v8);
  if (v9)
  {
    v10 = *(v5 + 24);
    v11 = v9[1];
    if (v10 >= 0.0 || v10 <= v11)
    {
      if (v10 >= 0.0)
      {
        v13 = v9[2];
        if (v10 < v13)
        {
          v10 = *v9 + ((v10 / v13) * (v10 - *v9));
        }
      }
    }

    else
    {
      v10 = v10 + (((v11 - v10) / v11) * (*v9 - v10));
    }

    *(v5 + 24) = v10;
  }
}

- (int)runWithStyle:(id)style tuningParams:(id)params refFrameMetadata:(const frameMetadata *)metadata sceneType:(id)type lumaTex:(id)tex chromaTex:(id)chromaTex gainMapTex:(id)mapTex outputGainMapTex:(id)self0 personMaskTex:(id)self1 skinMaskTex:(id)self2 skyMaskTex:(id)self3 isLowLight:(BOOL)self4
{
  styleCopy = style;
  obj = params;
  paramsCopy = params;
  typeCopy = type;
  texCopy = tex;
  chromaTexCopy = chromaTex;
  mapTexCopy = mapTex;
  gainMapTexCopy = gainMapTex;
  maskTexCopy = maskTex;
  skinMaskTexCopy = skinMaskTex;
  skyMaskTexCopy = skyMaskTex;
  if (!texCopy)
  {
    sub_29588D528(v107);
LABEL_30:
    v97 = v107[0];
    goto LABEL_26;
  }

  if (!chromaTexCopy)
  {
    sub_29588D48C(v107);
    goto LABEL_30;
  }

  v26 = objc_msgSend_newBufferWithLength_options_label_(self, v24, 136, 0, @"ss_buf_params");
  paramsBuf = self->_paramsBuf;
  self->_paramsBuf = v26;

  if (!self->_paramsBuf)
  {
    sub_29588D3F0(v107);
    goto LABEL_30;
  }

  v105 = objc_msgSend_width(texCopy, v28, v29, v30);
  v34 = objc_msgSend_height(texCopy, v31, v32, v33);
  v35.f32[0] = v105;
  v35.f32[1] = v34;
  v106 = v35;
  v36.f64[0] = metadata->ROI.origin.x;
  v37 = sub_295862268(v36, metadata->ROI.origin.y);
  v38.f64[0] = metadata->ROI.size.width;
  *&v39 = sub_295862268(v38, metadata->ROI.size.height);
  __asm { FMOV            V1.2S, #1.0 }

  v45 = vdiv_f32(_D1, vdiv_f32(v39, v106));
  v49 = objc_msgSend_contents(self->_paramsBuf, v46, v47, v48);
  *v49 = vmul_f32(vdiv_f32(vneg_f32(*&v37), v106), v45);
  v49[1] = v45;
  v49[2].i32[0] = LODWORD(metadata->exposureParams.luxLevel);
  v49[2].i8[4] = light;
  objc_msgSend_toneBias(styleCopy, v50, v51, v52);
  v49[3].i32[0] = v53;
  objc_msgSend_warmthBias(styleCopy, v54, v55, v56);
  v49[3].i32[1] = v57;
  v58 = typeCopy;
  if (objc_msgSend_isEqualToString_(v58, v59, *MEMORY[0x29EDC07C0], v60))
  {
    v63 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v58, v61, *MEMORY[0x29EDC07C8], v62))
  {
    v63 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v58, v64, *MEMORY[0x29EDC07D0], v65))
  {
    v63 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v58, v66, *MEMORY[0x29EDC07B8], v67))
  {
    v63 = 3;
  }

  else
  {
    v63 = 0;
  }

  v49[4].i32[0] = v63;
  v68 = v49[3].f32[1] * 0.25 + 0.5;
  v49[3].f32[1] = v68;
  v72 = objc_msgSend_device(self->_metalContext, v69, v70, v71);
  v76 = objc_msgSend_newSharedEvent(v72, v73, v74, v75);
  sharedEvent = self->_sharedEvent;
  self->_sharedEvent = v76;

  if (!self->_sharedEvent)
  {
    sub_29588D354(v107);
LABEL_33:
    v97 = v107[0];
    goto LABEL_26;
  }

  objc_storeStrong(&self->_tuningParams, obj);
  if (!self->_tuningParams)
  {
    sub_29588D2B8(v107);
    goto LABEL_33;
  }

  objc_msgSend_remapSliderValueForRendering(self, v78, v79, v80);
  if (dword_2A18C2398)
  {
    v109 = 0;
    v108 = 0;
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v83 = objc_msgSend_calculateHistogramStatsWithLumaTex_chromaTex_(self, v81, texCopy, chromaTexCopy);
  if (v83)
  {
    v97 = v83;
    sub_29588CFFC();
  }

  else
  {
    GuideImage = objc_msgSend_createGuideImage_(self, v84, texCopy, v85);
    if (GuideImage)
    {
      v97 = GuideImage;
      sub_29588D088();
    }

    else
    {
      v90 = objc_msgSend_upsampleLightMap(self, v87, v88, v89);
      if (v90)
      {
        v97 = v90;
        sub_29588D114();
      }

      else if (maskTexCopy && skinMaskTexCopy && skyMaskTexCopy && (v92 = objc_msgSend_processPersonMaskTex_skinMaskTex_skyMaskTex_(self, v91, maskTexCopy, skinMaskTexCopy, skyMaskTexCopy)) != 0)
      {
        v97 = v92;
        sub_29588D1A0();
      }

      else
      {
        FigMetalDecRef();
        v97 = objc_msgSend_renderWithLumaTex_chromaTex_gainMapTex_outputGainMapTex_(self, v93, texCopy, chromaTexCopy, mapTexCopy, gainMapTexCopy);
        if (v97)
        {
          sub_29588D22C();
        }
      }
    }
  }

LABEL_26:
  objc_msgSend_releaseResources(self, v94, v95, v96);

  return v97;
}

@end