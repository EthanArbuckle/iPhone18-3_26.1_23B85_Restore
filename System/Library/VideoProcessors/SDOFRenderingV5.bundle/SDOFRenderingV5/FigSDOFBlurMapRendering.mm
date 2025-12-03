@interface FigSDOFBlurMapRendering
- (BOOL)detectFacesOnTele:(__CVBuffer *)tele meta:(id)meta to:(id *)to maxFacesCount:(int)count facesCount:(int *)facesCount;
- (BOOL)sanityChecksBlurMapWithImage:(__CVBuffer *)image shiftMap:(__CVBuffer *)map segmentationMask:(__CVBuffer *)mask semanticSegmentationHairMask:(__CVBuffer *)hairMask semanticSegmentationGlassesMask:(__CVBuffer *)glassesMask resultFaceAdjBlurMap:(__CVBuffer *)blurMap;
- (FigSDOFBlurMapRendering)initWithCommandQueue:(id)queue;
- (int)_prewarm:(id)_prewarm;
- (int)computeBlurMapWithImage:(opaqueCMSampleBuffer *)image shiftMap:(__CVBuffer *)map personSegmentationMask:(__CVBuffer *)mask hairSemanticSegmentationMask:(__CVBuffer *)segmentationMask glassesSemanticSegmentationMask:(__CVBuffer *)semanticSegmentationMask resultFaceAdjustedBlurMap:(__CVBuffer *)blurMap;
- (int)prewarmWithTuningParameters:(id)parameters;
- (int)setOptionsInternal:(id)internal isPrewarm:(BOOL)prewarm;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation FigSDOFBlurMapRendering

- (int)prewarmWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [FigSDOFBlurMapRendering alloc];
  v8 = objc_msgSend_initWithCommandQueue_(v5, v6, self->_metalCommandQueue, v7);
  v11 = objc_msgSend__prewarm_(v8, v9, parametersCopy, v10);

  return v11;
}

- (int)_prewarm:(id)_prewarm
{
  _prewarmCopy = _prewarm;
  v6 = _prewarmCopy;
  if (_prewarmCopy)
  {
    v11 = *MEMORY[0x29EDC0298];
    v12 = _prewarmCopy;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v5, &v12, &v11, 1);
    objc_msgSend_setOptionsInternal_isPrewarm_(self, v8, v7, 1);

    v9 = 0;
  }

  else
  {
    sub_295EB665C(&v13);
    v9 = v13;
  }

  return v9;
}

- (FigSDOFBlurMapRendering)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = FigSDOFBlurMapRendering;
  v7 = [(FigSDOFBlurMapRendering *)&v31 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_bundleWithPath_(MEMORY[0x29EDB9F48], v5, @"/System/Library/VideoProcessors/CCPortrait.bundle", v6);
  if (!v8)
  {
    sub_295EB67F8();
LABEL_11:

    v29 = 0;
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v9, v10, v8, queueCopy);
  metalContext = v7->_metalContext;
  v7->_metalContext = inited;

  v16 = v7->_metalContext;
  if (!v16)
  {
    sub_295EB6780();
    goto LABEL_11;
  }

  v17 = objc_msgSend_commandQueue(v16, v13, v14, v15);
  metalCommandQueue = v7->_metalCommandQueue;
  v7->_metalCommandQueue = v17;

  tuningParameters = v7->_tuningParameters;
  v7->_tuningParameters = 0;

  v20 = objc_alloc(sub_295EAE6D0());
  v24 = objc_msgSend_commandQueue(v7->_metalContext, v21, v22, v23);
  v27 = objc_msgSend_initWithMetalQueue_(v20, v25, v24, v26);
  makeBlurMap = v7->_makeBlurMap;
  v7->_makeBlurMap = v27;

  if (!v7->_makeBlurMap)
  {
    sub_295EB6708();
    goto LABEL_11;
  }

LABEL_6:
  v29 = v7;
LABEL_7:

  return v29;
}

- (int)setOptionsInternal:(id)internal isPrewarm:(BOOL)prewarm
{
  internalCopy = internal;
  objc_storeStrong(&self->_options, internal);
  v9 = objc_msgSend_objectForKeyedSubscript_(internalCopy, v7, *MEMORY[0x29EDC0298], v8);
  v10 = v9;
  if (v9)
  {
    v11 = [FigSDOFRenderingTuningParameters alloc];
    v9 = objc_msgSend_initWithTuningDictionary_(v11, v12, v10, v13);
  }

  tuningParameters = self->_tuningParameters;
  self->_tuningParameters = v9;

  v17 = objc_msgSend_parameterSetForMode_(self->_tuningParameters, v15, 0, v16);
  if (v17)
  {
    v21 = v17;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    objc_msgSend_disparityRefinementConfig(v17, v18, v19, v20);
    isPrewarm = objc_msgSend_setOptions_isPrewarm_(self->_makeBlurMap, v22, v35, 0);
    if (isPrewarm)
    {
      v31 = isPrewarm;
      sub_295EB6870(isPrewarm, v21);
    }

    else
    {
      v26 = objc_msgSend_parameterSetForMode_(self->_tuningParameters, v24, 1, v25);

      if (v26)
      {
        LODWORD(v34) = 0;
        objc_msgSend_disparityRefinementConfig(v26, v27, v28, v29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v34);
        v31 = objc_msgSend_setOptions_isPrewarm_(self->_makeBlurMap, v30, &v33, 0);
        if (v31)
        {
          sub_295EB68FC();
        }
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else
  {
    sub_295EB6978();
    v31 = -12780;
  }

  return v31;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = FigSDOFBlurMapRendering;
  [(FigSDOFBlurMapRendering *)&v5 dealloc];
}

- (void)releaseResources
{
  objc_msgSend_deallocateResources(self->_makeBlurMap, a2, v2, v3);
  objc_msgSend_deallocateResources(self->_resources, v5, v6, v7);
  resources = self->_resources;
  self->_resources = 0;
}

- (BOOL)detectFacesOnTele:(__CVBuffer *)tele meta:(id)meta to:(id *)to maxFacesCount:(int)count facesCount:(int *)facesCount
{
  metaCopy = meta;
  v15 = metaCopy;
  if (!tele)
  {
    sub_295EB6D40();
    goto LABEL_10;
  }

  if (!metaCopy)
  {
    sub_295EB6CC8();
    goto LABEL_10;
  }

  if (!to)
  {
    sub_295EB6C50();
    goto LABEL_10;
  }

  if (!facesCount)
  {
    sub_295EB6BD8();
    goto LABEL_10;
  }

  v18 = 1;
  v19 = 1;
  if (!sub_295EB0ED4(metaCopy, &v18, v13, v14) || (sub_295EB0F2C(v18, &v19) & 1) == 0)
  {
    sub_295EB6B60();
    goto LABEL_10;
  }

  if (!sub_295EB0F50(self->_faceLandmarksArray, v19, count, to, facesCount))
  {
    *facesCount = 0;
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (int)computeBlurMapWithImage:(opaqueCMSampleBuffer *)image shiftMap:(__CVBuffer *)map personSegmentationMask:(__CVBuffer *)mask hairSemanticSegmentationMask:(__CVBuffer *)segmentationMask glassesSemanticSegmentationMask:(__CVBuffer *)semanticSegmentationMask resultFaceAdjustedBlurMap:(__CVBuffer *)blurMap
{
  size.width = 0.0;
  size.height = 0.0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(blurMap);
  objc_msgSend_clearDiagnostics(self->_diagnostics, v15, v16, v17);
  ImageBuffer = CMSampleBufferGetImageBuffer(image);
  v19 = CMGetAttachment(image, *MEMORY[0x29EDBFF98], 0);
  target = image;
  v20 = CMGetAttachment(image, *MEMORY[0x29EDC0850], 0);
  v23 = v20;
  if (!v20)
  {
    sub_295EB75C8();
    v277 = 0;
    v278 = 0;
    v75 = 0;
    v273 = 0;
    v274 = 0;
    v272 = 0;
    v276 = 0;
    v266 = 0;
    v82 = 0;
    v79 = 0;
    v268 = 0;
LABEL_71:
    v267 = 0;
LABEL_77:
    v265 = 0;
    v96 = 0;
    v236 = -12780;
    goto LABEL_66;
  }

  v275 = PixelFormatType;
  v24 = objc_msgSend_objectForKeyedSubscript_(v20, v21, *MEMORY[0x29EDC0800], v22);
  v268 = v24;
  if (objc_msgSend_length(v24, v25, v26, v27) != 48)
  {
    sub_295EB6DB8();
LABEL_70:
    v277 = 0;
    v278 = 0;
    v75 = 0;
    v273 = 0;
    v274 = 0;
    v272 = 0;
    v276 = 0;
    v266 = 0;
    v82 = 0;
    v79 = 0;
    goto LABEL_71;
  }

  memset(v290, 0, sizeof(v290));
  objc_msgSend_getBytes_length_(v24, v28, v290, 48);
  v31 = objc_msgSend_objectForKeyedSubscript_(v23, v29, *MEMORY[0x29EDC0808], v30);
  if (!v31)
  {
    sub_295EB7550();
    goto LABEL_70;
  }

  v267 = v31;
  if (!CGSizeMakeWithDictionaryRepresentation(v31, &size))
  {
    sub_295EB6E30();
LABEL_76:
    v277 = 0;
    v278 = 0;
    v75 = 0;
    v273 = 0;
    v274 = 0;
    v272 = 0;
    v276 = 0;
    v266 = 0;
    v82 = 0;
    v79 = 0;
    goto LABEL_77;
  }

  v34 = v23;
  objc_msgSend_objectForKeyedSubscript_(v19, v32, @"inputScale", v33);
  v36 = v35 = v19;

  v279 = v35;
  if (v36)
  {
    v39 = objc_msgSend_objectForKeyedSubscript_(v35, v37, @"inputScale", v38);
    objc_msgSend_floatValue(v39, v40, v41, v42);
    v44 = v43;
  }

  else
  {
    v44 = 1.0;
  }

  v19 = v35;
  v23 = v34;
  if (!self->_tuningParameters)
  {
    sub_295EB74D8();
    goto LABEL_76;
  }

  if ((objc_msgSend_sanityChecksBlurMapWithImage_shiftMap_segmentationMask_semanticSegmentationHairMask_semanticSegmentationGlassesMask_resultFaceAdjBlurMap_(self, v37, ImageBuffer, map, mask, segmentationMask, semanticSegmentationMask, blurMap) & 1) == 0)
  {
    sub_295EB6EA8();
    goto LABEL_76;
  }

  if (!self->_options)
  {
    sub_295EB7460();
    goto LABEL_76;
  }

  v270 = v34;
  v45 = *(MEMORY[0x29EDB90E0] + 16);
  rect.origin = *MEMORY[0x29EDB90E0];
  rect.size = v45;
  v46 = CMGetAttachment(target, *MEMORY[0x29EDC0870], 0);
  CGRectMakeWithDictionaryRepresentation(v46, &rect);
  v288 = 0;
  v48 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v51 = objc_msgSend_detectFacesOnTele_meta_to_maxFacesCount_facesCount_(self, v47, ImageBuffer, v279, v286, 4, &v288);
  if (*v48 == 1)
  {
    kdebug_trace();
  }

  if (v51)
  {
    v52 = v288;
  }

  else
  {
    v52 = 0;
    v288 = 0;
  }

  v23 = v34;
  v285[0] = &unk_2A1D13D60;
  v53 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v49, v52, v50);
  v285[1] = v53;
  v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, v285, 2);

  CMSetAttachment(target, *MEMORY[0x29EDC0860], v55, 1u);
  v58 = objc_msgSend_parameterSetForMode_(self->_tuningParameters, v56, 0, v57);
  v269 = v58;
  if (v58)
  {
    objc_msgSend_simpleLensModelConfig(v58, v59, v60, v61);
    v62 = v284;
  }

  else
  {
    v62 = 0;
  }

  v19 = v279;
  v63 = objc_msgSend_objectForKeyedSubscript_(v270, v59, *MEMORY[0x29EDC07F0], v61);
  v67 = v63;
  if (v63)
  {
    objc_msgSend_floatValue(v63, v64, v65, v66);
    if (v70 > 0.0)
    {
      objc_msgSend_floatValue(v67, v64, v68, v69);
      v62 = v71;
    }
  }

  v278 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v64, ImageBuffer, 10, 17, 0);
  v265 = v67;
  v266 = v55;
  if (!v278)
  {
    sub_295EB73B4(&v292);
    v278 = 0;
LABEL_80:
    v277 = 0;
    v75 = 0;
LABEL_83:
    v273 = 0;
    v274 = 0;
    v272 = 0;
    v276 = 0;
    v82 = 0;
    v96 = 0;
    v236 = v292;
    v79 = v269;
    goto LABEL_66;
  }

  v277 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v72, ImageBuffer, 30, 17, 1);
  if (!v277)
  {
    sub_295EB7308(&v292);
    goto LABEL_80;
  }

  v75 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v73, map, 25, 17, 0);
  if (!v75)
  {
    sub_295EB725C(&v292);
    goto LABEL_83;
  }

  metalContext = self->_metalContext;
  if (v275 == 843264056)
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v74, blurMap, 30, 23, 0);
  }

  else
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v74, blurMap, 10, 23, 0);
  }
  v276 = ;
  if (!v276)
  {
    sub_295EB71B0(&v292);
    goto LABEL_83;
  }

  if (mask)
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v77, mask, 10, 17, 0);
    v274 = v79 = v269;
    if (!v274)
    {
      sub_295EB6F20(&v292);
      v274 = 0;
      goto LABEL_87;
    }

    if (segmentationMask)
    {
      goto LABEL_34;
    }

LABEL_37:
    v273 = 0;
    goto LABEL_38;
  }

  v274 = 0;
  v79 = v269;
  if (!segmentationMask)
  {
    goto LABEL_37;
  }

LABEL_34:
  v273 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v77, segmentationMask, 10, 17, 0);
  if (!v273)
  {
    sub_295EB6FCC(&v292);
LABEL_87:
    v273 = 0;
    goto LABEL_88;
  }

LABEL_38:
  semanticSegmentationMaskCopy = semanticSegmentationMask;
  if (semanticSegmentationMask)
  {
    v272 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v77, semanticSegmentationMask, 10, 17, 0);
    if (!v272)
    {
      sub_295EB7078(&v292);
LABEL_88:
      v272 = 0;
      v82 = 0;
      v96 = 0;
      v236 = v292;
      goto LABEL_66;
    }
  }

  else
  {
    v272 = 0;
  }

  v264 = objc_msgSend_activateResources(self->_resources, v77, semanticSegmentationMaskCopy, v78);
  v81 = *&v290[0].width;
  v82 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v288 >= 1)
  {
    v83 = 0;
    v84 = &v287;
    do
    {
      v297 = 0;
      v298 = &v297;
      v299 = 0x2050000000;
      v85 = qword_2A1390220;
      v300 = qword_2A1390220;
      if (!qword_2A1390220)
      {
        v292 = MEMORY[0x29EDCA5F8];
        v293 = 3221225472;
        v294 = sub_295EB0D1C;
        v295 = &unk_29EDEA5B0;
        v296 = &v297;
        sub_295EB0D1C(&v292);
        v85 = v298[3];
      }

      v86 = v85;
      _Block_object_dispose(&v297, 8);
      v87 = [v85 alloc];
      v91 = objc_msgSend_initWithCenterPos_leftEyeCenterPos_rightEyeCenterPos_chinCenterPos_(v87, v88, v89, v90, *(v84 - 4), *(v84 - 3), *(v84 - 2), *(v84 - 1), *v84, v84[1], v84[2], v84[3]);
      objc_msgSend_addObject_(v82, v92, v91, v93);

      ++v83;
      v84 += 8;
    }

    while (v83 < v288);
  }

  v297 = 0;
  v298 = &v297;
  v299 = 0x2050000000;
  v94 = qword_2A1390228;
  v300 = qword_2A1390228;
  v79 = v269;
  v23 = v270;
  if (!qword_2A1390228)
  {
    v292 = MEMORY[0x29EDCA5F8];
    v293 = 3221225472;
    v294 = sub_295EB0D74;
    v295 = &unk_29EDEA5B0;
    v296 = &v297;
    sub_295EB0D74(&v292);
    v94 = v298[3];
  }

  v95 = v94;
  _Block_object_dispose(&v297, 8);
  v96 = objc_alloc_init(v94);
  v99 = objc_msgSend_objectForKeyedSubscript_(v270, v97, *MEMORY[0x29EDC07F8], v98);
  objc_msgSend_setMetadata_(v96, v100, v99, v101);

  objc_msgSend_metadata(v96, v102, v103, v104);
  LODWORD(v105) = v62;
  objc_msgSend_setSimulatedAperture_(v96, v106, v107, v108, v105);
  HIDWORD(v112) = HIDWORD(size.height);
  *&v112 = size.height;
  width = size.width;
  if (*&v112 < width)
  {
    *&v112 = size.width;
  }

  *&v112 = v81 / *&v112;
  objc_msgSend_setNormalizedFocalLength_(v96, v109, v110, v111, v112);
  if (v269)
  {
    objc_msgSend_simpleLensModelConfig(v269, v114, v115, v116);
    LODWORD(v117) = v283;
  }

  else
  {
    v117 = 0.0;
  }

  objc_msgSend_setMaxBlur_(v96, v114, v115, v116, v117);
  *&v118 = v44;
  objc_msgSend_setInputScale_(v96, v119, v120, v121, v118);
  objc_msgSend_setFocusWindow_(v96, v122, v123, v124, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  objc_msgSend_setFacePoints_(v96, v125, v82, v126);
  objc_msgSend_setInputImageLuma_(v96, v127, v278, v128);
  objc_msgSend_setInputImageChroma_(v96, v129, v277, v130);
  objc_msgSend_setInputShiftMap_(v96, v131, v75, v132);
  objc_msgSend_setInputSegmentation_(v96, v133, v274, v134);
  objc_msgSend_setInputHair_(v96, v135, v273, v136);
  v19 = v279;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setInputGlasses_(v96, v137, v272, v138);
  }

  objc_msgSend_setOutputBlurMap_(v96, v137, v276, v138);
  v142 = objc_msgSend_faceMask_adjBlurmap_tex(self->_resources, v139, v140, v141);
  v146 = objc_msgSend_intermediates(v96, v143, v144, v145);
  objc_msgSend_setInputFaceMaskAdjBlurTex_(v146, v147, v142, v148);

  v152 = objc_msgSend_disparityRefinement_weightsX_tex(self->_resources, v149, v150, v151);
  v156 = objc_msgSend_intermediates(v96, v153, v154, v155);
  objc_msgSend_setInputWeightsXTex_(v156, v157, v152, v158);

  v162 = objc_msgSend_disparityRefinement_weightsY_tex(self->_resources, v159, v160, v161);
  v166 = objc_msgSend_intermediates(v96, v163, v164, v165);
  objc_msgSend_setInputWeightsYTex_(v166, v167, v162, v168);

  v172 = objc_msgSend_disparityRefinement_preproc_tex(self->_resources, v169, v170, v171);
  v176 = objc_msgSend_intermediates(v96, v173, v174, v175);
  objc_msgSend_setInputPreprocTex_(v176, v177, v172, v178);

  v182 = objc_msgSend_disparityRefinement_sampledD_tex(self->_resources, v179, v180, v181);
  v186 = objc_msgSend_intermediates(v96, v183, v184, v185);
  objc_msgSend_setInputSampledDTex_(v186, v187, v182, v188);

  v192 = objc_msgSend_disparityRefinement_blurmap_tex(self->_resources, v189, v190, v191);
  v196 = objc_msgSend_intermediates(v96, v193, v194, v195);
  objc_msgSend_setInputDisparityRefineBlurTex_(v196, v197, v192, v198);

  v202 = objc_msgSend_blurMapRefinement_alphaMaskDelta(self->_resources, v199, v200, v201);
  v206 = objc_msgSend_intermediates(v96, v203, v204, v205);
  objc_msgSend_setInputAlphaMaskDeltaTex_(v206, v207, v202, v208);

  v212 = objc_msgSend_blurMapRefinement_hairMaskDelta(self->_resources, v209, v210, v211);
  v216 = objc_msgSend_intermediates(v96, v213, v214, v215);
  objc_msgSend_setInputHairMaskDeltaTex_(v216, v217, v212, v218);

  v222 = objc_msgSend_blurMapRefinement_intermediate(self->_resources, v219, v220, v221);
  v226 = objc_msgSend_intermediates(v96, v223, v224, v225);
  objc_msgSend_setInputBlurRefineIntermediateTex_(v226, v227, v222, v228);

  v231 = objc_msgSend_enqueueBlurMapGenerationUsingArgs_(self->_makeBlurMap, v229, v96, v230);
  v236 = v231;
  if (v231)
  {
    if ((sub_295EB7124(v231, v264) & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v237 = *MEMORY[0x29EDC0858];
    LODWORD(v235) = v62;
    v238 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v232, v233, v234, v235);
    CMSetAttachment(target, v237, v238, 1u);
    v242 = *MEMORY[0x29EDC0888];
    v243 = MEMORY[0x29EDBA070];
    if (v269)
    {
      objc_msgSend_simpleLensModelConfig(v269, v239, v240, v241);
      LODWORD(v244) = v282;
    }

    else
    {
      v244 = 0.0;
    }

    v245 = objc_msgSend_numberWithFloat_(v243, v239, v240, v241, v244);
    CMSetAttachment(target, v242, v245, 1u);
    v249 = *MEMORY[0x29EDC0880];
    v250 = MEMORY[0x29EDBA070];
    if (v269)
    {
      objc_msgSend_simpleLensModelConfig(v269, v246, v247, v248);
      LODWORD(v251) = v281;
    }

    else
    {
      v251 = 0.0;
    }

    v252 = objc_msgSend_numberWithFloat_(v250, v246, v247, v248, v251);
    CMSetAttachment(target, v249, v252, 1u);
    if (!v264)
    {
      v236 = 0;
      goto LABEL_66;
    }
  }

  objc_msgSend_deactivateResources(self->_resources, v253, v254, v255);
LABEL_66:
  diagnostics = self->_diagnostics;
  v257 = v19;
  v261 = objc_msgSend_createDiagnosticsDictionary(diagnostics, v258, v259, v260);
  objc_msgSend_setObject_forKeyedSubscript_(v257, v262, v261, @"SDOF");

  return v236;
}

- (BOOL)sanityChecksBlurMapWithImage:(__CVBuffer *)image shiftMap:(__CVBuffer *)map segmentationMask:(__CVBuffer *)mask semanticSegmentationHairMask:(__CVBuffer *)hairMask semanticSegmentationGlassesMask:(__CVBuffer *)glassesMask resultFaceAdjBlurMap:(__CVBuffer *)blurMap
{
  if (!image || !map || !blurMap)
  {
    fig_log_get_emitter();
    sub_295EADC88();
    FigDebugAssert3();
    goto LABEL_33;
  }

  inputImageWidth = self->_inputImageWidth;
  inputImageHeight = self->_inputImageHeight;
  if (CVPixelBufferGetWidth(image) != inputImageWidth || CVPixelBufferGetHeight(image) != inputImageHeight)
  {
    goto LABEL_31;
  }

  inputShiftMapWidth = self->_inputShiftMapWidth;
  inputShiftMapHeight = self->_inputShiftMapHeight;
  if (CVPixelBufferGetWidth(map) != inputShiftMapWidth || CVPixelBufferGetHeight(map) != inputShiftMapHeight)
  {
    upsampledShiftMapWidth = self->_upsampledShiftMapWidth;
    upsampledShiftMapHeight = self->_upsampledShiftMapHeight;
    if (CVPixelBufferGetWidth(map) != upsampledShiftMapWidth || CVPixelBufferGetHeight(map) != upsampledShiftMapHeight)
    {
      goto LABEL_31;
    }
  }

  v22 = self->_upsampledShiftMapWidth;
  v21 = self->_upsampledShiftMapHeight;
  if (CVPixelBufferGetWidth(blurMap) != v22 || CVPixelBufferGetHeight(blurMap) != v21)
  {
    goto LABEL_31;
  }

  v23 = sub_295EAEADC(image);
  if (!v23)
  {
    return v23;
  }

  if (CVPixelBufferGetPixelFormatType(blurMap) != 1278226488 && CVPixelBufferGetPixelFormatType(blurMap) != 843264056)
  {
LABEL_31:
    LOBYTE(v23) = 0;
    return v23;
  }

  if (CVPixelBufferGetPixelFormatType(map) != 1278226536 && CVPixelBufferGetPixelFormatType(map) != 1751411059)
  {
LABEL_33:
    LOBYTE(v23) = 1;
    return v23;
  }

  if (mask)
  {
    v25 = self->_upsampledShiftMapWidth;
    v24 = self->_upsampledShiftMapHeight;
    if (CVPixelBufferGetWidth(mask) != v25 || CVPixelBufferGetHeight(mask) != v24 || CVPixelBufferGetPixelFormatType(mask) != 1278226488)
    {
      goto LABEL_31;
    }
  }

  if (!hairMask)
  {
    if (glassesMask)
    {
LABEL_28:
      v30 = self->_upsampledShiftMapWidth;
      v29 = self->_upsampledShiftMapHeight;
      if (CVPixelBufferGetWidth(glassesMask) == v30 && CVPixelBufferGetHeight(glassesMask) == v29)
      {
        LOBYTE(v23) = CVPixelBufferGetPixelFormatType(glassesMask) == 1278226488;
        return v23;
      }

      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v27 = self->_upsampledShiftMapWidth;
  v26 = self->_upsampledShiftMapHeight;
  if (CVPixelBufferGetWidth(hairMask) != v27 || CVPixelBufferGetHeight(hairMask) != v26)
  {
    goto LABEL_31;
  }

  v28 = CVPixelBufferGetPixelFormatType(hairMask) == 1278226488;
  LOBYTE(v23) = v28;
  if (glassesMask && v28)
  {
    goto LABEL_28;
  }

  return v23;
}

@end