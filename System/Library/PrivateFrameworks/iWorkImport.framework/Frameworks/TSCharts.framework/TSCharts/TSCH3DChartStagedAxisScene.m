@interface TSCH3DChartStagedAxisScene
- (void)addChartTitlesToScene;
- (void)addGridlinesToScene;
- (void)addLabelsToScene;
- (void)addObjectsToScene;
- (void)addPartsForEnumerator:(id)a3 styleIndex:(unint64_t)a4;
- (void)addSageBoundsToScene;
@end

@implementation TSCH3DChartStagedAxisScene

- (void)addPartsForEnumerator:(id)a3 styleIndex:(unint64_t)a4
{
  v30 = a3;
  if (v30)
  {
    v10 = objc_msgSend_scene(self, v6, v7, v8, v9);
    v15 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_partWithEnumerator_chartInfo_styleIndex_(TSCH3DChartAxisLabelsSceneObject, v16, v17, v18, v19, v30, v15, a4);
    v25 = objc_msgSend_kind(v30, v21, v22, v23, v24);
    objc_msgSend_setPart_forType_(v10, v26, v27, v28, v29, v20, v25);
  }
}

- (void)addChartTitlesToScene
{
  v66.receiver = self;
  v66.super_class = TSCH3DChartStagedAxisScene;
  [(TSCH3DChartScene *)&v66 addChartTitlesToScene];
  v7 = objc_msgSend_scene(self, v3, v4, v5, v6);
  v12 = objc_msgSend_chartInfo(self, v8, v9, v10, v11);
  v17 = objc_msgSend_styleProvidingSource(self, v13, v14, v15, v16);
  v22 = objc_msgSend_partWithChartInfo_styleProvidingSource_(TSCH3DChartCategoryAxisTitleSceneObject, v18, v19, v20, v21, v12, v17);
  v23 = objc_opt_class();
  objc_msgSend_setPart_forType_(v7, v24, v25, v26, v27, v22, v23);

  v32 = objc_msgSend_sceneObject(TSCH3DChartCategoryAxisTitleSceneObject, v28, v29, v30, v31);
  objc_msgSend_addObject_(v7, v33, v34, v35, v36, v32);

  v41 = objc_msgSend_chartInfo(self, v37, v38, v39, v40);
  v46 = objc_msgSend_styleProvidingSource(self, v42, v43, v44, v45);
  v51 = objc_msgSend_partWithChartInfo_styleProvidingSource_(TSCH3DChartValueAxisTitleSceneObject, v47, v48, v49, v50, v41, v46);
  v52 = objc_opt_class();
  objc_msgSend_setPart_forType_(v7, v53, v54, v55, v56, v51, v52);

  v61 = objc_msgSend_sceneObject(TSCH3DChartValueAxisTitleSceneObject, v57, v58, v59, v60);
  objc_msgSend_addObject_(v7, v62, v63, v64, v65, v61);
}

- (void)addLabelsToScene
{
  v87 = *MEMORY[0x277D85DE8];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v5 = objc_msgSend_chartInfo(self, a2, 0.0, v2, v3);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_axisList(v10, v11, v12, v13, v14);

  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, &v82, v86, 16);
  if (v21)
  {
    v25 = *v83;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v83 != v25)
        {
          objc_enumerationMutation(v15);
        }

        v27 = *(*(&v82 + 1) + 8 * i);
        v29 = objc_msgSend_intValueForProperty_defaultValue_(v27, v20, v22, v23, v24, 1034, 0);
        if (v27)
        {
          objc_msgSend_labelEnumeratorPair(v27, v28, v30, v31, v32);
          objc_msgSend_addPartsForEnumerator_styleIndex_(self, v33, v34, v35, v36, v80, v29);
        }

        else
        {
          v80 = 0;
          v81 = 0;
          objc_msgSend_addPartsForEnumerator_styleIndex_(self, v28, v30, v31, v32, 0, v29);
        }

        objc_msgSend_addPartsForEnumerator_styleIndex_(self, v37, v38, v39, v40, v81, v29);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v20, v22, v23, v24, &v82, v86, 16);
    }

    while (v21);
  }

  v45 = objc_msgSend_sceneObject(TSCH3DChartAxisLabelsSceneObject, v41, v42, v43, v44);
  v50 = objc_msgSend_scene(self, v46, v47, v48, v49);
  objc_msgSend_addObject_(v50, v51, v52, v53, v54, v45);

  objc_opt_class();
  v59 = objc_msgSend_chartType(self, v55, v56, v57, v58);
  v60 = TSUDynamicCast();

  v65 = objc_msgSend_valueLabelPositioner(v60, v61, v62, v63, v64);
  objc_msgSend_setValueLabelPositioner_(v45, v66, v67, v68, v69, v65);

  v74 = objc_msgSend_categoryLabelPositioner(v60, v70, v71, v72, v73);
  objc_msgSend_setCategoryLabelPositioner_(v45, v75, v76, v77, v78, v74);

  v79.receiver = self;
  v79.super_class = TSCH3DChartStagedAxisScene;
  [(TSCH3DChartScene *)&v79 addLabelsToScene];
}

- (void)addGridlinesToScene
{
  v44 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartInfo(self, v6, v7, v8, v9);
  v15 = objc_msgSend_model(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_axisList(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_partWithAxes_(TSCH3DChartGridlinesSceneObject, v21, v22, v23, v24, v20);
  v26 = objc_opt_class();
  objc_msgSend_setPart_forType_(v44, v27, v28, v29, v30, v25, v26);

  v45 = objc_msgSend_scene(self, v31, v32, v33, v34);
  v39 = objc_msgSend_sceneObject(TSCH3DChartGridlinesSceneObject, v35, v36, v37, v38);
  objc_msgSend_addObject_(v45, v40, v41, v42, v43, v39);
}

- (void)addSageBoundsToScene
{
  v14 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v9 = objc_msgSend_sceneObject(TSCH3DSageInvisibleBoundsSceneObject, v5, v6, v7, v8);
  objc_msgSend_addObject_(v14, v10, v11, v12, v13, v9);
}

- (void)addObjectsToScene
{
  v30.receiver = self;
  v30.super_class = TSCH3DChartStagedAxisScene;
  [(TSCH3DChartScene *)&v30 addObjectsToScene];
  v7 = objc_msgSend_scene(self, v3, v4, v5, v6);
  v12 = objc_msgSend_shadowSceneObject(self, v8, v9, v10, v11);
  objc_msgSend_addObject_(v7, v13, v14, v15, v16, v12);

  objc_msgSend_addGridlinesToScene(self, v17, v18, v19, v20);
  objc_msgSend_layoutSettings(self, v21, v22, v23, v24);
  if ((v29 & 1) == 0)
  {
    objc_msgSend_addSageBoundsToScene(self, v25, v26, v27, v28);
  }
}

@end