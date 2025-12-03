@interface TSCH3DGetBoundsPipeline
+ (id)pipelineWithScene:(id)scene;
+ (id)pipelineWithScene:(id)scene renderProcessor:(id)processor;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer;
- (TSCH3DGetBoundsPipeline)initWithScene:(id)scene;
- (TSCH3DGetBoundsPipeline)initWithScene:(id)scene renderProcessor:(id)processor;
- (const)bounds;
- (id)boundsProcessor;
- (void)extend2DProjectedBounds:(void *)bounds;
- (void)get3DBounds:(id)bounds;
- (void)getBounds:(id)bounds;
- (void)getProjectedBounds:(id)bounds;
- (void)p_replaceSceneOfPipeline:(id)pipeline replacement:(id)replacement duringBlock:(id)block;
- (void)resetBounds;
- (void)runScene:(id)scene objectBlock:(id)block;
- (void)set2DProjectedRenderingMode:(BOOL)mode;
@end

@implementation TSCH3DGetBoundsPipeline

+ (id)pipelineWithScene:(id)scene renderProcessor:(id)processor
{
  sceneCopy = scene;
  processorCopy = processor;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithScene_renderProcessor_(v8, v9, v10, v11, v12, sceneCopy, processorCopy);

  return v13;
}

+ (id)pipelineWithScene:(id)scene
{
  sceneCopy = scene;
  v9 = objc_msgSend_processor(TSCH3DGetBoundsRenderProcessor, v5, v6, v7, v8);
  v14 = objc_msgSend_pipelineWithScene_renderProcessor_(self, v10, v11, v12, v13, sceneCopy, v9);

  return v14;
}

- (TSCH3DGetBoundsPipeline)initWithScene:(id)scene renderProcessor:(id)processor
{
  v5.receiver = self;
  v5.super_class = TSCH3DGetBoundsPipeline;
  return [(TSCH3DSceneRenderPipeline *)&v5 initWithProcessor:processor session:0 scene:scene];
}

- (TSCH3DGetBoundsPipeline)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9 = objc_msgSend_processor(TSCH3DGetBoundsRenderProcessor, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithScene_renderProcessor_(self, v10, v11, v12, v13, sceneCopy, v9);

  return v14;
}

- (id)boundsProcessor
{
  v6 = objc_msgSend_processor(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DGetBoundsPipeline boundsProcessor]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 173, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (const)bounds
{
  v5 = objc_msgSend_boundsProcessor(self, a2, v2, v3, v4);
  v10 = objc_msgSend_bounds(v5, v6, v7, v8, v9);

  return v10;
}

- (void)resetBounds
{
  v9 = objc_msgSend_boundsProcessor(self, a2, v2, v3, v4);
  objc_msgSend_resetBounds(v9, v5, v6, v7, v8);
}

- (void)extend2DProjectedBounds:(void *)bounds
{
  v11 = objc_msgSend_boundsProcessor(self, a2, v3, v4, v5);
  objc_msgSend_extend2DProjectedBounds_(v11, v7, v8, v9, v10, bounds);
}

- (void)set2DProjectedRenderingMode:(BOOL)mode
{
  if (mode)
  {
    if (objc_msgSend_useIndividualBounds(self, a2, v3, v4, v5))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v20 = objc_msgSend_boundsProcessor(self, v7, v8, v9, v10);
    objc_msgSend_setMode_(v20, v12, v13, v14, v15, v11);
  }

  else
  {
    v20 = objc_msgSend_boundsProcessor(self, a2, v3, v4, v5);
    objc_msgSend_setMode_(v20, v16, v17, v18, v19, 0);
  }
}

- (void)runScene:(id)scene objectBlock:(id)block
{
  sceneCopy = scene;
  blockCopy = block;
  v11 = objc_msgSend_delegate(sceneCopy, v7, v8, v9, v10);
  objc_msgSend_willRunForScene_pipeline_(v11, v12, v13, v14, v15, sceneCopy, self);
  objc_msgSend_enumerateObjectsUsingBlock_(sceneCopy, v16, v17, v18, v19, blockCopy);
  objc_msgSend_didRunForScene_pipeline_(v11, v20, v21, v22, v23, sceneCopy, self);
}

- (void)get3DBounds:(id)bounds
{
  boundsCopy = bounds;
  objc_msgSend_set2DProjectedRenderingMode_(self, v5, v6, v7, v8, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276165E58;
  v12[3] = &unk_27A6B62E8;
  v12[4] = self;
  objc_msgSend_runScene_objectBlock_(self, v9, COERCE_DOUBLE(3221225472), v10, v11, boundsCopy, v12);
}

- (void)getProjectedBounds:(id)bounds
{
  boundsCopy = bounds;
  objc_msgSend_set2DProjectedRenderingMode_(self, v5, v6, v7, v8, 1);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276165F20;
  v16[3] = &unk_27A6B62E8;
  v16[4] = self;
  objc_msgSend_runScene_objectBlock_(self, v9, COERCE_DOUBLE(3221225472), v10, v11, boundsCopy, v16);
  objc_msgSend_set2DProjectedRenderingMode_(self, v12, v13, v14, v15, 0);
}

- (void)p_replaceSceneOfPipeline:(id)pipeline replacement:(id)replacement duringBlock:(id)block
{
  pipelineCopy = pipeline;
  replacementCopy = replacement;
  blockCopy = block;
  v13 = objc_msgSend_scene(pipelineCopy, v9, v10, v11, v12);
  objc_msgSend_setScene_(pipelineCopy, v14, v15, v16, v17, replacementCopy);
  blockCopy[2](blockCopy);
  objc_msgSend_setScene_(pipelineCopy, v18, v19, v20, v21, v13);
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2761660AC;
  v10[3] = &unk_27A6B6338;
  v10[4] = self;
  v11 = boundsCopy;
  v5 = boundsCopy;
  objc_msgSend_p_replaceSceneOfPipeline_replacement_duringBlock_(self, v6, v7, v8, v9, self, v5, v10);
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer
{
  v3 = objc_opt_class();

  return v3;
}

@end