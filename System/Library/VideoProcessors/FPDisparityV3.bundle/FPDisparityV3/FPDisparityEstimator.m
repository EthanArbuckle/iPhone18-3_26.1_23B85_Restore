@interface FPDisparityEstimator
- ($5E5F304956FB491AF6F034FDF0808287)H0Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)H1Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)V0Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)V1Metadata;
- (CGRect)sensorCropRect;
- (CGRect)sensorReadoutRect;
- (CGRect)totalSensorCropRect;
- (CGSize)outputDisparityResolution;
- (FPDisparityEstimator)initWithMetalContext:(id)a3;
- (id)CreateKernelWithConst:(id)a3 constants:(id)a4;
- (int)_allocateFPCostWorkBuffer:(id *)a3;
- (int)_computeCost:(id)a3 texGreenPixels:(id)a4 texOutputResU:(id)a5 texOutputHesU:(id)a6 level:(unsigned int)a7 resolutionScale:(float)a8;
- (int)_computeFocusPixelDisparityFromResolution:(FPDisparityEstimator *)self box_cstr_range:(SEL)a2 disparity_scaling_factor:(float)a3;
- (int)_costNCC:(id)a3 dynCfg:(id *)a4 texDisparityIn:(id)a5 texGreenPixelsIn:(id)a6 texFocusPixelsIn:(id)a7 texTcLrcOut:(id)a8 resolutionScale:(float)a9 level:(unsigned int)a10;
- (int)_debugInterpolate:(id)a3 texTcLrcIn:(id)a4 dynCfg:(id *)a5 debugBuf:(id)a6;
- (int)_filterHorz:(id)a3 texTcLrcIn:(id)a4 texTcLrcOut:(id)a5 dynCfg:(id *)a6;
- (int)_filterVert:(id)a3 texTcLrcIn:(id)a4 texTcLrcOut:(id)a5 dynCfg:(id *)a6;
- (int)_generateCorrectionMap;
- (int)_interpolateAndAccumulate:(id)a3 texTcLrcIn:(id)a4 dynCfg:(id *)a5;
- (int)_proximityOperator:(id)a3 dynCfg:(id *)a4 texDisparityIn:(id)a5 texOutputResUOut:(id)a6 texOutputHesUOut:(id)a7 level:(unsigned int)a8;
- (int)_setCorrectionMapCoefficients:(float *)a3;
- (int)_setupBuffer;
- (int)_setupFPPipelines;
- (int)_setupTexture;
- (int)allocateResources:(id *)a3;
- (int)computeFilterCurve:(float)a3 p3:(float)a4 array:(float *)a5;
- (int)setOutputDisparity:(__CVBuffer *)a3;
- (unint64_t)computeAlignedSize:(unint64_t)a3 pixelFormat:(unint64_t)a4;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation FPDisparityEstimator

- (FPDisparityEstimator)initWithMetalContext:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = FPDisparityEstimator;
  v6 = [(FPDisparityEstimator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, a3);
    v10 = objc_msgSend_commandQueue(v5, v8, v9);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v10;

    if (objc_msgSend__setupFPPipelines(v7, v12, v13))
    {
      sub_295799C28();
      goto LABEL_5;
    }

    v14 = [TVL1_v3 alloc];
    v16 = objc_msgSend_initWithMetalContext_(v14, v15, v7->_mtlContext);
    tvl1Instance = v7->_tvl1Instance;
    v7->_tvl1Instance = v16;

    if (v7->_tvl1Instance)
    {
      v18 = [HBFGPU alloc];
      v20 = objc_msgSend_initWithMetalContext_(v18, v19, v7->_mtlContext);
      hbfgpuInstance = v7->_hbfgpuInstance;
      v7->_hbfgpuInstance = v20;

      if (v7->_hbfgpuInstance)
      {
        goto LABEL_5;
      }

      sub_295799CA0(v7);
    }

    else
    {
      sub_295799D1C(v7);
    }

    v7 = 0;
  }

LABEL_5:

  return v7;
}

- (int)allocateResources:(id *)a3
{
  v6.i64[0] = *&a3->var0;
  v6.i64[1] = HIDWORD(*&a3->var0);
  self->_outputDisparityResolution = vcvtq_f64_u64(v6);
  v7 = objc_msgSend__setupBuffer(self, a2, a3);
  if (v7)
  {
    v20 = v7;
    sub_295799D98();
LABEL_13:
    objc_msgSend_releaseResources(self, v22, v23);
    return v20;
  }

  v10 = objc_msgSend__setupTexture(self, v8, v9);
  if (v10)
  {
    v20 = v10;
    sub_295799E10();
    goto LABEL_13;
  }

  objc_msgSend_setPyramidReference_(self->_tvl1Instance, v11, self->_imagePyramid);
  Resources = objc_msgSend_allocateResources(self->_tvl1Instance, v12, v13);
  if (Resources)
  {
    v20 = Resources;
    sub_295799E88();
    goto LABEL_13;
  }

  FPCostWorkBuffer = objc_msgSend__allocateFPCostWorkBuffer_(self, v15, a3);
  if (FPCostWorkBuffer)
  {
    v20 = FPCostWorkBuffer;
    sub_295799F00();
    goto LABEL_13;
  }

  if ((a3[32].var0 & 1) == 0)
  {
    *&a3[24].var0 = 0u;
    *&a3[28].var0 = 0u;
    *&a3[16].var0 = 0u;
    *&a3[20].var0 = 0u;
    *&a3[12].var0 = 0u;
  }

  objc_msgSend__setCorrectionMapCoefficients_(self, v17, &a3[12]);
  objc_msgSend__generateCorrectionMap(self, v18, v19);
  return 0;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = FPDisparityEstimator;
  [(FPDisparityEstimator *)&v6 dealloc];
}

- (void)releaseResources
{
  objc_msgSend_releaseResources(self->_tvl1Instance, a2, v2);
  if (objc_msgSend_countScales(self->_imagePyramid, v4, v5) >= 1)
  {
    v6 = 0;
    v7 = self;
    do
    {
      v8 = v7->_res_tex[0];
      v7->_res_tex[0] = 0;

      v9 = v7->_Hes_tex[0];
      v7->_Hes_tex[0] = 0;

      ++v6;
      v7 = (v7 + 8);
    }

    while (v6 < objc_msgSend_countScales(self->_imagePyramid, v10, v11));
  }

  res_pxbuf = self->_res_pxbuf;
  if (res_pxbuf)
  {
    CFRelease(res_pxbuf);
    self->_res_pxbuf = 0;
  }

  Hes_pxbuf = self->_Hes_pxbuf;
  if (Hes_pxbuf)
  {
    CFRelease(Hes_pxbuf);
    self->_Hes_pxbuf = 0;
  }

  costsBuffer = self->_costsBuffer;
  self->_costsBuffer = 0;

  bufTcLrc1 = self->_bufTcLrc1;
  self->_bufTcLrc1 = 0;

  bufTcLrc2 = self->_bufTcLrc2;
  self->_bufTcLrc2 = 0;
}

- (int)_allocateFPCostWorkBuffer:(id *)a3
{
  v6 = HIDWORD(*&a3->var0);
  v7 = objc_msgSend_computeAlignedSize_pixelFormat_(self, a2, 16 * *&a3->var0, 125) * v6;
  v10 = objc_msgSend_device(self->_mtlContext, v8, v9);
  v12 = objc_msgSend_newBufferWithLength_options_(v10, v11, v7, 0);
  costsBuffer = self->_costsBuffer;
  self->_costsBuffer = v12;

  if (self->_costsBuffer)
  {
    if (a3[2].var0)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *&a3[2 * v16 + 4].var0;
        v19 = HIDWORD(v18);
        v20 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v14, 16 * v18, 125);
        if (v20 * v19 > v17)
        {
          v17 = v20 * v19;
        }

        ++v16;
      }

      while (v16 < a3[2].var0);
    }

    else
    {
      v17 = 0;
    }

    v21 = objc_msgSend_device(self->_mtlContext, v14, v15);
    v23 = objc_msgSend_newBufferWithLength_options_(v21, v22, v17, 0);
    bufTcLrc1 = self->_bufTcLrc1;
    self->_bufTcLrc1 = v23;

    if (self->_bufTcLrc1)
    {
      v27 = objc_msgSend_device(self->_mtlContext, v25, v26);
      v29 = objc_msgSend_newBufferWithLength_options_(v27, v28, v17, 0);
      bufTcLrc2 = self->_bufTcLrc2;
      self->_bufTcLrc2 = v29;

      if (self->_bufTcLrc2)
      {
        return 0;
      }

      else
      {
        sub_295799F78(&v32);
        return v32;
      }
    }

    else
    {
      sub_29579A024(&v33);
      return v33;
    }
  }

  else
  {
    sub_29579A0D0(&v34);
    return v34;
  }
}

- (int)_computeFocusPixelDisparityFromResolution:(FPDisparityEstimator *)self box_cstr_range:(SEL)a2 disparity_scaling_factor:(float)a3
{
  v6 = v5;
  v7 = v4;
  v8 = self;
  v177 = 0;
  v9 = objc_msgSend_countScales(self->_imagePyramid, a2, v3);
  v151 = objc_msgSend_realPyramidDimensions(v8->_imagePyramid, v10, v11);
  v14 = (v9 - 1);
  if (v9 < 1)
  {
    return 0;
  }

  v15 = 0;
  v16 = LODWORD(a3);
  res_tex = v8->_res_tex;
  Hes_tex = v8->_Hes_tex;
  v150 = (v9 - 1);
  do
  {
    v18 = v15;
    v19 = objc_msgSend_levelsParameters(v8->_fpDisparityEstimatorParams, v12, v13);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v14);

    v24 = objc_msgSend_solverParameters(v21, v22, v23);
    v27 = objc_msgSend_warpings(v24, v25, v26);

    v30 = objc_msgSend_solverParameters(v21, v28, v29);
    v156 = objc_msgSend_iterations(v30, v31, v32);

    v158 = v21;
    v35 = objc_msgSend_hbfParameters(v21, v33, v34);
    v155 = objc_msgSend_scales(v35, v36, v37);

    v154 = objc_msgSend_textureRGBAU8AtScale_(v8->_imagePyramid, v38, v14);
    v153 = objc_msgSend_textureU32AliasAtScale_(v8->_imagePyramid, v39, v14);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v8->_GChannelPyramid, v40, v14);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v8->_GChannelPyramid, v42, 0);
    v46 = objc_msgSend_height(v41, v44, v45);
    v161 = objc_msgSend_height(v43, v47, v48);
    v157 = v41;
    v51 = objc_msgSend_width(v41, v49, v50);
    v152 = v43;
    v54 = objc_msgSend_width(v43, v52, v53);
    v55 = *(v151 + 16 * v14);
    v15 = objc_msgSend_commandBuffer(v8->_commandQueue, v56, v57);

    if (!v15)
    {
      sub_29579A54C(v178);
LABEL_46:
      v147 = 0;
      v62 = v178[0];
      goto LABEL_34;
    }

    v159 = v51;
    if (v14 == v150)
    {
      inited = objc_msgSend_doInitPrimalDualWithCommandBuffer_disparity_value_idx_swap_uv_idx_swap_p_level_(v8->_tvl1Instance, v58, v15, HIDWORD(v177), v177, 0.0);
      if (inited)
      {
        v62 = inited;
        sub_29579A204();
LABEL_42:
        v147 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(v8->_GChannelPyramid, v58, v14 + 1);
      v66 = (objc_msgSend_width(v157, v64, v65) - 1);
      v69 = v66 / (objc_msgSend_width(v63, v67, v68) - 1);
      objc_msgSend_height(v157, v70, v71);
      objc_msgSend_height(v63, v72, v73);
      *&v74 = v69;
      v76 = objc_msgSend_doUpscalePrimalDualWithCommandBuffer_idx_swap_uv_in_out_idx_swap_p_in_out_level_coeff_(v8->_tvl1Instance, v75, v15, &v177 + 4, &v177, v14, v74);
      if (v76)
      {
        v62 = v76;
        sub_29579A17C();
        goto LABEL_42;
      }
    }

    v77 = objc_msgSend_regularizationParameters(v158, v60, v61);
    v62 = objc_msgSend__doLocalRegularizationWithCommandBuffer_in_tex_level_parameters_(v8, v78, v15, v154, v14, v77);

    if (v62)
    {
      sub_29579A280();
      goto LABEL_42;
    }

    if (*MEMORY[0x29EDB9270])
    {
      v81 = objc_msgSend_commandQueue(v15, v79, v80);
      v84 = objc_msgSend_commandBuffer(v81, v82, v83);

      objc_msgSend_setLabel_(v84, v85, @"KTRACE_MTLCMDBUF");
      v175[0] = MEMORY[0x29EDCA5F8];
      v175[1] = 3221225472;
      v175[2] = sub_295789514;
      v175[3] = &unk_29EDD8EF8;
      v176 = v14;
      objc_msgSend_addCompletedHandler_(v84, v86, v175);
      objc_msgSend_commit(v84, v87, v88);
      v173[0] = MEMORY[0x29EDCA5F8];
      v173[1] = 3221225472;
      v173[2] = sub_295789548;
      v173[3] = &unk_29EDD8EF8;
      v174 = v14;
      objc_msgSend_addCompletedHandler_(v15, v89, v173);
    }

    objc_msgSend_commit(v15, v79, v80);
    if (v27 >= 1)
    {
      v92 = (((v46 + -1.0) / (v161 + -1.0)) + ((v159 + -1.0) / (v54 + -1.0))) * 0.5;
      v93 = v55 / v16;
      v94 = COERCE_DOUBLE(vmul_n_f32(v7, v93));
      while (1)
      {
        v95 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(v8->_tvl1Instance, v90, v14, HIDWORD(v177));
        *&v96 = v92;
        v98 = objc_msgSend__computeCost_texGreenPixels_texOutputResU_texOutputHesU_level_resolutionScale_(v8, v97, v95, v157, res_tex[v14], Hes_tex[v14], v14, v96);
        if (v98)
        {
          v62 = v98;
          sub_29579A2FC();
          goto LABEL_41;
        }

        v101 = objc_msgSend_commandBuffer(v8->_commandQueue, v99, v100);

        if (!v101)
        {
          sub_29579A4A0(v178);
          v15 = 0;
          v62 = v178[0];
          goto LABEL_41;
        }

        uv_tex_user_ref = 0;
        v105 = 1.0;
        v160 = v27;
        v162 = v95;
        if (!v14 && v27 == 1 && v155 <= 0)
        {
          uv_tex_user_ref = v8->_uv_tex_user_ref;
          v105 = v6;
        }

        v106 = v8;
        tvl1Instance = v8->_tvl1Instance;
        v108 = res_tex;
        v109 = res_tex[v14];
        v110 = Hes_tex[v14];
        v111 = objc_msgSend_solverParameters(v158, v102, v103);
        *&v112 = v105;
        v62 = objc_msgSend_doSolveChambollePrimalDualWithCommandBuffer_idx_swap_uv_in_out_idx_swap_p_in_out_in_res_tes_in_hes_tes_out_uv_tex_level_iterations_box_cstr_range_disparity_scaling_factor_parameters_(tvl1Instance, v113, v101, &v177 + 4, &v177, v109, v110, uv_tex_user_ref, v94, v112, __PAIR64__(v156, v14), v111);

        if (v62)
        {
          break;
        }

        if (*MEMORY[0x29EDB9270])
        {
          v116 = objc_msgSend_commandQueue(v101, v114, v115);
          v119 = objc_msgSend_commandBuffer(v116, v117, v118);

          objc_msgSend_setLabel_(v119, v120, @"KTRACE_MTLCMDBUF");
          v171[0] = MEMORY[0x29EDCA5F8];
          v171[1] = 3221225472;
          v171[2] = sub_295789608;
          v171[3] = &unk_29EDD8EF8;
          v172 = v14;
          objc_msgSend_addCompletedHandler_(v119, v121, v171);
          objc_msgSend_commit(v119, v122, v123);
          v169[0] = MEMORY[0x29EDCA5F8];
          v169[1] = 3221225472;
          v169[2] = sub_29578963C;
          v169[3] = &unk_29EDD8EF8;
          v170 = v14;
          objc_msgSend_addCompletedHandler_(v101, v124, v169);
        }

        objc_msgSend_commit(v101, v114, v115);

        v15 = v101;
        v27 = v160 - 1;
        res_tex = v108;
        v8 = v106;
        if (v160 == 1)
        {
          goto LABEL_26;
        }
      }

      sub_29579A378();
      v15 = v101;
      res_tex = v108;
      v8 = v106;
      v95 = v162;
LABEL_41:

      goto LABEL_42;
    }

    v101 = v15;
LABEL_26:
    if (v155 < 1)
    {
      v62 = 0;
      v147 = 1;
      v15 = v101;
      goto LABEL_34;
    }

    v15 = objc_msgSend_commandBuffer(v8->_commandQueue, v90, v91);

    if (!v15)
    {
      sub_29579A3F4(v178);
      goto LABEL_46;
    }

    v127 = objc_msgSend_hbfParameters(v158, v125, v126);
    objc_msgSend_setParams_(v8->_hbfgpuInstance, v128, v127);

    v130 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(v8->_tvl1Instance, v129, v14, HIDWORD(v177));
    v133 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(v8->_tvl1Instance, v131, v14, HIDWORD(v177) ^ 1u);
    LODWORD(v134) = 1.0;
    v135 = v133;
    if (!v14)
    {
      v135 = v8->_uv_tex_user_ref;
      *&v134 = v6;
    }

    objc_msgSend_doFilterWithCommandBuffer_in_I_tex_in_J_u32_tex_in_W_tex_out_tex_disparity_scaling_factor_(v8->_hbfgpuInstance, v132, v15, v130, v153, 0, v135, v134);
    HIDWORD(v177) ^= 1u;
    if (*MEMORY[0x29EDB9270])
    {
      v138 = objc_msgSend_commandQueue(v15, v136, v137);
      v141 = objc_msgSend_commandBuffer(v138, v139, v140);

      objc_msgSend_setLabel_(v141, v142, @"KTRACE_MTLCMDBUF");
      v167[0] = MEMORY[0x29EDCA5F8];
      v167[1] = 3221225472;
      v167[2] = sub_2957896FC;
      v167[3] = &unk_29EDD8EF8;
      v168 = v14;
      objc_msgSend_addCompletedHandler_(v141, v143, v167);
      objc_msgSend_commit(v141, v144, v145);
      v165[0] = MEMORY[0x29EDCA5F8];
      v165[1] = 3221225472;
      v165[2] = sub_295789730;
      v165[3] = &unk_29EDD8EF8;
      v166 = v14;
      objc_msgSend_addCompletedHandler_(v15, v146, v165);
    }

    objc_msgSend_commit(v15, v136, v137);

    v62 = 0;
    v147 = 1;
LABEL_34:

    if (!v147)
    {
      break;
    }
  }

  while (v14-- > 0);

  return v62;
}

- (int)setOutputDisparity:(__CVBuffer *)a3
{
  if (a3)
  {
    if (CVPixelBufferGetWidth(a3) == self->_outputDisparityResolution.width && CVPixelBufferGetHeight(a3) == self->_outputDisparityResolution.height)
    {
      v6 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_mtlContext, v5, a3, 25, 22, 0, self->_outputDisparityResolution.width);
      uv_tex_user_ref = self->_uv_tex_user_ref;
      self->_uv_tex_user_ref = v6;

      if (self->_uv_tex_user_ref)
      {
        return 0;
      }

      else
      {
        return -12786;
      }
    }

    else
    {
      sub_29579A5F8();
      return -12780;
    }
  }

  else
  {
    v9 = self->_uv_tex_user_ref;
    self->_uv_tex_user_ref = 0;

    return 0;
  }
}

- (int)_setupFPPipelines
{
  v3 = objc_msgSend_CreateKernelWithConst_constants_(self, a2, @"costNCC", 0);
  costNCCPipelineState = self->_costNCCPipelineState;
  self->_costNCCPipelineState = v3;

  if (!self->_costNCCPipelineState)
  {
    sub_29579AB9C(&v27);
    return v27;
  }

  v6 = objc_msgSend_CreateKernelWithConst_constants_(self, v5, @"filterVert", 0);
  filterVertPipelineState = self->_filterVertPipelineState;
  self->_filterVertPipelineState = v6;

  if (!self->_filterVertPipelineState)
  {
    sub_29579AAF0(&v27);
    return v27;
  }

  v9 = objc_msgSend_CreateKernelWithConst_constants_(self, v8, @"filterHorz", 0);
  filterHorzPipelineState = self->_filterHorzPipelineState;
  self->_filterHorzPipelineState = v9;

  if (!self->_filterHorzPipelineState)
  {
    sub_29579AA44(&v27);
    return v27;
  }

  v12 = objc_msgSend_CreateKernelWithConst_constants_(self, v11, @"interpolateAndSet", 0);
  interpolateAndSetPipelineState = self->_interpolateAndSetPipelineState;
  self->_interpolateAndSetPipelineState = v12;

  if (!self->_interpolateAndSetPipelineState)
  {
    sub_29579A998(&v27);
    return v27;
  }

  v15 = objc_msgSend_CreateKernelWithConst_constants_(self, v14, @"interpolateAndAccum", 0);
  interpolateAndAccumPipelineState = self->_interpolateAndAccumPipelineState;
  self->_interpolateAndAccumPipelineState = v15;

  if (!self->_interpolateAndAccumPipelineState)
  {
    sub_29579A8EC(&v27);
    return v27;
  }

  v18 = objc_msgSend_CreateKernelWithConst_constants_(self, v17, @"proximityOperator", 0);
  proximityOperatorPipelineState = self->_proximityOperatorPipelineState;
  self->_proximityOperatorPipelineState = v18;

  if (!self->_proximityOperatorPipelineState)
  {
    sub_29579A840(&v27);
    return v27;
  }

  v21 = objc_msgSend_CreateKernelWithConst_constants_(self, v20, @"fdp_local_regularization_kernel", 0);
  regularizationPipelineState = self->_regularizationPipelineState;
  self->_regularizationPipelineState = v21;

  if (!self->_regularizationPipelineState)
  {
    sub_29579A794(&v27);
    return v27;
  }

  v24 = objc_msgSend_CreateKernelWithConst_constants_(self, v23, @"correction_map_generation_kernel", 0);
  correctionMapGenerationPipelineState = self->_correctionMapGenerationPipelineState;
  self->_correctionMapGenerationPipelineState = v24;

  if (!self->_correctionMapGenerationPipelineState)
  {
    sub_29579A6E8(&v27);
    return v27;
  }

  return 0;
}

- (int)_computeCost:(id)a3 texGreenPixels:(id)a4 texOutputResU:(id)a5 texOutputHesU:(id)a6 level:(unsigned int)a7 resolutionScale:(float)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v192 = 0u;
  v193 = 0u;
  v191 = 0u;
  v19 = objc_msgSend_width(v13, v17, v18);
  v176 = v13;
  v22 = objc_msgSend_height(v13, v20, v21);
  LODWORD(a5) = v22;
  v190[0] = __PAIR64__(v22, v19);
  LODWORD(v13) = objc_msgSend_width(v14, v23, v24);
  v190[1] = __PAIR64__(objc_msgSend_height(v14, v25, v26), v13);
  v28 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v27, 25, v19, a5, 0);
  v31 = v28;
  if (!v28)
  {
    sub_29579B1D4(v194);
    v167 = v194[0];
    goto LABEL_28;
  }

  v32 = objc_msgSend_usage(v28, v29, v30);
  v175 = v31;
  objc_msgSend_setUsage_(v31, v33, v32 | 3);
  DWORD1(v192) = objc_msgSend_computeAlignedSize_pixelFormat_(self, v34, 16 * v19, 125) >> 2;
  v36 = objc_msgSend_objectAtIndexedSubscript_(self->_GChannelPyramid, v35, 0);
  v173 = objc_msgSend_width(v14, v37, v38);
  v41 = objc_msgSend_width(v36, v39, v40);
  v44 = objc_msgSend_height(v14, v42, v43);
  v47 = objc_msgSend_height(v36, v45, v46);
  v50 = objc_msgSend_width(v36, v48, v49);
  v172 = v36;
  *&v191 = __PAIR64__(objc_msgSend_height(v36, v51, v52), v50);
  v55 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v53, v54);
  objc_msgSend_microlensSpatialOffset(v55, v56, v57);
  v59 = v58;

  v62 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v60, v61);
  v65 = objc_msgSend_nView(v62, v63, v64);

  if (!v65)
  {
    v179 = 0;
    v151 = 0;
    v107 = 0;
    v31 = v175;
LABEL_23:
    v152 = objc_msgSend_commandBuffer(self->_commandQueue, v66, v67);
    if (v152)
    {
      v154 = v152;
      v155 = objc_msgSend__proximityOperator_dynCfg_texDisparityIn_texOutputResUOut_texOutputHesUOut_level_(self, v153, v152, v190, v176, v15, v16, a7);
      if (!v155)
      {
        if (*MEMORY[0x29EDB9270])
        {
          v158 = objc_msgSend_commandQueue(v154, v156, v157);
          v161 = objc_msgSend_commandBuffer(v158, v159, v160);

          objc_msgSend_setLabel_(v161, v162, @"KTRACE_MTLCMDBUF");
          v182[0] = MEMORY[0x29EDCA5F8];
          v182[1] = 3221225472;
          v182[2] = sub_29578A888;
          v182[3] = &unk_29EDD8EF8;
          v183 = a7;
          objc_msgSend_addCompletedHandler_(v161, v163, v182);
          objc_msgSend_commit(v161, v164, v165);
          v180[0] = MEMORY[0x29EDCA5F8];
          v180[1] = 3221225472;
          v180[2] = sub_29578A8BC;
          v180[3] = &unk_29EDD8EF8;
          v181 = a7;
          objc_msgSend_addCompletedHandler_(v154, v166, v180);
        }

        objc_msgSend_commit(v154, v156, v157);

        v167 = 0;
        goto LABEL_28;
      }

      v167 = v155;
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      v167 = FigSignalErrorAtGM();
    }

    goto LABEL_28;
  }

  v170 = v16;
  v171 = v15;
  v68 = 0;
  v178 = 0;
  v179 = 0;
  v69 = 0;
  v70 = 0;
  v71 = (v173 - 1) / (v41 - 1);
  v72 = (v44 - 1) / (v47 - 1);
  v174 = v14;
  while (1)
  {
    if (v70 == 3)
    {
      p_V1Metadata = &self->_V1Metadata;
      p_V1ImTexture = &self->_V1ImTexture;
      v78 = 0.0;
      p_xRawBase = &self->_V1Metadata.xRawBase;
      p_yRawStep = &self->_V1Metadata.yRawStep;
      p_yRawBase = &self->_V1Metadata.yRawBase;
    }

    else if (v70 == 2)
    {
      p_V1Metadata = &self->_V0Metadata;
      p_V1ImTexture = &self->_V0ImTexture;
      v78 = 0.0;
      p_xRawBase = &self->_V0Metadata.xRawBase;
      p_yRawStep = &self->_V0Metadata.yRawStep;
      p_yRawBase = &self->_V0Metadata.yRawBase;
    }

    else
    {
      p_V1Metadata = &self->_H0Metadata;
      p_V1ImTexture = &self->_H0ImTexture;
      p_xRawBase = &self->_H0Metadata.xRawBase;
      p_yRawStep = &self->_H0Metadata.yRawStep;
      p_yRawBase = &self->_H0Metadata.yRawBase;
      v78 = v59;
      if (v70 == 1)
      {
        p_V1Metadata = &self->_H1Metadata;
        p_V1ImTexture = &self->_H1ImTexture;
        p_xRawBase = &self->_H1Metadata.xRawBase;
        p_yRawStep = &self->_H1Metadata.yRawStep;
        p_yRawBase = &self->_H1Metadata.yRawBase;
        v78 = -v59;
      }
    }

    v79 = *p_V1ImTexture;
    v80 = *p_yRawBase;
    v81 = *p_yRawStep;
    xRawStep = p_V1Metadata->xRawStep;
    LODWORD(v192) = v70;
    v83 = *p_xRawBase;
    v86 = objc_msgSend_width(v79, v84, v85);
    *(&v191 + 1) = __PAIR64__(objc_msgSend_height(v79, v87, v88), v86);
    DWORD2(v192) = xRawStep;
    *(&v192 + 3) = v78 + v83;
    *&v193 = __PAIR64__(v81, LODWORD(v71));
    *(&v193 + 1) = __PAIR64__(LODWORD(v72), v80);
    v31 = v175;
    objc_msgSend_setPixelFormat_(v175, v89, 125);
    v92 = objc_msgSend_width(v79, v90, v91);
    objc_msgSend_setWidth_(v175, v93, v92);
    v96 = objc_msgSend_height(v79, v94, v95);
    objc_msgSend_setHeight_(v175, v97, v96);
    v100 = 16 * objc_msgSend_width(v79, v98, v99);
    v103 = objc_msgSend_pixelFormat(v175, v101, v102);
    v105 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v104, v100, v103);
    v107 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc1, v106, v175, 0, v105);

    if (!v107)
    {
      sub_29579B118(v69, v194);
      v167 = v194[0];
      v109 = v178;
      v69 = v179;
      v14 = v174;
      goto LABEL_38;
    }

    v109 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc2, v108, v175, 0, v105);

    v14 = v174;
    if (!v109)
    {
      sub_29579B06C(v194);
      v167 = v194[0];
      v109 = v179;
      goto LABEL_38;
    }

    objc_msgSend_setPixelFormat_(v175, v110, 115);
    v113 = 8 * objc_msgSend_width(v79, v111, v112);
    v116 = objc_msgSend_pixelFormat(v175, v114, v115);
    v118 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v117, v113, v116);
    v120 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc1, v119, v175, 0, v118);

    if (!v120)
    {
      sub_29579AFC0(v194);
      v167 = v194[0];
      goto LABEL_38;
    }

    v123 = v120;
    v124 = objc_msgSend_commandBuffer(self->_commandQueue, v121, v122);

    if (!v124)
    {
      sub_29579AF14(v194);
      v167 = v194[0];
      goto LABEL_37;
    }

    v69 = v124;
    LODWORD(v169) = a7;
    *&v126 = a8;
    v127 = objc_msgSend__costNCC_dynCfg_texDisparityIn_texGreenPixelsIn_texFocusPixelsIn_texTcLrcOut_resolutionScale_level_(self, v125, v124, v190, v176, v174, v79, v107, v126, v169);
    if (v127)
    {
      v167 = v127;
      sub_29579ACF4();
      goto LABEL_37;
    }

    v129 = objc_msgSend__filterVert_texTcLrcIn_texTcLrcOut_dynCfg_(self, v128, v124, v107, v109, v190);
    if (v129)
    {
      v167 = v129;
      sub_29579AD7C();
      goto LABEL_37;
    }

    v131 = objc_msgSend__filterHorz_texTcLrcIn_texTcLrcOut_dynCfg_(self, v130, v124, v109, v123, v190);
    if (v131)
    {
      v167 = v131;
      sub_29579AE04();
      goto LABEL_37;
    }

    v133 = objc_msgSend__interpolateAndAccumulate_texTcLrcIn_dynCfg_(self, v132, v124, v123, v190);
    if (v133)
    {
      break;
    }

    v178 = v109;
    v179 = v123;
    if (*MEMORY[0x29EDB9270])
    {
      v136 = objc_msgSend_commandQueue(v124, v134, v135);
      v139 = objc_msgSend_commandBuffer(v136, v137, v138);

      objc_msgSend_setLabel_(v139, v140, @"KTRACE_MTLCMDBUF");
      v187[0] = MEMORY[0x29EDCA5F8];
      v187[1] = 3221225472;
      v187[2] = sub_29578A79C;
      v187[3] = &unk_29EDD8F18;
      v188 = a7;
      v189 = v70;
      objc_msgSend_addCompletedHandler_(v139, v141, v187);
      objc_msgSend_commit(v139, v142, v143);
      v184[0] = MEMORY[0x29EDCA5F8];
      v184[1] = 3221225472;
      v184[2] = sub_29578A7CC;
      v184[3] = &unk_29EDD8F18;
      v185 = a7;
      v186 = v70;
      objc_msgSend_addCompletedHandler_(v69, v144, v184);
    }

    objc_msgSend_commit(v69, v134, v135);

    ++v70;
    v147 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v145, v146);
    v150 = objc_msgSend_nView(v147, v148, v149);

    v68 = v107;
    if (v70 >= v150)
    {

      v16 = v170;
      v15 = v171;
      v151 = v178;
      goto LABEL_23;
    }
  }

  v167 = v133;
  sub_29579AE8C();
LABEL_37:
  v69 = v123;
LABEL_38:

  v16 = v170;
  v15 = v171;
LABEL_28:

  return v167;
}

- (int)_costNCC:(id)a3 dynCfg:(id *)a4 texDisparityIn:(id)a5 texGreenPixelsIn:(id)a6 texFocusPixelsIn:(id)a7 texTcLrcOut:(id)a8 resolutionScale:(float)a9 level:(unsigned int)a10
{
  v215 = a5;
  v17 = a6;
  v213 = a7;
  v18 = a8;
  v232 = 0u;
  v233 = 0u;
  v231 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v226 = 0u;
  v19 = a3;
  v22 = objc_msgSend_width(v17, v20, v21);
  v25 = objc_msgSend_height(v17, v23, v24);
  v26.i64[0] = v22;
  v26.i64[1] = v25;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  *&v230 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v26, v27))), 0x3F0000003F000000);
  v30 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v28, v29);
  objc_msgSend_lensFieldCurvatureA0(v30, v31, v32);
  LODWORD(v231) = v33;

  v36 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v34, v35);
  objc_msgSend_lensFieldCurvatureA1(v36, v37, v38);
  DWORD1(v231) = v39;

  v42 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v40, v41);
  objc_msgSend_lensFieldCurvatureA2(v42, v43, v44);
  DWORD2(v231) = v45;

  v48 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v46, v47);
  objc_msgSend_lensFieldCurvatureA3(v48, v49, v50);
  HIDWORD(v231) = v51;

  v54 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v52, v53);
  objc_msgSend_lensFieldCurvatureA4(v54, v55, v56);
  LODWORD(v232) = v57;

  v60 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v58, v59);
  objc_msgSend_circleOfConfusionGain(v60, v61, v62);
  DWORD1(v232) = v63;

  v66 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v64, v65);
  objc_msgSend_circleOfConfusionOffset(v66, v67, v68);
  *(&v232 + 1) = __PAIR64__(LODWORD(a9), v69);

  if (objc_msgSend_quadraBinningFactor(self, v70, v71) == 2)
  {
    v74 = 2;
  }

  else
  {
    v74 = 1;
  }

  if (objc_msgSend_quadraBinningFactor(self, v72, v73, v213))
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  objc_msgSend_sensorCropRect(self, v75, v76);
  v217 = v78;
  objc_msgSend_sensorCropRect(self, v79, v80);
  v81.f64[0] = v217;
  v81.f64[1] = v82;
  v83 = vmovn_s64(vcvtq_s64_f64(v81));
  objc_msgSend_sensorReadoutRect(self, v84, v85);
  v218 = v86;
  objc_msgSend_sensorReadoutRect(self, v87, v88);
  v89.f64[0] = v218;
  v89.f64[1] = v90;
  v91 = vmovn_s64(vcvtq_s64_f64(v89));
  objc_msgSend_totalSensorCropRect(self, v92, v93);
  v219 = v94;
  objc_msgSend_totalSensorCropRect(self, v95, v96);
  v97.f64[0] = v219;
  v97.f64[1] = v98;
  v99 = vmovn_s64(vcvtq_s64_f64(v97));
  objc_msgSend_totalSensorCropRect(self, v100, v101);
  v220 = v102;
  objc_msgSend_totalSensorCropRect(self, v103, v104);
  v105.f64[0] = v220;
  v105.f64[1] = v106;
  v107 = vdup_n_s32(v74);
  v108 = vmla_s32(v83, vadd_s32(v99, v91), v107);
  v109 = vmul_s32(v107, vmovn_s64(vcvtq_s64_f64(v105)));
  WORD5(v230) = (v108.i32[1] & 0xFFF0FFFF) / v77;
  WORD4(v230) = (v108.i32[0] & 0xFFF0FFFF) / v77;
  HIWORD(v230) = (v109.i32[1] & 0xFFFCFFFF) / v77;
  WORD6(v230) = (v109.i32[0] & 0xFFFCFFFF) / v77;
  v112 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v110, v111);
  v114 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, a10);
  v117 = objc_msgSend_costParameters(v114, v115, v116);
  objc_msgSend_step(v117, v118, v119);
  v216 = v120;

  if (self->_disparityCorrectionTex)
  {
    v123 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v121, v122);
    objc_msgSend_AGCHigh(v123, v124, v125);
    v127 = v126;
    v130 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v128, v129);
    objc_msgSend_AGCLow(v130, v131, v132);
    v134 = v127 - v133;

    if (v134 > 0.0)
    {
      imageAGC = self->_imageAGC;
      v136 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v121, v122);
      objc_msgSend_AGCLow(v136, v137, v138);
      v140 = fminf((imageAGC - v139) / v134, 1.0);

      v143 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v141, v142);
      v145 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, a10);
      v148 = objc_msgSend_costParameters(v145, v146, v147);
      objc_msgSend_stepLowlight(v148, v149, v150);
      v216 = v216 + (v140 * (v151 - v216));
    }
  }

  LODWORD(v152) = a4[1].var2.var0.var0;
  *&v153 = a4[1].var2.var0.var1;
  HIDWORD(v152) = a4[1].var2.var1.var0;
  *(&v153 + 1) = a4[1].var2.var1.var1;
  *&v226 = v152;
  *(&v226 + 1) = v153;
  v154 = vcvt_f32_u32(vadd_s32(*&a4->var0, 0x100000001));
  v155 = vdup_n_s32(0x4B400000u);
  v156 = vdup_n_s32(0xCB400000);
  v157 = vadd_f32(vadd_f32(vorr_s8(vand_s8(v108, 0xFFFF0000FFFFLL), v155), v156), 0xBF000000BF000000);
  __asm { FMOV            V1.2S, #1.0 }

  v163 = vadd_f32(vadd_f32(vorr_s8(vand_s8(v109, 0xFFFF0000FFFFLL), v155), v156), _D1);
  v221 = (objc_msgSend_width(v18, v121, v122) + 1);
  v166 = objc_msgSend_height(v18, v164, v165);
  v167.f32[0] = v221;
  v167.f32[1] = (v166 + 1);
  v222 = v167;
  if (objc_msgSend_quadraBinningFactor(self, v168, v169))
  {
    v172 = 2;
  }

  else
  {
    v172 = 1;
  }

  v173.i32[0] = LODWORD(a4[1].var2.var0.var1);
  v174.f32[0] = a4[1].var2.var0.var0;
  *&v175 = a4[1].var2.var0.var2;
  v174.f32[1] = a4[1].var2.var1.var0;
  v173.f32[1] = a4[1].var2.var1.var1;
  v176 = vmul_n_f32(v174, v172);
  v177 = vmla_n_f32(vmul_f32(v176, 0xBF000000BF000000), v173, v172);
  v178 = vdiv_f32(vmul_f32(v222, v176), v222);
  v179 = vdiv_f32(v154, v163);
  *&v227 = vmul_f32(v179, v178);
  *(&v227 + 1) = vmla_f32(0xBF000000BF000000, v179, vmla_f32(vsub_f32(v177, v157), 0x3F0000003F000000, v178));
  HIDWORD(v175) = LODWORD(a4[1].var2.var1.var2);
  *&v233 = v175;
  var0 = a4[1].var0;
  if (var0 == 1)
  {
    *&v228 = 3212836864;
    *(&v228 + 1) = LODWORD(v216);
    v181 = v214;
  }

  else
  {
    v181 = v214;
    if (var0 == 2)
    {
      v183 = 0x3F80000000000000;
      LODWORD(v184) = 0;
      *(&v184 + 1) = -v216;
    }

    else
    {
      if (var0 == 3)
      {
        LODWORD(v182) = 0;
        *(&v182 + 1) = v216;
        *&v228 = 0xBF80000000000000;
        *(&v228 + 1) = v182;
        goto LABEL_21;
      }

      v183 = 1065353216;
      HIDWORD(v184) = 0;
      *&v184 = -v216;
    }

    *&v228 = v183;
    *(&v228 + 1) = v184;
  }

LABEL_21:
  *&v229 = vdiv_f32(vcvt_f32_u32(vadd_s32(*&a4->var0, -1)), vcvt_f32_u32(vadd_s32(*&a4->var2.var0.var0, -1)));
  v185 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v170, v171);
  WORD4(v229) = objc_msgSend_rigidWindowSupport(v185, v186, v187) >> 1;

  v190 = objc_msgSend_computeCommandEncoder(v19, v188, v189);

  if (v190)
  {
    objc_msgSend_setComputePipelineState_(v190, v191, self->_costNCCPipelineState);
    objc_msgSend_setTexture_atIndex_(v190, v192, v181, 0);
    objc_msgSend_setTexture_atIndex_(v190, v193, v17, 1);
    v194 = v215;
    objc_msgSend_setTexture_atIndex_(v190, v195, v215, 2);
    objc_msgSend_setTexture_atIndex_(v190, v196, self->_disparityCorrectionTex, 3);
    objc_msgSend_setTexture_atIndex_(v190, v197, self->_binaryLambdaTexture, 4);
    objc_msgSend_setTexture_atIndex_(v190, v198, v18, 5);
    objc_msgSend_setBytes_length_atIndex_(v190, v199, &v226, 128, 0);
    v202 = objc_msgSend_threadExecutionWidth(self->_costNCCPipelineState, v200, v201);
    v205 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_costNCCPipelineState, v203, v204);
    v206 = *&a4->var2.var1.var1;
    *&v207 = v206;
    *(&v207 + 1) = HIDWORD(v206);
    v224 = v207;
    v225 = 1;
    v223[0] = v202;
    v223[1] = v205 / v202;
    v223[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v190, v208, &v224, v223);
    objc_msgSend_endEncoding(v190, v209, v210);
    v211 = 0;
  }

  else
  {
    sub_29579B280(&v224);
    v211 = v224;
    v194 = v215;
  }

  return v211;
}

- (int)_filterVert:(id)a3 texTcLrcIn:(id)a4 texTcLrcOut:(id)a5 dynCfg:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  v13 = a3;
  v16 = objc_msgSend_FPcostParameters(fpDisparityEstimatorParams, v14, v15);
  objc_msgSend_costMapAntialiasingStrength(v16, v17, v18);
  v20 = (v19 * LODWORD(a6->var2.var1.var2)) / a6->var1;

  *&v21 = roundf(v20 * 6.0);
  *&v22 = v20;
  LOWORD(v48) = objc_msgSend_computeFilterCurve_p3_array_(self, v23, v47, v21, v22);
  v26 = objc_msgSend_computeCommandEncoder(v13, v24, v25);

  if (v26)
  {
    objc_msgSend_setComputePipelineState_(v26, v27, self->_filterVertPipelineState);
    objc_msgSend_setTexture_atIndex_(v26, v28, v10, 0);
    objc_msgSend_setTexture_atIndex_(v26, v29, v11, 1);
    objc_msgSend_setBytes_length_atIndex_(v26, v30, v47, 272, 0);
    v33 = objc_msgSend_threadExecutionWidth(self->_filterVertPipelineState, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_filterVertPipelineState, v34, v35);
    v37 = *&a6->var2.var1.var1;
    *&v38 = v37;
    *(&v38 + 1) = HIDWORD(v37);
    v45 = v38;
    v46 = 1;
    v44[0] = v33;
    v44[1] = v36 / v33;
    v44[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v39, &v45, v44);
    objc_msgSend_endEncoding(v26, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_29579B32C(&v45);
    v42 = v45;
  }

  return v42;
}

- (int)_filterHorz:(id)a3 texTcLrcIn:(id)a4 texTcLrcOut:(id)a5 dynCfg:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  v13 = a3;
  v16 = objc_msgSend_FPcostParameters(fpDisparityEstimatorParams, v14, v15);
  objc_msgSend_costMapAntialiasingStrength(v16, v17, v18);
  v20 = (v19 * *&a6->var2.var1.var1) / *&a6->var0;

  *&v21 = roundf(v20 * 6.0);
  *&v22 = v20;
  LOWORD(v48) = objc_msgSend_computeFilterCurve_p3_array_(self, v23, v47, v21, v22);
  v26 = objc_msgSend_computeCommandEncoder(v13, v24, v25);

  if (v26)
  {
    objc_msgSend_setComputePipelineState_(v26, v27, self->_filterHorzPipelineState);
    objc_msgSend_setTexture_atIndex_(v26, v28, v10, 0);
    objc_msgSend_setTexture_atIndex_(v26, v29, v11, 1);
    objc_msgSend_setBytes_length_atIndex_(v26, v30, v47, 272, 0);
    v33 = objc_msgSend_threadExecutionWidth(self->_filterHorzPipelineState, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_filterHorzPipelineState, v34, v35);
    v37 = *&a6->var2.var1.var1;
    *&v38 = v37;
    *(&v38 + 1) = HIDWORD(v37);
    v45 = v38;
    v46 = 1;
    v44[0] = v33;
    v44[1] = v36 / v33;
    v44[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v39, &v45, v44);
    objc_msgSend_endEncoding(v26, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_29579B3D8(&v45);
    v42 = v45;
  }

  return v42;
}

- (int)_interpolateAndAccumulate:(id)a3 texTcLrcIn:(id)a4 dynCfg:(id *)a5
{
  v8 = a4;
  v101 = 0;
  v102 = 0;
  v9 = 56;
  if (!a5[1].var0)
  {
    v9 = 48;
  }

  v10 = *(&self->super.isa + v9);
  v11 = vadd_s32(*&a5->var2.var0.var0, -1);
  v102 = vadd_s32(*&a5->var0, -1);
  v103 = v11;
  v104 = vadd_s32(*&a5->var2.var0.var2, -1);
  v12 = a3;
  if (objc_msgSend_quadraBinningFactor(self, v13, v14) == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = vcvt_f32_u32(*&a5->var0);
  objc_msgSend_sensorCropRect(self, v15, v16);
  v93 = v19;
  objc_msgSend_sensorCropRect(self, v20, v21);
  v22.f64[0] = v93;
  v22.f64[1] = v23;
  v24 = vmovn_s64(vcvtq_s64_f64(v22));
  objc_msgSend_sensorReadoutRect(self, v25, v26);
  v94 = v27;
  objc_msgSend_sensorReadoutRect(self, v28, v29);
  v30.f64[0] = v94;
  v30.f64[1] = v31;
  v32 = vmovn_s64(vcvtq_s64_f64(v30));
  objc_msgSend_totalSensorCropRect(self, v33, v34);
  v95 = v35;
  objc_msgSend_totalSensorCropRect(self, v36, v37);
  v38.f64[0] = v95;
  v38.f64[1] = v39;
  v40 = vmovn_s64(vcvtq_s64_f64(v38));
  objc_msgSend_totalSensorCropRect(self, v41, v42);
  v96 = v43;
  objc_msgSend_totalSensorCropRect(self, v44, v45);
  v46.f64[0] = v96;
  v46.f64[1] = v47;
  v48 = vdup_n_s32(v17);
  v49 = vmla_s32(v24, vadd_s32(v40, v32), v48);
  *&v46.f64[0] = vmul_s32(v48, vmovn_s64(vcvtq_s64_f64(v46)));
  v50 = vdup_n_s32(0x4B400000u);
  v51 = vdup_n_s32(0xCB400000);
  v52 = vadd_f32(vadd_f32(vorr_s8((*&v49 & 0xFFF0FFFFFFF0FFFFLL), v50), v51), 0xBF000000BF000000);
  *&v46.f64[0] = vadd_f32(vorr_s8((*&v46.f64[0] & 0xFFFCFFFFFFFCFFFFLL), v50), v51);
  __asm { FMOV            V1.2S, #1.0 }

  v58 = vadd_f32(*&v46.f64[0], _D1);
  *&v96 = (objc_msgSend_width(v8, v59, v60) + 1);
  v63 = objc_msgSend_height(v8, v61, v62);
  v64.i32[0] = LODWORD(v96);
  v64.f32[1] = (v63 + 1);
  v97 = v64;
  if (objc_msgSend_quadraBinningFactor(self, v65, v66))
  {
    v69 = 2;
  }

  else
  {
    v69 = 1;
  }

  v70.i32[0] = LODWORD(a5[1].var2.var0.var1);
  v71.f32[0] = a5[1].var2.var0.var0;
  v71.f32[1] = a5[1].var2.var1.var0;
  v72 = vmul_n_f32(v71, v69);
  v70.f32[1] = a5[1].var2.var1.var1;
  v73 = vmla_n_f32(vmul_f32(v72, 0xBF000000BF000000), v70, v69);
  v74 = vdiv_f32(v97, vmul_f32(v97, v72));
  v75 = vdiv_f32(v58, v18);
  v105 = vmul_f32(v75, v74);
  v106 = vmla_f32(vmla_f32(0xBF000000BF000000, v74, vsub_f32(v52, v73)), v74, vmul_f32(v75, 0x3F0000003F000000));
  LOWORD(v101) = a5[1].var1;
  v76 = objc_msgSend_computeCommandEncoder(v12, v67, v68);

  if (v76)
  {
    objc_msgSend_setComputePipelineState_(v76, v77, v10);
    objc_msgSend_setTexture_atIndex_(v76, v78, v8, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v76, v79, self->_costsBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v76, v80, &v101, 48, 1);
    v83 = objc_msgSend_threadExecutionWidth(v10, v81, v82);
    v86 = objc_msgSend_maxTotalThreadsPerThreadgroup(v10, v84, v85);
    *&v87 = *&a5->var0;
    *(&v87 + 1) = HIDWORD(*&a5->var0);
    v99 = v87;
    v100 = 1;
    v98[0] = v83;
    v98[1] = v86 / v83;
    v98[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v76, v88, &v99, v98);
    objc_msgSend_endEncoding(v76, v89, v90);
    v91 = 0;
  }

  else
  {
    sub_29579B484(&v99);
    v91 = v99;
  }

  return v91;
}

- (int)_debugInterpolate:(id)a3 texTcLrcIn:(id)a4 dynCfg:(id *)a5 debugBuf:(id)a6
{
  v10 = a4;
  v11 = a6;
  v103 = 0;
  v104 = 0;
  v12 = self->_interpolateAndSetPipelineState;
  v13 = vadd_s32(*&a5->var2.var0.var0, -1);
  v104 = vadd_s32(*&a5->var0, -1);
  v105 = v13;
  v106 = vadd_s32(*&a5->var2.var0.var2, -1);
  v14 = a3;
  if (objc_msgSend_quadraBinningFactor(self, v15, v16) == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = vcvt_f32_u32(*&a5->var0);
  objc_msgSend_sensorCropRect(self, v17, v18);
  v95 = v21;
  objc_msgSend_sensorCropRect(self, v22, v23);
  v24.f64[0] = v95;
  v24.f64[1] = v25;
  v26 = vmovn_s64(vcvtq_s64_f64(v24));
  objc_msgSend_sensorReadoutRect(self, v27, v28);
  v96 = v29;
  objc_msgSend_sensorReadoutRect(self, v30, v31);
  v32.f64[0] = v96;
  v32.f64[1] = v33;
  v34 = vmovn_s64(vcvtq_s64_f64(v32));
  objc_msgSend_totalSensorCropRect(self, v35, v36);
  v97 = v37;
  objc_msgSend_totalSensorCropRect(self, v38, v39);
  v40.f64[0] = v97;
  v40.f64[1] = v41;
  v42 = vmovn_s64(vcvtq_s64_f64(v40));
  objc_msgSend_totalSensorCropRect(self, v43, v44);
  v98 = v45;
  objc_msgSend_totalSensorCropRect(self, v46, v47);
  v48.f64[0] = v98;
  v48.f64[1] = v49;
  v50 = vdup_n_s32(v19);
  v51 = vmla_s32(v26, vadd_s32(v42, v34), v50);
  *&v48.f64[0] = vmul_s32(v50, vmovn_s64(vcvtq_s64_f64(v48)));
  v52 = vdup_n_s32(0x4B400000u);
  v53 = vdup_n_s32(0xCB400000);
  v54 = vadd_f32(vadd_f32(vorr_s8((*&v51 & 0xFFF0FFFFFFF0FFFFLL), v52), v53), 0xBF000000BF000000);
  *&v48.f64[0] = vadd_f32(vorr_s8((*&v48.f64[0] & 0xFFFCFFFFFFFCFFFFLL), v52), v53);
  __asm { FMOV            V1.2S, #1.0 }

  v60 = vadd_f32(*&v48.f64[0], _D1);
  *&v98 = objc_msgSend_width(v10, v61, v62);
  v65 = objc_msgSend_height(v10, v63, v64);
  v66.i32[0] = LODWORD(v98);
  v66.f32[1] = v65;
  v99 = v66;
  if (objc_msgSend_quadraBinningFactor(self, v67, v68))
  {
    v71 = 2;
  }

  else
  {
    v71 = 1;
  }

  v72.i32[0] = LODWORD(a5[1].var2.var0.var1);
  v73.f32[0] = a5[1].var2.var0.var0;
  v73.f32[1] = a5[1].var2.var1.var0;
  v74 = vmul_n_f32(v73, v71);
  v72.f32[1] = a5[1].var2.var1.var1;
  v75 = vmla_n_f32(vmul_f32(v74, 0xBF000000BF000000), v72, v71);
  v76 = vdiv_f32(v99, vmul_f32(v99, v74));
  v77 = vdiv_f32(v60, v20);
  v107 = vmul_f32(v77, v76);
  v108 = vmla_f32(vmla_f32(0xBF000000BF000000, v76, vsub_f32(v54, v75)), v76, vmul_f32(v77, 0x3F0000003F000000));
  LOWORD(v103) = a5[1].var1;
  v78 = objc_msgSend_computeCommandEncoder(v14, v69, v70);

  if (v78)
  {
    objc_msgSend_setComputePipelineState_(v78, v79, v12);
    objc_msgSend_setTexture_atIndex_(v78, v80, v10, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v78, v81, v11, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v78, v82, &v103, 48, 1);
    v85 = objc_msgSend_threadExecutionWidth(v12, v83, v84);
    v88 = objc_msgSend_maxTotalThreadsPerThreadgroup(v12, v86, v87);
    *&v89 = *&a5->var0;
    *(&v89 + 1) = HIDWORD(*&a5->var0);
    v101 = v89;
    v102 = 1;
    v100[0] = v85;
    v100[1] = v88 / v85;
    v100[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v78, v90, &v101, v100);
    objc_msgSend_endEncoding(v78, v91, v92);
    v93 = 0;
  }

  else
  {
    sub_29579B530(&v101);
    v93 = v101;
  }

  return v93;
}

- (int)_proximityOperator:(id)a3 dynCfg:(id *)a4 texDisparityIn:(id)a5 texOutputResUOut:(id)a6 texOutputHesUOut:(id)a7 level:(unsigned int)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v171 = 0u;
  v172 = 0u;
  v170 = 0u;
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  v18 = a3;
  v21 = objc_msgSend_levelsParameters(fpDisparityEstimatorParams, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, a8);
  v26 = objc_msgSend_costParameters(v23, v24, v25);
  objc_msgSend_lambda(v26, v27, v28);
  v165 = v29;

  v32 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v30, v31);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, a8);
  v37 = objc_msgSend_costParameters(v34, v35, v36);
  objc_msgSend_lambda_foreground(v37, v38, v39);
  v166 = v40;

  v43 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v41, v42);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, a8);
  v48 = objc_msgSend_costParameters(v45, v46, v47);
  objc_msgSend_lambda_background(v48, v49, v50);
  v167 = v51;

  v54 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v52, v53);
  objc_msgSend_costEpsilon(v54, v55, v56);
  v162[0] = v57;

  v60 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v58, v59);
  objc_msgSend_foregroundPush(v60, v61, v62);
  DWORD1(v170) = v63;

  v66 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v64, v65);
  objc_msgSend_backgroundPush(v66, v67, v68);
  DWORD2(v170) = v69;

  v72 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v70, v71);
  v74 = objc_msgSend_objectAtIndexedSubscript_(v72, v73, a8);
  v77 = objc_msgSend_costParameters(v74, v75, v76);
  objc_msgSend_step(v77, v78, v79);
  v162[1] = v80;

  var1 = a4[1].var1;
  v83 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v81, v82);
  v164 = objc_msgSend_nView(v83, v84, v85);

  v88 = objc_msgSend_width(v14, v86, v87);
  v91 = objc_msgSend_height(v14, v89, v90);
  v92.i64[0] = v88;
  v92.i64[1] = v91;
  v93.i64[0] = -1;
  v93.i64[1] = -1;
  *&v171 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v92, v93))), 0x3F0000003F000000);
  v96 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v94, v95);
  objc_msgSend_radialExponent(v96, v97, v98);
  v169 = v99;

  v102 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v100, v101);
  objc_msgSend_radialGain(v102, v103, v104);
  v168 = v105;

  v108 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v106, v107);
  objc_msgSend_radialMin(v108, v109, v110);
  LODWORD(v170) = v111;

  width = self->_outputDisparityResolution.width;
  v114 = objc_msgSend_width(v15, v112, v113);
  v115.f64[0] = width;
  v115.f64[1] = self->_outputDisparityResolution.height;
  __asm { FMOV            V0.2D, #-1.0 }

  v121 = vcvt_f32_f64(vaddq_f64(v115, _Q0));
  v124 = objc_msgSend_height(v15, v122, v123);
  v125.i64[0] = v114;
  v125.i64[1] = v124;
  v126.i64[0] = -1;
  v126.i64[1] = -1;
  v127 = vdiv_f32(v121, vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v125, v126))));
  v130 = objc_msgSend_width(self->_segmentationTexture, v128, v129);
  v131 = self->_outputDisparityResolution.width;
  *&width = v130 / v131;
  v134 = objc_msgSend_height(self->_segmentationTexture, v132, v133);
  height = self->_outputDisparityResolution.height;
  *(&v171 + 1) = v127;
  *&v172 = __PAIR64__(v134 / height, LODWORD(width));
  v138 = objc_msgSend_computeCommandEncoder(v18, v136, v137);

  if (v138)
  {
    objc_msgSend_setComputePipelineState_(v138, v139, self->_proximityOperatorPipelineState);
    objc_msgSend_setTexture_atIndex_(v138, v140, v14, 0);
    objc_msgSend_setTexture_atIndex_(v138, v141, self->_segmentationTexture, 1);
    objc_msgSend_setTexture_atIndex_(v138, v142, v15, 2);
    objc_msgSend_setTexture_atIndex_(v138, v143, v16, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v138, v144, self->_costsBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v138, v145, v162, 80, 1);
    v148 = objc_msgSend_threadExecutionWidth(self->_proximityOperatorPipelineState, v146, v147);
    v151 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_proximityOperatorPipelineState, v149, v150);
    *&v152 = *&a4->var0;
    *(&v152 + 1) = HIDWORD(*&a4->var0);
    v160 = v152;
    v161 = 1;
    v159[0] = v148;
    v159[1] = v151 / v148;
    v159[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v138, v153, &v160, v159);
    objc_msgSend_endEncoding(v138, v154, v155);
    v156 = 0;
  }

  else
  {
    sub_29579B5DC(&v160);
    v156 = v160;
  }

  return v156;
}

- (id)CreateKernelWithConst:(id)a3 constants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_library(self->_mtlContext, v8, v9);
  v12 = v10;
  if (v7)
  {
    v23 = 0;
    v13 = objc_msgSend_newFunctionWithName_constantValues_error_(v10, v11, v6, v7, &v23);
    v14 = v23;

    if (v13)
    {
LABEL_3:
      v17 = objc_msgSend_device(self->_mtlContext, v15, v16);
      v22 = v14;
      v19 = objc_msgSend_newComputePipelineStateWithFunction_error_(v17, v18, v13, &v22);
      v20 = v22;

      v14 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = objc_msgSend_newFunctionWithName_(v10, v11, v6);

    v14 = 0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (int)computeFilterCurve:(float)a3 p3:(float)a4 array:(float *)a5
{
  v5 = a5;
  v6 = vcvtms_s32_f32(a3) | 1;
  if (v6 >= 63)
  {
    v6 = 63;
  }

  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v22 = -1.0 / ((a4 + a4) * a4);
  v21 = vdupq_n_s64(v7 - 1);
  v8 = vdup_n_s32((v7 - 1) >> 1);
  v9 = v7 + 1;
  v10 = 0x100000000;
  v11 = xmmword_2957A3580;
  v12 = a5 + 1;
  v13 = 0.0;
  v20 = vdupq_n_s64(2uLL);
  do
  {
    v25 = vmovn_s64(vcgeq_u64(v21, v11));
    v26 = v11;
    v14 = vcvt_f32_s32(vsub_s32(v10, v8));
    v15 = vmul_n_f32(vmul_f32(v14, v14), v22);
    v23 = v15.f32[0];
    v24 = expf(v15.f32[1]);
    *v16.i32 = expf(v23);
    *&v16.i32[1] = v24;
    if (v25.i8[0])
    {
      *(v12 - 1) = *v16.i32;
    }

    if (v25.i8[4])
    {
      *v12 = v24;
    }

    v17 = vbsl_s8(v25, v16, 0x8000000080000000);
    v13 = (v13 + *v17.i32) + *&v17.i32[1];
    v11 = vaddq_s64(v26, v20);
    v10 = vadd_s32(v10, 0x200000002);
    v12 += 2;
    v9 -= 2;
  }

  while (v9);
  v18 = v7;
  do
  {
    *v5 = *v5 / v13;
    ++v5;
    --v18;
  }

  while (v18);
  return v7;
}

- (unint64_t)computeAlignedSize:(unint64_t)a3 pixelFormat:(unint64_t)a4
{
  v6 = objc_msgSend_device(self->_mtlContext, a2, a3);
  v8 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v6, v7, a4);

  if (a3 % v8)
  {
    return v8 + a3 - a3 % v8;
  }

  else
  {
    return a3;
  }
}

- (int)_setCorrectionMapCoefficients:(float *)a3
{
  v5 = 0;
  correctionBasisCoefficients = self->_correctionBasisCoefficients;
  do
  {
    if (a3)
    {
      v7 = a3[v5];
      v8 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, a2, a3);
      v11 = objc_msgSend_correctionCoefficientsWeights(v8, v9, v10);
      v13 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v5);
      objc_msgSend_floatValue(v13, v14, v15);
      correctionBasisCoefficients[v5] = v7 * v16;
    }

    else
    {
      correctionBasisCoefficients[v5] = 0.0;
    }

    ++v5;
  }

  while (v5 != 20);
  return 0;
}

- (int)_generateCorrectionMap
{
  v3 = MEMORY[0x29EDB9F48];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v9 = objc_msgSend_resourcePath(v6, v7, v8);

  if (!v9)
  {
    sub_29579BA94();
LABEL_14:
    v71 = -12780;
    goto LABEL_10;
  }

  v11 = MEMORY[0x29EDB8DA0];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"%@/zernike_basis.f16", v9);
  v14 = objc_msgSend_dataWithContentsOfFile_(v11, v13, v12);

  if (!v14)
  {
    sub_29579BA1C();
    goto LABEL_14;
  }

  if (objc_msgSend_length(v14, v15, v16) != 1297920)
  {
    sub_29579B688(v14);
    goto LABEL_14;
  }

  v18 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v17, 25, 208, 156, 0);
  if (!v18)
  {
    sub_29579B958(v14, &v74);
LABEL_18:
    v71 = v74;
    goto LABEL_10;
  }

  v20 = v18;
  objc_msgSend_setUsage_(v18, v19, 3);
  v23 = objc_msgSend_device(self->_mtlContext, v21, v22);
  v25 = objc_msgSend_newTextureWithDescriptor_(v23, v24, v20);
  disparityCorrectionTex = self->_disparityCorrectionTex;
  self->_disparityCorrectionTex = v25;

  if (!self->_disparityCorrectionTex)
  {
    sub_29579B884(v14, v20, &v74);
    goto LABEL_18;
  }

  v28 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v27, 25, 208, 3120, 0);

  v31 = objc_msgSend_device(self->_mtlContext, v29, v30);
  v33 = objc_msgSend_newTextureWithDescriptor_(v31, v32, v28);

  if (!v33)
  {
    sub_29579B7B0(v14, v28, &v74);
    goto LABEL_18;
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = xmmword_2957A3590;
  v78 = 1;
  v34 = v14;
  v37 = objc_msgSend_bytes(v34, v35, v36);
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v33, v38, &v74, 0, 0, v37, 416, 1297920);
  v41 = objc_msgSend_commandQueue(self->_mtlContext, v39, v40);
  v44 = objc_msgSend_commandBuffer(v41, v42, v43);

  if (v44)
  {
    v47 = objc_msgSend_computeCommandEncoder(v44, v45, v46);
    if (v47)
    {
      v49 = v47;
      objc_msgSend_setComputePipelineState_(v47, v48, self->_correctionMapGenerationPipelineState);
      objc_msgSend_setTexture_atIndex_(v49, v50, v33, 0);
      objc_msgSend_setTexture_atIndex_(v49, v51, self->_disparityCorrectionTex, 1);
      objc_msgSend_setBytes_length_atIndex_(v49, v52, self->_correctionBasisCoefficients, 80, 0);
      v55 = objc_msgSend_threadExecutionWidth(self->_correctionMapGenerationPipelineState, v53, v54);
      v58 = v9;
      v59 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_correctionMapGenerationPipelineState, v56, v57) / v55;
      v62 = objc_msgSend_width(self->_disparityCorrectionTex, v60, v61);
      v65 = objc_msgSend_height(self->_disparityCorrectionTex, v63, v64);
      v74 = v62;
      v75 = v65;
      v76 = 1;
      v73[0] = v55;
      v73[1] = v59;
      v9 = v58;
      v73[2] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v49, v66, &v74, v73);
      objc_msgSend_endEncoding(v49, v67, v68);
      objc_msgSend_commit(v44, v69, v70);

      v71 = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      v71 = FigSignalErrorAtGM();
    }
  }

  else
  {
    sub_29579B718(v14, v33, v28);
    v71 = -12786;
  }

LABEL_10:

  return v71;
}

- (CGSize)outputDisparityResolution
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)H0Metadata
{
  v2 = *&self->_H0Metadata.xRawBase;
  v3 = *&self->_H0Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)H1Metadata
{
  v2 = *&self->_H1Metadata.xRawBase;
  v3 = *&self->_H1Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)V0Metadata
{
  v2 = *&self->_V0Metadata.xRawBase;
  v3 = *&self->_V0Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)V1Metadata
{
  v2 = *&self->_V1Metadata.xRawBase;
  v3 = *&self->_V1Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (CGRect)sensorCropRect
{
  x = self->_sensorCropRect.origin.x;
  y = self->_sensorCropRect.origin.y;
  width = self->_sensorCropRect.size.width;
  height = self->_sensorCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sensorReadoutRect
{
  x = self->_sensorReadoutRect.origin.x;
  y = self->_sensorReadoutRect.origin.y;
  width = self->_sensorReadoutRect.size.width;
  height = self->_sensorReadoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)totalSensorCropRect
{
  x = self->_totalSensorCropRect.origin.x;
  y = self->_totalSensorCropRect.origin.y;
  width = self->_totalSensorCropRect.size.width;
  height = self->_totalSensorCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)_setupBuffer
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  v5 = sub_29578C980();
  self->_res_pxbuf = v5;
  if (v5 && (v6 = sub_29578C980(), (self->_Hes_pxbuf = v6) != 0))
  {
    return 0;
  }

  else
  {
    return -12786;
  }
}

- (int)_setupTexture
{
  v4 = objc_msgSend_pyramidDimensions(self->_imagePyramid, a2, v2);
  if (objc_msgSend_countScales(self->_imagePyramid, v5, v6) < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (v4 + 8);
  for (i = self; ; i = (i + 8))
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    mtlContext = self->_mtlContext;
    res_pxbuf = self->_res_pxbuf;
    v14 = sub_29578C944();
    v18 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v15, v16, v17, v14);
    v19 = i->_res_tex[0];
    i->_res_tex[0] = v18;

    if (!i->_res_tex[0])
    {
      break;
    }

    v20 = self->_mtlContext;
    Hes_pxbuf = self->_Hes_pxbuf;
    v22 = sub_29578C944();
    v26 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v23, v24, v25, v22);
    v27 = i->_Hes_tex[0];
    i->_Hes_tex[0] = v26;

    if (!i->_Hes_tex[0])
    {
      break;
    }

    ++v7;
    v8 += 2;
    if (v7 >= objc_msgSend_countScales(self->_imagePyramid, v28, v29))
    {
      return 0;
    }
  }

  return -12786;
}

@end