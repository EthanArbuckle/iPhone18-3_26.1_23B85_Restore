@interface TSCH3DChartAddBoundsSceneObject
+ (id)p_rotationBoundsModeForScene:(id)scene;
+ (id)p_setBoundsModeClass:(Class)class forScene:(id)scene;
+ (void)setDepthBoundsForScene:(id)scene;
+ (void)setRadialBoundsFactor:(float)factor forScene:(id)scene;
+ (void)setXYRotationBoundsForScene:(id)scene;
+ (void)setYRotationBoundsForScene:(id)scene;
- (void)getBounds:(id)bounds;
@end

@implementation TSCH3DChartAddBoundsSceneObject

+ (id)p_setBoundsModeClass:(Class)class forScene:(id)scene
{
  sceneCopy = scene;
  v6 = objc_opt_class();
  v11 = objc_msgSend_propertiesForType_(sceneCopy, v7, v8, v9, v10, v6);
  v12 = TSUDynamicCast();

  if (!v12)
  {
    v12 = objc_msgSend_mode(class, v13, v14, v15, v16);
    v17 = objc_opt_class();
    objc_msgSend_setProperties_forType_(sceneCopy, v18, v19, v20, v21, v12, v17);
    if (!v12)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "+[TSCH3DChartAddBoundsSceneObject p_setBoundsModeClass:forScene:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAddBoundsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 295, 0, "invalid nil value for '%{public}s'", "mode");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      v12 = 0;
    }
  }

  return v12;
}

+ (void)setDepthBoundsForScene:(id)scene
{
  sceneCopy = scene;
  v4 = objc_opt_class();
  v9 = objc_msgSend_p_setBoundsModeClass_forScene_(self, v5, v6, v7, v8, v4, sceneCopy);
}

+ (id)p_rotationBoundsModeForScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_opt_class();
  v10 = objc_msgSend_p_setBoundsModeClass_forScene_(self, v6, v7, v8, v9, v5, sceneCopy);

  return v10;
}

+ (void)setYRotationBoundsForScene:(id)scene
{
  v10 = objc_msgSend_p_rotationBoundsModeForScene_(self, a2, v3, v4, v5, scene);
  objc_msgSend_setRotationType_(v10, v6, v7, v8, v9, 0);
}

+ (void)setXYRotationBoundsForScene:(id)scene
{
  v10 = objc_msgSend_p_rotationBoundsModeForScene_(self, a2, v3, v4, v5, scene);
  objc_msgSend_setRotationType_(v10, v6, v7, v8, v9, 1);
}

+ (void)setRadialBoundsFactor:(float)factor forScene:(id)scene
{
  sceneCopy = scene;
  v6 = objc_opt_class();
  v11 = objc_msgSend_p_setBoundsModeClass_forScene_(self, v7, v8, v9, v10, v6, sceneCopy);
  *&v12 = factor;
  objc_msgSend_setFactor_(v11, v13, v12, v14, v15);
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v8 = objc_msgSend_scene(boundsCopy, v4, v5, v6, v7);
  v9 = objc_opt_class();
  v14 = objc_msgSend_propertiesForType_(v8, v10, v11, v12, v13, v9);

  if (v14)
  {
    v19 = objc_msgSend_processor(boundsCopy, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761C12BC;
    v24[3] = &unk_27A6B67A0;
    v25 = v14;
    v26 = boundsCopy;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v20, v21, v22, v23, v19, v24);
  }
}

@end