@interface TSCH3DChartPieElementProperties
- (BOOL)anyHasExplosion;
- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor;
- (float)elementTransformDepthFromPropertyAccessor:(id)accessor;
- (float)explosionAtElementIndex:(void *)index propertyAccessor:(id)accessor;
- (id).cxx_construct;
- (id)boundsGeometryForSeries:(id)series index:(void *)index;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)flatIndex:(void *)index;
- (void)reset;
- (void)updateLabels;
- (void)updateValues;
@end

@implementation TSCH3DChartPieElementProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TSCH3DChartPieElementProperties;
  v4 = [(TSCH3DChartBasicElementProperties *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_27616EE68(&v4->_percentOfTotal.__begin_, self->_percentOfTotal.__begin_, self->_percentOfTotal.__end_, self->_percentOfTotal.__end_ - self->_percentOfTotal.__begin_);
    sub_27616EE68(&v5->_rotation.__begin_, self->_rotation.__begin_, self->_rotation.__end_, self->_rotation.__end_ - self->_rotation.__begin_);
    sub_27616EE68(&v5->_explode.__begin_, self->_explode.__begin_, self->_explode.__end_, self->_explode.__end_ - self->_explode.__begin_);
  }

  return v5;
}

- (id)boundsGeometryForSeries:(id)series index:(void *)index
{
  v10.receiver = self;
  v10.super_class = TSCH3DChartPieElementProperties;
  v4 = [(TSCH3DChartBasicElementProperties *)&v10 boundsGeometryForSeries:series index:index];
  objc_msgSend_setType_(v4, v5, v6, v7, v8, 5);

  return v4;
}

- (void)updateLabels
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DChartPieElementProperties updateLabels]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 65, 0, "invalid nil value for '%{public}s'", "_enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->super._enumerator);
  v28 = objc_msgSend_reverseSeriesEnumerator(v23, v24, v25, v26, v27);

  v34 = objc_msgSend_model(v28, v29, v30, v31, v32);
  while (1)
  {
    v38 = objc_msgSend_nextSeries(v28, v33, v35, v36, v37);
    v43 = v38;
    if (!v38)
    {
      break;
    }

    objc_msgSend_position(v38, v39, v40, v41, v42);
    v48 = objc_msgSend_index(v43, v44, v45, v46, v47);
    v53 = objc_msgSend_pieSeriesModelCacheForSeries_(v34, v49, v50, v51, v52, v48);
    v58 = objc_msgSend_labels(self, v54, v55, v56, v57);
    v63 = objc_msgSend_paragraphStyle(v53, v59, v60, v61, v62);
    objc_msgSend_setParagraphStyle_atIndex_(v58, v64, v65, v66, v67, v63, v68);
  }
}

- (int64_t)flatIndex:(void *)index
{
  if (*index)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartPieElementProperties flatIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 77, 0, "Only ask for the first element in each series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = *(index + 1);
  if (v23 >= self->super._size.var1.var0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartPieElementProperties flatIndex:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 78, 0, "Invalid series position");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    return *(index + 1);
  }

  return v23;
}

- (BOOL)anyHasExplosion
{
  begin = self->_explode.__begin_;
  end = self->_explode.__end_;
  if (begin != end)
  {
    while (*begin <= 0.0)
    {
      if (++begin == end)
      {
        begin = self->_explode.__end_;
        return begin != end;
      }
    }
  }

  return begin != end;
}

- (float)explosionAtElementIndex:(void *)index propertyAccessor:(id)accessor
{
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartPieElementProperties explosionAtElementIndex:propertyAccessor:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 117, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v30 = 0.0;
  if ((objc_msgSend_layoutConfigurationEnabled(accessorCopy, v6, v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_explosionAtElementIndex_(self, v26, v27, v28, v29, index);
    v30 = v31;
  }

  return v30;
}

- (float)elementTransformDepthFromPropertyAccessor:(id)accessor
{
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "[TSCH3DChartPieElementProperties elementTransformDepthFromPropertyAccessor:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 123, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = sub_2761564F4();

  return v23;
}

- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor
{
  seriesCopy = series;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartPieElementProperties applyElementTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 129, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_elementTransformDepthFromPropertyAccessor_(self, v11, v13, v14, v15, accessorCopy);
  v32 = LODWORD(v31);
  objc_msgSend_rotationAtElementIndex_(self, v33, v31, v34, v35, index);
  v37 = __sincosf_stret(v36 * -0.5);
  v64 = 0;
  v63 = 0;
  v61 = v37.__sinval * 0.0;
  v62 = v37;
  v57 = xmmword_2764D5F20;
  v58 = 1065353216;
  v59 = v32;
  v60 = v37.__sinval * 0.0;
  v65 = 1;
  sub_276168C80(transform, &v57);
  v50 = xmmword_2764D60D0;
  v51 = 0;
  v52 = 0;
  v53 = 1065353216;
  v54 = 0;
  v55 = 0;
  objc_msgSend_explosionAtElementIndex_propertyAccessor_(self, v38, 0.00781250185, v39, v40, index, accessorCopy);
  v49[0] = 0;
  *&v49[1] = v41 * +[TSCH3DChartPieFamilySceneObject geometrySpaceRadius]_0();
  v49[2] = 0;
  v56 = 1;
  *&v42 = sub_276168C80(transform, v49);
  objc_msgSend_percentOfTotalAtElementIndex_(self, v43, v42, v44, v45, index);
  v47 = fabsf(v46) > 0.00000011921;

  return v47;
}

- (void)updateValues
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
  v8 = objc_msgSend_reverseSeriesEnumerator(WeakRetained, v4, v5, v6, v7);

  v13 = objc_msgSend_model(v8, v9, v10, v11, v12);
  v14 = objc_loadWeakRetained(&self->super._enumerator);
  v19 = objc_msgSend_info(v14, v15, v16, v17, v18);
  isSingleCircleSpecialCaseOutSeries = objc_msgSend_isSingleCircleSpecialCaseOutSeries_(v19, v20, v21, v22, v23, 0);

  while (1)
  {
    v29 = objc_msgSend_nextSeries(v8, v25, v26, v27, v28);
    v34 = v29;
    if (!v29)
    {
      break;
    }

    objc_msgSend_position(v29, v30, v31, v32, v33);
    v39 = objc_msgSend_index(v34, v35, v36, v37, v38);
    v44 = objc_msgSend_pieSeriesModelCacheForSeries_(v13, v40, v41, v42, v43, v39);
    objc_msgSend_percentage(v44, v45, v46, v47, v48);
    *&v49 = v49;
    objc_msgSend_setPercentOfTotal_atElementIndex_(self, v50, v49, v51, v52, v72);
    objc_msgSend_midAngle(v44, v53, v54, v55, v56);
    v58 = v57 + 1.57079633;
    *&v58 = v58;
    objc_msgSend_setRotation_atElementIndex_(self, v59, v58, v60, v61, v72);
    v66 = 0;
    if ((isSingleCircleSpecialCaseOutSeries & 1) == 0)
    {
      v67 = objc_msgSend_series(v34, v62, v63, v64, v65);
      objc_msgSend_floatValueForProperty_defaultValue_(v67, v68, 0.0, v69, v70, 1211);
      v66 = v71;
    }

    LODWORD(v63) = v66;
    objc_msgSend_setExplosion_atElementIndex_(self, v62, v63, v64, v65, v72);
  }
}

- (void)reset
{
  p_size = &self->super._size;
  sub_27616DE40(&self->_percentOfTotal.__begin_, self->super._size.var1.var0);
  sub_27616DE40(&self->_rotation.__begin_, p_size->var1.var0);
  sub_27616DE40(&self->_explode.__begin_, p_size->var1.var0);
  v8 = objc_msgSend_transform(TSCH3DTransform, v4, v5, v6, v7);
  objc_msgSend_setChartTransform_(self, v9, v10, v11, v12, v8);

  v17 = objc_msgSend_chartTransform(self, v13, v14, v15, v16);
  v33 = 0x3F0000003F000000;
  v34 = 0;
  objc_msgSend_setTranslation_(v17, v18, 0.0000305175853, v19, v20, &v33);

  objc_msgSend_createResources(self, v21, v22, v23, v24);
  objc_msgSend_updateLabels(self, v25, v26, v27, v28);
  objc_msgSend_updateValues(self, v29, v30, v31, v32);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end