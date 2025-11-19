@interface TSCH3DRayPickPipeline
+ (id)pipelineWithScene:(id)a3 position:(void *)a4;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)a3;
- (NSArray)pickedPoints;
- (TSCH3DPickedPoint)pickedPoint;
- (TSCH3DRayPickPipeline)initWithScene:(id)a3 position:(void *)a4;
- (float)slack;
- (id)p_closestPickedPoint;
- (id)p_frontMostPickedPoint;
- (id)p_renderProcessor;
- (id)p_unsortedPickedPoints;
- (void)rayPick:(id)a3;
- (void)setSlack:(float)a3;
@end

@implementation TSCH3DRayPickPipeline

+ (id)pipelineWithScene:(id)a3 position:(void *)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithScene_position_(v7, v8, v9, v10, v11, v6, a4);

  return v12;
}

- (TSCH3DRayPickPipeline)initWithScene:(id)a3 position:(void *)a4
{
  v6 = a3;
  v11 = objc_msgSend_processor(TSCH3DRayPickRenderProcessor, v7, v8, v9, v10);
  v16 = objc_msgSend_clone(v6, v12, v13, v14, v15);
  v42.receiver = self;
  v42.super_class = TSCH3DRayPickPipeline;
  v18 = [(TSCH3DSceneRenderPipeline *)&v42 initWithProcessor:v11 session:0 scene:v16];
  if (v18)
  {
    v22 = objc_msgSend_cameraAndSceneTransform(TSCH3DSceneRenderSetup, v17, v19, v20, v21);
    objc_msgSend_setSetup_(v18, v23, v24, v25, v26, v22);

    v18->_pickPosition.var0.var0 = *a4;
    v18->_pickPosition.var1.var0 = *(a4 + 1);
    v27 = objc_alloc_init(TSCH3DRayPickPipelineDelegate);
    sceneObjectDelegate = v18->_sceneObjectDelegate;
    v18->_sceneObjectDelegate = v27;

    objc_msgSend_makeDelegatesFromDelegator_(v16, v29, v30, v31, v32, v18);
    v41 = *a4;
    objc_msgSend_setPosition_(v11, v33, v41, v34, v35, &v41);
    objc_msgSend_setSceneObjectDelegate_(v11, v36, v37, v38, v39, v18->_sceneObjectDelegate);
  }

  return v18;
}

- (void)rayPick:(id)a3
{
  v4 = a3;
  objc_msgSend_setupRendering(self, v5, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276166A1C;
  v12[3] = &unk_27A6B62E8;
  v12[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v9, COERCE_DOUBLE(3221225472), v10, v11, v12);
}

- (id)p_unsortedPickedPoints
{
  v5 = objc_msgSend_p_renderProcessor(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pickedPoints(v5, v6, v7, v8, v9);

  return v10;
}

- (id)p_renderProcessor
{
  objc_opt_class();
  v7 = objc_msgSend_processor(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DRayPickPipeline p_renderProcessor]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 92, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return v8;
}

- (NSArray)pickedPoints
{
  v5 = objc_msgSend_p_unsortedPickedPoints(self, a2, v2, v3, v4);
  v10 = objc_msgSend_sortedArrayUsingComparator_(v5, v6, v7, v8, v9, &unk_28851CE08);

  return v10;
}

- (float)slack
{
  v5 = objc_msgSend_p_renderProcessor(self, a2, v2, v3, v4);
  objc_msgSend_slack(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (void)setSlack:(float)a3
{
  v10 = objc_msgSend_p_renderProcessor(self, a2, *&a3, v3, v4);
  *&v6 = a3;
  objc_msgSend_setSlack_(v10, v7, v6, v8, v9);
}

- (id)p_closestPickedPoint
{
  v6 = objc_msgSend_p_unsortedPickedPoints(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_p_renderProcessor(self, v11, v12, v13, v14);
    v20 = v15;
    if (v15)
    {
      objc_msgSend_position(v15, v16, v17, v18, v19);
    }

    else
    {
      v48 = 0;
    }

    v22 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, v17, v18, v19, 0);
    v21 = v22;
    if (v22)
    {
      objc_msgSend_centerProjectionPoint(v22, v23, v24, v25, v26);
      *&v28 = v46;
      *&v27 = v47;
    }

    else
    {
      v27 = 0.0;
      v28 = 0.0;
    }

    LODWORD(v26) = v48;
    *&v28 = *&v28 - *&v48;
    *&v27 = ((*&v27 - *(&v48 + 1)) * (*&v27 - *(&v48 + 1))) + (*&v28 * *&v28);
    v29 = sqrtf(*&v27);
    for (i = 1; i < objc_msgSend_count(v6, v23, v27, v28, v26); ++i)
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v6, v31, v32, v33, v34, i);
      v40 = v35;
      if (v35)
      {
        objc_msgSend_centerProjectionPoint(v35, v36, v37, v38, v39);
        v42 = v46;
        v41 = v47;
      }

      else
      {
        v41 = 0.0;
        v42 = 0.0;
      }

      v43 = sqrtf(((v41 - *(&v48 + 1)) * (v41 - *(&v48 + 1))) + ((v42 - *&v48) * (v42 - *&v48)));
      if (v43 < v29)
      {
        v44 = v40;

        v21 = v44;
        v29 = v43;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)p_frontMostPickedPoint
{
  v5 = objc_msgSend_pickedPoints(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v10, v11, v12, v13, 0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSCH3DPickedPoint)pickedPoint
{
  objc_msgSend_slack(self, a2, v2, v3, v4);
  if (*&v7 <= 0.0)
  {
    objc_msgSend_p_frontMostPickedPoint(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_p_closestPickedPoint(self, v6, v7, v8, v9);
  }
  v10 = ;

  return v10;
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)a3
{
  v3 = objc_opt_class();

  return v3;
}

@end