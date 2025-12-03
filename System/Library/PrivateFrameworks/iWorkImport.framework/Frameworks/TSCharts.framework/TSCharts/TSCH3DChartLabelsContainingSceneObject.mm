@interface TSCH3DChartLabelsContainingSceneObject
- (TSCH3DChartLabelsContainingSceneObject)init;
- (id)labelsRenderer;
- (void)p_renderWithPipeline:(id)pipeline block:(id)block;
- (void)postRenderBounds:(id)bounds;
- (void)postrender:(id)postrender;
- (void)primeRenderCaches:(id)caches;
- (void)render:(id)render;
- (void)renderLabelRenderInfo:(id)info;
- (void)renderLabelsResourcesSessionWithResources:(id)resources expectedSize:(void *)size pipeline:(id)pipeline renderBlock:(id)block;
@end

@implementation TSCH3DChartLabelsContainingSceneObject

- (TSCH3DChartLabelsContainingSceneObject)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DChartLabelsContainingSceneObject;
  return [(TSCH3DChartLabelsContainingSceneObject *)&v3 init];
}

- (id)labelsRenderer
{
  labelsRenderer = self->_labelsRenderer;
  if (!labelsRenderer)
  {
    v4 = objc_alloc_init(TSCH3DLabelsRenderer);
    v5 = self->_labelsRenderer;
    self->_labelsRenderer = v4;

    labelsRenderer = self->_labelsRenderer;
  }

  return labelsRenderer;
}

- (void)p_renderWithPipeline:(id)pipeline block:(id)block
{
  pipelineCopy = pipeline;
  blockCopy = block;
  v12 = objc_msgSend_labelsRenderer(self, v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_276173C34;
  v18[3] = &unk_27A6B6380;
  v18[4] = self;
  v13 = blockCopy;
  v19 = v13;
  objc_msgSend_performBlockWithRenderer_pipeline_useLabelBounds_block_(TSCH3DLabelsRenderSession, v14, v15, v16, v17, v12, pipelineCopy, 0, v18);
}

- (void)render:(id)render
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276173DD0;
  v5[3] = &unk_27A6B63A8;
  v5[4] = self;
  objc_msgSend_p_renderWithPipeline_block_(self, a2, COERCE_DOUBLE(3221225472), v3, v4, render, v5);
}

- (void)postrender:(id)postrender
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276173E4C;
  v5[3] = &unk_27A6B63A8;
  v5[4] = self;
  objc_msgSend_p_renderWithPipeline_block_(self, a2, COERCE_DOUBLE(3221225472), v3, v4, postrender, v5);
}

- (void)primeRenderCaches:(id)caches
{
  cachesCopy = caches;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276173F50;
  v14[3] = &unk_27A6B63A8;
  v14[4] = self;
  objc_msgSend_p_renderWithPipeline_block_(self, v5, v6, v7, v8, cachesCopy, v14);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276173F5C;
  v13[3] = &unk_27A6B63A8;
  v13[4] = self;
  objc_msgSend_p_renderWithPipeline_block_(self, v9, v10, v11, v12, cachesCopy, v13);
}

- (void)postRenderBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_scene(boundsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_delegateForSceneObject_(v9, v10, v11, v12, v13, self);

  if ((objc_msgSend_willSubmitSceneObject_pipeline_(v14, v15, v16, v17, v18, self, boundsCopy) & 1) == 0)
  {
    v23 = objc_msgSend_labelsRenderer(self, v19, v20, v21, v22);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2761740B0;
    v28[3] = &unk_27A6B63D0;
    v28[4] = self;
    v29 = v14;
    objc_msgSend_performBlockWithRenderer_pipeline_useLabelBounds_block_(TSCH3DLabelsRenderSession, v24, v25, v26, v27, v23, boundsCopy, 1, v28);
  }
}

- (void)renderLabelsResourcesSessionWithResources:(id)resources expectedSize:(void *)size pipeline:(id)pipeline renderBlock:(id)block
{
  resourcesCopy = resources;
  pipelineCopy = pipeline;
  blockCopy = block;
  v17 = objc_msgSend_scene(pipelineCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_delegateForSceneObject_(v17, v18, v19, v20, v21, self);

  objc_msgSend_labelsResourcesSessionWillBeginForSceneObject_pipeline_(v22, v23, v24, v25, v26, self, pipelineCopy);
  v31 = objc_msgSend_labelsRenderer(self, v27, v28, v29, v30);
  v44 = *size;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_276174308;
  v39[3] = &unk_27A6B63F8;
  v32 = blockCopy;
  v43 = v32;
  v33 = v22;
  v40 = v33;
  selfCopy = self;
  v34 = pipelineCopy;
  v42 = v34;
  objc_msgSend_performBlockWithRenderer_resources_expectedSize_block_(TSCH3DLabelsResourcesSession, v35, v36, v37, v38, v31, resourcesCopy, &v44, v39);
}

- (void)renderLabelRenderInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_renderString(infoCopy, v5, v6, v7, v8);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DChartLabelsContainingSceneObject renderLabelRenderInfo:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLabelsContainingSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 168, 0, "invalid nil value for '%{public}s'", "info.renderString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_labelsRenderer(self, v10, v11, v12, v13);
  v34 = objc_msgSend_pipeline(infoCopy, v30, v31, v32, v33);
  v39 = objc_msgSend_scene(v34, v35, v36, v37, v38);

  v45 = objc_msgSend_contextInfoForScene_(TSCH3DLabelBitmapContextInfo, v40, v41, v42, v43, v39);
  if (infoCopy)
  {
    objc_msgSend_resourceIndex(infoCopy, v44, v46, v47, v48);
  }

  else
  {
    v106 = 0;
  }

  v50 = objc_msgSend_renderString(infoCopy, v44, v46, v47, v48);
  if (infoCopy)
  {
    objc_msgSend_alignmentPadding(infoCopy, v49, v51, v52, v53);
  }

  else
  {
    v104 = 0;
  }

  objc_msgSend_wrapWidth(infoCopy, v49, v51, v52, v53);
  objc_msgSend_prepareCachedIndex_string_alignmentPadding_width_bitmapContextInfo_(v29, v55, v54, v56, v57, &v106, v50, &v104, v45);

  v62 = objc_msgSend_pipeline(infoCopy, v58, v59, v60, v61);
  v67 = objc_msgSend_scene(v62, v63, v64, v65, v66);
  v72 = objc_msgSend_delegateForSceneObject_(v67, v68, v69, v70, v71, self);

  if (objc_msgSend_willSubmitLabelForSceneObject_labelRenderInfo_(v72, v73, v74, v75, v76, self, infoCopy))
  {
    objc_msgSend_delegateDidSubmitLabel(v29, v77, v78, v79, v80);
  }

  else
  {
    v81 = objc_alloc_init(TSCH3DExternalLabelAttribute);
    objc_msgSend_updateExternalLabelAttribute_sceneObject_labelRenderInfo_(v72, v82, v83, v84, v85, v81, self, infoCopy);
    if (infoCopy)
    {
      objc_msgSend_position(infoCopy, v86, v87, v88, v89);
      objc_msgSend_offset(infoCopy, v90, v91, v92, v93);
    }

    else
    {
      v107 = 0;
      v106 = 0;
      v105 = 0;
      v104 = 0;
    }

    v95 = objc_msgSend_alignment(infoCopy, v86, v87, v88, v89);
    if (infoCopy)
    {
      objc_msgSend_offset2D(infoCopy, v94, v96, v97, v98);
    }

    else
    {
      v103 = 0;
    }

    objc_msgSend_rotation(infoCopy, v94, v96, v97, v98);
    objc_msgSend_renderAtPosition_offset_alignment_offset2D_rotation_externalAttribute_(v29, v99, v100, v101, v102, &v106, &v104, v95, &v103, v81);
  }
}

@end