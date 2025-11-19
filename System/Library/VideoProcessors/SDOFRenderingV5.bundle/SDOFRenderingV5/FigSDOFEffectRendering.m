@interface FigSDOFEffectRendering
- (BOOL)sanityChecksSamplingWithImage:(__CVBuffer *)a3 inputFaceAdjustedBlurMap:(__CVBuffer *)a4 inputAlphaMask:(__CVBuffer *)a5 inputGainMap:(__CVBuffer *)a6 resultImage:(__CVBuffer *)a7;
- (FigSDOFEffectRendering)initWithCommandQueue:(id)a3;
- (int)_prewarm:(id)a3;
- (int)loadModelsWithTuningParameters:(id)a3;
- (int)prewarmWithTuningParameters:(id)a3;
- (int)runSamplingWithImage:(opaqueCMSampleBuffer *)a3 inputPixelBuffer:(__CVBuffer *)a4 inputFaceAdjustedBlurMap:(__CVBuffer *)a5 inputAlphaMask:(__CVBuffer *)a6 inputGainMap:(__CVBuffer *)a7 resultImage:(__CVBuffer *)a8;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation FigSDOFEffectRendering

- (int)prewarmWithTuningParameters:(id)a3
{
  v4 = a3;
  v5 = [FigSDOFEffectRendering alloc];
  v8 = objc_msgSend_initWithCommandQueue_(v5, v6, self->_metalCommandQueue, v7);
  v11 = objc_msgSend__prewarm_(v8, v9, v4, v10);

  return v11;
}

- (int)_prewarm:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v11 = *MEMORY[0x29EDC0298];
    v12 = v4;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v5, &v12, &v11, 1);
    objc_msgSend_setOptionsInternal_isPrewarm_(self, v8, v7, 1);

    v9 = 0;
  }

  else
  {
    sub_295EB7640(&v13);
    v9 = v13;
  }

  return v9;
}

- (FigSDOFEffectRendering)initWithCommandQueue:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = FigSDOFEffectRendering;
  v7 = [(FigSDOFEffectRendering *)&v42 init];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_bundleWithPath_(MEMORY[0x29EDB9F48], v5, @"/System/Library/VideoProcessors/CCPortrait.bundle", v6);
  if (!v8)
  {
    sub_295EB78D4();
LABEL_18:

    goto LABEL_19;
  }

  v9 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v9, v10, v8, v4);
  v12 = *(v7 + 9);
  *(v7 + 9) = inited;

  v16 = *(v7 + 9);
  if (!v16)
  {
    sub_295EB785C();
    goto LABEL_18;
  }

  v17 = objc_msgSend_commandQueue(v16, v13, v14, v15);
  v18 = *(v7 + 13);
  *(v7 + 13) = v17;

  v19 = *(v7 + 11);
  *(v7 + 11) = 0;

  v20 = [SimpleLensModel alloc];
  v23 = objc_msgSend_initWithMetalContext_(v20, v21, *(v7 + 9), v22);
  if (!v23)
  {
    sub_295EB77DC(v8);
LABEL_19:
    v40 = 0;
    goto LABEL_11;
  }

  v24 = v23;
  v25 = [ControlLogicForXHLRB alloc];
  v28 = objc_msgSend_initWithMetalContext_(v25, v26, *(v7 + 9), v27);
  if (!v28)
  {
    sub_295EB7764();
LABEL_17:

    goto LABEL_18;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v29 = qword_2A18AAF40;
  v47 = qword_2A18AAF40;
  if (!qword_2A18AAF40)
  {
    v43[0] = MEMORY[0x29EDCA5F8];
    v43[1] = 3221225472;
    v43[2] = sub_295EB0DCC;
    v43[3] = &unk_29EDEA5B0;
    v43[4] = &v44;
    sub_295EB0DCC(v43);
    v29 = v45[3];
  }

  v30 = v29;
  _Block_object_dispose(&v44, 8);
  v31 = [v29 alloc];
  v35 = objc_msgSend_commandQueue(*(v7 + 9), v32, v33, v34);
  v38 = objc_msgSend_initWithMetalQueue_(v31, v36, v35, v37);
  v39 = *(v7 + 8);
  *(v7 + 8) = v38;

  if (!*(v7 + 8))
  {
    sub_295EB76EC();
    goto LABEL_17;
  }

LABEL_10:
  v40 = v7;
LABEL_11:

  return v40;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = FigSDOFEffectRendering;
  [(FigSDOFEffectRendering *)&v5 dealloc];
}

- (void)releaseResources
{
  objc_msgSend_deallocateResources(self->_resources, a2, v2, v3);
  resources = self->_resources;
  self->_resources = 0;
}

- (int)runSamplingWithImage:(opaqueCMSampleBuffer *)a3 inputPixelBuffer:(__CVBuffer *)a4 inputFaceAdjustedBlurMap:(__CVBuffer *)a5 inputAlphaMask:(__CVBuffer *)a6 inputGainMap:(__CVBuffer *)a7 resultImage:(__CVBuffer *)a8
{
  if (!a3)
  {
    sub_295EB82E0(v193);
LABEL_44:
    v187 = 0;
    v57 = 0;
    v53 = 0;
    v9 = 0;
LABEL_46:
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v48 = 0;
    v184 = 0;
    v186 = 0;
    goto LABEL_60;
  }

  if (!a5)
  {
    sub_295EB8234(v193);
    goto LABEL_44;
  }

  v9 = a8;
  if (!a8)
  {
    sub_295EB8188(v193);
    v187 = 0;
    v57 = 0;
    v53 = 0;
    goto LABEL_46;
  }

  if (!self->_tuningParameters)
  {
    sub_295EB8110();
LABEL_49:
    v187 = 0;
    v188 = 0;
    v57 = 0;
    v53 = 0;
    v9 = 0;
    v189 = 0;
    v190 = 0;
    v48 = 0;
    v184 = 0;
    v186 = 0;
    v178 = -12780;
    goto LABEL_41;
  }

  if ((objc_msgSend_sanityChecksSamplingWithImage_inputFaceAdjustedBlurMap_inputAlphaMask_inputGainMap_resultImage_(self, a2, a4, a5, a6, a7, a8) & 1) == 0)
  {
    sub_295EB7AF0();
    goto LABEL_49;
  }

  v183 = a7;
  v17 = objc_msgSend_parameterSetForMode_(self->_tuningParameters, v15, 0, v16);
  v21 = v17;
  if (v17)
  {
    objc_msgSend_renderingConfig(v17, v18, v19, v20);
    v22 = v192;
  }

  else
  {
    v22 = 0;
  }

  v23 = CMGetAttachment(a3, *MEMORY[0x29EDC0850], 0);
  v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x29EDC07F0], v25);
  v30 = v26;
  v185 = v21;
  if (v26)
  {
    objc_msgSend_floatValue(v26, v27, v28, v29);
    if (v34 > 0.0)
    {
      objc_msgSend_floatValue(v30, v31, v32, v33);
      v22 = v35;
    }
  }

  v184 = v30;
  v36 = NSSelectorFromString(&cfstr_Getunifiedrend.isa);
  v37 = sub_295EB0948();
  v40 = objc_msgSend_methodForSelector_(v37, v38, v36, v39);
  v41 = sub_295EB0948();
  v186 = v23;
  v44 = objc_msgSend_objectForKeyedSubscript_(v23, v42, @"RenderingParameters", v43);
  v45 = v40(v41, v36, v44);

  v190 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v46, a4, 10, 17, 0);
  if (!v190)
  {
    sub_295EB8064(v193);
    v187 = 0;
    v188 = 0;
    v57 = 0;
    v53 = 0;
    v9 = 0;
    v189 = 0;
    v190 = 0;
    v178 = v193[0];
    v48 = v185;
    goto LABEL_41;
  }

  objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v47, a4, 30, 17, 1);
  v189 = v48 = v185;
  if (!v189)
  {
    sub_295EB7FB8(v193);
    v187 = 0;
    v188 = 0;
    v57 = 0;
    v53 = 0;
    v9 = 0;
    v189 = 0;
    goto LABEL_60;
  }

  metalContext = self->_metalContext;
  if (v45)
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v49, a5, 30, 17, 0);
  }

  else
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v49, a5, 10, 17, 0);
  }
  v188 = ;
  if (!v188)
  {
    sub_295EB7F0C(v193);
    v187 = 0;
    v188 = 0;
    v57 = 0;
    v53 = 0;
LABEL_54:
    v9 = 0;
    goto LABEL_60;
  }

  v53 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v51, v9, 10, 22, 0);
  if (!v53)
  {
    sub_295EB7E60(v193);
    v187 = 0;
    v57 = 0;
    goto LABEL_54;
  }

  v9 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v52, v9, 30, 22, 1);
  if (!v9)
  {
    sub_295EB7DB4(v193);
    goto LABEL_59;
  }

  if (a6)
  {
    v187 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v54, a6, 10, 17, 0);
    v56 = v183;
    if (v187)
    {
      if (v183)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    sub_295EB7B68(v193);
LABEL_59:
    v187 = 0;
    v57 = 0;
    goto LABEL_60;
  }

  v187 = 0;
  v56 = v183;
  if (v183)
  {
LABEL_23:
    v57 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v54, v56, 10, 17, 0);
    if (!v57)
    {
      sub_295EB7C14(v193);
LABEL_60:
      v178 = v193[0];
      goto LABEL_41;
    }

    goto LABEL_27;
  }

LABEL_26:
  v57 = 0;
LABEL_27:
  v58 = objc_msgSend_activateResources(self->_resources, v54, v56, v55);
  v59 = CMGetAttachment(a3, *MEMORY[0x29EDC0878], 0);
  v63 = v59;
  if (v59)
  {
    objc_msgSend_floatValue(v59, v60, v61, v62);
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v194 = 0;
  v195 = &v194;
  v196 = 0x2050000000;
  v66 = qword_2A1390238;
  v197 = qword_2A1390238;
  if (!qword_2A1390238)
  {
    v193[0] = MEMORY[0x29EDCA5F8];
    v193[1] = 3221225472;
    v193[2] = sub_295EB0E7C;
    v193[3] = &unk_29EDEA5B0;
    v193[4] = &v194;
    sub_295EB0E7C(v193);
    v66 = v195[3];
  }

  v67 = v66;
  _Block_object_dispose(&v194, 8);
  v70 = objc_alloc_init(v66);
  if (v70)
  {
    v71 = objc_msgSend_objectForKeyedSubscript_(v186, v68, *MEMORY[0x29EDC07F8], v69);
    objc_msgSend_setMetadata_(v70, v72, v71, v73);

    objc_msgSend_metadata(v70, v74, v75, v76);
    LODWORD(v77) = v22;
    objc_msgSend_setSimulatedAperture_(v70, v78, v79, v80, v77);
    if (v185)
    {
      objc_msgSend_renderingConfig(v185, v81, v82, v83);
      LODWORD(v84) = v191;
    }

    else
    {
      v84 = 0.0;
    }

    objc_msgSend_setMaxBlur_(v70, v81, v82, v83, v84);
    LODWORD(v85) = v65;
    objc_msgSend_setLumaNoiseAmplitude_(v70, v86, v87, v88, v85);
    objc_msgSend_setInputBlurMap_(v70, v89, v188, v90);
    objc_msgSend_setInputAlpha_(v70, v91, v187, v92);
    objc_msgSend_setInputGainMap_(v70, v93, v57, v94);
    objc_msgSend_setInputImageLuma_(v70, v95, v190, v96);
    objc_msgSend_setInputImageChroma_(v70, v97, v189, v98);
    objc_msgSend_setOutputImageLuma_(v70, v99, v53, v100);
    objc_msgSend_setOutputImageChroma_(v70, v101, v9, v102);
    v106 = objc_msgSend_blurMapSmoothing_intermediate_tex(self->_resources, v103, v104, v105);
    v110 = objc_msgSend_intermediates(v70, v107, v108, v109);
    objc_msgSend_setInputIntermediateTex_(v110, v111, v106, v112);

    v116 = objc_msgSend_blurMapSmoothing_result_tex(self->_resources, v113, v114, v115);
    v120 = objc_msgSend_intermediates(v70, v117, v118, v119);
    objc_msgSend_setInputSmoothedBlurmap_(v120, v121, v116, v122);

    v126 = objc_msgSend_rendering_halfResRGBA1_tex(self->_resources, v123, v124, v125);
    v130 = objc_msgSend_intermediates(v70, v127, v128, v129);
    objc_msgSend_setInputHalfResTex1_(v130, v131, v126, v132);

    v136 = objc_msgSend_rendering_halfResRGBA2_tex(self->_resources, v133, v134, v135);
    v140 = objc_msgSend_intermediates(v70, v137, v138, v139);
    objc_msgSend_setInputHalfResTex2_(v140, v141, v136, v142);

    v146 = objc_msgSend_rendering_halfResRGBAsRGB1_texalias(self->_resources, v143, v144, v145);
    v150 = objc_msgSend_intermediates(v70, v147, v148, v149);
    objc_msgSend_setInputHalfResTex1sRGB_(v150, v151, v146, v152);

    v156 = objc_msgSend_rendering_halfResRGBAsRGB2_texalias(self->_resources, v153, v154, v155);
    v160 = objc_msgSend_intermediates(v70, v157, v158, v159);
    objc_msgSend_setInputHalfResTex2sRGB_(v160, v161, v156, v162);

    v166 = objc_msgSend_rendering_halfResRG_tex(self->_resources, v163, v164, v165);
    v170 = objc_msgSend_intermediates(v70, v167, v168, v169);
    objc_msgSend_setInputHalfResRGTex_(v170, v171, v166, v172);

    v178 = objc_msgSend_enqueueRenderingUsingArgs_(self->_applyBlurmap, v173, v70, v174);
    if (v178)
    {
      sub_295EB7CC0();
    }

    else
    {
      objc_msgSend_waitForSchedule(self->_metalContext, v175, v176, v177);
    }

    v48 = v185;
  }

  else
  {
    sub_295EB7D3C();
    v178 = -12786;
  }

  if (v58)
  {
    objc_msgSend_deactivateResources(self->_resources, v179, v180, v181);
  }

LABEL_41:

  return v178;
}

- (int)loadModelsWithTuningParameters:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [FigSDOFRenderingTuningParameters alloc];
    v8 = objc_msgSend_initWithTuningDictionary_(v5, v6, v4, v7);

    v11 = objc_msgSend_parameterSetForMode_(v8, v9, 0, v10);
    v15 = v11;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    if (v11)
    {
      objc_msgSend_hairnetConfig(v11, v12, v13, v14, v17, v18, v19, v20);
    }

    objc_msgSend_loadModels_(self->_applyBlurmap, v12, &v17, v14);
  }

  return 0;
}

- (BOOL)sanityChecksSamplingWithImage:(__CVBuffer *)a3 inputFaceAdjustedBlurMap:(__CVBuffer *)a4 inputAlphaMask:(__CVBuffer *)a5 inputGainMap:(__CVBuffer *)a6 resultImage:(__CVBuffer *)a7
{
  if (!a3 || !a4 || !a7)
  {
    fig_log_get_emitter();
    sub_295EADC88();
    FigDebugAssert3();
    goto LABEL_26;
  }

  inputImageWidth = self->_inputImageWidth;
  inputImageHeight = self->_inputImageHeight;
  if (CVPixelBufferGetWidth(a3) != inputImageWidth)
  {
    goto LABEL_24;
  }

  if (CVPixelBufferGetHeight(a3) != inputImageHeight)
  {
    goto LABEL_24;
  }

  v16 = self->_inputImageWidth;
  v15 = self->_inputImageHeight;
  if (CVPixelBufferGetWidth(a7) != v16)
  {
    goto LABEL_24;
  }

  if (CVPixelBufferGetHeight(a7) != v15)
  {
    goto LABEL_24;
  }

  upsampledShiftMapWidth = self->_upsampledShiftMapWidth;
  upsampledShiftMapHeight = self->_upsampledShiftMapHeight;
  if (CVPixelBufferGetWidth(a4) != upsampledShiftMapWidth || CVPixelBufferGetHeight(a4) != upsampledShiftMapHeight)
  {
    goto LABEL_24;
  }

  v19 = sub_295EAEADC(a3);
  if (v19)
  {
    v19 = sub_295EAEADC(a7);
    if (v19)
    {
      if (CVPixelBufferGetPixelFormatType(a4) != 1278226488 && CVPixelBufferGetPixelFormatType(a4) != 843264056)
      {
        goto LABEL_24;
      }

      if (a5)
      {
        v21 = self->_upsampledShiftMapWidth;
        v20 = self->_upsampledShiftMapHeight;
        if (CVPixelBufferGetWidth(a5) != v21 || CVPixelBufferGetHeight(a5) != v20)
        {
          goto LABEL_24;
        }

        v22 = CVPixelBufferGetPixelFormatType(a5) == 1278226488;
        LOBYTE(v19) = v22;
        if (!a6 || !v22)
        {
          return v19;
        }

LABEL_21:
        v24 = self->_upsampledShiftMapWidth;
        v23 = self->_upsampledShiftMapHeight;
        if (CVPixelBufferGetWidth(a6) == v24 && CVPixelBufferGetHeight(a6) == v23)
        {
          LOBYTE(v19) = CVPixelBufferGetPixelFormatType(a6) == 1278226488;
          return v19;
        }

LABEL_24:
        LOBYTE(v19) = 0;
        return v19;
      }

      if (a6)
      {
        goto LABEL_21;
      }

LABEL_26:
      LOBYTE(v19) = 1;
    }
  }

  return v19;
}

@end