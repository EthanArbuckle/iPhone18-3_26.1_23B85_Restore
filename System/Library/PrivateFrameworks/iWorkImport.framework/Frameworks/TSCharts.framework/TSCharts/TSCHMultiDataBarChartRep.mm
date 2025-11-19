@interface TSCHMultiDataBarChartRep
- (BOOL)p_repElementIsAboveInterceptForSeriesIndex:(unint64_t)a3 groupIndex:(unint64_t)a4;
- (CGRect)currentRepElementBoundsInNaturalSpace;
- (CGRect)p_clampRenderingElementFrame:(CGRect)a3 barElementFrame:(CGRect)a4;
- (CGRect)p_renderingElementFrameForBarElementFrame:(CGRect)a3;
- (id)p_barElementsRenderer;
- (id)p_currentBarSeriesModelCache;
- (unint64_t)p_currentGroupIndex;
- (unint64_t)p_currentSeriesIndex;
- (void)p_calculateInterceptForElementFrame:(CGRect)a3 elementLayer:(id)a4 animationInfo:(id)a5;
- (void)updateAppearanceForElementLayer:(id)a3 seriesIndex:(unint64_t)a4;
- (void)updateElementFrame:(CGRect)a3 forElementLayer:(id)a4 series:(id)a5 addingAnimationsToAnimationInfo:(id)a6;
- (void)updateElementLayerLayoutForCurrentRepElementIndexAnimationInfo:(id)a3;
@end

@implementation TSCHMultiDataBarChartRep

- (id)p_barElementsRenderer
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = objc_msgSend_renderers(self, a2, 0.0, v2, v3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v18, v22, 16);
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v13, v14, v15, v16, &v18, v22, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (unint64_t)p_currentSeriesIndex
{
  v5 = objc_msgSend_renderSeriesIndexSet(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9) != 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHMultiDataBarChartRep p_currentSeriesIndex]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 108, 0, "invalid current series index set %@", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  Index = objc_msgSend_firstIndex(v5, v10, v11, v12, v13);

  return Index;
}

- (unint64_t)p_currentGroupIndex
{
  v6 = objc_msgSend_p_currentSeriesIndex(self, a2, v2, v3, v4);
  v11 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(self, v7, v8, v9, v10, v6);
  if (objc_msgSend_count(v11, v12, v13, v14, v15) != 1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHMultiDataBarChartRep p_currentGroupIndex]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 114, 0, "invalid current value index set %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  Index = objc_msgSend_firstIndex(v11, v16, v17, v18, v19);

  return Index;
}

- (id)p_currentBarSeriesModelCache
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_model(v6, v7, v8, v9, v10);

  if (!v11)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHMultiDataBarChartRep p_currentBarSeriesModelCache]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 120, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_p_currentSeriesIndex(self, v12, v13, v14, v15);
  v37 = objc_msgSend_barModelCacheForSeries_(v11, v32, v33, v34, v35, v31);
  if (!v37)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v38, v39, v40, "[TSCHMultiDataBarChartRep p_currentBarSeriesModelCache]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 122, 0, "invalid nil value for '%{public}s'", "barModelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  return v37;
}

- (CGRect)p_clampRenderingElementFrame:(CGRect)a3 barElementFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (!CGRectIsNull(v22))
    {
      isHorizontalChart = objc_msgSend_isHorizontalChart(self, v13, v14, v15, v16);
      if (isHorizontalChart)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = width;
      }

      if (isHorizontalChart)
      {
        v8 = height;
      }

      else
      {
        v8 = 0.0;
      }

      v11 = x;
      v10 = y;
    }
  }

  v18 = v11;
  v19 = v10;
  v20 = v9;
  v21 = v8;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)p_renderingElementFrameForBarElementFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v13 = objc_msgSend_p_barElementsRenderer(self, v8, v9, v10, v11);
    if (!v13)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHMultiDataBarChartRep p_renderingElementFrameForBarElementFrame:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 143, 0, "invalid nil value for '%{public}s'", "renderer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    objc_msgSend_transformToConvertChartLayoutToRepElement(self, v12, 0.0, v15, v16);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    sub_27628C514(&v56, &v62);
    v32 = *(MEMORY[0x277CBF398] + 16);
    v60 = *MEMORY[0x277CBF398];
    v61 = v32;
    v35 = objc_msgSend_p_currentGroupIndex(self, v33, *&v60, *&v32, v34);
    v40 = objc_msgSend_p_currentBarSeriesModelCache(self, v36, v37, v38, v39);
    objc_msgSend_viewScale(self, v41, v42, v43, v44);
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    objc_msgSend_renderingElementFrameForBarElementFrame_groupIndex_modelCache_stroke_viewScale_contextInfo_returningFillRect_strokeRect_(v13, v45, x, y, width, v35, v40, 0, &v56, &v60, 0, height, v46);

    objc_msgSend_p_clampRenderingElementFrame_barElementFrame_(self, v47, *&v60, *(&v60 + 1), *&v61, *(&v61 + 1), x, y, width, height);
    x = v48;
    y = v49;
    width = v50;
    height = v51;
  }

  v52 = x;
  v53 = y;
  v54 = width;
  v55 = height;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)currentRepElementBoundsInNaturalSpace
{
  v7 = objc_msgSend_p_barElementsRenderer(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHMultiDataBarChartRep currentRepElementBoundsInNaturalSpace]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 162, 0, "invalid nil value for '%{public}s'", "renderer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_p_currentBarSeriesModelCache(self, v6, v8, v9, v10);
  v31 = objc_msgSend_series(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_p_currentGroupIndex(self, v32, v33, v34, v35);
  objc_msgSend_barElementFrameForSeries_groupIndex_(v7, v37, v38, v39, v40, v31, v36);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  objc_msgSend_p_renderingElementFrameForBarElementFrame_(self, v49, v42, v44, v46, v48);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v60 = objc_msgSend_chartLayout(self, v58, v50, v52, v54);
  if (!v60)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v61, v62, v63, "[TSCHMultiDataBarChartRep currentRepElementBoundsInNaturalSpace]");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v71, v72, v73, v74, v65, v70, 168, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v60, v59, v51, v53, v55, v57);
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v87 = v80;
  v88 = v82;
  v89 = v84;
  v90 = v86;
  result.size.height = v90;
  result.size.width = v89;
  result.origin.y = v88;
  result.origin.x = v87;
  return result;
}

- (BOOL)p_repElementIsAboveInterceptForSeriesIndex:(unint64_t)a3 groupIndex:(unint64_t)a4
{
  v9 = objc_msgSend_chartLayout(self, a2, v4, v5, v6);
  v14 = objc_msgSend_model(v9, v10, v11, v12, v13);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHMultiDataBarChartRep p_repElementIsAboveInterceptForSeriesIndex:groupIndex:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 175, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v35 = objc_msgSend_barModelCacheForSeries_(v14, v15, v16, v17, v18, a3);
  if (!v35)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHMultiDataBarChartRep p_repElementIsAboveInterceptForSeriesIndex:groupIndex:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 177, 0, "invalid nil value for '%{public}s'", "barModelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  v54 = objc_msgSend_series(v35, v34, v36, v37, v38);
  v59 = objc_msgSend_seriesType(v54, v55, v56, v57, v58);
  v64 = objc_msgSend_valueAxis(v35, v60, v61, v62, v63);
  objc_msgSend_unitSpaceIntercept(v35, v65, v66, v67, v68);
  v70 = v69;
  objc_msgSend_unitSpaceValueForSeries_groupIndex_(v64, v71, v69, v72, v73, v54, a4);
  v75 = v74;
  objc_msgSend_beginValueForSeries_groupIndex_unitSpaceIntercept_relativelyPositive_valueAxis_(v59, v76, v70, v77, v78, a3, a4, v74 >= v70, v64);
  v80 = v75 >= v79;

  return v80;
}

- (void)p_calculateInterceptForElementFrame:(CGRect)a3 elementLayer:(id)a4 animationInfo:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v110[3] = *MEMORY[0x277D85DE8];
  v109 = a3;
  v11 = a4;
  v13 = a5;
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHMultiDataBarChartRep p_calculateInterceptForElementFrame:elementLayer:animationInfo:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 193, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_aboveIntercept(v13, v12, v14, v15, v16);
  isHorizontalChart = objc_msgSend_isHorizontalChart(self, v33, v34, v35, v36);
  v42 = objc_msgSend_currentValueLayer(v11, v38, v39, v40, v41);
  v43 = *(MEMORY[0x277CBF3A0] + 16);
  v44 = *(MEMORY[0x277CBF3A0] + 24);
  if (v32)
  {
    if ((isHorizontalChart & 1) == 0)
    {
      v111.origin.x = x;
      v111.origin.y = y;
      v111.size.width = width;
      v111.size.height = height;
      y = CGRectGetMaxY(v111);
    }
  }

  else if (isHorizontalChart)
  {
    v112.origin.x = x;
    v112.origin.y = y;
    v112.size.width = width;
    v112.size.height = height;
    x = CGRectGetMaxX(v112);
  }

  v46 = sub_276377A04(&v109, isHorizontalChart);
  if (isHorizontalChart)
  {
    v49 = v43;
  }

  else
  {
    v49 = v46;
  }

  if (isHorizontalChart)
  {
    v50 = v46;
  }

  else
  {
    v50 = v44;
  }

  objc_msgSend_frame(v42, v45, v46, v47, v48);
  v105 = v51;
  v106 = v52;
  v107 = v53;
  v108 = v54;
  v104 = &unk_2885733D8;
  v55 = TSUProtocolCast();
  v60 = v55;
  if (v55)
  {
    objc_msgSend_currentFrame(v55, v56, v57, v58, v59, &unk_2885733D8);
    v105 = v61;
    v106 = v62;
    v107 = v63;
    v108 = v64;
  }

  v65 = isHorizontalChart ^ 1;
  TSUCenterOfRect();
  if (isHorizontalChart)
  {
    v68 = v66 >= x;
  }

  else
  {
    v68 = v67 <= y;
  }

  v69 = sub_276377A04(&v105, v65);
  v70 = sub_276377A04(&v109, v65);
  objc_msgSend_setCurrentAtIntercept_(v13, v71, v70, v72, v73, v69 == 0.0);
  objc_msgSend_setAtIntercept_(v13, v74, v75, v76, v77, v70 == 0.0);
  objc_msgSend_setCurrentAboveIntercept_(v13, v78, v79, v80, v81, v68);
  objc_msgSend_setInterceptRect_(v13, v82, x, y, v49, v50);
  if (v32 != v68 && v69 != 0.0 && v70 != 0.0)
  {
    v83 = sub_276377A04(&v105, v65);
    v85 = v83 + sub_276377A04(&v109, v65);
    v87 = v83 / v85;
    v88 = v85 == 0.0;
    v89 = 0.5;
    if (!v88)
    {
      v89 = v87;
    }

    v110[0] = &unk_28856E888;
    v90 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v84, v89, v87, v86, v104);
    v110[1] = v90;
    v110[2] = &unk_28856E8A0;
    v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v92, v93, v94, v110, 3);
    objc_msgSend_setKeyTimes_(v13, v96, v97, v98, v99, v95);

    objc_msgSend_setCrossesIntercept_(v13, v100, v101, v102, v103, 1);
  }
}

- (void)updateElementLayerLayoutForCurrentRepElementIndexAnimationInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHMultiDataBarChartRep updateElementLayerLayoutForCurrentRepElementIndexAnimationInfo:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 238, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v25 = objc_msgSend_chartLayout(self, v4, v6, v7, v8);
  if (!v25)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v26, v27, v28, "[TSCHMultiDataBarChartRep updateElementLayerLayoutForCurrentRepElementIndexAnimationInfo:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 241, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  objc_msgSend_chartBodyFrame(v25, v24, v26, v27, v28);
  objc_msgSend_p_renderingElementFrameForBarElementFrame_(self, v44, v45, v46, v47);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  objc_msgSend_transformToConvertChartLayoutToRepElement(self, v56, v48, v50, v52);
  v60 = v59;
  v61.origin.x = v49;
  v61.origin.y = v51;
  v61.size.width = v53;
  v61.size.height = v55;
  v62 = CGRectApplyAffineTransform(v61, &v60);
  objc_msgSend_setChartBodyFrameInRepElementSpace_(v5, v57, v62.origin.x, v62.origin.y, v62.size.width, v62.size.height);
  v58.receiver = self;
  v58.super_class = TSCHMultiDataBarChartRep;
  [(TSCHMultiDataBarChartRep *)&v58 updateElementLayerLayoutForCurrentRepElementIndexAnimationInfo:v5];
}

- (void)updateElementFrame:(CGRect)a3 forElementLayer:(id)a4 series:(id)a5 addingAnimationsToAnimationInfo:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v16 = a6;
  if (!v16)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHMultiDataBarChartRep updateElementFrame:forElementLayer:series:addingAnimationsToAnimationInfo:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 250, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = objc_msgSend_seriesIndex(v14, v15, v17, v18, v19);
  v40 = objc_msgSend_currentGroupIndex(self, v36, v37, v38, v39);
  IsAboveInterceptForSeriesIndex_groupIndex = objc_msgSend_p_repElementIsAboveInterceptForSeriesIndex_groupIndex_(self, v41, v42, v43, v44, v35, v40);
  objc_msgSend_setAboveIntercept_(v16, v46, v47, v48, v49, IsAboveInterceptForSeriesIndex_groupIndex);
  objc_msgSend_p_calculateInterceptForElementFrame_elementLayer_animationInfo_(self, v50, x, y, width, v13, v16, height);
  v51.receiver = self;
  v51.super_class = TSCHMultiDataBarChartRep;
  [(TSCHMultiDataBarChartRep *)&v51 updateElementFrame:v13 forElementLayer:v14 series:v16 addingAnimationsToAnimationInfo:x, y, width, height];
}

- (void)updateAppearanceForElementLayer:(id)a3 seriesIndex:(unint64_t)a4
{
  v6 = a3;
  v55.receiver = self;
  v55.super_class = TSCHMultiDataBarChartRep;
  [(TSCHMultiDataBarChartRep *)&v55 updateAppearanceForElementLayer:v6 seriesIndex:a4];
  v11 = objc_msgSend_chartLayout(self, v7, v8, v9, v10);
  v16 = objc_msgSend_model(v11, v12, v13, v14, v15);

  if (!v16)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHMultiDataBarChartRep updateAppearanceForElementLayer:seriesIndex:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBarChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 259, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = objc_msgSend_barModelCacheForSeries_(v16, v17, v18, v19, v20, a4);
  v41 = objc_msgSend_fill(v36, v37, v38, v39, v40);
  v46 = objc_msgSend_stroke(v36, v42, v43, v44, v45);
  objc_msgSend_viewScale(self, v47, v48, v49, v50);
  objc_msgSend_setFill_stroke_withViewScale_(v6, v51, v52, v53, v54, v41, v46);
}

@end