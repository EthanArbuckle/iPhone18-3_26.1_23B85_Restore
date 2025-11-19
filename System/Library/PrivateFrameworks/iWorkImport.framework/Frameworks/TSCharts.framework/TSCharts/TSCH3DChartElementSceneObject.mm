@interface TSCH3DChartElementSceneObject
+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4;
+ (id)resetSeriesStorage:(id)a3 forSeries:(id)a4;
- (BOOL)applyEffectsForProperties:(id)a3 series:(id)a4 index:(void *)a5 pipeline:(id)a6 injectEffectsUsingBlock:(id)a7;
- (BOOL)p_isRenderPassDelayedForDelegate:(id)a3;
- (ElementRenderPass)render:(id)a3 pushMatrix:(BOOL)a4 delayedPass:(BOOL)a5;
- (float)chartOpacityForScene:(id)a3;
- (id)delegateFromScene:(id)a3;
- (id)elementPropertiesFromScene:(id)a3;
- (id)geometryForSeries:(id)a3 index:(void *)a4 scene:(id)a5;
- (id)modelEnumeratorFromScene:(id)a3;
- (id)scenePartForScene:(id)a3;
- (id)scenePropertiesKey;
- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5;
- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5;
- (tvec2<float>)labelOffset:(unsigned int)a3 labelSize:(const void *)a4 textureSize:(const void *)a5 dataSpaceValue:(float)a6;
- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)a3 scene:(id)a4;
- (void)getBounds:(id)a3;
- (void)getSceneObjectElementsBounds:(id)a3;
- (void)getSelectionKnobsPositions:(id)a3;
- (void)p_processItems:(id)a3 processItemsClass:(Class)a4;
- (void)rayPick:(id)a3;
- (void)render:(id)a3;
- (void)renderElement:(id)a3;
- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4;
- (void)renderTwoPassGeometry:(BOOL)a3 processor:(id)a4 renderBlock:(id)a5;
- (void)setTransparencyBlendingForProcessor:(id)a3;
- (void)updateLightingEffectsState:(id)a3 scene:(id)a4;
@end

@implementation TSCH3DChartElementSceneObject

+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4
{
  v6 = a3;
  v11 = objc_msgSend_propertiesClass(a1, v7, v8, v9, v10);
  v16 = objc_msgSend_properties(v11, v12, v13, v14, v15);
  v26 = *a4;
  objc_msgSend_resetWithEnumerator_layoutSettings_(v16, v17, *&v26.var0, v18, v19, v6, &v26);
  v24 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v20, v21, v22, v23, v6, v16);

  return v24;
}

+ (id)resetSeriesStorage:(id)a3 forSeries:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_shouldCreateMeshSeriesStorage(a1, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_resourcesWithSeries_creator_(TSCH3DChartMeshResources, v12, v13, v14, v15, v7, a1);
  }

  else
  {
    v16 = v6;
  }

  v17 = v16;

  return v17;
}

- (id)delegateFromScene:(id)a3
{
  v6 = objc_msgSend_delegateForSceneObject_(a3, a2, v3, v4, v5, self);

  return v6;
}

- (id)scenePropertiesKey
{
  v2 = objc_opt_class();

  return objc_msgSend_scenePropertiesKey(v2, v3, v4, v5, v6);
}

- (id)scenePartForScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartElementSceneObject scenePartForScene:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 460, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_scenePropertiesKey(self, v4, v6, v7, v8);
  v29 = objc_msgSend_partForType_(v5, v25, v26, v27, v28, v24);

  return v29;
}

- (id)elementPropertiesFromScene:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scenePropertiesKey(self, v5, v6, v7, v8);
  v14 = objc_msgSend_propertiesForType_(v4, v10, v11, v12, v13, v9);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DChartElementSceneObject elementPropertiesFromScene:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 468, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  return v14;
}

- (id)modelEnumeratorFromScene:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scenePropertiesKey(self, v5, v6, v7, v8);
  v14 = objc_msgSend_enumeratorForType_(v4, v10, v11, v12, v13, v9);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DChartElementSceneObject modelEnumeratorFromScene:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 475, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  return v14;
}

- (id)geometryForSeries:(id)a3 index:(void *)a4 scene:(id)a5
{
  v8 = a3;
  v14 = objc_msgSend_elementPropertiesFromScene_(self, v9, v10, v11, v12, a5);
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DChartElementSceneObject geometryForSeries:index:scene:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 481, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_geometryForSeries_index_(v14, v13, v15, v16, v17, v8, a4);

  return v33;
}

- (void)updateLightingEffectsState:(id)a3 scene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_camera(v6, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_space(v11, v12, v13, v14, v15);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  if (v6)
  {
    objc_msgSend_transform(v6, v17, v18, v19, v20);
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  sub_2761558A0(v28, v25, v26);
  *&v21 = sub_27617F7E4(v27, v28, v26);
  objc_msgSend_setLightingPackageEffectState_effectsStates_(TSCH3DLightingPackageShaderEffect, v22, v21, v23, v24, v27, v5);
}

- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5
{
  if (a4 >= a5)
  {
    if ((a3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0x3F8000003F000000;
    goto LABEL_8;
  }

  if ((a3 & 4) != 0)
  {
LABEL_5:
    v6 = 1056964608;
    goto LABEL_8;
  }

  if ((a3 & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((a3 & 8) != 0)
  {
    goto LABEL_5;
  }

  if ((a3 & 0x20) != 0)
  {
    v6 = 0x3F00000000000000;
  }

  else
  {
    LODWORD(a4) = 0;
    LODWORD(a5) = a3 & 0x10;
    v6 = vbsl_s8(vdup_lane_s8(vceq_s8(*&a5, *&a4), 0), 0x3F0000003F000000, 0x3F0000003F800000);
  }

LABEL_8:
  *v5 = v6;
  return self;
}

- (tvec2<float>)labelOffset:(unsigned int)a3 labelSize:(const void *)a4 textureSize:(const void *)a5 dataSpaceValue:(float)a6
{
  v7 = -0.5;
  v8 = *a4;
  v9 = *(a4 + 1);
  v10 = *a4 * -0.5;
  v11 = -(*(a5 + 1) - (v9 * 0.5));
  if ((a3 & 2) == 0)
  {
    v7 = 0.5;
  }

  if ((a3 & 4) != 0)
  {
    v11 = v11 - (v9 * v7);
  }

  v12 = v11 + (v9 * v7);
  if ((a3 & 8) == 0)
  {
    v12 = v11;
  }

  *v6 = v10;
  v6[1] = v12;
  if ((a3 & 0x20) != 0)
  {
    v10 = v10 - (v8 * v7);
    *v6 = v10;
    if ((a3 & 0x10) == 0)
    {
      return self;
    }
  }

  else if ((a3 & 0x10) == 0)
  {
    return self;
  }

  *v6 = v10 + (v8 * v7);
  return self;
}

- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_scene(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_scenePropertiesKey(self, v13, v14, v15, v16);
  v22 = objc_msgSend_partForType_(v12, v18, v19, v20, v21, v17);

  v27 = objc_msgSend_properties(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_enumerator(v22, v28, v29, v30, v31);
  v38 = objc_msgSend_labels(v27, v33, v34, v35, v36);
  if (v32)
  {
    objc_msgSend_size(v32, v37, v39, v40, v41);
  }

  else
  {
    v55 = 0;
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_27617E0D8;
  v50[3] = &unk_27A6B65A0;
  v50[4] = self;
  v42 = v6;
  v51 = v42;
  v43 = v7;
  v52 = v43;
  v44 = v32;
  v53 = v44;
  v45 = v27;
  v54 = v45;
  objc_msgSend_renderLabelsResourcesSessionWithResources_expectedSize_pipeline_renderBlock_(v42, v46, v47, v48, v49, v38, &v55, v43, v50);
}

- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)a3 scene:(id)a4
{
  *v4 = *a3;
  *(v4 + 8) = *(a3 + 2);
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)render:(id)a3
{
  v42 = a3;
  v8 = objc_msgSend_scene(v42, v4, v5, v6, v7);
  objc_msgSend_chartOpacityForScene_(self, v9, v10, v11, v12, v8);
  v14 = v13;

  v19 = objc_msgSend_scene(v42, v15, v16, v17, v18);
  v24 = objc_msgSend_delegateFromScene_(self, v20, v21, v22, v23, v19);

  objc_msgSend_p_isRenderPassDelayedForDelegate_(self, v25, v26, v27, v28, v24);
  LODWORD(v29) = v14;
  objc_msgSend_shouldDelayForChartOpacity_(self, v30, v29, v31, v32);
  objc_msgSend_renderPassDelayDisallowedForSceneObject_pipeline_(v24, v33, v34, v35, v36, self, v42);
  v37 = objc_opt_class();
  objc_msgSend_p_processItems_processItemsClass_(self, v38, v39, v40, v41, v42, v37);
}

- (void)getBounds:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  objc_msgSend_p_processItems_processItemsClass_(self, v5, v6, v7, v8, v9, v4);
}

- (void)rayPick:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  objc_msgSend_p_processItems_processItemsClass_(self, v5, v6, v7, v8, v9, v4);
}

- (void)getSelectionKnobsPositions:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  objc_msgSend_p_processItems_processItemsClass_(self, v5, v6, v7, v8, v9, v4);
}

- (void)getSceneObjectElementsBounds:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  objc_msgSend_p_processItems_processItemsClass_(self, v5, v6, v7, v8, v9, v4);
}

- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = v9;
  if (v9)
  {
    objc_msgSend_element(v9, v10, v11, v12, v13);
    objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v15, v16, v17, v18, v40);
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DChartElementSceneObject selectionPathForInfo:scene:pickedPoint:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 604, 0, "invalid nil value for '%{public}s'", "pickedPoint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v34, v35, v36, v37, 0);
  }
  v38 = ;

  return v38;
}

- (void)renderTwoPassGeometry:(BOOL)a3 processor:(id)a4 renderBlock:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_27617E68C;
    v14[3] = &unk_27A6B65C8;
    v15 = v8;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorRenderStateSession, v10, v11, v12, v13, v7, v14);
  }

  v9[2](v9);
}

- (void)renderElement:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15 = objc_msgSend_properties(v4, v10, v11, v12, v13);
  if (!v15)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCH3DChartElementSceneObject renderElement:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 631, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v162 = 0;
  v163 = &v162;
  v164 = 0x3032000000;
  v165 = sub_27617ED18;
  v166 = sub_27617ED28;
  v167 = objc_msgSend_resource(TSCH3DGeometryResource, v14, COERCE_DOUBLE(0x3032000000), v17, v18);
  if (objc_msgSend_useBoundsGeometry(v4, v34, v35, v36, v37))
  {
    v43 = objc_msgSend_series(v4, v38, v39, v40, v41);
    if (v4)
    {
      objc_msgSend_index(v4, v42, v44, v45, v46);
    }

    else
    {
      *&v159 = 0;
    }

    v47 = objc_msgSend_boundsGeometryForSeries_index_(v15, v42, v44, v45, v46, v43, &v159);
    v48 = v163[5];
    v163[5] = v47;
  }

  v49 = objc_msgSend_resource(v163[5], v38, v39, v40, v41);

  if (!v49)
  {
    v55 = objc_msgSend_series(v4, v50, v51, v52, v53);
    if (v4)
    {
      objc_msgSend_index(v4, v54, v56, v57, v58);
    }

    else
    {
      *&v159 = 0;
    }

    v59 = objc_msgSend_geometryForSeries_index_(v15, v54, v56, v57, v58, v55, &v159);
    v60 = v163[5];
    v163[5] = v59;
  }

  v61 = objc_msgSend_resource(v163[5], v50, v51, v52, v53);

  if (!v61)
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "[TSCH3DChartElementSceneObject renderElement:]");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v73, v74, v75, v76, v67, v72, 641, 0, "invalid nil value for '%{public}s'", "geometry.resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
  }

  v81 = objc_msgSend_resource(v163[5], v62, v63, v64, v65);
  v86 = v81;
  if (v81)
  {
    objc_msgSend_bufferInfo(v81, v82, v83, v84, v85);
  }

  else
  {
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
  }

  if (v160)
  {
    if ((objc_msgSend_geometryOnly(v4, v87, v88, v89, v90) & 1) == 0)
    {
      v96 = objc_msgSend_series(v4, v91, v92, v93, v94);
      if (v4)
      {
        objc_msgSend_index(v4, v95, v97, v98, v99);
      }

      else
      {
        v158 = 0;
      }

      v100 = objc_msgSend_normalsForSeries_index_(v15, v95, v97, v98, v99, v96, &v158);
      objc_msgSend_normals_(v9, v101, v102, v103, v104, v100);

      v110 = objc_msgSend_series(v4, v105, v106, v107, v108);
      if (v4)
      {
        objc_msgSend_index(v4, v109, v111, v112, v113);
      }

      else
      {
        v158 = 0;
      }

      objc_msgSend_addTexcoordsToProcessor_series_index_(v15, v109, v111, v112, v113, v9, v110, &v158);
    }

    v114 = objc_msgSend_resource(v163[5], v91, v92, v93, v94);
    objc_msgSend_geometry_(v9, v115, v116, v117, v118, v114);

    v123 = objc_msgSend_pipeline(v4, v119, v120, v121, v122);
    v128 = objc_msgSend_scene(v123, v124, v125, v126, v127);
    v133 = objc_msgSend_delegateFromScene_(self, v129, v130, v131, v132, v128);

    v154 = &unk_2885B1D68;
    v135 = TSUProtocolCast();
    if (!v135 || (objc_msgSend_geometry(v163[5], v134, v136, v137, v138, &unk_2885B1D68), v139 = objc_claimAutoreleasedReturnValue(), v144 = objc_msgSend_willSubmitGeometry_(v135, v140, v141, v142, v143, v139), v139, v135, (v144 & 1) == 0))
    {
      if ((objc_msgSend_willSubmitElement_sceneObject_(v133, v134, v136, v137, v138, v4, self, v154) & 1) == 0)
      {
        v149 = objc_msgSend_twoPasses(v4, v145, v146, v147, v148);
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = sub_27617ED30;
        v155[3] = &unk_27A6B65F0;
        v157 = &v162;
        v156 = v9;
        objc_msgSend_renderTwoPassGeometry_processor_renderBlock_(self, v150, v151, v152, v153, v149, v156, v155);
      }
    }
  }

  _Block_object_dispose(&v162, 8);
}

- (ElementRenderPass)render:(id)a3 pushMatrix:(BOOL)a4 delayedPass:(BOOL)a5
{
  v5 = a5;
  v70 = a4;
  v7 = a3;
  v12 = objc_msgSend_pipeline(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_scene(v12, v13, v14, v15, v16);
  v22 = objc_msgSend_delegateFromScene_(self, v18, v19, v20, v21, v17);

  v27 = objc_msgSend_pipeline(v7, v23, v24, v25, v26);
  v32 = objc_msgSend_processor(v27, v28, v29, v30, v31);
  if (objc_msgSend_geometryOnly(v7, v33, v34, v35, v36))
  {
    goto LABEL_2;
  }

  v41.var0 = objc_msgSend_renderPassForElement_sceneObject_(v22, v37, v38, v39, v40, v7, self);
  v51 = objc_msgSend_properties(v7, v47, v48, v49, v50);
  v56 = objc_msgSend_series(v7, v52, v53, v54, v55);
  v61 = objc_msgSend_renderingLightingModelForSeries_(v51, v57, v58, v59, v60, v56);

  if (objc_msgSend_hasTransparency(v61, v62, v63, v64, v65) && !v41.var0 && !v5)
  {
    if (objc_msgSend_renderPassDelayDisallowedForSceneObject_pipeline_(v22, v66, v67, v68, v69, self, v27))
    {

LABEL_2:
      v41.var0 = 0;
LABEL_3:
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_27617EFD0;
      v71[3] = &unk_27A6B6618;
      v72 = v27;
      v73 = v7;
      v74 = v22;
      v75 = self;
      objc_msgSend_performBlockWithProcessor_flag_block_(TSCH3DRenderProcessorMatrixSession, v42, v43, v44, v45, v32, v70, v71);

      goto LABEL_4;
    }

    v41.var0 = 2;
  }

  if (!v41.var0 || v5)
  {
    goto LABEL_3;
  }

LABEL_4:

  return v41;
}

- (BOOL)applyEffectsForProperties:(id)a3 series:(id)a4 index:(void *)a5 pipeline:(id)a6 injectEffectsUsingBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v73 = v13;
  v74 = v12;
  v20 = objc_msgSend_scene(v14, v16, v17, v18, v19);
  v25 = objc_msgSend_processor(v14, v21, v22, v23, v24);
  v30 = objc_msgSend_effects(v25, v26, v27, v28, v29);

  v35 = objc_msgSend_processor(v14, v31, v32, v33, v34);
  v40 = objc_msgSend_effectsStates(v35, v36, v37, v38, v39);

  v46 = objc_msgSend_renderingLightingModelForSeries_(v12, v41, v42, v43, v44, v13);
  if (v46)
  {
    objc_msgSend_reset(v30, v45, v47, v48, v49);
    v54 = objc_msgSend_pool(v74, v50, v51, v52, v53);
    objc_msgSend_affect_states_scene_texturePool_(v46, v55, v56, v57, v58, v30, v40, v20, v54);
    objc_msgSend_updateLightingEffectsState_scene_(self, v59, v60, v61, v62, v40, v20);
    v15[2](v15, v30, v40);
    v67 = objc_msgSend_delegateFromScene_(self, v63, v64, v65, v66, v20);
    objc_msgSend_didGenerateShaderEffectsForSeriesAtIndex_effects_sceneObject_pipeline_(v67, v68, v69, v70, v71, a5, v30, self, v14);
  }

  return v46 != 0;
}

- (BOOL)p_isRenderPassDelayedForDelegate:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_renderPassForSceneObject_(v4, v5, v6, v7, v8, self) != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (float)chartOpacityForScene:(id)a3
{
  v6 = objc_msgSend_modelEnumeratorFromScene_(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_info(v6, v7, v8, v9, v10);
  LODWORD(v12) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v11, v13, v12, v14, v15, 1069);
  v17 = v16;

  return v17;
}

- (void)setTransparencyBlendingForProcessor:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    objc_msgSend_renderState(v4, v5, v6, v7, v8);
  }

  else
  {
    v15 = 0;
    v10 = 16843008;
    v16 = 16843008;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  LOBYTE(v15) = 1;
  HIDWORD(v15) = 2;
  BYTE1(v16) = objc_msgSend_transparencyDepthMask(self, v5, *&v10, v7, v8);
  objc_msgSend_setRenderState_(v9, v11, v12, v13, v14, &v15);
}

- (void)p_processItems:(id)a3 processItemsClass:(Class)a4
{
  v55 = a3;
  v10 = objc_msgSend_scene(v55, v6, v7, v8, v9);
  v15 = objc_msgSend_elementPropertiesFromScene_(self, v11, v12, v13, v14, v10);

  if (!a4)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DChartElementSceneObject p_processItems:processItemsClass:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 795, 0, "invalid nil value for '%{public}s'", "processItemsClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = objc_msgSend_processItemsWithSceneObject_properties_pipeline_(a4, v16, v17, v18, v19, self, v15, v55);
  objc_msgSend_processItems(v35, v36, v37, v38, v39);
  v44 = objc_msgSend_scene(v55, v40, v41, v42, v43);
  objc_msgSend_chartOpacityForScene_(self, v45, v46, v47, v48, v44);
  v50 = v49;

  LODWORD(v51) = v50;
  objc_msgSend_processDelayedItemsWithOpacity_(v35, v52, v51, v53, v54);
}

@end