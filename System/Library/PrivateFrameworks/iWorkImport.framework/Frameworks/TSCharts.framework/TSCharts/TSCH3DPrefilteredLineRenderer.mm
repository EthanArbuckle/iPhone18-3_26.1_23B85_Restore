@interface TSCH3DPrefilteredLineRenderer
+ (id)renderer;
- (BOOL)beginWithPipeline:(id)pipeline;
- (BOOL)p_shouldRenderWithSetting:(id)setting returningCacheObject:(id *)object;
- (TSCH3DPrefilteredLineRenderer)init;
- (box<glm::detail::tvec2<int>>)viewport;
- (id).cxx_construct;
- (id)p_renderCacheIDFromSetting:(id)setting;
- (id)p_renderCacheKey;
- (tmat3x3<float>)normalMatrix;
- (tmat4x4<float>)modelMatrix;
- (tmat4x4<float>)normalizedProjection;
- (tmat4x4<float>)projection;
- (void)dealloc;
- (void)endWithDidGenerateShaderEffectsBlock:(id)block;
- (void)p_setupShaderEffectsForSetting:(id)setting;
- (void)renderLineBufferWithSetting:(id)setting vertices:(id)vertices normals:(id)normals diffuseTexcoords:(id)texcoords;
- (void)renderWithSetting:(id)setting fromVertex:(const void *)vertex toVertex:(const void *)toVertex;
@end

@implementation TSCH3DPrefilteredLineRenderer

+ (id)renderer
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DPrefilteredLineRenderer)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DPrefilteredLineRenderer;
  return [(TSCH3DPrefilteredLineRenderer *)&v3 init];
}

- (void)dealloc
{
  if (self->_cacheObjects)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPrefilteredLineRenderer dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 690, 0, "expected nil value for '%{public}s'", "_cacheObjects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_pipeline)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPrefilteredLineRenderer dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 691, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DPrefilteredLineRenderer;
  [(TSCH3DPrefilteredLineRenderer *)&v36 dealloc];
}

- (id)p_renderCacheKey
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_renderCacheKey, v3, v4, v5);
}

- (id)p_renderCacheIDFromSetting:(id)setting
{
  settingCopy = setting;
  v5 = MEMORY[0x277D812A8];
  v10 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v6, v7, v8, v9, self);
  v15 = objc_msgSend_pairWithFirst_second_(v5, v11, v12, v13, v14, v10, settingCopy);

  return v15;
}

- (BOOL)beginWithPipeline:(id)pipeline
{
  v121 = *MEMORY[0x277D85DE8];
  pipelineCopy = pipeline;
  v10 = objc_msgSend_processor(pipelineCopy, v6, v7, v8, v9);
  canRenderPrefilteredLines = objc_msgSend_canRenderPrefilteredLines(v10, v11, v12, v13, v14);

  if (canRenderPrefilteredLines)
  {
    if (self->_cacheObjects)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DPrefilteredLineRenderer beginWithPipeline:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 706, 0, "expected nil value for '%{public}s'", "_cacheObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }

    v35 = objc_msgSend_dictionary(TSCH3DOrderedDictionary, v16, v17, v18, v19);
    cacheObjects = self->_cacheObjects;
    self->_cacheObjects = v35;

    if (self->_pipeline)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DPrefilteredLineRenderer beginWithPipeline:]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 709, 0, "expected nil value for '%{public}s'", "_pipeline");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
    }

    objc_storeStrong(&self->_pipeline, pipeline);
    v60 = objc_msgSend_processor(self->_pipeline, v56, v57, v58, v59);
    objc_msgSend_pushState(v60, v61, v62, v63, v64);
    objc_msgSend_pushMatrix(v60, v65, v66, v67, v68);
    if (v60)
    {
      objc_msgSend_renderState(v60, v69, v70, v71, v72);
    }

    else
    {
      v114 = 0;
      v115 = 0;
      v117 = 257;
      v118 = 0;
      v119 = 0;
      v120 = 0;
    }

    LOBYTE(v114) = 1;
    HIDWORD(v114) = 2;
    v116 = 0;
    objc_msgSend_setRenderState_(v60, v69, v70, v71, v72, &v114);
    v106 = 1056964608;
    v108 = 0;
    v107 = 0;
    v109 = 1056964608;
    v110 = 0;
    v111 = 0;
    v112 = xmmword_2764D6610;
    v113 = 0x3F80000000000000;
    objc_msgSend_copyTransformInto_(v60, v73, 0.0078125, v74, v75, &self->_modelMatrix);
    objc_msgSend_copyProjectionInto_(v60, v76, v77, v78, v79, &self->_projection);
    sub_276154554(&self->_modelMatrix, v105);
    *&v80 = *v105;
    *&v81 = *&v105[20];
    v82 = *&v105[32];
    *(&v80 + 1) = __PAIR64__(*&v105[16], *&v105[8]);
    v83 = *&v105[40];
    *&self->_normalMatrix.value[0].var0.var0 = v80;
    *(&v81 + 1) = v82;
    *&self->_normalMatrix.value[1].var1.var0 = v81;
    self->_normalMatrix.value[2].var2.var0 = v83;
    sub_2761558A0(&v106, &self->_projection, v105);
    v84 = *&v105[16];
    self->_normalizedProjection.value[0] = *v105;
    self->_normalizedProjection.value[1] = v84;
    v85 = *&v105[32];
    v86 = *&v105[48];
    self->_normalizedProjection.value[2] = *&v105[32];
    self->_normalizedProjection.value[3] = v86;
    v89 = objc_msgSend_camera(self->_pipeline, v87, v85, *&v86.var0.var0, v88);
    v94 = v89;
    if (v89)
    {
      objc_msgSend_viewport(v89, v90, v91, v92, v93);
      v95 = *&v105[8];
      v96 = *v105;
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    v97._min = v96;
    v97._max = v95;
    self->_viewport = v97;
    *&v105[4] = 0uLL;
    *&v105[24] = 0uLL;
    *&v105[40] = 3212836864;
    v98 = vcvt_f32_s32(vsub_s32(v95, v96));
    *v105 = 2.0 / v98.f32[0];
    *&v105[20] = 2.0 / v98.f32[1];
    v99 = vneg_f32(v98);
    *&v105[48] = vdiv_f32(v99, v98);
    *&v105[56] = 0x3F80000080000000;
    objc_msgSend_projection_(v60, v90, *&v105[48], *&v99, 0.00781250373, v105);
    *v105 = 1065353216;
    *&v105[12] = 0;
    *&v105[4] = 0;
    *&v105[20] = 1065353216;
    *&v105[24] = 0;
    *&v105[32] = 0;
    *&v105[40] = 1065353216;
    *&v105[52] = 0;
    *&v105[44] = 0;
    *&v105[60] = 1065353216;
    objc_msgSend_replace_(v60, v100, v101, v102, v103, v105);
  }

  return canRenderPrefilteredLines;
}

- (void)p_setupShaderEffectsForSetting:(id)setting
{
  settingCopy = setting;
  v8 = objc_msgSend_processor(self->_pipeline, v4, v5, v6, v7);
  v13 = objc_msgSend_effects(v8, v9, v10, v11, v12);

  if ((objc_msgSend_disableColorOutput(settingCopy, v14, v15, v16, v17) & 1) == 0)
  {
    objc_msgSend_reset(v13, v18, v19, v20, v21);
  }

  v22 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, v18, v19, v20, v21);
  objc_msgSend_addEffectOnce_toSection_(v13, v23, v24, v25, v26, v22, 0);

  if (objc_msgSend_useNormals(settingCopy, v27, v28, v29, v30))
  {
    v35 = objc_msgSend_effect(TSCH3DNormalShaderEffect, v31, v32, v33, v34);
    objc_msgSend_addEffectOnce_toSection_(v13, v36, v37, v38, v39, v35, 0);
  }

  if ((objc_msgSend_disableColorOutput(settingCopy, v31, v32, v33, v34) & 1) == 0)
  {
    v44 = objc_msgSend_effect(TSCH3DPrefilteredLineShaderEffect, v40, v41, v42, v43);
    objc_msgSend_addEffectOnce_toSection_(v13, v45, v46, v47, v48, v44, 3);

    v53 = objc_msgSend_effect(TSCH3DPrefilteredLineOutputColorShaderEffect, v49, v50, v51, v52);
    objc_msgSend_addEffect_(v13, v54, v55, v56, v57, v53);
  }

  v58 = objc_msgSend_stroke(settingCopy, v40, v41, v42, v43);

  if (v58)
  {
    v63 = objc_msgSend_effect(TSCH3DStrokePatternShaderEffect, v59, v60, v61, v62);
    objc_msgSend_addEffectOnce_toSection_(v13, v64, v65, v66, v67, v63, 3);
  }
}

- (void)endWithDidGenerateShaderEffectsBlock:(id)block
{
  v205 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  pipeline = self->_pipeline;
  if (!pipeline)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DPrefilteredLineRenderer endWithDidGenerateShaderEffectsBlock:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 770, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    pipeline = self->_pipeline;
  }

  v24 = objc_msgSend_processor(pipeline, v4, v5, v6, v7);
  canRenderPrefilteredLines = objc_msgSend_canRenderPrefilteredLines(v24, v25, v26, v27, v28);

  if ((canRenderPrefilteredLines & 1) == 0)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DPrefilteredLineRenderer endWithDidGenerateShaderEffectsBlock:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 771, 0, "invalid proccesor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  cacheObjects = self->_cacheObjects;
  if (!cacheObjects)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DPrefilteredLineRenderer endWithDidGenerateShaderEffectsBlock:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 772, 0, "invalid nil value for '%{public}s'", "_cacheObjects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
    cacheObjects = self->_cacheObjects;
  }

  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  obj = cacheObjects;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, v66, v67, v68, &v199, v204, 16);
  if (v70)
  {
    v74 = *v200;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v200 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v199 + 1) + 8 * i);
        v77 = objc_msgSend_processor(self->_pipeline, v69, v71, v72, v73);
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = sub_276214D4C;
        v197[3] = &unk_27A6B6BA8;
        v197[4] = self;
        v197[5] = v76;
        v198 = blockCopy;
        objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v78, v79, v80, v81, v77, v197);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, v71, v72, v73, &v199, v204, 16);
    }

    while (v70);
  }

  v86 = objc_msgSend_scene(self->_pipeline, v82, v83, v84, v85);
  obja = objc_msgSend_renderCache(v86, v87, v88, v89, v90);

  v95 = objc_msgSend_p_renderCacheKey(self, v91, v92, v93, v94);
  v100 = objc_msgSend_cacheEnabledForKey_(obja, v96, v97, v98, v99, v95);

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v189 = self->_cacheObjects;
  v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v101, v102, v103, v104, &v193, v203, 16);
  if (v106)
  {
    v110 = *v194;
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v194 != v110)
        {
          objc_enumerationMutation(v189);
        }

        v112 = *(*(&v193 + 1) + 8 * j);
        v114 = objc_msgSend_objectForKey_(self->_cacheObjects, v105, v107, v108, v109, v112);
        if (!v114)
        {
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v115, v116, v117, "[TSCH3DPrefilteredLineRenderer endWithDidGenerateShaderEffectsBlock:]");
          v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v121, v122, v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v125, v126, v127, v128, v119, v124, 795, 0, "invalid nil value for '%{public}s'", "cacheObject");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v129, v130, v131, v132);
        }

        objc_msgSend_setDidRenderOnce_(v114, v113, v115, v116, v117, 1);
        v137 = objc_msgSend_p_renderCacheKey(self, v133, v134, v135, v136);
        v142 = objc_msgSend_p_renderCacheIDFromSetting_(self, v138, v139, v140, v141, v112);
        objc_msgSend_setCacheObject_forKey_cacheID_(obja, v143, v144, v145, v146, v114, v137, v142);

        if ((v100 & 1) == 0)
        {
          objc_msgSend_flushCache(v114, v147, v148, v149, v150);
        }
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v105, v107, v108, v109, &v193, v203, 16);
    }

    while (v106);
  }

  v155 = objc_msgSend_processor(self->_pipeline, v151, v152, v153, v154);
  objc_msgSend_projection_(v155, v156, v157, v158, v159, &self->_projection);

  v164 = objc_msgSend_processor(self->_pipeline, v160, v161, v162, v163);
  objc_msgSend_replace_(v164, v165, v166, v167, v168, &self->_modelMatrix);

  v173 = objc_msgSend_processor(self->_pipeline, v169, v170, v171, v172);
  objc_msgSend_popMatrix(v173, v174, v175, v176, v177);

  v182 = objc_msgSend_processor(self->_pipeline, v178, v179, v180, v181);
  objc_msgSend_popState(v182, v183, v184, v185, v186);

  v187 = self->_cacheObjects;
  self->_cacheObjects = 0;

  v188 = self->_pipeline;
  self->_pipeline = 0;
}

- (BOOL)p_shouldRenderWithSetting:(id)setting returningCacheObject:(id *)object
{
  settingCopy = setting;
  v11 = objc_msgSend_scene(self->_pipeline, v7, v8, v9, v10);
  v16 = objc_msgSend_renderCache(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_p_renderCacheKey(self, v17, v18, v19, v20);
  v26 = objc_msgSend_cacheEnabledForKey_(v16, v22, v23, v24, v25, v21);

  v89 = 0;
  v31 = objc_msgSend_objectForKey_(self->_cacheObjects, v27, v28, v29, v30, settingCopy);
  v36 = v31;
  if (v31)
  {
    v89 = objc_msgSend_didRenderOnce(v31, v32, v33, v34, v35) ^ 1;
  }

  else
  {
    v41 = objc_msgSend_p_renderCacheKey(self, v32, v33, v34, v35);
    v46 = objc_msgSend_p_renderCacheIDFromSetting_(self, v42, v43, v44, v45, settingCopy);
    v36 = objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(v16, v47, v48, v49, v50, v41, v46, &v89, &unk_28851D2C8);

    cacheObjects = self->_cacheObjects;
    if (!cacheObjects)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCH3DPrefilteredLineRenderer p_shouldRenderWithSetting:returningCacheObject:]");
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 830, 0, "invalid nil value for '%{public}s'", "_cacheObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
      cacheObjects = self->_cacheObjects;
    }

    objc_msgSend_setObject_forKey_(cacheObjects, v51, v52, v53, v54, v36, settingCopy);
  }

  if (!object)
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DPrefilteredLineRenderer p_shouldRenderWithSetting:returningCacheObject:]");
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 835, 0, "invalid nil value for '%{public}s'", "outCacheObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
  }

  v86 = v36;
  *object = v36;
  v87 = v89 | ~v26;

  return v87 & 1;
}

- (void)renderWithSetting:(id)setting fromVertex:(const void *)vertex toVertex:(const void *)toVertex
{
  settingCopy = setting;
  v35 = 0;
  shouldRenderWithSetting_returningCacheObject = objc_msgSend_p_shouldRenderWithSetting_returningCacheObject_(self, v9, v10, v11, v12, settingCopy, &v35);
  v14 = v35;
  v19 = v14;
  if (shouldRenderWithSetting_returningCacheObject)
  {
    if (!v14)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DPrefilteredLineRenderer renderWithSetting:fromVertex:toVertex:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 846, 0, "invalid nil value for '%{public}s'", "cacheObject");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }

    objc_msgSend_renderWithLineRenderer_setting_fromVertex_toVertex_(v19, v15, v16, v17, v18, self, settingCopy, vertex, toVertex);
  }
}

- (void)renderLineBufferWithSetting:(id)setting vertices:(id)vertices normals:(id)normals diffuseTexcoords:(id)texcoords
{
  settingCopy = setting;
  verticesCopy = vertices;
  normalsCopy = normals;
  texcoordsCopy = texcoords;
  v133[0] = 0;
  LOBYTE(texcoords) = objc_msgSend_p_shouldRenderWithSetting_returningCacheObject_(self, v11, v12, v13, v14, settingCopy, v133);
  v15 = v133[0];
  if ((texcoords & 1) == 0)
  {
    goto LABEL_32;
  }

  v17 = sub_27616536C(verticesCopy);
  if (((v17[2] - *v17) & 4) != 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 860, 0, "need an even number of vertices");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (normalsCopy)
  {
    v36 = sub_27616536C(normalsCopy);
    v37 = v36[1] - *v36;
    if ((v37 & 4) != 0)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 865, 0, "need an even number of normals");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
      v37 = v36[1] - *v36;
    }

    if (v37 != *(v17 + 1) - *v17)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v61, v62, v63, v54, v59, 867, 0, "size mismatch %zu should be %zu", 0xAAAAAAAAAAAAAAABLL * ((v36[1] - *v36) >> 2), 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 1) - *v17) >> 2));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    }
  }

  else
  {
    v36 = 0;
  }

  if (!texcoordsCopy)
  {
    v68 = 0;
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v68 = sub_2761654D0(texcoordsCopy);
  v69 = v68[1] - *v68;
  if ((v69 & 0x10) != 0)
  {
    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 873, 0, "need an even number of diffuse texcoords");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    v69 = v68[1] - *v68;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v17 + 1) - *v17) >> 2) != v69 >> 4)
  {
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v92, v93, v94, v95, v86, v91, 875, 0, "size mismatch %zu should be %zu", (v68[1] - *v68) >> 4, 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 1) - *v17) >> 2));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
  }

  if (!v15)
  {
LABEL_18:
    v100 = MEMORY[0x277D81150];
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DPrefilteredLineRenderer renderLineBufferWithSetting:vertices:normals:diffuseTexcoords:]");
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v108, v109, v110, v101, v106, 878, 0, "invalid nil value for '%{public}s'", "cacheObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
  }

LABEL_19:
  v115 = *v17;
  if (*(v17 + 1) != *v17)
  {
    v116 = 0;
    v117 = 16;
    v118 = 12;
    v119 = xmmword_2764D5EE0;
    do
    {
      if (v36)
      {
        v120 = *v36 + v118 - 12;
        if (v68)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v120 = 0;
        if (v68)
        {
LABEL_23:
          v121 = *v68 + v117 - 16;
          goto LABEL_26;
        }
      }

      v121 = 0;
LABEL_26:
      v130[0] = v115 + v118 - 12;
      v130[1] = v120;
      v130[2] = v121;
      v131 = 0;
      v132 = v119;
      if (v36)
      {
        v122 = *v36 + v118;
        if (!v68)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v122 = 0;
        if (!v68)
        {
LABEL_30:
          v123 = 0;
          goto LABEL_31;
        }
      }

      v123 = *v68 + v117;
LABEL_31:
      v127[0] = v115 + v118;
      v127[1] = v122;
      v127[2] = v123;
      v128 = 0;
      v129 = v119;
      objc_msgSend_renderWithLineRenderer_setting_fromVertex_toVertex_(v15, v16, *&v119, v19, v20, self, settingCopy, v130, v127);
      v116 += 2;
      v115 = *v17;
      v117 += 32;
      v118 += 24;
      v119 = xmmword_2764D5EE0;
    }

    while (v116 < 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 1) - *v17) >> 2));
  }

LABEL_32:
}

- (tmat4x4<float>)modelMatrix
{
  v3 = *&self->value[1].var2.var0;
  retstr->value[0] = *&self->value[0].var2.var0;
  retstr->value[1] = v3;
  v4 = *&self->value[3].var2.var0;
  retstr->value[2] = *&self->value[2].var2.var0;
  retstr->value[3] = v4;
  return self;
}

- (tmat3x3<float>)normalMatrix
{
  v3 = *&self[2].value[1].var1.var0;
  *&retstr->value[0].var0.var0 = *&self[2].value[0].var0.var0;
  *&retstr->value[1].var1.var0 = v3;
  retstr->value[2].var2.var0 = self[2].value[2].var2.var0;
  return self;
}

- (tmat4x4<float>)projection
{
  v3 = *&self[1].value[3].var3.var0;
  retstr->value[0] = *&self[1].value[2].var3.var0;
  retstr->value[1] = v3;
  v4 = *&self[2].value[1].var3.var0;
  retstr->value[2] = *&self[2].value[0].var3.var0;
  retstr->value[3] = v4;
  return self;
}

- (tmat4x4<float>)normalizedProjection
{
  v3 = *&self[2].value[3].var3.var0;
  retstr->value[0] = *&self[2].value[2].var3.var0;
  retstr->value[1] = v3;
  v4 = *&self[3].value[1].var3.var0;
  retstr->value[2] = *&self[3].value[0].var3.var0;
  retstr->value[3] = v4;
  return self;
}

- (box<glm::detail::tvec2<int>>)viewport
{
  *v2 = self->_viewport;
  result._max = a2;
  result._min = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 1065353216;
  *(self + 20) = 0;
  *(self + 12) = 0;
  *(self + 7) = 1065353216;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  *(self + 68) = xmmword_2764D5F30;
  *(self + 84) = xmmword_2764D5F40;
  *(self + 100) = 0x3F80000000000000;
  *(self + 27) = 1065353216;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 32) = 1065353216;
  *(self + 140) = 0;
  *(self + 132) = 0;
  *(self + 37) = 1065353216;
  *(self + 19) = 0;
  *(self + 20) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 21) = _D0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 48) = 1065353216;
  *(self + 196) = 0;
  *(self + 204) = 0;
  *(self + 53) = 1065353216;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 58) = 1065353216;
  *(self + 236) = xmmword_2764D6090;
  return self;
}

@end