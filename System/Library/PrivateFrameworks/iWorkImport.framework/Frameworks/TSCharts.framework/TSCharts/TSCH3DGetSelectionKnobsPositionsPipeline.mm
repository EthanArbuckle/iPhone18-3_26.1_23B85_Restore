@interface TSCH3DGetSelectionKnobsPositionsPipeline
+ (id)pipelineWithRep:(id)rep scene:(id)scene selection:(id)selection normalizedKnobRadius:(float)radius;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer;
- (TSCH3DGetSelectionKnobsPositionsPipeline)initWithRep:(id)rep scene:(id)scene selection:(id)selection normalizedKnobRadius:(float)radius;
- (void)getSelectionKnobsPositions:(id)positions;
@end

@implementation TSCH3DGetSelectionKnobsPositionsPipeline

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer
{
  v3 = objc_opt_class();

  return v3;
}

+ (id)pipelineWithRep:(id)rep scene:(id)scene selection:(id)selection normalizedKnobRadius:(float)radius
{
  repCopy = rep;
  sceneCopy = scene;
  selectionCopy = selection;
  v13 = [self alloc];
  *&v14 = radius;
  v18 = objc_msgSend_initWithRep_scene_selection_normalizedKnobRadius_(v13, v15, v14, v16, v17, repCopy, sceneCopy, selectionCopy);

  return v18;
}

- (TSCH3DGetSelectionKnobsPositionsPipeline)initWithRep:(id)rep scene:(id)scene selection:(id)selection normalizedKnobRadius:(float)radius
{
  repCopy = rep;
  sceneCopy = scene;
  selectionCopy = selection;
  v17 = objc_msgSend_clone(sceneCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_processor(TSCH3DGetSelectionKnobsPositionsRenderProcessor, v18, v19, v20, v21);
  *&v23 = radius;
  objc_msgSend_setNormalizedKnobRadius_(v22, v24, v23, v25, v26);
  v70.receiver = self;
  v70.super_class = TSCH3DGetSelectionKnobsPositionsPipeline;
  v27 = [(TSCH3DSceneRenderPipeline *)&v70 initWithProcessor:v22 session:0 scene:v17];
  v28 = v27;
  if (v27)
  {
    v27->_normalizedKnobRadius = radius;
    objc_storeWeak(&v27->_rep, repCopy);
    v33 = objc_msgSend_copy(selectionCopy, v29, v30, v31, v32);
    selection = v28->_selection;
    v28->_selection = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    projectedPoints = v28->_projectedPoints;
    v28->_projectedPoints = v35;

    v41 = objc_msgSend_cameraAndSceneTransform(TSCH3DSceneRenderSetup, v37, v38, v39, v40);
    objc_msgSend_setSetup_(v28, v42, v43, v44, v45, v41);

    v46 = [TSCH3DGetSelectionKnobsPositionsPipelineDelegate alloc];
    v51 = objc_msgSend_initWithRep_selection_(v46, v47, v48, v49, v50, repCopy, v28->_selection);
    sceneObjectDelegate = v28->_sceneObjectDelegate;
    v28->_sceneObjectDelegate = v51;

    objc_msgSend_setProjectedPoints_(v28->_sceneObjectDelegate, v53, v54, v55, v56, v28->_projectedPoints);
    objc_msgSend_makeDelegatesFromDelegator_(v17, v57, v58, v59, v60, v28);
    objc_msgSend_setSceneObjectDelegate_(v22, v61, v62, v63, v64, v28->_sceneObjectDelegate);
    objc_msgSend_setProjectedPoints_(v22, v65, v66, v67, v68, v28->_projectedPoints);
  }

  return v28;
}

- (void)getSelectionKnobsPositions:(id)positions
{
  positionsCopy = positions;
  objc_msgSend_setupRendering(self, v5, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276360B04;
  v12[3] = &unk_27A6B62E8;
  v12[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(positionsCopy, v9, COERCE_DOUBLE(3221225472), v10, v11, v12);
}

@end