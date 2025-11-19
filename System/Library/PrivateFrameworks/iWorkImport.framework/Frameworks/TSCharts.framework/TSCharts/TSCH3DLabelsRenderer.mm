@interface TSCH3DLabelsRenderer
+ (id)renderer;
- (BOOL)beginResources:(id)a3 expectedSize:(void *)a4;
- (BOOL)cacheEnabled;
- (BOOL)hasCachedLabels;
- (BOOL)isCacheValid;
- (LabelRenderInfo)renderInfo;
- (TSCH3DLabelsRenderer)init;
- (id).cxx_construct;
- (id)effects;
- (id)p_renderCacheFromScene:(id)a3 created:(BOOL *)a4 createIfAbsent:(BOOL)a5;
- (id)p_renderCacheID;
- (id)p_renderCacheKey;
- (void)dealloc;
- (void)endResources;
- (void)postrender:(id)a3;
- (void)prepareCachedIndex:(void *)a3 string:(id)a4 alignmentPadding:(void *)a5 width:(double)a6 bitmapContextInfo:(id)a7;
- (void)prerender:(id)a3;
- (void)renderAtPosition:(void *)a3 offset:(void *)a4 alignment:(unsigned int)a5 offset2D:(void *)a6 rotation:(float)a7 externalAttribute:(id)a8;
- (void)unitToWorld;
- (void)worldToStage;
@end

@implementation TSCH3DLabelsRenderer

+ (id)renderer
{
  v2 = objc_alloc_init(TSCH3DLabelsRenderer);

  return v2;
}

- (TSCH3DLabelsRenderer)init
{
  v12.receiver = self;
  v12.super_class = TSCH3DLabelsRenderer;
  v3 = [(TSCH3DLabelsRenderer *)&v12 init];
  if (v3)
  {
    v7 = objc_msgSend_normalized4D(TSCH3DQuadResource, v2, v4, v5, v6);
    labelQuad = v3->_labelQuad;
    v3->_labelQuad = v7;

    v9 = objc_alloc_init(TSCH3DLabelsRendererTransforms);
    transforms = v3->_transforms;
    v3->_transforms = v9;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_label)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 657, 0, "expected nil value for '%{public}s'", "_label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_resources)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 658, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (self->_pipeline)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 659, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (self->_labelCamera)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 660, 0, "expected nil value for '%{public}s'", "_labelCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }

  v66.receiver = self;
  v66.super_class = TSCH3DLabelsRenderer;
  [(TSCH3DLabelsRenderer *)&v66 dealloc];
}

- (void)worldToStage
{
  transforms = self->_transforms;
  if (!transforms)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer worldToStage]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 664, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    transforms = self->_transforms;
  }

  return objc_msgSend_worldToStage(transforms, a2, v2, v3, v4);
}

- (void)unitToWorld
{
  transforms = self->_transforms;
  if (!transforms)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer unitToWorld]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 669, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    transforms = self->_transforms;
  }

  return objc_msgSend_unitToWorld(transforms, a2, v2, v3, v4);
}

- (id)p_renderCacheKey
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_renderCacheKey, v3, v4, v5);
}

- (id)p_renderCacheID
{
  if (!self->_resources)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer p_renderCacheID]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 678, 0, "invalid nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  pipeline = self->_pipeline;
  if (!pipeline)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer p_renderCacheID]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 679, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    pipeline = self->_pipeline;
  }

  v37 = MEMORY[0x277D812A8];
  v38 = objc_msgSend_labelsMeshRendererClassForLabelsRenderer_(pipeline, a2, v2, v3, v4, self);
  v43 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v39, v40, v41, v42, self->_resources);
  v48 = objc_msgSend_pairWithFirst_second_(v37, v44, v45, v46, v47, v38, v43);

  return v48;
}

- (id)p_renderCacheFromScene:(id)a3 created:(BOOL *)a4 createIfAbsent:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_27621C85C;
  v31[3] = &unk_27A6B6C10;
  v31[4] = self;
  v9 = MEMORY[0x277C98B30](v31);
  v14 = objc_msgSend_renderCache(v8, v10, v11, v12, v13);
  v19 = objc_msgSend_p_renderCacheKey(self, v15, v16, v17, v18);
  v25 = objc_msgSend_p_renderCacheID(self, v20, v21, v22, v23);
  if (v5)
  {
    objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(v14, v24, v26, v27, v28, v19, v25, a4, v9);
  }

  else
  {
    objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(v14, v24, v26, v27, v28, v19, v25, a4, 0);
  }
  v29 = ;

  return v29;
}

- (BOOL)cacheEnabled
{
  v6 = objc_msgSend_scene(self->_pipeline, a2, v2, v3, v4);
  v12 = objc_msgSend_renderCache(v6, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLabelsRenderer cacheEnabled]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 702, 0, "invalid nil value for '%{public}s'", "cache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_p_renderCacheKey(self, v11, v13, v14, v15);
  v36 = objc_msgSend_cacheEnabledForKey_(v12, v32, v33, v34, v35, v31);

  return v36;
}

- (BOOL)hasCachedLabels
{
  v7 = objc_msgSend_scene(self->_pipeline, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DLabelsRenderer hasCachedLabels]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 708, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_p_renderCacheFromScene_created_createIfAbsent_(self, v6, v8, v9, v10, v7, 0, 0);
  v27 = v26 != 0;

  return v27;
}

- (BOOL)isCacheValid
{
  v6 = objc_msgSend_cacheEnabled(self, a2, v2, v3, v4);
  if (v6)
  {

    LOBYTE(v6) = MEMORY[0x2821F9670](self, sel_hasCachedLabels, v7, v8, v9);
  }

  return v6;
}

- (id)effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DDiffuseTextureShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (void)prerender:(id)a3
{
  v177 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v10, self, v11, v6);
  }

  if (self->_pipeline)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLabelsRenderer prerender:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 729, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_setPipeline_(self, v5, v7, v8, v9, v6);
  objc_msgSend_setObjectRenderMode_(self->_pipeline, v27, v28, v29, v30, 1);
  v36 = objc_msgSend_camera(self->_pipeline, v31, v32, v33, v34);
  if (self->_labelCamera)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "[TSCH3DLabelsRenderer prerender:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 733, 0, "expected nil value for '%{public}s'", "_labelCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  if (v36)
  {
    objc_msgSend_viewport(v36, v35, v37, v38, v39);
  }

  else
  {
    v174[0] = 0uLL;
  }

  v55 = objc_msgSend_orthographicPerPixelWithBounds_(TSCH3DCamera, v35, v37, v38, v39, v174);
  labelCamera = self->_labelCamera;
  self->_labelCamera = v55;

  v61 = objc_msgSend_processor(self->_pipeline, v57, v58, v59, v60);
  objc_msgSend_pushState(v61, v62, v63, v64, v65);

  v71 = objc_msgSend_processor(self->_pipeline, v66, v67, v68, v69);
  if (v71)
  {
    v75 = objc_msgSend_processor(self->_pipeline, v70, v72, v73, v74);
    v80 = v75;
    if (v75)
    {
      objc_msgSend_renderState(v75, v76, v77, v78, v79);
    }

    else
    {
      v175 = 0u;
      v176 = 0u;
    }
  }

  else
  {
    *&v175 = 0;
    DWORD2(v175) = 16843008;
    BYTE12(v175) = 0;
    v176 = 0uLL;
  }

  LOBYTE(v175) = 1;
  DWORD1(v175) = 2;
  BYTE8(v175) = 0;
  v85 = objc_msgSend_processor(self->_pipeline, v81, v82, v83, v84);
  objc_msgSend_setRenderState_(v85, v86, v87, v88, v89, &v175);

  if (!self->_useLabelBounds)
  {
    v95 = objc_msgSend_context(self->_pipeline, v90, v91, v92, v93);
    v99 = self->_labelCamera;
    if (v99)
    {
      objc_msgSend_viewport(v99, v94, v96, v97, v98);
    }

    else
    {
      v174[0] = 0uLL;
    }

    objc_msgSend_viewport_(v95, v94, v96, v97, v98, v174);
  }

  v101 = objc_msgSend_processor(self->_pipeline, v90, v91, v92, v93);
  v105 = self->_labelCamera;
  if (v105)
  {
    objc_msgSend_projection(v105, v100, v102, v103, v104);
  }

  else
  {
    v106 = 0.0;
    memset(v174, 0, sizeof(v174));
  }

  objc_msgSend_projection_(v101, v100, v106, v103, v104, v174);

  v111 = objc_msgSend_processor(self->_pipeline, v107, v108, v109, v110);
  v116 = objc_msgSend_effects(v111, v112, v113, v114, v115);
  v121 = objc_msgSend_effects(self, v117, v118, v119, v120);
  objc_msgSend_resetToArray_(v116, v122, v123, v124, v125, v121);

  v130 = objc_msgSend_processor(self->_pipeline, v126, v127, v128, v129);
  objc_msgSend_geometry_(v130, v131, v132, v133, v134, self->_labelQuad);

  v139 = objc_msgSend_processor(self->_pipeline, v135, v136, v137, v138);
  objc_msgSend_texcoords_(v139, v140, v141, v142, v143, self->_labelQuad);

  transforms = self->_transforms;
  if (!transforms)
  {
    v149 = MEMORY[0x277D81150];
    v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, v145, v146, v147, "[TSCH3DLabelsRenderer prerender:]");
    v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v156, v157, v158, v159, v150, v155, 753, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163);
    transforms = self->_transforms;
  }

  v164 = objc_msgSend_pipeline(self, v144, v145, v146, v147);
  v169 = objc_msgSend_scene(v164, v165, v166, v167, v168);
  objc_msgSend_resetWithScene_camera_(transforms, v170, v171, v172, v173, v169, v36);
}

- (void)postrender:(id)a3
{
  v63 = a3;
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v9, self, v10, v63);
  }

  if (self->_resources)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DLabelsRenderer postrender:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 761, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (self->_pipeline != v63)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DLabelsRenderer postrender:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 763, 0, "pipeline %@ passed in for postrender is different %@", v63, self->_pipeline);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  labelCamera = self->_labelCamera;
  self->_labelCamera = 0;

  v46 = objc_msgSend_processor(self->_pipeline, v42, v43, v44, v45);
  objc_msgSend_popState(v46, v47, v48, v49, v50);

  objc_msgSend_setObjectRenderMode_(self->_pipeline, v51, v52, v53, v54, 0);
  objc_msgSend_setPipeline_(self, v55, v56, v57, v58, 0);
  objc_msgSend_resetWithScene_camera_(self->_transforms, v59, v60, v61, v62, 0, 0);
}

- (BOOL)beginResources:(id)a3 expectedSize:(void *)a4
{
  v8 = a3;
  if (byte_280A46430 == 1)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v15, v16, v17, v18, v19, v20, v21, *a4);
    if (v170 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v14, v22, v23, v24, v25, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v14, v22, v23, v24, v25, __p[0]);
    }
    v26 = ;
    if (v170 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_P_0.isa, v12, self, v13, v8, v26);
  }

  if (v8)
  {
    v27 = v8;
    objc_msgSend_size(v27, v28, v29, v30, v31);
    v37 = __p[0];
    v36 = HIDWORD(__p[0]);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 776, 0, "invalid nil value for '%{public}s'", "r");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    v36 = 0;
    v37 = 0;
  }

  if (v37 != *a4 || v36 != *(a4 + 1))
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    if (v8)
    {
      objc_msgSend_size(v8, v59, v67, v68, v69);
      v70 = v168;
    }

    else
    {
      v70 = 0;
    }

    v71 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v59, v60, v61, v62, v63, v64, v65, v70);
    if (v170 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v71, v72, v73, v74, v75, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v71, v72, v73, v74, v75, __p[0]);
    }
    v83 = ;
    if (v170 < 0)
    {
      operator delete(__p[0]);
    }

    v84 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v76, v77, v78, v79, v80, v81, v82, *a4);
    if (v170 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, __p[0]);
    }
    v90 = ;
    if (v170 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v89, v91, v92, v93, v54, v66, 778, 0, "resource size mismatch %@ should be %@", v83, v90);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
  }

  if (self->_resources)
  {
    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v105, v106, v107, v108, v99, v104, 779, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111, v112);
  }

  objc_msgSend_setResources_(self, v32, v33, v34, v35, v8);
  v117 = objc_msgSend_scene(self->_pipeline, v113, v114, v115, v116);
  LOBYTE(__p[0]) = 0;
  v122 = objc_msgSend_p_renderCacheFromScene_created_createIfAbsent_(self, v118, v119, v120, v121, v117, __p, 1);
  objc_msgSend_setMeshRenderer_(self, v123, v124, v125, v126, v122);

  v131 = objc_msgSend_cacheEnabled(self, v127, v128, v129, v130);
  if ((__p[0] & 1) != 0 || v131 != 1)
  {
    pipeline = self->_pipeline;
    if (!pipeline)
    {
      v137 = MEMORY[0x277D81150];
      v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v133, v134, v135, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
      v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, v140, v141, v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v137, v144, v145, v146, v147, v138, v143, 789, 0, "invalid nil value for '%{public}s'", "_pipeline");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151);
      pipeline = self->_pipeline;
    }

    objc_msgSend_renderScale(pipeline, v132, v133, v134, v135);
    v153 = *&v152;
    objc_msgSend_superSamples(self->_pipeline, v154, v152, v155, v156);
    v158 = *&v157;
    v162 = objc_msgSend_meshRenderer(self, v159, v157, v160, v161);
    *&v163 = v153 / v158;
    objc_msgSend_beginResources_samples_(v162, v164, v163, v165, v166, v8);
  }

  return 1;
}

- (void)endResources
{
  if (byte_280A46430 == 1)
  {
    v7 = objc_opt_class();
    v78 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v7, self, v78, self->_resources);
  }

  v79 = objc_msgSend_processor(self->_pipeline, a2, v2, v3, v4);
  v12 = objc_msgSend_meshRenderer(self, v8, v9, v10, v11);
  objc_msgSend_submitResourcesWithProcessor_(v12, v13, v14, v15, v16, v79);

  v21 = objc_msgSend_scene(self->_pipeline, v17, v18, v19, v20);
  v26 = objc_msgSend_renderCache(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_meshRenderer(self, v27, v28, v29, v30);
  v36 = objc_msgSend_p_renderCacheKey(self, v32, v33, v34, v35);
  v41 = objc_msgSend_p_renderCacheID(self, v37, v38, v39, v40);
  objc_msgSend_setCacheObject_forKey_cacheID_(v26, v42, v43, v44, v45, v31, v36, v41);

  if ((objc_msgSend_cacheEnabled(self, v46, v47, v48, v49) & 1) == 0)
  {
    v54 = objc_msgSend_meshRenderer(self, v50, v51, v52, v53);
    objc_msgSend_flushCache(v54, v55, v56, v57, v58);
  }

  if (!self->_resources)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCH3DLabelsRenderer endResources]");
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 813, 0, "invalid nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
  }

  objc_msgSend_setResources_(self, v50, v51, v52, v53, 0);
  objc_msgSend_setMeshRenderer_(self, v74, v75, v76, v77, 0);
}

- (void)prepareCachedIndex:(void *)a3 string:(id)a4 alignmentPadding:(void *)a5 width:(double)a6 bitmapContextInfo:(id)a7
{
  v13 = a4;
  v15 = a7;
  if (byte_280A46430 == 1)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v20 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v21, v22, v23, v24, v25, v26, v27, *a3);
    if (v104 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p[0]);
    }
    v32 = ;
    if (v104 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_P_0.isa, v18, self, v19, v32, v13);
  }

  __p[0] = *a3;
  v33 = objc_msgSend_resourceAtIndex_string_bitmapContextInfo_labelWidth_(self->_resources, v14, a6, v16, v17, __p, v13, v15);
  objc_msgSend_setLabel_(self, v34, v35, v36, v37, v33);

  v42 = objc_msgSend_label(self, v38, v39, v40, v41);

  if (!v42)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DLabelsRenderer prepareCachedIndex:string:alignmentPadding:width:bitmapContextInfo:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 825, 0, "invalid nil value for '%{public}s'", "self.label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  pipeline = self->_pipeline;
  objc_msgSend_renderScale(pipeline, v43, v44, v45, v46);
  *&v64 = sub_2761FF750(v63, self, a2, pipeline);
  v101 = v64;
  v65 = self->_pipeline;
  objc_msgSend_superSamples(v65, v66, v64, v67, v68);
  *&v71 = sub_2761FF750(v69, self, a2, v65);
  v100 = v71;
  label = self->_label;
  if (!label)
  {
    HIDWORD(v75) = 0;
    v77 = v101;
    *&v75 = *&v101 * 0.0;
    v78 = vdup_lane_s32(COERCE_UNSIGNED_INT(*&v101 * 0.0), 0);
    goto LABEL_15;
  }

  objc_msgSend_tightSize(label, v70, v71, v72, v73);
  v75 = *&v102;
  v76 = self->_label;
  v77 = v101;
  v78 = vmul_n_f32(v102, *&v101);
  if (!v76)
  {
LABEL_15:
    v80 = 0;
    goto LABEL_16;
  }

  objc_msgSend_labelSizeWithSamples_(v76, v70, (*&v101 / *&v100), v100, v73);
  v75 = *&v102;
  v79 = self->_label;
  v80 = vcvt_f32_s32(v102);
  if (v79)
  {
    objc_msgSend_labelRenderOffset(v79, v70, *&v102, v77, v73);
    v81 = v102;
    goto LABEL_17;
  }

LABEL_16:
  v81 = 0;
LABEL_17:
  v82 = objc_msgSend_scene(self->_pipeline, v70, v75, v77, v73);
  v87 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v83, v84, v85, v86, v82);

  v92 = objc_msgSend_labelsShadowIgnored(v87, v88, v89, v90, v91);
  v93 = vmul_n_f32(v80, *&v100);
  v94 = vmul_n_f32(v81, *&v101);
  if (v92)
  {
    v95 = -1;
  }

  else
  {
    v95 = 0;
  }

  v96 = vdup_n_s32(v95);
  v97 = vbsl_s8(v96, v78, v93);
  v98 = vbic_s8(v94, v96);
  v99 = *a5;
  self->_info.sampledLabelSize = v78;
  self->_info.sampledLabelFullSize = v97;
  self->_info.sampledLabelRenderOffset = v98;
  self->_info.sampledAlignmentPadding = vmul_n_f32(v99, *&v101);
}

- (void)renderAtPosition:(void *)a3 offset:(void *)a4 alignment:(unsigned int)a5 offset2D:(void *)a6 rotation:(float)a7 externalAttribute:(id)a8
{
  v15 = a8;
  if ((objc_msgSend_isCacheValid(self, v16, v17, v18, v19) & 1) == 0)
  {
    *&v21 = *(a3 + 2) + *(a4 + 2);
    v22 = *a4;
    v23 = COERCE_DOUBLE(vadd_f32(*a3, *a4));
    v218 = *&v23;
    v219 = LODWORD(v21);
    v207 = v15;
    if (byte_280A46430 == 1)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromSelector(a2);
      v26 = MEMORY[0x277CCACA8];
      v198 = v218.f32[0];
      sub_276152FD4("vec3(%f, %f, %f)", v27, v28, v29, v30, v31, v32, v33, SLOBYTE(v198));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v26, v34, v35, v36, v37, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v26, v34, v35, v36, v37, *&v220);
      }
      v45 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v46 = MEMORY[0x277CCACA8];
      v47 = *a4;
      sub_276152FD4("vec3(%f, %f, %f)", v38, v39, v40, v41, v42, v43, v44, SLOBYTE(v47));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v46, v48, v49, v50, v51, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v46, v48, v49, v50, v51, *&v220);
      }
      v59 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v60 = MEMORY[0x277CCACA8];
      v199 = *a6;
      sub_276152FD4("vec2(%f, %f)", v52, v53, v54, v55, v56, v57, v58, SLOBYTE(v199));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, *&v220);
      }
      v65 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      NSLog(&cfstr_PLd.isa, v24, self, v25, v45, v59, a5, v65);

      v15 = v207;
    }

    pipeline = self->_pipeline;
    objc_msgSend_renderScale(pipeline, v20, v21, v23, *&v22);
    *&v69 = sub_2761FF750(v67, self, a2, pipeline);
    v208 = v69;
    transforms = self->_transforms;
    if (transforms)
    {
      objc_msgSend_projectPoint_(transforms, v68, v69, v70, v71, &v218);
    }

    else
    {
      v217 = 0;
      v216 = 0;
    }

    v220 = vmul_f32(self->_info.sampledLabelSize, 0xBF000000BF000000);
    *&v74 = sub_276205CDC(&self->_info, a5, &v220, &v215);
    v77 = v216;
    sampledLabelFullSize = self->_info.sampledLabelFullSize;
    if (byte_280A46430 == 1)
    {
      v79 = *a6;
      v80 = v215;
      v81 = objc_opt_class();
      v206 = NSStringFromSelector(a2);
      v82 = MEMORY[0x277CCACA8];
      v200 = v218.f32[0];
      sub_276152FD4("vec3(%f, %f, %f)", v83, v84, v85, v86, v87, v88, v89, SLOBYTE(v200));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v82, v90, v91, v92, v93, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v82, v90, v91, v92, v93, *&v220);
      }
      v101 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v102 = MEMORY[0x277CCACA8];
      v201 = *&v216;
      sub_276152FD4("vec3(%f, %f, %f)", v94, v95, v96, v97, v98, v99, v100, SLOBYTE(v201));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v102, v103, v104, v105, v106, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v102, v103, v104, v105, v106, *&v220);
      }
      v114 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v115 = MEMORY[0x277CCACA8];
      v202 = v215.f32[0];
      sub_276152FD4("vec2(%f, %f)", v107, v108, v109, v110, v111, v112, v113, SLOBYTE(v202));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v115, v116, v117, v118, v119, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v115, v116, v117, v118, v119, *&v220);
      }
      v127 = ;
      v128 = (*&v208 * v79) + v80.f32[0];
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v129 = MEMORY[0x277CCACA8];
      v203 = v128;
      sub_276152FD4("vec2(%f, %f)", v120, v121, v122, v123, v124, v125, v126, SLOBYTE(v203));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v129, v130, v131, v132, v133, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v129, v130, v131, v132, v133, *&v220);
      }
      v141 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v142 = MEMORY[0x277CCACA8];
      v204 = *&v77;
      sub_276152FD4("vec3(%f, %f, %f)", v134, v135, v136, v137, v138, v139, v140, SLOBYTE(v204));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v142, v143, v144, v145, v146, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v142, v143, v144, v145, v146, *&v220);
      }
      v154 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      v155 = MEMORY[0x277CCACA8];
      var0 = self->_info.sampledLabelSize.var0.var0;
      sub_276152FD4("vec2(%f, %f)", v147, v148, v149, v150, v151, v152, v153, SLOBYTE(var0));
      if (v222 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v155, v156, v157, v158, v159, &v220);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v155, v156, v157, v158, v159, *&v220);
      }
      v160 = ;
      if (v222 < 0)
      {
        operator delete(*&v220);
      }

      NSLog(&cfstr_POffsetpositio.isa, v81, self, v206, v101, v114, v127, v141, v154, v160);

      v15 = v207;
    }

    v161 = objc_msgSend_meshRenderer(self, *&v73, v74, v75, v76);

    if (!v161)
    {
      v166 = MEMORY[0x277D81150];
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v162, v163, v164, v165, "[TSCH3DLabelsRenderer renderAtPosition:offset:alignment:offset2D:rotation:externalAttribute:]");
      v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, v169, v170, v171, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v173, v174, v175, v176, v167, v172, 875, 0, "invalid nil value for '%{public}s'", "self.meshRenderer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178, v179, v180);
    }

    v181 = [TSCH3DLabelsMeshRendererLabelInfo alloc];
    v220 = v218;
    v221 = v219;
    v213 = v77;
    v214 = 0;
    v212 = 1065353216;
    v210 = vmul_n_f32(*a6, *&v208);
    v211 = sampledLabelFullSize;
    v209 = v215;
    v184 = objc_msgSend_initWithRenderer_position_translation_scale_rotation_offset_alignmentOffset_externalAttribute_(v181, v182, COERCE_DOUBLE(__PAIR64__(v215.u32[1], LODWORD(a7))), v208, v183, self, &v220, &v213, &v211, &v210, &v209, v15);
    v189 = objc_msgSend_meshRenderer(self, v185, v186, v187, v188);
    objc_msgSend_renderWithMeshRenderLabelInfo_(v189, v190, v191, v192, v193, v184);

    objc_msgSend_setLabel_(self, v194, v195, v196, v197, 0);
  }
}

- (LabelRenderInfo)renderInfo
{
  v3 = *&self[2].sampledLabelRenderOffset.var0.var0;
  *&retstr->sampledLabelSize.var0.var0 = *&self[2].sampledLabelSize.var0.var0;
  *&retstr->sampledLabelRenderOffset.var0.var0 = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  return self;
}

@end