@interface TSCH3DPyramidBlurShadowsRenderer
- (TSCH3DPyramidBlurShadowsRenderer)initWithSize:(int)size targetRadiusFactor:(float)factor;
- (float)blurSlackForQuality:(float)quality;
- (id)p_allResources;
- (id)shadowsFBOForContext:(id)context;
- (void)invalidate;
- (void)p_setupResourcesForSize:(tvec2<int>)size;
- (void)protectShadowForQuality:(float)quality pipeline:(id)pipeline renderBlock:(id)block;
- (void)unprotectShadowInSession:(id)session;
@end

@implementation TSCH3DPyramidBlurShadowsRenderer

- (TSCH3DPyramidBlurShadowsRenderer)initWithSize:(int)size targetRadiusFactor:(float)factor
{
  v7.receiver = self;
  v7.super_class = TSCH3DPyramidBlurShadowsRenderer;
  result = [(TSCH3DPyramidBlurShadowsRenderer *)&v7 init];
  if (result)
  {
    result->_requestedSize = size;
    result->_targetRadiusFactor = factor;
  }

  return result;
}

- (void)p_setupResourcesForSize:(tvec2<int>)size
{
  finalShadowResource = self->_finalShadowResource;
  self->_finalShadowResource = 0;

  pyramidResources = self->_pyramidResources;
  self->_pyramidResources = 0;

  self->_initialSize.var0.var0 = *size.var0.var0;
  v11 = *(*&size + 4);
  self->_initialSize.var1.var0 = v11;
  if (*size.var0.var0 && v11)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
    v17 = *size.var0.var0;
    if (*size.var0.var0 >= 1)
    {
      v18 = *(*&size + 4);
      do
      {
        if (v18 < 1)
        {
          break;
        }

        v26[0] = v17;
        v26[1] = v18;
        v19 = objc_msgSend_resourcesWithFBOSize_(TSCH3DPyramidLevelResources, v12, v14, v15, v16, v26);
        objc_msgSend_addObject_(v13, v20, v21, v22, v23, v19);

        v24 = *size.var0.var0;
        v17 = *size.var0.var0 / 2;
        v18 = *(*&size + 4) / 2;
        *size.var0.var0 = v17;
        *(*&size + 4) = v18;
      }

      while (v24 > 1);
    }

    v25 = self->_pyramidResources;
    self->_pyramidResources = v13;
  }
}

- (id)p_allResources
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = self->_pyramidResources;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v35, v39, 16);
  if (v13)
  {
    v17 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = objc_msgSend_finalResource(v19, v12, v14, v15, v16, v35);
        objc_msgSend_addObject_(v6, v21, v22, v23, v24, v20);

        v29 = objc_msgSend_temporaryResource(v19, v25, v26, v27, v28);
        objc_msgSend_addObject_(v6, v30, v31, v32, v33, v29);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v35, v39, 16);
    }

    while (v13);
  }

  return v6;
}

- (void)protectShadowForQuality:(float)quality pipeline:(id)pipeline renderBlock:(id)block
{
  v349 = *MEMORY[0x277D85DE8];
  pipelineCopy = pipeline;
  blockCopy = block;
  var0 = self->_initialSize.var1.var0;
  requestedSize = self->_requestedSize;
  LODWORD(v347) = requestedSize;
  HIDWORD(v347) = requestedSize;
  if (self->_initialSize.var0.var0 != requestedSize || var0 != requestedSize)
  {
    v16 = objc_msgSend_session(pipelineCopy, v9, v10, v11, v12);
    v21 = objc_msgSend_p_allResources(self, v17, v18, v19, v20);
    objc_msgSend_flushResources_(v16, v22, v23, v24, v25, v21);

    *v344 = v347;
    objc_msgSend_p_setupResourcesForSize_(self, v26, v347, v27, v28, v344);
  }

  v332 = objc_msgSend_context(pipelineCopy, v9, v10, v11, v12);
  location = &self->_finalShadowResource;
  selfCopy = self;
  if (self->_finalShadowResource)
  {
    v33 = objc_msgSend_shadowsFBOForContext_(self, v29, v30, v31, v32, v332);
    if (v33)
    {
      v338 = v33;
      v34 = objc_msgSend_session(pipelineCopy, v29, v30, v31, v32);
      v39 = objc_msgSend_validForSession_(v33, v35, v36, v37, v38, v34);

      if (v39)
      {
        v40 = objc_msgSend_session(pipelineCopy, v29, v30, v31, v32);
        objc_msgSend_protectInSession_unprotectOnFail_(v338, v41, v42, v43, v44, v40, 1);

        goto LABEL_51;
      }

      v33 = v338;
    }
  }

  else
  {
    v33 = 0;
  }

  LODWORD(v344[0]) = 1;
  *&v345[5] = 0x100000000000000;
  v344[1] = 1;
  *v345 = 0;
  v346 = 1;
  v45 = objc_msgSend_objectAtIndexedSubscript_(self->_pyramidResources, v29, v30, v31, v32, 0);
  v331 = objc_msgSend_set(MEMORY[0x277CBEB58], v46, v47, v48, v49);
  v55 = objc_msgSend_finalResource(v45, v50, v51, v52, v53);
  if (v45)
  {
    objc_msgSend_size(v45, v54, v56, v57, v58);
  }

  else
  {
    v343 = 0.0;
  }

  v338 = objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(v332, v54, v56, v57, v58, &v343, v344, v344, v55);

  v63 = objc_msgSend_session(pipelineCopy, v59, v60, v61, v62);
  objc_msgSend_protectInSession_unprotectOnFail_(v338, v64, v65, v66, v67, v63, 0);

  objc_msgSend_addObject_(v331, v68, v69, v70, v71, v338);
  blockCopy[2](blockCopy, v338);
  targetRadiusFactor = self->_targetRadiusFactor;
  v77 = objc_msgSend_processor(pipelineCopy, v73, v74, v75, v76);
  v82 = objc_msgSend_session(pipelineCopy, v78, v79, v80, v81);
  v337 = objc_msgSend_pipelineWithProcessor_session_(TSCH3DFramebufferGaussianBlurPipeline, v83, v84, v85, v86, v77, v82);

  v91 = objc_msgSend_processor(pipelineCopy, v87, v88, v89, v90);
  v96 = objc_msgSend_session(pipelineCopy, v92, v93, v94, v95);
  v333 = objc_msgSend_pipelineWithProcessor_session_(TSCH3DFramebufferCopyPipeline, v97, v98, v99, v100, v91, v96);

  *&v104 = (quality * 100.0) * targetRadiusFactor;
  v329 = *&v104;
  if (*&v104)
  {
    v334 = 0;
    v335 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v336 = 2;
    v108 = v338;
    while (1)
    {
      v338 = v108;
      if (!v108)
      {
        v109 = MEMORY[0x277D81150];
        v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v104, v102, v103, "[TSCH3DPyramidBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v116, v117, v118, v119, v110, v115, 191, 0, "invalid nil value for '%{public}s'", "finalFBO");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
      }

      if (!v55)
      {
        v124 = MEMORY[0x277D81150];
        v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v104, v102, v103, "[TSCH3DPyramidBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
        v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v131, v132, v133, v134, v125, v130, 192, 0, "invalid nil value for '%{public}s'", "finalResource");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136, v137, v138);
      }

      v139 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_pyramidResources, v101, v104, v102, v103, v107);

      v45 = v139;
      v144 = objc_msgSend_temporaryResource(v139, v140, v141, v142, v143);

      v335 = v144;
      if (v45)
      {
        objc_msgSend_size(v45, v145, v146, v147, v148);
        v149 = v343;
      }

      else
      {
        v149 = 0.0;
      }

      v347 = v149;
      v150 = objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(v332, v145, v149, v147, v148, &v347, v344, v344, v144);

      v155 = objc_msgSend_session(pipelineCopy, v151, v152, v153, v154);
      objc_msgSend_protectInSession_unprotectOnFail_(v150, v156, v157, v158, v159, v155, 0);

      objc_msgSend_addObject_(v331, v160, v161, v162, v163, v150);
      objc_msgSend_setSource_(v337, v164, v165, v166, v167, v338);
      objc_msgSend_setTarget_(v337, v168, v169, v170, v171, v150);
      v172 = 1.0 / SLODWORD(v347);
      *&v172 = v172;
      *&v343 = LODWORD(v172);
      objc_msgSend_setTapUnit_(v337, v173, v172, v174, v175, &v343);
      if ((objc_msgSend_run(v337, v176, v177, v178, v179) & 1) == 0)
      {
        break;
      }

      v105 += v336;
      if (v105 > v329 && v107)
      {
        if (!v334)
        {
          v180 = MEMORY[0x277D81150];
          v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v104, v102, v103, "[TSCH3DPyramidBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
          v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v180, v187, v188, v189, v190, v181, v186, 217, 0, "invalid nil value for '%{public}s'", "prevFinalFBO");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192, v193, v194);
        }

        v195 = objc_msgSend_processor(pipelineCopy, v101, v104, v102, v103);
        v200 = objc_msgSend_session(pipelineCopy, v196, v197, v198, v199);
        v205 = objc_msgSend_pipelineWithProcessor_session_(TSCH3DFramebufferGaussianBlurAndBlendPipeline, v201, v202, v203, v204, v195, v200);

        objc_msgSend_setSource_(v205, v206, v207, v208, v209, v150);
        objc_msgSend_setTarget_(v205, v210, v211, v212, v213, v338);
        v214 = 1.0 / SHIDWORD(v347);
        *&v214 = v214;
        LODWORD(v343) = 0;
        HIDWORD(v343) = LODWORD(v214);
        objc_msgSend_setTapUnit_(v205, v215, v214, v216, v217, &v343);
        objc_msgSend_setBlendTexture_(v205, v218, v219, v220, v221, v334);
        *&v222 = v336;
        *&v223 = (v105 - v329) / v336;
        objc_msgSend_setBlendFactor_(v205, v224, v223, v222, v225);
        v230 = objc_msgSend_run(v205, v226, v227, v228, v229);
      }

      else
      {
        objc_msgSend_setSource_(v337, v101, v104, v102, v103, v150);
        objc_msgSend_setTarget_(v337, v235, v236, v237, v238, v338);
        v239 = 1.0 / SHIDWORD(v347);
        *&v239 = v239;
        LODWORD(v343) = 0;
        HIDWORD(v343) = LODWORD(v239);
        objc_msgSend_setTapUnit_(v337, v240, v239, v241, v242, &v343);
        v230 = objc_msgSend_run(v337, v243, v244, v245, v246);
      }

      objc_msgSend_discardBuffers(v150, v231, v232, v233, v234);
      v247 = v105 < v329 ? v230 : 0;
      if (v247 != 1)
      {
        break;
      }

      v248 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_pyramidResources, v101, v104, v102, v103, ++v107);

      v253 = objc_msgSend_finalResource(v248, v249, v250, v251, v252);
      v258 = v253;
      if (v253)
      {
        objc_msgSend_size(v253, v254, v255, v256, v257);
      }

      else
      {
        v343 = 0.0;
      }

      v108 = objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(v332, v254, v255, v256, v257, &v343, v344, v344, v258);
      v263 = objc_msgSend_session(pipelineCopy, v259, v260, v261, v262);
      objc_msgSend_protectInSession_unprotectOnFail_(v108, v264, v265, v266, v267, v263, 0);

      objc_msgSend_addObject_(v331, v268, v269, v270, v271, v108);
      objc_msgSend_setSource_(v333, v272, v273, v274, v275, v338);
      objc_msgSend_setTarget_(v333, v276, v277, v278, v279, v108);
      objc_msgSend_run(v333, v280, v281, v282, v283);
      v284 = v338;

      v336 *= 2;
      v334 = v284;
      v106 = v150;
      v55 = v258;
      v45 = v248;
    }
  }

  else
  {
    v334 = 0;
    v335 = 0;
    v150 = 0;
  }

  if (*location != v55 && *location)
  {
    v285 = MEMORY[0x277D81150];
    v286 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v104, v102, v103, "[TSCH3DPyramidBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
    v291 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v287, v288, v289, v290, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v285, v292, v293, v294, v295, v286, v291, 258, 0, "Unexpected final shadow resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v296, v297, v298, v299);
  }

  objc_storeStrong(location, v55);
  v304 = objc_msgSend_session(pipelineCopy, v300, v301, v302, v303);
  objc_msgSend_protectInSession_unprotectOnFail_(v338, v305, v306, v307, v308, v304, 1);

  v341 = 0u;
  v342 = 0u;
  v339 = 0u;
  v340 = 0u;
  v309 = v331;
  v315 = objc_msgSend_countByEnumeratingWithState_objects_count_(v309, v310, v311, v312, v313, &v339, v348, 16);
  if (v315)
  {
    v319 = *v340;
    do
    {
      for (i = 0; i != v315; ++i)
      {
        if (*v340 != v319)
        {
          objc_enumerationMutation(v309);
        }

        v321 = *(*(&v339 + 1) + 8 * i);
        v322 = objc_msgSend_session(pipelineCopy, v314, v316, v317, v318);
        objc_msgSend_unprotectInSession_clearOnFailProtection_(v321, v323, v324, v325, v326, v322, 0);
      }

      v315 = objc_msgSend_countByEnumeratingWithState_objects_count_(v309, v314, v316, v317, v318, &v339, v348, 16);
    }

    while (v315);
  }

LABEL_51:
}

- (void)unprotectShadowInSession:(id)session
{
  sessionCopy = session;
  v8 = objc_msgSend_context(sessionCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_shadowsFBOForContext_(self, v9, v10, v11, v12, v8);
  if (objc_msgSend_isProtectedInSession_(v13, v14, v15, v16, v17, sessionCopy))
  {
    objc_msgSend_unprotectInSession_clearOnFailProtection_(v13, v18, v19, v20, v21, sessionCopy, 1);
  }

  else if ((objc_msgSend_hasFailed(sessionCopy, v18, v19, v20, v21) & 1) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCH3DPyramidBlurShadowsRenderer unprotectShadowInSession:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 277, 0, "shadowsFBO not protected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }
}

- (void)invalidate
{
  finalShadowResource = self->_finalShadowResource;
  self->_finalShadowResource = 0;
}

- (float)blurSlackForQuality:(float)quality
{
  v6 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, *&quality, v3, v4);
  v11 = objc_msgSend_highQualityShadowsSize(v6, v7, v8, v9, v10);

  if (v11)
  {
    return (quality * 400.0) / v11;
  }

  else
  {
    return 0.0;
  }
}

- (id)shadowsFBOForContext:(id)context
{
  contextCopy = context;
  finalShadowResource = self->_finalShadowResource;
  if (!finalShadowResource)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DPyramidBlurShadowsRenderer shadowsFBOForContext:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 294, 0, "invalid nil value for '%{public}s'", "_finalShadowResource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    finalShadowResource = self->_finalShadowResource;
  }

  v32 = 1;
  *&v34[5] = 0x100000000000000;
  v33 = 1;
  *v34 = 0;
  v35 = 1;
  if (finalShadowResource)
  {
    objc_msgSend_size(finalShadowResource, v4, v6, v7, v8);
    objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(contextCopy, v25, v26, v27, v28, &v31, &v32, &v32, self->_finalShadowResource);
  }

  else
  {
    v31 = 0;
    objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(contextCopy, v4, v6, v7, v8, &v31, &v32, &v32, 0);
  }
  v29 = ;

  return v29;
}

@end