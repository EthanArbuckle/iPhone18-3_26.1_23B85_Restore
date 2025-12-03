@interface TSCH3DChartContinuousElementProperties
- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor;
- (float)chartMinZForScene:(id)scene;
- (float)depthForScene:(id)scene;
- (id)copyWithZone:(_NSZone *)zone;
- (tvec2<int>)seriesSize;
- (void)reset;
- (void)resetWithEnumerator:(id)enumerator layoutSettings:(id *)settings;
- (void)updateLabels;
@end

@implementation TSCH3DChartContinuousElementProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCH3DChartContinuousElementProperties;
  result = [(TSCH3DChartBasicElementProperties *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 16) = LODWORD(self->_depthGapFactor);
    *(result + 17) = LODWORD(self->_depthLimitFactor);
    *(result + 18) = LODWORD(self->_shadowCameraDepthLimitAdjustmentFactor);
  }

  return result;
}

- (tvec2<int>)seriesSize
{
  var0 = self->super._size.var1.var0;
  *v2 = 1;
  v2[1] = var0;
  return self;
}

- (void)updateLabels
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DChartContinuousElementProperties updateLabels]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartContinuousElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 82, 0, "invalid nil value for '%{public}s'", "_enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->super._enumerator);
  v28 = objc_msgSend_seriesEnumerator(v23, v24, v25, v26, v27);

  v34 = objc_msgSend_model(v28, v29, v30, v31, v32);
  while (1)
  {
    v38 = objc_msgSend_nextSeries(v28, v33, v35, v36, v37);
    v43 = v38;
    if (!v38)
    {
      break;
    }

    v44 = objc_msgSend_index(v38, v39, v40, v41, v42);
    v49 = objc_msgSend_lineAreaModelCacheForSeries_(v34, v45, v46, v47, v48, v44);
    v55 = objc_msgSend_elementEnumerator(v43, v50, v51, v52, v53);
    while (1)
    {
      v60 = objc_msgSend_nextElement(v55, v54, v56, v57, v58);
      if (!v60)
      {
        break;
      }

      v64 = objc_msgSend_labels(self, v59, v61, v62, v63);
      v69 = objc_msgSend_paragraphStyle(v49, v65, v66, v67, v68);
      objc_msgSend_position(v60, v70, v71, v72, v73);
      objc_msgSend_setParagraphStyle_atIndex_(v64, v74, v75, v76, v77, v69, v78);
    }
  }
}

- (void)resetWithEnumerator:(id)enumerator layoutSettings:(id *)settings
{
  self->_maxLimitingSeries = settings->var9;
  v5 = *settings;
  v4.receiver = self;
  v4.super_class = TSCH3DChartContinuousElementProperties;
  [(TSCH3DChartBasicElementProperties *)&v4 resetWithEnumerator:enumerator layoutSettings:&v5];
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
  v8 = objc_msgSend_info(WeakRetained, v4, v5, v6, v7);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DChartContinuousElementProperties reset]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartContinuousElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 102, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  LODWORD(v10) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v8, v9, v10, v11, v12, 1070);
  self->_depthGapFactor = *&v28;
  v32 = objc_msgSend_transform(TSCH3DTransform, v29, v28, v30, v31);
  objc_msgSend_setChartTransform_(self, v33, v34, v35, v36, v32);

  v41 = objc_msgSend_chartTransform(self, v37, v38, v39, v40);
  v141 = 0x3F0000003F000000;
  v142 = 0.0;
  objc_msgSend_setCenter_(v41, v42, 0.0000305175853, v43, v44, &v141);

  v45 = objc_loadWeakRetained(&self->super._enumerator);
  v50 = objc_msgSend_seriesType(v45, v46, v47, v48, v49);
  v55 = objc_msgSend_sceneObjectClass(v50, v51, v52, v53, v54);

  if (!v55)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DChartContinuousElementProperties reset]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartContinuousElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 109, 0, "invalid nil value for '%{public}s'", "sceneObjectClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = objc_msgSend_seriesCount(self, v56, v57, v58, v59);
  objc_msgSend_depthLimitFactorForSeriesCount_maxLimitingSeries_(v55, v76, v77, v78, v79, v75, self->_maxLimitingSeries);
  self->_depthLimitFactor = *&v80;
  v84 = objc_msgSend_seriesCount(self, v81, v80, v82, v83);
  objc_msgSend_depthLimitFactorForSeriesCount_maxLimitingSeries_(v55, v85, v86, v87, v88, v84, 8);
  v93 = *&v90;
  if (*&v90 == 0.0)
  {
    v94 = MEMORY[0x277D81150];
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "[TSCH3DChartContinuousElementProperties reset]");
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartContinuousElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v101, v102, v103, v104, v95, v100, 115, 0, "sage depth limit factor should not be zero");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
  }

  self->_shadowCameraDepthLimitAdjustmentFactor = self->_depthLimitFactor / v93;
  *&v109 = sub_276156520();
  v110 = LODWORD(v109);
  depthLimitFactor = self->_depthLimitFactor;
  v115 = objc_msgSend_chartTransform(self, v112, v109, v113, v114);
  v141 = v110 | 0x3F80000000000000;
  v142 = depthLimitFactor;
  objc_msgSend_setScaleFactor_(v115, v116, v117, v118, v119, &v141);

  v124 = objc_msgSend_chartTransform(self, v120, v121, v122, v123);
  objc_msgSend_p_depthLimitedChartInitialDepthOffset(self, v125, v126, v127, v128);
  v141 = 0;
  v142 = *&v129;
  objc_msgSend_setTranslation_(v124, v130, v129, v131, v132, &v141);

  objc_msgSend_createResources(self, v133, v134, v135, v136);
  objc_msgSend_updateLabels(self, v137, v138, v139, v140);
}

- (float)chartMinZForScene:(id)scene
{
  *&v4 = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0();
  v5 = *&v4;
  depthLimitFactor = self->_depthLimitFactor;
  objc_msgSend_p_depthLimitedChartInitialDepthOffset(self, v7, v4, v8, v9);
  return v10 + ((v5 * -0.5) * depthLimitFactor);
}

- (float)depthForScene:(id)scene
{
  v7 = objc_msgSend_seriesCount(self, a2, v3, v4, v5, scene);
  objc_msgSend_p_interSetDepthGapProperty(self, v8, v9, v10, v11);
  if (v7 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v7;
  }

  return (v7 + ((v13 - 1) * v12)) * self->_depthLimitFactor;
}

- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor
{
  seriesCopy = series;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartContinuousElementProperties applyElementTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartContinuousElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 138, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_seriesCount(self, v11, v13, v14, v15);
  v36 = objc_msgSend_seriesType(seriesCopy, v32, v33, v34, v35);
  v41 = objc_msgSend_sceneObjectClass(v36, v37, v38, v39, v40);
  objc_msgSend_chartSeriesDepth(v41, v42, v43, v44, v45);
  v47 = *&v46;
  objc_msgSend_p_interSetDepthGapProperty(self, v48, v46, v49, v50);
  v52 = v51;

  v57 = objc_msgSend_seriesType(seriesCopy, v53, v54, v55, v56);
  v62 = objc_msgSend_sceneObjectClass(v57, v58, v59, v60, v61);
  LODWORD(v36) = objc_msgSend_supportsChartSeriesDepthOffset(v62, v63, v64, v65, v66);

  v67 = 0.0;
  if (v36)
  {
    v67 = (v47 + v52) * (v31 + ~*(*&index + 4));
  }

  v71 = xmmword_2764D60D0;
  v72 = 0;
  v73 = 1065353216;
  v74 = 0;
  v75 = 0;
  v69 = 0;
  v70 = v67;
  v76 = 1;
  sub_276168C80(transform, &v69);

  return 1;
}

@end