@interface ControlLogicForXHLRB
- (ControlLogicForXHLRB)initWithMetalContext:(id)context;
- (int)calculateXHLRBParamsWithInputMetadata:(const xhlrb_input_image_metadata *)metadata controlLogicParams:(const xhlrb_control_logic_params *)params inputSlmParams:(id)slmParams inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams;
- (int)enqueueControlLogicWithInputMetadata:(const xhlrb_input_image_metadata *)metadata controlLogicParams:(const xhlrb_control_logic_params *)params inputSlmParams:(id)slmParams inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams;
- (int)loadShaders;
- (int)validateInputsWithInputMetadata:(const xhlrb_input_image_metadata *)metadata inputSlmParams:(id)params inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams;
- (void)constAddFp16:(id)fp16 name:(id)name value:(float)_S0;
@end

@implementation ControlLogicForXHLRB

- (ControlLogicForXHLRB)initWithMetalContext:(id)context
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = ControlLogicForXHLRB;
  v6 = [(ControlLogicForXHLRB *)&v21 init];
  v7 = v6;
  if (!v6)
  {
    sub_295EB55A0(&v22);
    goto LABEL_9;
  }

  v6->_shadersLoaded = 0;
  objc_storeStrong(&v6->_mtlCtx, context);
  if (objc_msgSend_loadShaders(v7, v8, v9, v10))
  {
    sub_295EB5478();
    goto LABEL_10;
  }

  v14 = objc_msgSend_device(v7->_mtlCtx, v11, v12, v13);
  v16 = objc_msgSend_newBufferWithLength_options_(v14, v15, 4, 0);
  nClippedPixelsBuf = v7->_nClippedPixelsBuf;
  v7->_nClippedPixelsBuf = v16;

  if (!v7->_nClippedPixelsBuf)
  {
    sub_295EB54F4(&v22);
LABEL_9:
    if (!v22)
    {
      goto LABEL_4;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v18 = v7;
LABEL_5:
  v19 = v18;

  return v19;
}

- (void)constAddFp16:(id)fp16 name:(id)name value:(float)_S0
{
  __asm { FCVT            H0, S0 }

  v10 = _H0;
  objc_msgSend_setConstantValue_type_withName_(fp16, a2, &v10, 16, name);
}

- (int)loadShaders
{
  self->_shadersLoaded = 0;
  v3 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v4 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlCtx, a2, @"xhlrb_count_clipped", 0);
  count_clipped_kernel = self->_count_clipped_kernel;
  self->_count_clipped_kernel = v4;

  if (self->_count_clipped_kernel)
  {
    v6 = 0;
    self->_shadersLoaded = 1;
  }

  else
  {
    sub_295EB564C(&v8);
    v6 = v8;
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

- (int)validateInputsWithInputMetadata:(const xhlrb_input_image_metadata *)metadata inputSlmParams:(id)params inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams
{
  paramsCopy = params;
  mapCopy = map;
  lumaCopy = luma;
  chromaCopy = chroma;
  v20 = chromaCopy;
  if (!metadata)
  {
    sub_295EB5DB0(&v43);
LABEL_26:
    v41 = v43;
    goto LABEL_14;
  }

  if (!paramsCopy)
  {
    sub_295EB5D04(&v43);
    goto LABEL_26;
  }

  if (!mapCopy)
  {
    sub_295EB5C58(&v43);
    goto LABEL_26;
  }

  if (!lumaCopy)
  {
    sub_295EB5BAC(&v43);
    goto LABEL_26;
  }

  if (!chromaCopy)
  {
    sub_295EB5B00(&v43);
    goto LABEL_26;
  }

  if (!outputParams)
  {
    sub_295EB5A54(&v43);
    goto LABEL_26;
  }

  if (objc_msgSend_pixelFormat(mapCopy, v17, v18, v19) != 25 && objc_msgSend_pixelFormat(mapCopy, v21, v22, v23) != 55)
  {
    sub_295EB56F8(&v43);
    goto LABEL_26;
  }

  if (objc_msgSend_pixelFormat(lumaCopy, v21, v22, v23) != 10)
  {
    sub_295EB57A4(&v43);
    goto LABEL_26;
  }

  if (objc_msgSend_pixelFormat(v20, v24, v25, v26) != 30)
  {
    sub_295EB5850(&v43);
    goto LABEL_26;
  }

  v30 = objc_msgSend_width(lumaCopy, v27, v28, v29);
  v34 = objc_msgSend_height(lumaCopy, v31, v32, v33);
  if (objc_msgSend_width(v20, v35, v36, v37) != v30 >> 1)
  {
    sub_295EB58FC(&v43);
    goto LABEL_26;
  }

  if (objc_msgSend_height(v20, v38, v39, v40) != v34 >> 1)
  {
    sub_295EB59A8(&v43);
    goto LABEL_26;
  }

  v41 = 0;
LABEL_14:

  return v41;
}

- (int)enqueueControlLogicWithInputMetadata:(const xhlrb_input_image_metadata *)metadata controlLogicParams:(const xhlrb_control_logic_params *)params inputSlmParams:(id)slmParams inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams
{
  slmParamsCopy = slmParams;
  mapCopy = map;
  lumaCopy = luma;
  chromaCopy = chroma;
  if (!params)
  {
    sub_295EB5FD0(&v24);
    v22 = v24;
    goto LABEL_11;
  }

  v20 = objc_msgSend_validateInputsWithInputMetadata_inputSlmParams_inputShiftMap_inputLuma_inputChroma_outputParams_(self, v18, metadata, slmParamsCopy, mapCopy, lumaCopy, chromaCopy, outputParams);
  if (v20)
  {
    v22 = v20;
    sub_295EB5E5C();
    goto LABEL_11;
  }

  if (!self->_shadersLoaded)
  {
    sub_295EB5ED8();
    v22 = -12784;
    goto LABEL_11;
  }

  if (params->mode == 1)
  {
    v22 = 0;
    outputParams->var0 = params->maxColourDiffusionIterations;
    *&outputParams->var1 = *&params->maxPreFilterGain;
    *&outputParams->var5 = *&params->maxObsceneWeightGain;
LABEL_10:
    outputParams->var7 = metadata->var2;
    goto LABEL_11;
  }

  if (params->mode)
  {
    v22 = 0;
    *&outputParams->var0 = 0;
    *&outputParams->var2 = 0;
    outputParams->var6 = 0.0;
    *&outputParams->var4 = 0;
    goto LABEL_10;
  }

  v22 = objc_msgSend_calculateXHLRBParamsWithInputMetadata_controlLogicParams_inputSlmParams_inputShiftMap_inputLuma_inputChroma_outputParams_(self, v21, metadata, params, slmParamsCopy, mapCopy, lumaCopy, chromaCopy, outputParams);
  if (v22)
  {
    sub_295EB5F54();
  }

LABEL_11:

  return v22;
}

- (int)calculateXHLRBParamsWithInputMetadata:(const xhlrb_input_image_metadata *)metadata controlLogicParams:(const xhlrb_control_logic_params *)params inputSlmParams:(id)slmParams inputShiftMap:(id)map inputLuma:(id)luma inputChroma:(id)chroma outputParams:(xhlrb_control_params *)outputParams
{
  slmParamsCopy = slmParams;
  mapCopy = map;
  lumaCopy = luma;
  chromaCopy = chroma;
  *&outputParams->var0 = 0;
  *&outputParams->var2 = 0;
  outputParams->var6 = 0.0;
  *&outputParams->var4 = 0;
  maxBGBlur = params->maxBGBlur;
  v20 = params->blurRadiusT0 / maxBGBlur;
  maxIntensityT0 = params->maxIntensityT0;
  v116[0] = 1.0 / ((params->blurRadiusT1 / maxBGBlur) - v20);
  v116[1] = -(v116[0] * v20);
  minIntensityT0 = params->minIntensityT0;
  v117 = 1.0 / (params->maxIntensityT1 - maxIntensityT0);
  v118 = -(v117 * maxIntensityT0);
  v119 = 1.0 / (params->minIntensityT1 - minIntensityT0);
  v120 = -(v119 * minIntensityT0);
  v26 = sub_295EAE430(fminf(fmaxf(((metadata->var0 * metadata->var1) - params->exposureScoreT0) / (params->exposureScoreT1 - params->exposureScoreT0), 0.0), 1.0));
  v28 = v27 * v26;
  if ((v27 * v26) <= 0.0)
  {
    v109 = 0;
  }

  else
  {
    metadataCopy = metadata;
    v29 = objc_msgSend_commandQueue(self->_mtlCtx, v23, v24, v25);
    v33 = objc_msgSend_commandBuffer(v29, v30, v31, v32);

    if (v33)
    {
      *objc_msgSend_contents(self->_nClippedPixelsBuf, v34, v35, v36) = 0;
      v40 = objc_msgSend_computeCommandEncoder(v33, v37, v38, v39);
      if (v40)
      {
        v43 = v40;
        objc_msgSend_setComputePipelineState_(v40, v41, self->_count_clipped_kernel, v42);
        v112 = slmParamsCopy;
        objc_msgSend_setBuffer_offset_atIndex_(v43, v44, slmParamsCopy, 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v43, v45, self->_nClippedPixelsBuf, 0, 1);
        objc_msgSend_setBytes_length_atIndex_(v43, v46, v116, 24, 2);
        v111 = mapCopy;
        objc_msgSend_setTexture_atIndex_(v43, v47, mapCopy, 0);
        objc_msgSend_setTexture_atIndex_(v43, v48, lumaCopy, 1);
        objc_msgSend_setTexture_atIndex_(v43, v49, chromaCopy, 2);
        v53 = objc_msgSend_threadExecutionWidth(self->_count_clipped_kernel, v50, v51, v52);
        v57 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_count_clipped_kernel, v54, v55, v56) / v53;
        v115[0] = objc_msgSend_width(chromaCopy, v58, v59, v60) >> 1;
        v115[1] = objc_msgSend_height(chromaCopy, v61, v62, v63) >> 1;
        v115[2] = 1;
        v114[0] = v53;
        v114[1] = v57;
        v114[2] = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v43, v64, v115, v114);
        objc_msgSend_endEncoding(v43, v65, v66, v67);
        if (*MEMORY[0x29EDB9270])
        {
          v71 = objc_msgSend_commandQueue(v33, v68, v69, v70);
          v75 = objc_msgSend_commandBuffer(v71, v72, v73, v74);

          objc_msgSend_setLabel_(v75, v76, @"KTRACE_MTLCMDBUF", v77);
          objc_msgSend_addCompletedHandler_(v75, v78, &unk_2A1D12428, v79);
          objc_msgSend_commit(v75, v80, v81, v82);
          objc_msgSend_addCompletedHandler_(v33, v83, &unk_2A1D12448, v84);
        }

        objc_msgSend_commit(v33, v68, v69, v70);
        objc_msgSend_waitUntilCompleted(v33, v85, v86, v87);
        v91 = objc_msgSend_width(chromaCopy, v88, v89, v90);
        v95 = (objc_msgSend_height(chromaCopy, v92, v93, v94) * v91);
        v99 = objc_msgSend_contents(self->_nClippedPixelsBuf, v96, v97, v98);
        v100 = sub_295EAE430(fminf(fmaxf((params->clippedPixelsT1 + ((*v99 * -100.0) / v95)) / (params->clippedPixelsT1 - params->clippedPixelsT0), 0.0), 1.0));
        v102 = v101 * v100;
        maxColourDiffusionIterations = params->maxColourDiffusionIterations;
        var2 = metadataCopy->var2;
        outputParams->var7 = var2;
        *v105.i32 = v28 * v102;
        outputParams->var0 = llroundf(*v105.i32 * maxColourDiffusionIterations);
        v106 = *v105.i32 * (fminf(var2, 4.0) * 0.25);
        v107 = v105;
        *&v107.i32[1] = v106;
        v108 = vzip1q_s32(v107, v107);
        v108.i32[2] = v105.i32[0];
        *&outputParams->var1 = vmulq_f32(*&params->maxPreFilterGain, v108);
        *&outputParams->var5 = vmul_n_f32(*&params->maxObsceneWeightGain, v106);

        v109 = 0;
        mapCopy = v111;
        slmParamsCopy = v112;
      }

      else
      {
        sub_295EAE444();
        FigDebugAssert3();
        sub_295EAE444();
        sub_295EAAA84();
        v109 = FigSignalErrorAtGM();
      }
    }

    else
    {
      sub_295EAE444();
      FigDebugAssert3();
      sub_295EAE444();
      sub_295EAAA84();
      v109 = FigSignalErrorAtGM();
    }
  }

  return v109;
}

@end