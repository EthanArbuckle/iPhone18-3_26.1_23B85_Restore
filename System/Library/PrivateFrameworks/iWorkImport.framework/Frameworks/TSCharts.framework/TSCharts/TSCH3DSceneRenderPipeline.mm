@interface TSCH3DSceneRenderPipeline
+ (id)pipelineWithProcessor:(id)processor session:(id)session scene:(id)scene;
- (BOOL)activateFramebuffer:(id)framebuffer;
- (BOOL)preserveFramebufferContent;
- (BOOL)render;
- (BOOL)renderWithFramebuffer:(id)framebuffer;
- (BOOL)run;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer;
- (TSCH3DCamera)camera;
- (TSCH3DFramebuffer)framebuffer;
- (TSCH3DScene)scene;
- (TSCH3DSceneRenderPipeline)initWithProcessor:(id)processor session:(id)session scene:(id)scene;
- (TSCH3DSceneRenderSetup)setup;
- (float)renderScale;
- (float)samples;
- (float)scale;
- (float)superSamples;
- (id)baseRecloneWithProcessor:(id)processor scene:(id)scene;
- (id)baseRecloneWithRetargetProcessor:(id)processor scene:(id)scene;
- (id)cloneWithProcessor:(id)processor scene:(id)scene;
- (id)cloneWithRetargetProcessor:(id)processor scene:(id)scene;
- (id)concreteSetup;
- (id)labelsMeshRendererForLabelsRenderer:(id)renderer;
- (id)processor;
- (id)recloneWithPipelineClass:(Class)class processor:(id)processor scene:(id)scene;
- (id)recloneWithPipelineClass:(Class)class retargetProcessor:(id)processor scene:(id)scene;
- (id)session;
- (tvec4<float>)backgroundClearColor;
- (void)clearCamera;
- (void)clearFramebuffer;
- (void)setPreserveFramebufferContent:(BOOL)content;
- (void)setSamples:(float)samples;
- (void)setScale:(float)scale;
- (void)setSuperSamples:(float)samples;
- (void)setupCamera:(id)camera;
- (void)setupRendering;
@end

@implementation TSCH3DSceneRenderPipeline

+ (id)pipelineWithProcessor:(id)processor session:(id)session scene:(id)scene
{
  processorCopy = processor;
  sessionCopy = session;
  sceneCopy = scene;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithProcessor_session_scene_(v11, v12, v13, v14, v15, processorCopy, sessionCopy, sceneCopy);

  return v16;
}

- (TSCH3DSceneRenderPipeline)initWithProcessor:(id)processor session:(id)session scene:(id)scene
{
  processorCopy = processor;
  sessionCopy = session;
  sceneCopy = scene;
  v20.receiver = self;
  v20.super_class = TSCH3DSceneRenderPipeline;
  v13 = [(TSCH3DRenderPipeline *)&v20 initWithProcessor:processorCopy session:sessionCopy];
  if (v13)
  {
    if (byte_280A46430 == 1)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      NSLog(&cfstr_PCreatingRende.isa, v17, v13, v18, sceneCopy, processorCopy, sessionCopy);
    }

    objc_msgSend_setScene_(v13, v12, v14, v15, v16, sceneCopy);
  }

  return v13;
}

- (id)recloneWithPipelineClass:(Class)class processor:(id)processor scene:(id)scene
{
  v9 = objc_msgSend_pipelineWithProcessor_session_scene_(class, a2, v5, v6, v7, processor, 0, scene);
  objc_msgSend_setOriginal_(v9, v10, v11, v12, v13, self);

  return v9;
}

- (id)baseRecloneWithProcessor:(id)processor scene:(id)scene
{
  processorCopy = processor;
  sceneCopy = scene;
  v8 = objc_opt_class();
  v13 = objc_msgSend_recloneWithPipelineClass_processor_scene_(self, v9, v10, v11, v12, v8, processorCopy, sceneCopy);

  return v13;
}

- (id)cloneWithProcessor:(id)processor scene:(id)scene
{
  processorCopy = processor;
  sceneCopy = scene;
  v8 = objc_opt_class();
  v13 = objc_msgSend_recloneWithPipelineClass_processor_scene_(self, v9, v10, v11, v12, v8, processorCopy, sceneCopy);

  return v13;
}

- (id)recloneWithPipelineClass:(Class)class retargetProcessor:(id)processor scene:(id)scene
{
  processorCopy = processor;
  sceneCopy = scene;
  v14 = objc_msgSend_processor(self, v10, v11, v12, v13);
  objc_msgSend_setOriginal_(processorCopy, v15, v16, v17, v18, v14);

  v23 = objc_msgSend_recloneWithPipelineClass_processor_scene_(self, v19, v20, v21, v22, class, processorCopy, sceneCopy);

  return v23;
}

- (id)baseRecloneWithRetargetProcessor:(id)processor scene:(id)scene
{
  processorCopy = processor;
  sceneCopy = scene;
  v8 = objc_opt_class();
  v13 = objc_msgSend_recloneWithPipelineClass_retargetProcessor_scene_(self, v9, v10, v11, v12, v8, processorCopy, sceneCopy);

  return v13;
}

- (id)cloneWithRetargetProcessor:(id)processor scene:(id)scene
{
  processorCopy = processor;
  sceneCopy = scene;
  v8 = objc_opt_class();
  v13 = objc_msgSend_recloneWithPipelineClass_retargetProcessor_scene_(self, v9, v10, v11, v12, v8, processorCopy, sceneCopy);

  return v13;
}

- (id)processor
{
  processor = self->super._processor;
  if (processor)
  {
    v6 = processor;
  }

  else
  {
    v6 = objc_msgSend_processor(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (id)session
{
  session = self->super._session;
  if (session)
  {
    v6 = session;
  }

  else
  {
    v6 = objc_msgSend_session(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DScene)scene
{
  scene = self->_scene;
  if (scene)
  {
    v6 = scene;
  }

  else
  {
    v6 = objc_msgSend_scene(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DFramebuffer)framebuffer
{
  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    v6 = framebuffer;
  }

  else
  {
    v6 = objc_msgSend_framebuffer(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DSceneRenderSetup)setup
{
  setup = self->_setup;
  if (setup)
  {
    v6 = setup;
  }

  else
  {
    v6 = objc_msgSend_setup(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (float)scale
{
  if (self->_scale)
  {
    objc_msgSend_floatValue(self->_scale, a2, v2, v3, v4);
  }

  else
  {
    original = self->_original;
    if (original)
    {
      objc_msgSend_scale(original, a2, v2, v3, v4);
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (void)setScale:(float)scale
{
  v6 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, *&scale, v3, v4);
  scale = self->_scale;
  self->_scale = v6;
}

- (float)samples
{
  if (self->_samples)
  {
    objc_msgSend_floatValue(self->_samples, a2, v2, v3, v4);
  }

  else
  {
    original = self->_original;
    if (original)
    {
      objc_msgSend_samples(original, a2, v2, v3, v4);
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (void)setSamples:(float)samples
{
  v6 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, *&samples, v3, v4);
  samples = self->_samples;
  self->_samples = v6;
}

- (float)superSamples
{
  if (self->_superSamples)
  {
    objc_msgSend_floatValue(self->_superSamples, a2, v2, v3, v4);
  }

  else
  {
    original = self->_original;
    if (original)
    {
      objc_msgSend_superSamples(original, a2, v2, v3, v4);
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (void)setSuperSamples:(float)samples
{
  v6 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, *&samples, v3, v4);
  superSamples = self->_superSamples;
  self->_superSamples = v6;
}

- (float)renderScale
{
  objc_msgSend_samples(self, a2, v2, v3, v4);
  v7 = *&v6;
  objc_msgSend_scale(self, v8, v6, v9, v10);
  v12 = v7 * *&v11;
  objc_msgSend_superSamples(self, v13, v11, v14, v15);
  return v12 * v16;
}

- (void)setPreserveFramebufferContent:(BOOL)content
{
  v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, v3, v4, v5, content);
  preserveFramebufferContent = self->_preserveFramebufferContent;
  self->_preserveFramebufferContent = v7;
}

- (BOOL)preserveFramebufferContent
{
  if (self->_preserveFramebufferContent)
  {
    return objc_msgSend_BOOLValue(self->_preserveFramebufferContent, a2, v2, v3, v4);
  }

  else
  {
    return objc_msgSend_preserveFramebufferContent(self->_original, a2, v2, v3, v4);
  }
}

- (id)concreteSetup
{
  v7 = objc_msgSend_setup(self, a2, v2, v3, v4);
  if (v7)
  {
    objc_msgSend_setup(self, v6, v8, v9, v10);
  }

  else
  {
    objc_msgSend_full(TSCH3DSceneRenderSetup, v6, v8, v9, v10);
  }
  v11 = ;

  return v11;
}

- (void)clearCamera
{
  camera = self->_camera;
  self->_camera = 0;
}

- (TSCH3DCamera)camera
{
  camera = self->_camera;
  if (!camera)
  {
    v7 = objc_msgSend_concreteSetup(self, a2, v2, v3, v4);
    v12 = objc_msgSend_scene(self, v8, v9, v10, v11);
    v17 = objc_msgSend_camera(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_renderingCameraFromOriginalCamera_pipeline_(v7, v18, v19, v20, v21, v17, self);
    v23 = self->_camera;
    self->_camera = v22;

    camera = self->_camera;
  }

  return camera;
}

- (tvec4<float>)backgroundClearColor
{
  *v2 = 0;
  v2[1] = 0;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)clearFramebuffer
{
  v7 = objc_msgSend_framebuffer(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_session(self, v6, v8, v9, v10);
    v16 = objc_msgSend_activateInsideSession_(v7, v12, v13, v14, v15, v11);

    if (v16)
    {
      if (objc_msgSend_preserveFramebufferContent(self, v17, v18, v19, v20))
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSCH3DSceneRenderPipeline clearFramebuffer]");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderPipeline.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 199, 0, "trying to clear preserving framebuffer content");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
      }

      v40 = objc_msgSend_processor(self, v21, v22, v23, v24);
      v45 = objc_msgSend_activeFramebuffer(v40, v41, v42, v43, v44);
      isEqual = objc_msgSend_isEqual_(v45, v46, v47, v48, v49, v7);

      if ((isEqual & 1) == 0)
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCH3DSceneRenderPipeline clearFramebuffer]");
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderPipeline.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 200, 0, "the framebuffer we want to wipe is not the active framebuffer");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      }

      v70 = objc_msgSend_processor(self, v51, v52, v53, v54);
      objc_msgSend_backgroundClearColor(self, v71, v72, v73, v74);
      objc_msgSend_wipeActiveFramebuffer_(v70, v75, v76, v77, v78, &v79);
    }
  }
}

- (BOOL)activateFramebuffer:(id)framebuffer
{
  v97 = *MEMORY[0x277D85DE8];
  framebufferCopy = framebuffer;
  if (!framebufferCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DSceneRenderPipeline activateFramebuffer:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 207, 0, "invalid nil value for '%{public}s'", "framebuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_session(self, v4, v6, v7, v8);
  v29 = objc_msgSend_activateInsideSession_(framebufferCopy, v25, v26, v27, v28, v24);

  if (v29)
  {
    v35 = objc_msgSend_processor(self, v30, v31, v32, v33);
    if (v35)
    {
      v39 = objc_msgSend_processor(self, v34, v36, v37, v38);
      v44 = v39;
      if (v39)
      {
        objc_msgSend_renderState(v39, v40, v41, v42, v43);
      }

      else
      {
        v95 = 0u;
        v96 = 0u;
      }
    }

    else
    {
      *&v95 = 0;
      DWORD2(v95) = 16843008;
      BYTE12(v95) = 0;
      v96 = 0uLL;
    }

    BYTE9(v95) = 1;
    BYTE8(v95) = (*objc_msgSend_framebufferAttributes(framebufferCopy, v45, v46, v47, v48) & 2) != 0;
    LOBYTE(v95) = 0;
    v53 = objc_msgSend_processor(self, v49, v50, v51, v52);
    objc_msgSend_setActiveFramebuffer_(v53, v54, v55, v56, v57, framebufferCopy);

    v62 = objc_msgSend_processor(self, v58, v59, v60, v61);
    objc_msgSend_setRenderState_(v62, v63, v64, v65, v66, &v95);

    v71 = objc_msgSend_processor(self, v67, v68, v69, v70);
    objc_msgSend_updateRenderState(v71, v72, v73, v74, v75);

    if (objc_msgSend_preserveFramebufferContent(self, v76, v77, v78, v79))
    {
      objc_msgSend_resetClearBufferTypes(framebufferCopy, v80, v81, v82, v83);
    }

    else
    {
      v84 = objc_msgSend_processor(self, v80, v81, v82, v83);
      objc_msgSend_backgroundClearColor(self, v85, v86, v87, v88);
      objc_msgSend_wipeActiveFramebuffer_(v84, v89, v90, v91, v92, v94);
    }
  }

  return v29;
}

- (void)setupRendering
{
  v10 = objc_msgSend_camera(self, a2, v2, v3, v4);
  objc_msgSend_setupCamera_(self, v6, v7, v8, v9);
}

- (void)setupCamera:(id)camera
{
  cameraCopy = camera;
  if (cameraCopy)
  {
    v8 = objc_msgSend_concreteSetup(self, v4, v5, v6, v7);
    objc_msgSend_setupPipeline_fromCamera_(v8, v9, v10, v11, v12, self, cameraCopy);
  }
}

- (BOOL)renderWithFramebuffer:(id)framebuffer
{
  framebufferCopy = framebuffer;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    NSLog(&cfstr_PRender.isa, v10, self, v11);
  }

  v12 = objc_msgSend_scene(self, v5, v7, v8, v9);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_276164634;
  v47[3] = &unk_27A6B62E8;
  v47[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v13, v14, v15, v16, v47);

  v22 = objc_msgSend_activateFramebuffer_(self, v17, v18, v19, v20, framebufferCopy);
  if (v22)
  {
    objc_msgSend_setupRendering(self, v21, v23, v24, v25);
    v30 = objc_msgSend_scene(self, v26, v27, v28, v29);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_276164640;
    v46[3] = &unk_27A6B62E8;
    v46[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(v30, v31, v32, v33, v34, v46);

    v39 = objc_msgSend_scene(self, v35, v36, v37, v38);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_27616464C;
    v45[3] = &unk_27A6B62E8;
    v45[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(v39, v40, v41, v42, v43, v45);
  }

  return v22;
}

- (BOOL)render
{
  selfCopy = self;
  v6 = objc_msgSend_framebuffer(self, a2, v2, v3, v4);
  LOBYTE(selfCopy) = objc_msgSend_renderWithFramebuffer_(selfCopy, v7, v8, v9, v10, v6);

  return selfCopy;
}

- (BOOL)run
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_delegate(v6, v7, v8, v9, v10);
  objc_msgSend_willRunForScene_pipeline_(v11, v12, v13, v14, v15, v6, self);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v19 = objc_msgSend_processor(self, v16, COERCE_DOUBLE(0x2020000000), v17, v18);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_27616482C;
  v27[3] = &unk_27A6B6310;
  v30 = &v31;
  v27[4] = self;
  v20 = v11;
  v28 = v20;
  v21 = v6;
  v29 = v21;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v22, v23, v24, v25, v19, v27);

  LOBYTE(v6) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return v6;
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer
{
  v3 = objc_opt_class();

  return v3;
}

- (id)labelsMeshRendererForLabelsRenderer:(id)renderer
{
  rendererCopy = renderer;
  v9 = objc_msgSend_labelsMeshRendererClassForLabelsRenderer_(self, v5, v6, v7, v8, rendererCopy);
  v14 = objc_msgSend_renderer(v9, v10, v11, v12, v13);

  return v14;
}

@end