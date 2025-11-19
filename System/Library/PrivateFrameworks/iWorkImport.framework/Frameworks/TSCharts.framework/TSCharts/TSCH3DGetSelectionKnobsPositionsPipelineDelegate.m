@interface TSCH3DGetSelectionKnobsPositionsPipelineDelegate
- (BOOL)p_labelSelectedForType:(int)a3 alignment:(unint64_t)a4 elementIndex:(int64_t)a5;
- (BOOL)willProcessSeries:(id)a3 sceneObject:(id)a4 pipeline:(id)a5;
- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7;
- (TSCH3DGetSelectionKnobsPositionsPipelineDelegate)initWithRep:(id)a3 selection:(id)a4;
- (id)p_selectedSeries;
- (void)addLabelBoundsForMerging:(CGRect)a3;
- (void)didRunForScene:(id)a3 pipeline:(id)a4;
- (void)labelsResourcesSessionWillBeginForSceneObject:(id)a3 pipeline:(id)a4;
- (void)willRunForScene:(id)a3 pipeline:(id)a4;
@end

@implementation TSCH3DGetSelectionKnobsPositionsPipelineDelegate

- (TSCH3DGetSelectionKnobsPositionsPipelineDelegate)initWithRep:(id)a3 selection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = TSCH3DGetSelectionKnobsPositionsPipelineDelegate;
  v8 = [(TSCH3DGetSelectionKnobsPositionsPipelineDelegate *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_rep, v6);
    v14 = objc_msgSend_copy(v7, v10, v11, v12, v13);
    selection = v9->_selection;
    v9->_selection = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    labelsBoundsForMerging = v9->_labelsBoundsForMerging;
    v9->_labelsBoundsForMerging = v16;
  }

  return v9;
}

- (void)willRunForScene:(id)a3 pipeline:(id)a4
{
  obj = a3;
  if (objc_msgSend_count(self->_labelsBoundsForMerging, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate willRunForScene:pipeline:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 160, 0, "labels bounds must be cleared before processing labels %@", self->_labelsBoundsForMerging);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate willRunForScene:pipeline:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 161, 0, "expected nil value for '%{public}s'", "_scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  objc_storeWeak(&self->_scene, obj);
}

- (void)didRunForScene:(id)a3 pipeline:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = self->_labelsBoundsForMerging;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v49, v53, 16);
  if (v12)
  {
    v16 = *v50;
    do
    {
      v17 = 0;
      do
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v6);
        }

        v18 = objc_msgSend_objectForKey_(self->_labelsBoundsForMerging, v11, v13, v14, v15, *(*(&v49 + 1) + 8 * v17));
        objc_msgSend_mergeBoundsIntoProjectedPoints_(v18, v19, v20, v21, v22, self->_projectedPoints);

        ++v17;
      }

      while (v12 != v17);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, v13, v14, v15, &v49, v53, 16);
    }

    while (v12);
  }

  objc_msgSend_removeAllObjects(self->_labelsBoundsForMerging, v23, v24, v25, v26);
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v28 = WeakRetained == v5;

  if (!v28)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate didRunForScene:pipeline:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    v40 = objc_loadWeakRetained(&self->_scene);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v41, v42, v43, v44, v34, v39, 172, 0, "delegate scene mismatch %@ should be %@", v5, v40, v49);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  objc_storeWeak(&self->_scene, 0);
}

- (BOOL)willProcessSeries:(id)a3 sceneObject:(id)a4 pipeline:(id)a5
{
  v6 = a3;
  v11 = objc_msgSend_p_selectedSeries(self, v7, v8, v9, v10);
  v16 = objc_msgSend_index(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_containsIndex_(v11, v17, v18, v19, v20, v16);

  return v21 ^ 1;
}

- (void)addLabelBoundsForMerging:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3.origin.x, a3.origin.y, a3.size.width, self->_currentLabelType);
  v13 = objc_msgSend_objectForKey_(self->_labelsBoundsForMerging, v8, v9, v10, v11);
  if (!v13)
  {
    v17 = objc_msgSend_boundsWithLabelType_knobsMode_(TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds, v12, v14, v15, v16, self->_currentLabelType, self->_knobsMode);
    objc_msgSend_addNewBoundsArray(v17, v18, v19, v20, v21);
    v13 = v17;
    objc_msgSend_setObject_forKey_(self->_labelsBoundsForMerging, v22, v23, v24, v25, v17, v26);
  }

  objc_msgSend_addBounds_(v13, v12, x, y, width, height);
}

- (void)labelsResourcesSessionWillBeginForSceneObject:(id)a3 pipeline:(id)a4
{
  v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, v4, v5, v6, self->_currentLabelType, a4);
  v12 = objc_msgSend_objectForKey_(self->_labelsBoundsForMerging, v8, v9, v10, v11);
  objc_msgSend_addNewBoundsArray(v12, v13, v14, v15, v16);
}

- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7
{
  v9 = *&a3;
  v11 = a7;
  if (v9 == 6)
  {
    v12 = 3;
  }

  else
  {
    v12 = v9;
  }

  self->_currentLabelType = v12;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (!WeakRetained)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate willSubmitLabelType:boundsIndex:alignment:elementIndex:forSceneObject:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 238, 0, "invalid nil value for '%{public}s'", "_scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_loadWeakRetained(&self->_scene);
  self->_knobsMode = objc_msgSend_knobsModeForLabelType_scene_(v11, v34, v35, v36, v37, v9, v33);

  v42 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v38, v39, v40, v41, self->_currentLabelType);
  v47 = objc_msgSend_objectForKey_(self->_labelsBoundsForMerging, v43, v44, v45, v46, v42);
  v52 = v47;
  if (v47 && objc_msgSend_knobsMode(v47, v48, v49, v50, v51) != self->_knobsMode)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate willSubmitLabelType:boundsIndex:alignment:elementIndex:forSceneObject:]");
    v76 = a6;
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    knobsMode = self->_knobsMode;
    v65 = objc_msgSend_knobsMode(v52, v61, v62, v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v66, v67, v68, v69, v54, v59, 245, 0, "knobs mode mismatch mode %lu should be %lu", knobsMode, v65);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    a6 = v76;
  }

  v74 = objc_msgSend_p_labelSelectedForType_alignment_elementIndex_(self, v48, v49, v50, v51, v9, a5, a6);

  return v74 ^ 1;
}

- (BOOL)p_labelSelectedForType:(int)a3 alignment:(unint64_t)a4 elementIndex:(int64_t)a5
{
  v147[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_array(MEMORY[0x277CBEA60], a2, v5, v6, v7, *&a3, a4);
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  v17 = objc_msgSend_chartInfo(WeakRetained, v13, v14, v15, v16);
  v22 = objc_msgSend_chart(v17, v18, v19, v20, v21);

  v135 = v22;
  if (!v22)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate p_labelSelectedForType:alignment:elementIndex:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 275, 0, "invalid nil value for '%{public}s'", "info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  v134 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v23, v24, v25, v26, v135);
  v136 = objc_msgSend_axisForInfo_(TSCHChartValueAxis, v42, v43, v44, v45, v135);
  v51 = objc_msgSend_axisID(v134, v46, v47, v48, v49);
  if (v51)
  {
    v55 = objc_msgSend_axisID(v134, v50, v52, v53, v54);
    v147[0] = v55;
    v133 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v57, v58, v59, v147, 1);
  }

  else
  {
    v133 = objc_msgSend_array(MEMORY[0x277CBEA60], v50, v52, v53, v54);
  }

  v65 = objc_msgSend_axisID(v136, v60, v61, v62, v63);
  if (v65)
  {
    v69 = objc_msgSend_axisID(v136, v64, v66, v67, v68);
    v146 = v69;
    v132 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v71, v72, v73, &v146, 1);
  }

  else
  {
    v132 = objc_msgSend_array(MEMORY[0x277CBEA60], v64, v66, v67, v68);
  }

  v137 = 0;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v137 = objc_msgSend_chartTitleType(TSCHSelectionPathType, v74, v75, v76, v77);
        objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v79, v80, v81, v82, v137, v11);
        goto LABEL_28;
      case 1:
        v137 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v74, v75, v76, v77);
        goto LABEL_24;
      case 2:
        v137 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v74, v75, v76, v77);
        goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        v137 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v74, v75, v76, v77);
LABEL_17:
        v78 = v132;
LABEL_25:
        v92 = v78;
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (a3 == 5)
    {
      v137 = objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, v74, v75, v76, v77);
      v87 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v83, v84, v85, v86, a5);
      v145 = v87;
      v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, v89, v90, v91, &v145, 1);

      v11 = v87;
LABEL_26:

      v11 = v92;
      goto LABEL_27;
    }

    if (a3 == 6)
    {
LABEL_20:
      v137 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v74, v75, v76, v77);
LABEL_24:
      v78 = v133;
      goto LABEL_25;
    }
  }

LABEL_27:
  objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v74, v75, v76, v77, v137, v11);
  v139 = LABEL_28:;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = self->_selection;
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, v94, v95, v96, &v140, v144, 16);
  if (v98)
  {
    v102 = *v141;
    while (2)
    {
      for (i = 0; i != v98; ++i)
      {
        if (*v141 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v104 = *(*(&v140 + 1) + 8 * i);
        v105 = objc_msgSend_pathType(v139, v97, v99, v100, v101);
        v110 = objc_msgSend_pathType(v104, v106, v107, v108, v109);
        isEqual = objc_msgSend_isEqual_(v105, v111, v112, v113, v114, v110);

        if (isEqual)
        {
          v116 = objc_msgSend_count(v11, v97, v99, v100, v101);
          if (!v116)
          {
            goto LABEL_44;
          }

          v117 = 1;
          do
          {
            v118 = objc_msgSend_objectAtIndexedSubscript_(v11, v97, v99, v100, v101, v117 - 1);
            v123 = objc_msgSend_argumentAtIndex_(v104, v119, v120, v121, v122, v117 - 1);
            v128 = objc_msgSend_isEqual_(v118, v124, v125, v126, v127, v123);

            if (v117 < v116)
            {
              v129 = v128;
            }

            else
            {
              v129 = 0;
            }

            ++v117;
          }

          while ((v129 & 1) != 0);
          if (v128)
          {
LABEL_44:
            v130 = 1;
            goto LABEL_45;
          }
        }
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v97, v99, v100, v101, &v140, v144, 16);
      if (v98)
      {
        continue;
      }

      break;
    }
  }

  v130 = 0;
LABEL_45:

  return v130;
}

- (id)p_selectedSeries
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = self->_selection;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v62, v66, 16);
  if (v13)
  {
    v17 = *v63;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v62 + 1) + 8 * i);
        v20 = objc_msgSend_pathType(v19, v12, v14, v15, v16);
        v25 = objc_msgSend_seriesType(TSCHSelectionPathType, v21, v22, v23, v24);
        isEqual = objc_msgSend_isEqual_(v20, v26, v27, v28, v29, v25);

        if (isEqual)
        {
          objc_opt_class();
          v35 = objc_msgSend_argumentAtIndex_(v19, v31, v32, v33, v34, 0);
          v36 = TSUDynamicCast();

          if (!v36)
          {
            v41 = MEMORY[0x277D81150];
            v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DGetSelectionKnobsPositionsPipelineDelegate p_selectedSeries]");
            v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 331, 0, "invalid nil value for '%{public}s'", "series");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
          }

          v56 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39, v40);
          objc_msgSend_addIndex_(v6, v57, v58, v59, v60, v56);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v62, v66, 16);
    }

    while (v13);
  }

  return v6;
}

@end