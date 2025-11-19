@interface TSCH3DChartSelectedElementHighlightSceneObject
+ (id)propertiesForScene:(id)a3;
+ (void)setHighlightColor:(id)a3 scene:(id)a4;
+ (void)setSelectedSeriesIndex:(unint64_t)a3 scene:(id)a4;
- (id)makeDelegateWithSceneObject:(id)a3 scene:(id)a4;
- (id)p_calculateEdgeVerticesForPipeline:(id)a3;
- (void)render:(id)a3;
@end

@implementation TSCH3DChartSelectedElementHighlightSceneObject

+ (id)propertiesForScene:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_propertiesForType_(v4, v5, v6, v7, v8, a1);
  if (!v9)
  {
    v9 = objc_alloc_init(TSCH3DChartSelectedElementHighlightSceneObjectProperties);
    objc_msgSend_setProperties_forType_(v4, v10, v11, v12, v13, v9, a1);
  }

  return v9;
}

+ (void)setSelectedSeriesIndex:(unint64_t)a3 scene:(id)a4
{
  v15 = a4;
  v5 = objc_opt_class();
  v10 = objc_msgSend_propertiesForScene_(v5, v6, v7, v8, v9, v15);
  objc_msgSend_setSelectedSeriesIndex_(v10, v11, v12, v13, v14, a3);
}

+ (void)setHighlightColor:(id)a3 scene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v12 = objc_msgSend_propertiesForScene_(v7, v8, v9, v10, v11, v6);
  objc_msgSend_redComponent(v5, v13, v14, v15, v16);
  v18 = v17;
  objc_msgSend_greenComponent(v5, v19, v17, v20, v21);
  v23 = v22;
  objc_msgSend_blueComponent(v5, v24, v22, v25, v26);
  v28 = v27;
  objc_msgSend_alphaComponent(v5, v29, v27, v30, v31);
  *&v32 = v18;
  *&v33 = v23;
  *&v34 = v28;
  v36[0] = LODWORD(v32);
  v36[1] = LODWORD(v33);
  v36[2] = LODWORD(v34);
  v36[3] = 1060320051;
  objc_msgSend_setColor_(v12, v35, v32, v33, v34, v36);
}

- (id)p_calculateEdgeVerticesForPipeline:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_main(v9, v10, v11, v12, v13);
  v85 = objc_msgSend_edgeDetectionParameters(v14, v15, v16, v17, v18);

  v19 = [TSCH3DChartSilhouetteEdgeCollectProcessor alloc];
  v24 = objc_msgSend_initWithEdgeDetectionParameters_(v19, v20, v21, v22, v23, &v85);
  v29 = objc_msgSend_scene(v4, v25, v26, v27, v28);
  v34 = objc_msgSend_clone(v29, v30, v31, v32, v33);

  objc_msgSend_resetDelegates(v34, v35, v36, v37, v38);
  objc_msgSend_resetObjects(v34, v39, v40, v41, v42);
  v47 = objc_msgSend_main(v34, v43, v44, v45, v46);
  v52 = objc_msgSend_objectWithMain_(TSCH3DChartStageSceneObject, v48, v49, v50, v51, v47);

  objc_msgSend_addObject_(v34, v53, v54, v55, v56, v52);
  objc_msgSend_makeDelegatesFromDelegator_(v34, v57, v58, v59, v60, self);
  v65 = objc_msgSend_baseRecloneWithProcessor_scene_(v4, v61, v62, v63, v64, v24, v34);
  v70 = objc_msgSend_camera(v4, v66, v67, v68, v69);
  objc_msgSend_setupCamera_(v65, v71, v72, v73, v74, v70);

  objc_msgSend_render_(v52, v75, v76, v77, v78, v65);
  v83 = objc_msgSend_edges(v24, v79, v80, v81, v82);

  return v83;
}

- (void)render:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = objc_msgSend_scene(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_propertiesForScene_(v5, v11, v12, v13, v14, v10);

  if (objc_msgSend_selectedSeriesIndex(v15, v16, v17, v18, v19) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = objc_msgSend_edgeVertices(v15, v20, v21, v22, v23);
    if (v25 || (objc_msgSend_p_calculateEdgeVerticesForPipeline_(self, v24, v26, v27, v28, v4), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setEdgeVertices_(v15, v29, v30, v31, v32, v25), v25))
    {
      v33 = objc_msgSend_scene(v4, v24, v26, v27, v28);
      v38 = objc_msgSend_delegateForSceneObject_(v33, v34, v35, v36, v37, self);

      if (objc_msgSend_willSubmitSceneObject_pipeline_(v38, v39, v40, v41, v42, self, v4))
      {
      }

      else
      {
        v47 = objc_msgSend_processor(v4, v43, v44, v45, v46);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = sub_2763716E8;
        v53[3] = &unk_27A6BA090;
        v54 = v15;
        v55 = v4;
        v56 = v25;
        v48 = v38;
        v57 = v48;
        v58 = self;
        objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v49, v50, v51, v52, v47, v53);
      }
    }
  }
}

- (id)makeDelegateWithSceneObject:(id)a3 scene:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v10 = objc_msgSend_propertiesForScene_(v5, v6, v7, v8, v9, v4);
  v11 = [TSCH3DChartSelectedElementSceneObjectDelegate alloc];
  v16 = objc_msgSend_selectedSeriesIndex(v10, v12, v13, v14, v15);
  v21 = objc_msgSend_initWithSelectedSeriesIndex_(v11, v17, v18, v19, v20, v16);

  return v21;
}

@end