@interface TSCH3DSimpleBlurShadowsRenderer
- (TSCH3DSimpleBlurShadowsRenderer)initWithBlurParametersArray:(id)a3;
- (float)blurSlackForQuality:(float)a3;
- (id)shadowsFBOForContext:(id)a3;
- (void)blurParametersFromQuality:(float)a3 shadowSize:(int64_t *)a4 numPasses:(int64_t *)a5 kernelScale:(float *)a6;
- (void)protectShadowForQuality:(float)a3 pipeline:(id)a4 renderBlock:(id)a5;
- (void)unprotectShadowInSession:(id)a3;
@end

@implementation TSCH3DSimpleBlurShadowsRenderer

- (TSCH3DSimpleBlurShadowsRenderer)initWithBlurParametersArray:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = TSCH3DSimpleBlurShadowsRenderer;
  v6 = [(TSCH3DSimpleBlurShadowsRenderer *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(TSCH3DFBOResource);
    shadowsFBOResource = v6->_shadowsFBOResource;
    v6->_shadowsFBOResource = v7;

    objc_msgSend_setName_(v6->_shadowsFBOResource, v9, v10, v11, v12, @"Shadows");
    v13 = objc_alloc_init(TSCH3DFBOResource);
    blurFBOResource = v6->_blurFBOResource;
    v6->_blurFBOResource = v13;

    objc_msgSend_setName_(v6->_blurFBOResource, v15, v16, v17, v18, @"Shadows Blur");
    objc_storeStrong(&v6->_blurParametersArray, a3);
  }

  return v6;
}

- (void)blurParametersFromQuality:(float)a3 shadowSize:(int64_t *)a4 numPasses:(int64_t *)a5 kernelScale:(float *)a6
{
  v132 = self->_blurParametersArray;
  if (!v132)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSimpleBlurShadowsRenderer blurParametersFromQuality:shadowSize:numPasses:kernelScale:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 46, 0, "invalid nil value for '%{public}s'", "paramsArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (!objc_msgSend_count(v132, v10, v11, v12, v13))
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DSimpleBlurShadowsRenderer blurParametersFromQuality:shadowSize:numPasses:kernelScale:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 47, 0, "paramsArray empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_objectAtIndexedSubscript_(v132, v29, v30, v31, v32, 0);
  v49 = 0;
  v50 = 1;
  objc_msgSend_quality(v48, v51, v52, v53, v54);
  while (*&v56 < a3 && v50 < objc_msgSend_count(v132, v55, v56, v57, v58))
  {
    v59 = v48;

    v64 = objc_msgSend_objectAtIndexedSubscript_(v132, v60, v61, v62, v63, v50);
    ++v50;

    v49 = v59;
    v48 = v64;
    objc_msgSend_quality(v64, v65, v66, v67, v68);
  }

  if (v49 && (objc_msgSend_quality(v48, v55, v56, v57, v58), *&v56 > a3))
  {
    objc_msgSend_quality(v49, v55, v56, v57, v58);
    v70 = *&v69;
    objc_msgSend_quality(v48, v71, v69, v72, v73);
    v78 = *&v75;
    if (*&v75 <= v70)
    {
      v79 = MEMORY[0x277D81150];
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "[TSCH3DSimpleBlurShadowsRenderer blurParametersFromQuality:shadowSize:numPasses:kernelScale:]");
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v86, v87, v88, v89, v80, v85, 61, 0, "quality needs to be increasing in the Array");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
    }

    v94 = objc_msgSend_numPasses(v49, v74, v75, v76, v77);
    v99 = objc_msgSend_numPasses(v48, v95, v96, v97, v98);
    objc_msgSend_kernelScale(v49, v100, v101, v102, v103);
    v105 = *&v104;
    objc_msgSend_kernelScale(v48, v106, v104, v107, v108);
    v110 = *&v109;
    v114 = objc_msgSend_shadowSize(v49, v111, v109, v112, v113);
    v119 = objc_msgSend_shadowSize(v48, v115, v116, v117, v118);
    v120 = (a3 - v70) / (v78 - v70);
    v121 = (v94 + (v120 * (v99 - v94)));
    v122 = v105 + (v120 * (v110 - v105));
    v123 = (v114 + (v120 * (v119 - v114)));
  }

  else
  {
    v123 = objc_msgSend_shadowSize(v48, v55, v56, v57, v58);
    v121 = objc_msgSend_numPasses(v48, v124, v125, v126, v127);
    objc_msgSend_kernelScale(v48, v128, v129, v130, v131);
  }

  if (a5)
  {
    *a5 = v121;
  }

  if (a6)
  {
    *a6 = v122;
  }

  if (a4)
  {
    *a4 = v123;
  }
}

- (void)protectShadowForQuality:(float)a3 pipeline:(id)a4 renderBlock:(id)a5
{
  v156[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v145 = a5;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  *&v9 = a3;
  objc_msgSend_blurParametersFromQuality_shadowSize_numPasses_kernelScale_(self, v10, v9, v11, v12, &v152, &v154, &v153);
  v17 = v152;
  if (v152 <= 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DSimpleBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 91, 0, "Shadow size should never be 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    v17 = v152;
  }

  v151.i32[0] = v17;
  v151.i32[1] = v17;
  v34 = self->_shadowsSize.var0.var0 == v17 && self->_shadowsSize.var1.var0 == v17;
  self->_shadowsSize.var0.var0 = v17;
  self->_shadowsSize.var1.var0 = v17;
  v35 = objc_msgSend_context(v8, v13, v14, v15, v16);
  v41 = objc_msgSend_shadowsFBOForContext_(self, v36, v37, v38, v39, v35);
  if (v34 && (objc_msgSend_session(v8, v40, v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend_validForSession_(v41, v46, v47, v48, v49, v45), v45, v50))
  {
    v51 = objc_msgSend_session(v8, v40, v42, v43, v44);
    objc_msgSend_protectInSession_unprotectOnFail_(v41, v52, v53, v54, v55, v51, 1);
  }

  else
  {
    v147 = 1;
    *&v149[5] = 0x100000000000000;
    v148 = 1;
    *v149 = 0;
    v150 = 1;
    v56 = objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(v35, v40, v42, v43, v44, &v151, &v147, &v147, self->_blurFBOResource);
    v57 = v56;
    if (v154)
    {
      v58 = v56;
    }

    else
    {
      v58 = v41;
    }

    v155 = v58;
    if (v154)
    {
      v59 = v41;
    }

    else
    {
      v59 = v57;
    }

    v156[0] = v59;
    v64 = &v155;
    v65 = 1;
    do
    {
      v66 = v65;
      v67 = *v64;
      v68 = objc_msgSend_session(v8, v60, v61, v62, v63);
      objc_msgSend_protectInSession_unprotectOnFail_(v67, v69, v70, v71, v72, v68, 0);

      v65 = 0;
      v64 = v156;
    }

    while ((v66 & 1) != 0);
    v145[2](v145, v155);
    if (v154)
    {
      v77 = objc_msgSend_processor(v8, v73, v74, v75, v76);
      v82 = objc_msgSend_session(v8, v78, v79, v80, v81);
      v83 = &v153;
      v84 = vld1_dup_f32(v83);
      v146 = COERCE_DOUBLE(vdiv_f32(v84, vcvt_f32_s32(v151)));
      v87 = objc_msgSend_pipelineWithProcessor_session_pixelSize_(TSCH3DFramebufferOnepassBlurPipeline, v85, v146, *&v84, v86, v77, v82, &v146);

      v92 = 0;
      do
      {
        v93 = v92;
        v94 = v154;
        if (v92 >= v154)
        {
          break;
        }

        objc_msgSend_setSource_(v87, v88, v89, v90, v91, v156[(v92 & 1) - 1]);
        objc_msgSend_setTarget_(v87, v95, v96, v97, v98, v156[((v93 + 1) & 1) - 1]);
        v103 = objc_msgSend_run(v87, v99, v100, v101, v102);
        v92 = v93 + 1;
      }

      while ((v103 & 1) != 0);
      v104 = objc_msgSend_target(v87, v88, v89, v90, v91);
      v106 = v93 >= v94 && v104 != v41;

      if (v106)
      {
        v111 = MEMORY[0x277D81150];
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "[TSCH3DSimpleBlurShadowsRenderer protectShadowForQuality:pipeline:renderBlock:]");
        v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v118, v119, v120, v121, v112, v117, 141, 0, "Blurring finished into the wrong FBO");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
      }

      objc_msgSend_discardBuffers(v57, v107, v108, v109, v110);
    }

    v126 = objc_msgSend_session(v8, v73, v74, v75, v76);
    objc_msgSend_protectInSession_unprotectOnFail_(v41, v127, v128, v129, v130, v126, 1);

    v135 = &v155;
    v136 = 1;
    do
    {
      v137 = v136;
      v138 = *v135;
      v139 = objc_msgSend_session(v8, v131, v132, v133, v134);
      objc_msgSend_unprotectInSession_clearOnFailProtection_(v138, v140, v141, v142, v143, v139, 0);

      v136 = 0;
      v135 = v156;
    }

    while ((v137 & 1) != 0);
    for (i = 1; i != -1; --i)
    {
    }
  }
}

- (void)unprotectShadowInSession:(id)a3
{
  v41 = a3;
  v8 = objc_msgSend_context(v41, v4, v5, v6, v7);
  v13 = objc_msgSend_shadowsFBOForContext_(self, v9, v10, v11, v12, v8);
  if (objc_msgSend_isProtectedInSession_(v13, v14, v15, v16, v17, v41))
  {
    objc_msgSend_unprotectInSession_clearOnFailProtection_(v13, v18, v19, v20, v21, v41, 1);
  }

  else if ((objc_msgSend_hasFailed(v41, v18, v19, v20, v21) & 1) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCH3DSimpleBlurShadowsRenderer unprotectShadowInSession:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 162, 0, "shadowsFBO not protected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }
}

- (id)shadowsFBOForContext:(id)a3
{
  v5 = a3;
  if (self->_shadowsSize.var0.var0 < 1 || self->_shadowsSize.var1.var0 <= 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DSimpleBlurShadowsRenderer shadowsFBOForContext:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSimpleBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 171, 0, "Attempted to get unitialized or invalidated shadow fbo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v26 = 1;
  *&v28[5] = 0x100000000000000;
  v27 = 1;
  *v28 = 0;
  v29 = 1;
  v24 = objc_msgSend_framebufferWithSize_attributes_textureAttributes_resource_(v5, v4, v6, v7, v8, &self->_shadowsSize, &v26, &v26, self->_shadowsFBOResource);

  return v24;
}

- (float)blurSlackForQuality:(float)a3
{
  v6 = 0;
  v7 = 0;
  objc_msgSend_blurParametersFromQuality_shadowSize_numPasses_kernelScale_(self, a2, *&a3, v3, v4, &v6, &v7, 0);
  return v7 / v6;
}

@end