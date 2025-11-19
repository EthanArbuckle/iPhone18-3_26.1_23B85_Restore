@interface TSCH3DChartBarElementProperties
- (BOOL)applyElementTransform:(void *)a3 series:(id)a4 index:(tvec2<int>)a5 propertyAccessor:(id)a6;
- (BarElementInfo)barElementInfoAtIndex:(SEL)a3;
- (TSCH3DChartBarElementProperties)init;
- (const)extrusionDetailsForShape:(int)a3;
- (float)elementTransformDepthFromPropertyAccessor:(id)a3;
- (float)interceptValueForSeries:(id)a3;
- (float)maxValueForSeries:(int64_t)a3;
- (id).cxx_construct;
- (id)boundsGeometryForSeries:(id)a3 index:(void *)a4;
- (id)calculateInterceptForSeries:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)geometryForSeries:(id)a3 index:(void *)a4;
- (id)normalsForSeries:(id)a3 index:(void *)a4;
- (id)p_appearance;
- (id)p_appearanceClasses;
- (id)p_barResourceCacheItemAtIndex:(void *)a3;
- (id)p_calculateRangeForSeries:(id)a3 index:(void *)a4 intercept:(id)a5;
- (id)rangeForSeries:(id)a3 index:(void *)a4;
- (id)texcoordsForSeries:(id)a3 index:(void *)a4;
- (int64_t)flatIndex:(void *)a3;
- (void)calculateLayout;
- (void)createResources;
- (void)dealloc;
- (void)p_createAppearance;
- (void)p_resetExtrusionDetails;
- (void)p_updateAppearance;
- (void)p_updateRangeCache;
- (void)releaseAndClearAppearance;
- (void)reset;
- (void)setElementInfo:(const BarElementInfo *)a3 atIndex:(void *)a4;
- (void)setExtrusionDetails:(const BarExtrusionDetails *)a3 forShape:(int)a4;
- (void)setMaxValueForSeries:(int64_t)a3 value:(float)a4;
- (void)updateLabels;
- (void)updateMaxValuesAndBevels;
@end

@implementation TSCH3DChartBarElementProperties

- (TSCH3DChartBarElementProperties)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DChartBarElementProperties;
  v2 = [(TSCH3DChartElementProperties *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rangeCache = v2->_rangeCache;
    v2->_rangeCache = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39.receiver = self;
  v39.super_class = TSCH3DChartBarElementProperties;
  v4 = [(TSCH3DChartBasicElementProperties *)&v39 copyWithZone:a3];
  v9 = v4;
  if (v4)
  {
    if (v4->_seriesLabels)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartBarElementProperties copyWithZone:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 177, 0, "expected nil value for '%{public}s'", "result->_seriesLabels");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    if (v9 != self)
    {
      sub_27616EE68(&v9->_maxValues.__begin_, self->_maxValues.__begin_, self->_maxValues.__end_, self->_maxValues.__end_ - self->_maxValues.__begin_);
      sub_27616F018(&v9->_elementInfos.__begin_, &self->_elementInfos.__begin_->var0, &self->_elementInfos.__end_->var0, 0xAAAAAAAAAAAAAAABLL * ((self->_elementInfos.__end_ - self->_elementInfos.__begin_) >> 3));
    }

    v9->_stacked = self->_stacked;
    v9->_bevelEdges = self->_bevelEdges;
    v9->_barWidth = self->_barWidth;
    v9->_elementsXOffset = self->_elementsXOffset;
    v9->_seriesOffset = self->_seriesOffset;
    v9->_setWidth = self->_setWidth;
    v9->_barShape = self->_barShape;
    objc_storeStrong(&v9->_seriesLabels, self->_seriesLabels);
    v26 = *&self->_extrusionDetails.__elems_[0].crossSection.crossType;
    v25 = *&self->_extrusionDetails.__elems_[0].spine.bevelSlices;
    *&v9->_extrusionDetails.__elems_[0].crossSection.detail = *&self->_extrusionDetails.__elems_[0].crossSection.detail;
    *&v9->_extrusionDetails.__elems_[0].crossSection.crossType = v26;
    *&v9->_extrusionDetails.__elems_[0].spine.bevelSlices = v25;
    v27 = *&self->_extrusionDetails.__elems_[1].spine.bevelHeight;
    v28 = *&self->_extrusionDetails.__elems_[1].spine.stride;
    v30 = *&self->_extrusionDetails.__elems_[0].spine.creaseAngle;
    v29 = *&self->_extrusionDetails.__elems_[1].crossSection.adaptiveThreshold;
    *&v9->_extrusionDetails.__elems_[1].spine.bevelHeight = v27;
    *&v9->_extrusionDetails.__elems_[1].spine.stride = v28;
    *&v9->_extrusionDetails.__elems_[0].spine.creaseAngle = v30;
    *&v9->_extrusionDetails.__elems_[1].crossSection.adaptiveThreshold = v29;
    v32 = objc_msgSend_copy(self->_rangeCache, v31, *&v27, *&v28, *&v29);
    rangeCache = v9->_rangeCache;
    v9->_rangeCache = v32;

    objc_msgSend_p_createAppearance(v9, v34, v35, v36, v37);
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_releaseAndClearAppearance(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCH3DChartBarElementProperties;
  [(TSCH3DChartBasicElementProperties *)&v6 dealloc];
}

- (int64_t)flatIndex:(void *)a3
{
  p_size = &self->super._size;
  if (*a3 >= self->super._size.var0.var0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBarElementProperties flatIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 200, 0, "Element out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = *(a3 + 1);
  if (v23 >= p_size->var1.var0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBarElementProperties flatIndex:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 201, 0, "Series out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    v23 = *(a3 + 1);
  }

  return *a3 + p_size->var0.var0 * v23;
}

- (void)setElementInfo:(const BarElementInfo *)a3 atIndex:(void *)a4
{
  v8 = &self->_elementInfos.__begin_[objc_msgSend_flatIndex_(self, a2, v4, v5, v6, a4)];
  var3 = a3->var3;
  *&v8->var0 = *&a3->var0;
  v8->var3 = var3;
}

- (BarElementInfo)barElementInfoAtIndex:(SEL)a3
{
  result = objc_msgSend_flatIndex_(self, a3, v4, v5, v6, a4);
  *retstr = self->_elementInfos.__begin_[result];
  return result;
}

- (void)setMaxValueForSeries:(int64_t)a3 value:(float)a4
{
  if (self->super._size.var1.var0 <= a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&a4, v4, v5, "[TSCH3DChartBarElementProperties setMaxValueForSeries:value:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 218, 0, "Series out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  self->_maxValues.__begin_[a3] = a4;
}

- (id)calculateInterceptForSeries:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_model(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_seriesIndex(v3, v9, v10, v11, v12);
  v18 = objc_msgSend_barModelCacheForSeries_(v8, v14, v15, v16, v17, v13);

  v24 = objc_msgSend_valueAxis(v18, v19, v20, v21, v22);
  if (!v24)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v25, v26, v27, "[TSCH3DChartBarElementProperties calculateInterceptForSeries:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 234, 0, "invalid nil value for '%{public}s'", "valueAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  objc_msgSend_unitSpaceIntercept(v18, v23, v25, v26, v27);
  v47 = objc_msgSend_interceptWithValueAxis_value_(TSCH3DBarIntercept, v43, v44, v45, v46, v24);

  return v47;
}

- (void)p_updateRangeCache
{
  if (!objc_msgSend_count(self->_rangeCache, a2, v2, v3, v4))
  {
    v10 = self->super._size.var1.var0 * self->super._size.var0.var0;
    if ((v10 & 0x80000000) == 0 && objc_msgSend_count(self->_rangeCache, v6, v7, v8, v9) < v10)
    {
      do
      {
        rangeCache = self->_rangeCache;
        v13 = objc_msgSend_rangeWithIntercept_begin_end_(TSCH3DRange, v11, 0.0, 0.0, 0.0);
        objc_msgSend_addObject_(rangeCache, v14, v15, v16, v17, v13);
      }

      while (objc_msgSend_count(self->_rangeCache, v18, v19, v20, v21) < v10);
    }

    WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
    v27 = objc_msgSend_seriesEnumerator(WeakRetained, v23, v24, v25, v26);
    while (1)
    {

      v32 = objc_msgSend_nextSeries(v27, v28, v29, v30, v31);
      WeakRetained = v32;
      if (!v32)
      {
        break;
      }

      v37 = objc_msgSend_series(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_calculateInterceptForSeries_(self, v38, v39, v40, v41, v37);

      v48 = objc_msgSend_elementEnumerator(WeakRetained, v43, v44, v45, v46);
      while (1)
      {
        v52 = objc_msgSend_nextElement(v48, v47, v49, v50, v51);
        v57 = v52;
        if (!v52)
        {
          break;
        }

        objc_msgSend_position(v52, v53, v54, v55, v56);
        v62 = objc_msgSend_series(WeakRetained, v58, v59, v60, v61);
        v67 = objc_msgSend_p_calculateRangeForSeries_index_intercept_(self, v63, v64, v65, v66, v62, v78, v42);
        v68 = self->_rangeCache;
        v73 = objc_msgSend_flatIndex_(self, v69, v70, v71, v72, v78);
        objc_msgSend_setObject_atIndexedSubscript_(v68, v74, v75, v76, v77, v67, v73);
      }
    }
  }
}

- (id)rangeForSeries:(id)a3 index:(void *)a4
{
  v8 = objc_msgSend_flatIndex_(self, a2, v4, v5, v6, a4);
  if (v8 >= objc_msgSend_count(self->_rangeCache, v9, v10, v11, v12))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DChartBarElementProperties rangeForSeries:index:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 258, 0, "Index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_objectAtIndexedSubscript_(self->_rangeCache, v13, v14, v15, v16, v8);

  return v32;
}

- (id)p_calculateRangeForSeries:(id)a3 index:(void *)a4 intercept:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *a4;
  v15 = objc_msgSend_valueAxis(v9, v11, v12, v13, v14);
  objc_msgSend_unitSpaceValueForSeries_groupIndex_(v15, v16, v17, v18, v19, v8, v10);
  v21 = v20;

  objc_msgSend_value(v9, v22, v23, v24, v25);
  v30 = v27;
  if (self->_stacked)
  {
    objc_msgSend_value(v9, v26, v27, v28, v29);
    v32 = v31;
    if (objc_msgSend_seriesIndex(v8, v33, v31, v34, v35) != *(a4 + 1))
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCH3DChartBarElementProperties p_calculateRangeForSeries:index:intercept:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
      v51 = objc_msgSend_seriesIndex(v8, v47, v48, v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v52, v53, v54, v55, v41, v46, 275, 0, "series index mismatch %lu should be %lu", v51, *(a4 + 1));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    }

    objc_msgSend_value(v9, v36, v37, v38, v39);
    v61 = v60;
    v65 = objc_msgSend_valueAxis(v9, v62, v60, v63, v64);
    objc_msgSend_beginValueForStackedBarSeries_groupIndex_unitSpaceIntercept_relativelyPositive_valueAxis_(TSCHChartInfo, v66, v61, v67, v68, v8, v10, v21 >= v32, v65);
    v30 = v69;
  }

  v70 = fmin(v30, 1.0);
  v71 = fmax(v70, 0.0);
  objc_msgSend_value(v9, v26, v70, 0.0, v29);
  v72 = fmin(v21, 1.0);
  v73 = fmax(v72, 0.0);
  *&v72 = v71;
  *&v73 = v73;
  *&v74 = v74;
  v76 = objc_msgSend_rangeWithIntercept_begin_end_(TSCH3DRange, v75, v74, v72, v73);

  return v76;
}

- (float)interceptValueForSeries:(id)a3
{
  v6 = objc_msgSend_calculateInterceptForSeries_(self, a2, v3, v4, v5, a3);
  objc_msgSend_value(v6, v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

- (float)elementTransformDepthFromPropertyAccessor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartBarElementProperties elementTransformDepthFromPropertyAccessor:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 298, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  *&v24 = [TSCH3DBarChartDefaultAppearance depthForScene:]_0();
  v25 = *&v24;
  v29 = objc_msgSend_appearance(self, v26, v24, v27, v28);
  isCircular = objc_msgSend_isCircular(v29, v30, v31, v32, v33);

  if (isCircular)
  {
    if (v5)
    {
      objc_msgSend_stageScale(v5, v35, v36, v37, v38);
    }

    else
    {
      v42 = 0.0;
      v41 = 0;
    }

    isHorizontal = objc_msgSend_isHorizontal(v5, v35, v36, v37, v38);
    v25 = (self->_barWidth * *(&v41 | (4 * isHorizontal))) / v42;
  }

  return v25;
}

- (BOOL)applyElementTransform:(void *)a3 series:(id)a4 index:(tvec2<int>)a5 propertyAccessor:(id)a6
{
  v10 = a4;
  v12 = a6;
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartBarElementProperties applyElementTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 310, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_rangeForSeries_index_(self, v11, v13, v14, v15, v10, a5);
  objc_msgSend_elementTransformDepthFromPropertyAccessor_(self, v32, v33, v34, v35, v12);
  v37 = *&v36;
  objc_msgSend_scale(v31, v38, v36, v39, v40);
  v42 = *&v41;
  barWidth = self->_barWidth;
  elementsXOffset = self->_elementsXOffset;
  seriesOffset = self->_seriesOffset;
  v48 = a5;
  v46 = *a5.var0.var0;
  v47 = *(*&v48 + 4);
  setWidth = self->_setWidth;
  objc_msgSend_offset(v31, v50, v41, v51, v52);
  v63 = xmmword_2764D5F20;
  v64 = 0;
  v65 = 0;
  v62[3] = barWidth;
  v62[4] = v42;
  v62[5] = v37;
  v62[0] = (elementsXOffset + (v47 * seriesOffset)) + (v46 * setWidth);
  v62[1] = v53;
  v62[2] = 0.0;
  v66 = 1;
  *&v54 = sub_276168C80(a3, v62);
  if ((objc_msgSend_above(v31, v55, v54, v56, v57) & 1) == 0)
  {
    v60 = 0;
    v59[0] = xmmword_2764D5F20;
    v59[1] = xmmword_2764D5F30;
    v59[2] = xmmword_2764D60F0;
    v61 = 1;
    sub_276168C80(a3, v59);
  }

  return fabsf(v42) > 0.00000011921;
}

- (id)p_barResourceCacheItemAtIndex:(void *)a3
{
  bevelEdges = self->_bevelEdges;
  if (bevelEdges)
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_msgSend_beveledAtIndex_(self, a2, v3, v4, v5, a3);
    bevelEdges = self->_bevelEdges;
  }

  v10 = *(objc_msgSend_elementInfoAtIndex_(self, a2, v3, v4, v5, a3) + 4);
  v15 = objc_msgSend_appearance(self, v11, v12, v13, v14);
  isCircular = objc_msgSend_isCircular(v15, v16, v17, v18, v19);
  stacked = self->_stacked;
  v66 = v10;
  v67 = v9;
  v68 = bevelEdges;
  v69 = isCircular;
  v70 = stacked;

  v26 = objc_msgSend_p_appearance(self, v22, v23, v24, v25);
  v27 = objc_opt_class();
  v32 = objc_msgSend_shapeType(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_extrusionDetailsForShape_(self, v33, v34, v35, v36, v32);
  v38 = *v37;
  v39 = *(v37 + 16);
  v40 = *(v37 + 32);
  v74 = *(v37 + 48);
  v73 = v40;
  v72 = v39;
  v71 = v38;

  v46 = objc_msgSend_barWithExtrusionSetting_(TSCH3DBarResourceCache, v41, v42, v43, v44, &v66);
  if (!v46)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v47, v48, v49, "[TSCH3DChartBarElementProperties p_barResourceCacheItemAtIndex:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 341, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  return v46;
}

- (id)geometryForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_p_barResourceCacheItemAtIndex_(self, a2, v4, v5, v6, a4);
  v12 = objc_msgSend_vertexResource(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_verticesOffset(v12, v13, v14, v15, v16);
  v22 = objc_msgSend_numVertices(v12, v18, v19, v20, v21);
  v27 = objc_msgSend_capOffset(v12, v23, v24, v25, v26);
  v32 = objc_msgSend_numCapVertices(v12, v28, v29, v30, v31);
  v37 = objc_msgSend_arraysWithOffset_count_capoffset_capcount_(TSCH3DGeometryArrays, v33, v34, v35, v36, v17, v22, v27, v32);
  v42 = objc_msgSend_geometry(v12, v38, v39, v40, v41);
  v47 = objc_msgSend_resourceWithType_resource_arrays_geometry_(TSCH3DGeometryResource, v43, v44, v45, v46, 1, v12, v37, v42);

  return v47;
}

- (id)boundsGeometryForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_sharedInstance(TSCH3DBarUnitCubeResource, a2, v4, v5, v6, a3, a4);
  v12 = objc_msgSend_resourceWithType_resource_(TSCH3DGeometryResource, v8, v9, v10, v11, 5, v7);

  return v12;
}

- (id)normalsForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_p_barResourceCacheItemAtIndex_(self, a2, v4, v5, v6, a4);
  v12 = objc_msgSend_normalResource(v7, v8, v9, v10, v11);

  return v12;
}

- (id)texcoordsForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_p_barResourceCacheItemAtIndex_(self, a2, v4, v5, v6, a4);
  v12 = objc_msgSend_texCoordResource(v7, v8, v9, v10, v11);

  return v12;
}

- (void)calculateLayout
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
  v8 = objc_msgSend_seriesType(WeakRetained, v4, v5, v6, v7);
  v13 = objc_msgSend_stackedColumn3DSeries(TSCHChartSeriesType, v9, v10, v11, v12);
  if (v8 == v13)
  {
    p_stacked = &self->_stacked;
    self->_stacked = 1;
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->super._enumerator);
    v19 = objc_msgSend_seriesType(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_stackedBar3DSeries(TSCHChartSeriesType, v20, v21, v22, v23);
    p_stacked = &self->_stacked;
    self->_stacked = v19 == v24;
  }

  self->_bevelEdges = 0;
  if (*p_stacked)
  {
    v26 = objc_loadWeakRetained(&self->super._enumerator);
    v31 = objc_msgSend_info(v26, v27, v28, v29, v30);
    self->_bevelEdges = objc_msgSend_intValueForProperty_defaultValue_(v31, v32, v33, v34, v35, 1068, 0) != 0;
  }

  v36 = objc_loadWeakRetained(&self->super._enumerator);
  v41 = objc_msgSend_info(v36, v37, v38, v39, v40);
  LODWORD(v42) = 1120403456;
  objc_msgSend_floatValueForProperty_defaultValue_(v41, v43, v42, v44, v45, 1105);
  v47 = v46;

  v48 = objc_loadWeakRetained(&self->super._enumerator);
  v53 = objc_msgSend_info(v48, v49, v50, v51, v52);
  LODWORD(v54) = 10.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v53, v55, v54, v56, v57, 1104);
  v59 = v58;

  v60 = objc_loadWeakRetained(&self->super._enumerator);
  v65 = v60;
  if (v60)
  {
    objc_msgSend_size(v60, v61, v62, v63, v64);
  }

  else
  {
    v72 = 0;
  }

  v66 = v47 / 100.0;
  v67 = v59 / 100.0;

  v68 = *p_stacked;
  v69 = HIDWORD(v72);
  if (*p_stacked)
  {
    v69 = 1;
  }

  v70 = 0.0;
  v71 = 0.0;
  if (v69 * v72)
  {
    v71 = 1.0 / (((v69 * v72) + (v72 * v66)) + (((v69 - 1) * v72) * v67));
  }

  self->_barWidth = v71;
  self->_elementsXOffset = (v66 * v71) * 0.5;
  if (!v68)
  {
    v70 = self->_barWidth + (v67 * self->_barWidth);
  }

  self->_seriesOffset = v70;
  self->_setWidth = ((v66 + v69) + ((v69 - 1) * v67)) * self->_barWidth;
}

- (void)updateMaxValuesAndBevels
{
  var0 = self->super._size.var0.var0;
  sub_27616D88C(v79, var0);
  v72 = var0;
  sub_27616D88C(__p, var0);
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
  v9 = objc_msgSend_seriesEnumerator(WeakRetained, v5, v6, v7, v8);

  while (1)
  {
    v14 = objc_msgSend_nextSeries(v9, v10, v11, v12, v13);
    v19 = v14;
    if (!v14)
    {
      break;
    }

    v21 = objc_msgSend_elementEnumerator(v14, v15, v16, v17, v18);
    v25 = 0.0;
    while (1)
    {
      v26 = objc_msgSend_nextElement(v21, v20, v22, v23, v24);
      v31 = v26;
      if (!v26)
      {
        break;
      }

      objc_msgSend_position(v26, v27, v28, v29, v30);
      v36 = objc_msgSend_series(v19, v32, v33, v34, v35);
      v41 = objc_msgSend_rangeForSeries_index_(self, v37, v38, v39, v40, v36, v77);

      if (self->_stacked)
      {
        objc_msgSend_scale(v41, v42, v43, v44, v45);
        if (*&v43 > 0.0)
        {
          if (objc_msgSend_above(v41, v42, v43, v44, v45))
          {
            v46 = v79;
          }

          else
          {
            v46 = __p;
          }

          v47 = v77[0];
          v48 = *v46 + 16 * v77[0];
          *v48 = v77[0];
          v48[1] = v77[1];
          v49 = *v46 + 16 * v47;
          v76 = *(v49 + 8);
          *(v49 + 8) = v76 + 1;
        }
      }

      v75 = objc_msgSend_above(v41, v42, v43, v44, v45);
      LOBYTE(v73) = !self->_stacked;
      objc_msgSend_scale(v41, v50, v51, v52, v53);
      v74 = LODWORD(v54);
      objc_msgSend_setElementInfo_atIndex_(self, v55, v54, v56, v57, &v73, v77);
      objc_msgSend_scale(v41, v58, v59, v60, v61);
      if (v25 < v62)
      {
        v25 = v62;
      }
    }

    objc_msgSend_position(v19, v27, v28, v29, v30);
    *&v63 = v25;
    objc_msgSend_setMaxValueForSeries_value_(self, v64, v63, v65, v66, v74);
  }

  if (v72 >= 1 && self->_stacked)
  {
    for (i = 0; i != v72; ++i)
    {
      v68 = 1;
      do
      {
        v69 = v68;
        if (v68)
        {
          v70 = v79;
        }

        else
        {
          v70 = __p;
        }

        v71 = (*v70 + 16 * i);
        v73 = *v71;
        v74 = v71[1];
        if ((v73 & 0x80000000) == 0)
        {
          *objc_msgSend_elementInfoAtIndex_(self, v15, v16, v17, v18, &v73) = 1;
        }

        v68 = 0;
      }

      while ((v69 & 1) != 0);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }
}

- (void)createResources
{
  v14.receiver = self;
  v14.super_class = TSCH3DChartBarElementProperties;
  [(TSCH3DChartBasicElementProperties *)&v14 createResources];
  var0 = self->super._size.var1.var0;
  v13[0] = 1;
  v13[1] = var0;
  v8 = objc_msgSend_resourcesWithSize_(TSCH3DLabelResources, v4, v5, v6, v7, v13);
  objc_msgSend_setSeriesLabels_(self, v9, v10, v11, v12, v8);
}

- (void)updateLabels
{
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DChartBarElementProperties updateLabels]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 467, 0, "invalid nil value for '%{public}s'", "_enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->super._enumerator);
  v28 = objc_msgSend_seriesEnumerator(v23, v24, v25, v26, v27);

  v106 = objc_msgSend_model(v28, v29, v30, v31, v32);
  objc_msgSend_nextSeries(v28, v33, v34, v35, v36);
  while (1)
    v37 = {;
    v42 = v37;
    if (!v37)
    {
      break;
    }

    v43 = v28;
    objc_msgSend_position(v37, v38, v39, v40, v41);
    v109[0] = 0;
    v109[1] = v108;
    v44 = objc_loadWeakRetained(&self->super._enumerator);
    v49 = objc_msgSend_info(v44, v45, v46, v47, v48);
    v54 = objc_msgSend_paragraphStyleForLabelsFontForInfo_(TSCHChartCategoryAxis, v50, v51, v52, v53, v49);

    v59 = objc_msgSend_seriesLabels(self, v55, v56, v57, v58);
    objc_msgSend_setParagraphStyle_atIndex_(v59, v60, v61, v62, v63, v54, v109);

    v68 = objc_msgSend_index(v42, v64, v65, v66, v67);
    v73 = objc_msgSend_barModelCacheForSeries_(v106, v69, v70, v71, v72, v68);
    v79 = objc_msgSend_elementEnumerator(v42, v74, v75, v76, v77);
    while (1)
    {
      v84 = objc_msgSend_nextElement(v79, v78, v80, v81, v82);
      if (!v84)
      {
        break;
      }

      v88 = objc_msgSend_labels(self, v83, v85, v86, v87);
      v93 = objc_msgSend_paragraphStyle(v73, v89, v90, v91, v92);
      objc_msgSend_position(v84, v94, v95, v96, v97);
      objc_msgSend_setParagraphStyle_atIndex_(v88, v98, v99, v100, v101, v93, v107);
    }

    v28 = v43;
    objc_msgSend_nextSeries(v43, v102, v103, v104, v105);
  }
}

- (void)reset
{
  objc_msgSend_releaseAndClearAppearance(self, a2, v2, v3, v4);
  sub_27616DE40(&self->_maxValues.__begin_, self->super._size.var1.var0);
  sub_27616DE70(&self->_elementInfos.__begin_, self->super._size.var1.var0 * self->super._size.var0.var0);
  objc_msgSend_removeAllObjects(self->_rangeCache, v6, v7, v8, v9);
  WeakRetained = objc_loadWeakRetained(&self->super._enumerator);
  v15 = objc_msgSend_info(WeakRetained, v11, v12, v13, v14);
  v20 = objc_msgSend_intValueForProperty_defaultValue_(v15, v16, v17, v18, v19, 1067, 0);

  self->_barShape = v20;
  objc_msgSend_p_updateAppearance(self, v21, v22, v23, v24);
  v29 = objc_msgSend_transform(TSCH3DTransform, v25, v26, v27, v28);
  objc_msgSend_setChartTransform_(self, v30, v31, v32, v33, v29);

  objc_msgSend_chartInitialDepthOffset(self, v34, v35, v36, v37);
  v39 = LODWORD(v38);
  v43 = objc_msgSend_chartTransform(self, v40, v38, v41, v42);
  v68 = 0;
  v69 = v39;
  objc_msgSend_setTranslation_(v43, v44, v45, v46, v47, &v68);

  objc_msgSend_createResources(self, v48, v49, v50, v51);
  objc_msgSend_updateLabels(self, v52, v53, v54, v55);
  objc_msgSend_calculateLayout(self, v56, v57, v58, v59);
  objc_msgSend_p_updateRangeCache(self, v60, v61, v62, v63);
  objc_msgSend_updateMaxValuesAndBevels(self, v64, v65, v66, v67);
}

- (float)maxValueForSeries:(int64_t)a3
{
  if (self->super._size.var1.var0 <= a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBarElementProperties maxValueForSeries:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 513, 0, "Series out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  return self->_maxValues.__begin_[a3];
}

- (const)extrusionDetailsForShape:(int)a3
{
  v7 = a3;
  if (a3 >= 2)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBarElementProperties extrusionDetailsForShape:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 520, 0, "invalid shape type %ld", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  return &self->_extrusionDetails.__elems_[v7];
}

- (void)setExtrusionDetails:(const BarExtrusionDetails *)a3 forShape:(int)a4
{
  v9 = a4;
  if (a4 >= 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DChartBarElementProperties setExtrusionDetails:forShape:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 527, 0, "invalid shape type %ld", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = &self->_extrusionDetails.__elems_[v9];
  v27 = *&a3->crossSection.crossType;
  v26 = *&a3->spine.bevelSlices;
  v28 = *&a3->crossSection.detail;
  *&v25->spine.creaseAngle = *&a3->spine.creaseAngle;
  *&v25->crossSection.crossType = v27;
  *&v25->spine.bevelSlices = v26;
  *&v25->crossSection.detail = v28;
}

- (id)p_appearanceClasses
{
  if (qword_280A46820 != -1)
  {
    sub_2764A6A48();
  }

  v3 = qword_280A46818;

  return v3;
}

- (void)p_resetExtrusionDetails
{
  p_extrusionDetails = &self->_extrusionDetails;
  v7 = objc_msgSend_p_appearanceClasses(self, a2, v2, v3, v4);
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, v8, v9, v10, v11);
    if (v14)
    {
      objc_msgSend_defaultDetails(v14, v15, v16, v17, v18);
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DChartBarElementProperties p_resetExtrusionDetails]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 561, 0, "invalid nil value for '%{public}s'", "appearanceClass");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    v12 = 0;
    v34 = &p_extrusionDetails->__elems_[v11];
    v9 = *&v36;
    *&v34->crossSection.detail = v35;
    *&v34->crossSection.crossType = v36;
    v8 = *&v37;
    *&v34->spine.bevelSlices = v37;
    *&v34->spine.creaseAngle = v38;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
}

- (void)p_updateAppearance
{
  objc_msgSend_p_createAppearance(self, a2, v2, v3, v4);

  MEMORY[0x2821F9670](self, sel_p_resetExtrusionDetails, v6, v7, v8);
}

- (void)p_createAppearance
{
  if (self->_appearance)
  {
    v6 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBarElementProperties p_createAppearance]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v13, v14, v15, v51, v11, 572, 0, "expected nil value for '%{public}s'", "_appearance");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v52 = objc_msgSend_p_appearanceClasses(self, a2, v2, v3, v4);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v52, v20, v21, v22, v23, self->_barShape);
  if (!v24)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DChartBarElementProperties p_createAppearance]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 575, 0, "invalid nil value for '%{public}s'", "appearanceClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    v24 = objc_opt_class();
  }

  v44 = [v24 alloc];
  v49 = objc_msgSend_initWithProperties_(v44, v45, v46, v47, v48, self);
  appearance = self->_appearance;
  self->_appearance = v49;
}

- (void)releaseAndClearAppearance
{
  appearance = self->_appearance;
  self->_appearance = 0;
}

- (id)p_appearance
{
  appearance = self->_appearance;
  if (!appearance)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBarElementProperties p_appearance]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 588, 0, "invalid nil value for '%{public}s'", "_appearance");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    appearance = self->_appearance;
  }

  return appearance;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 42) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 40) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 54) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 62) = 0;
  return self;
}

@end