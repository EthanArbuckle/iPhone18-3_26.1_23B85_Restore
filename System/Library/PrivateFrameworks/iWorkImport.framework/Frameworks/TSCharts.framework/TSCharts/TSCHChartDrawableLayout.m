@interface TSCHChartDrawableLayout
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)p_layoutSettingsForDrawableLayoutModeByUpdatingLayoutSettings:(SEL)a3;
- (BOOL)is3DChart;
- (BOOL)p_isPrintingInBackground;
- (BOOL)p_isRenderingForKPF;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForInlineLayout;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)boundsForStandardKnobs;
- (CGRect)boundsInfluencingExteriorWrap;
- (CGRect)frameForCaptionPositioning;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)insertionFrame;
- (CGRect)p_addMultiDataControlToInlineWrapBounds:(CGRect)a3;
- (CGSize)minSizeCache;
- (CGSize)minimumSize;
- (CGSize)p_calcMinSize;
- (Class)repClassOverride;
- (NSArray)pieWedgeExplosions;
- (NSDictionary)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips;
- (NSDictionary)seriesIndexedPieWedgeExplosions;
- (NSIndexSet)pieWedgeExplosionSeriesIndices;
- (TSCHChartDrawableLayout)initWithInfo:(id)a3;
- (TSCHChartInfo)chart;
- (TSCHChartInfo)chartInfo;
- (TSCHChartLayout)chartLayout;
- (TSCHChartModel)model;
- (TSDLayoutGeometry)legendGeometry;
- (TSDLayoutGeometry)legendModelGeometry;
- (double)multiDataControlDesiredDistanceFromChartRep;
- (double)p_approximatedAdditionalHeightForMultiDataControlWithMinimumAccommodatingScale:(double)a3;
- (id)ancestorLayoutConformingToProtocol:(id)a3;
- (id)chartDrawableInfo;
- (id)computeInfoGeometryDuringResize;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)i_computeUnitedWrapPath;
- (id)i_computeWrapPath;
- (id)layoutGeometryFromInfo;
- (id)p_chartLayout;
- (id)p_constrainAndResizePureGeometry:(id)a3 withValidChartLayout:(id)a4 toChartAreaGeometry:(id *)a5 toShadowGeometry:(id *)a6 toInfoGeometry:(id *)a7;
- (id)p_infoGeometryForComputingLayoutGeometryWithChartLayout:(id)a3;
- (id)pieWedgeExplosionsForSeriesIndices:(id)a3;
- (id)propertiesThatInvalidateLayout;
- (id)renderersWithRep:(id)a3;
- (id)visibleGeometries;
- (int64_t)chartDrawableLayoutMode;
- (unint64_t)dataSetIndex;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateChartLayoutState;
- (void)invalidateChartLayoutStructure;
- (void)invalidateSize;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_clearChartLayout;
- (void)p_convertValidChartLayout:(id)a3 andInfoGeometry:(id)a4 toPureGeometry:(id *)a5 toChartAreaGeometry:(id *)a6 toShadowGeometry:(id *)a7;
- (void)p_forceValidateChartLayout;
- (void)p_postLayoutPropertyValueDidChangeNotification;
- (void)p_setLegendGeometry:(id)a3 fromTransform:(CGAffineTransform *)a4 onLayout:(id)a5 shouldUpdateLayoutItemSize:(BOOL)a6;
- (void)p_setLegendSize:(CGSize)a3;
- (void)p_validateChartLayout;
- (void)processChangedProperty:(int)a3;
- (void)processChanges:(id)a3;
- (void)setChartLayoutPropertyValue:(id)a3 forKey:(id)a4;
- (void)setDataSetIndex:(unint64_t)a3;
- (void)setLegendGeometry:(id)a3;
- (void)setLegendModelGeometry:(id)a3;
- (void)setPieWedgeExplosions:(id)a3;
- (void)setSeriesIndexedPieWedgeExplosions:(id)a3;
- (void)take3DDepth;
- (void)validate;
- (void)willBeAddedToLayoutController:(id)a3;
@end

@implementation TSCHChartDrawableLayout

- (id)ancestorLayoutConformingToProtocol:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_parent(self, v5, v6, v7, v8);
  do
  {
    v10 = v9;
    v11 = TSUProtocolCast();
    v9 = objc_msgSend_parent(v9, v12, v13, v14, v15, v4);
  }

  while (v9 && !v11);

  return v11;
}

- (int64_t)chartDrawableLayoutMode
{
  v5 = objc_msgSend_chartDrawableLayoutModeProvider(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_chartDrawableLayoutMode(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TSCHChartDrawableLayout)initWithInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartDrawableLayout initWithInfo:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 143, 0, "invalid nil value for '%{public}s'", "chartDrawableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v28.receiver = self;
  v28.super_class = TSCHChartDrawableLayout;
  v25 = [(TSCHChartDrawableLayout *)&v28 initWithInfo:v4];
  v26 = v25;
  if (v25)
  {
    v25->_chartInvalidFlags = 257;
    v25->_forceLayoutSettingsOmitLabelPlacement = 0;
  }

  return v26;
}

- (void)dealloc
{
  if (self->_legendResizer)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartDrawableLayout dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 155, 0, "expected nil value for '%{public}s'", "_legendResizer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21.receiver = self;
  v21.super_class = TSCHChartDrawableLayout;
  [(TSWPTextHostLayout *)&v21 dealloc];
}

- (Class)repClassOverride
{
  if (objc_msgSend_is3DChart(self, a2, v2, v3, v4) && ((objc_msgSend_p_isPrintingInBackground(self, v6, v7, v8, v9) & 1) != 0 || objc_msgSend_p_isRenderingForKPF(self, v10, v11, v12, v13)))
  {
    isPrintingInBackground = objc_msgSend_p_isPrintingInBackground(self, v10, v11, v12, v13);
    if (isPrintingInBackground)
    {
      sub_27635E6B8(v16, v17, v18, isPrintingInBackground, v15);
    }

    v19 = objc_opt_class();
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TSCHChartDrawableLayout;
    v19 = [(TSCHChartDrawableLayout *)&v21 repClassOverride];
  }

  return v19;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)p_layoutSettingsForDrawableLayoutModeByUpdatingLayoutSettings:(SEL)a3
{
  v7 = *&a4->var0;
  *retstr = *a4;
  if (self->_forceLayoutSettingsOmitLabelPlacement)
  {
    retstr->var3 = 1;
  }

  result = objc_msgSend_chartDrawableLayoutMode(self, a3, *&v7, v4, v5);
  if (result)
  {
    v13 = result;
    if (result == 1)
    {
      retstr->var5 = 1;
    }

    else
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartDrawableLayout p_layoutSettingsForDrawableLayoutModeByUpdatingLayoutSettings:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 189, 0, "Unknown layout mode %ld", v13);

      v29 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v29, v25, v26, v27, v28);
    }
  }

  return result;
}

- (id)p_chartLayout
{
  chartLayout = self->_chartLayout;
  if (!chartLayout)
  {
    v7 = objc_msgSend_chart(self, a2, v2, v3, v4);
    v12 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v8, v9, v10, v11, v7);
    v13 = self->_chartLayout;
    self->_chartLayout = v12;

    chartLayout = self->_chartLayout;
  }

  v14 = objc_msgSend_styleProvidingSource(chartLayout, a2, v2, v3, v4);
  v19 = objc_msgSend_styleProvidingSource(self, v15, v16, v17, v18);

  if (v14 != v19)
  {
    v24 = objc_msgSend_styleProvidingSource(self, v20, v21, v22, v23);
    objc_msgSend_setStyleProvidingSource_(self->_chartLayout, v25, v26, v27, v28, v24);
  }

  v29 = self->_chartLayout;
  if (v29)
  {
    v52 = 0uLL;
    v53 = 0;
LABEL_8:
    objc_msgSend_layoutSettings(v29, v20, v21, v22, v23);
    goto LABEL_9;
  }

  v30 = MEMORY[0x277D81150];
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartDrawableLayout p_chartLayout]");
  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 211, 0, "invalid nil value for '%{public}s'", "_chartLayout");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  v29 = self->_chartLayout;
  v52 = 0uLL;
  v53 = 0;
  if (v29)
  {
    goto LABEL_8;
  }

  v50 = 0uLL;
  v51 = 0;
LABEL_9:
  objc_msgSend_p_layoutSettingsForDrawableLayoutModeByUpdatingLayoutSettings_(self, v20, v21, v22, v23, &v50);
  v50 = v52;
  v51 = v53;
  objc_msgSend_setLayoutSettings_(self->_chartLayout, v45, *&v52, v46, v47, &v50);
  v48 = self->_chartLayout;

  return v48;
}

- (id)chartDrawableInfo
{
  objc_opt_class();
  v7 = objc_msgSend_info(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (TSCHChartInfo)chart
{
  v5 = objc_msgSend_chartDrawableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chart(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCHChartInfo)chartInfo
{
  v5 = objc_msgSend_chartDrawableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chart(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCHChartLayout)chartLayout
{
  objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);

  return objc_msgSend_p_chartLayout(self, v6, v7, v8, v9);
}

- (BOOL)is3DChart
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_is3D(v10, v11, v12, v13, v14);

  return v15;
}

- (void)p_postLayoutPropertyValueDidChangeNotification
{
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_postNotificationName_object_(v10, v6, v7, v8, v9, @"TSCHChartDrawableLayoutPropertyValueDidChangeNotification", self);
}

- (void)setChartLayoutPropertyValue:(id)a3 forKey:(id)a4
{
  objc_msgSend_setValue_forKey_(self, a2, v4, v5, v6, a3, a4);

  MEMORY[0x2821F9670](self, sel_p_postLayoutPropertyValueDidChangeNotification, v8, v9, v10);
}

- (NSIndexSet)pieWedgeExplosionSeriesIndices
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = objc_msgSend_seriesIndexedPieWedgeExplosions(self, v7, 0.0, v8, v9, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v29, v33, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v10);
        }

        v23 = objc_msgSend_unsignedIntegerValue(*(*(&v29 + 1) + 8 * i), v16, v17, v18, v19);
        objc_msgSend_addIndex_(v6, v24, v25, v26, v27, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v17, v18, v19, &v29, v33, 16);
    }

    while (v20);
  }

  return v6;
}

- (id)pieWedgeExplosionsForSeriesIndices:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_chartType(v9, v10, v11, v12, v13);
  hasExplodableSeriesElements = objc_msgSend_hasExplodableSeriesElements(v14, v15, v16, v17, v18);

  if (hasExplodableSeriesElements)
  {
    v24 = objc_msgSend_seriesIndexedPieWedgeExplosions(self, v20, v21, v22, v23);
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = sub_2762EAF70;
    v45 = &unk_27A6B7390;
    v46 = v24;
    v47 = v29;
    v30 = v29;
    v31 = v24;
    objc_msgSend_enumerateIndexesUsingBlock_(v4, v32, v33, v34, v35, &v42);
    v40 = objc_msgSend_copy(v30, v36, v37, v38, v39, v42, v43, v44, v45);
  }

  else
  {
    v40 = objc_msgSend_array(MEMORY[0x277CBEA60], v20, v21, v22, v23);
  }

  return v40;
}

- (NSArray)pieWedgeExplosions
{
  v6 = objc_msgSend_pieWedgeExplosionSeriesIndices(self, a2, v2, v3, v4);
  v11 = objc_msgSend_pieWedgeExplosionsForSeriesIndices_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (void)setPieWedgeExplosions:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_chartType(v9, v10, v11, v12, v13);
  hasExplodableSeriesElements = objc_msgSend_hasExplodableSeriesElements(v14, v15, v16, v17, v18);

  if ((hasExplodableSeriesElements & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartDrawableLayout setPieWedgeExplosions:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 289, 0, "We should only set explosion values for pie charts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v89[3] = 0;
  v39 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v20, COERCE_DOUBLE(0x2020000000), v22, v23);
  v44 = objc_msgSend_pieWedgeExplosionSeriesIndices(self, v40, v41, v42, v43);
  v49 = objc_msgSend_count(v44, v45, v46, v47, v48);
  v54 = objc_msgSend_count(v4, v50, v51, v52, v53);

  if (v49 != v54)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCHChartDrawableLayout setPieWedgeExplosions:]");
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 293, 0, "count mismatch %@ %@", v39, v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
  }

  v74 = objc_msgSend_pieWedgeExplosionSeriesIndices(self, v55, v56, v57, v58);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_2762EB2BC;
  v85[3] = &unk_27A6B95B0;
  v75 = v4;
  v86 = v75;
  v88 = v89;
  v76 = v39;
  v87 = v76;
  objc_msgSend_enumerateIndexesUsingBlock_(v74, v77, v78, v79, v80, v85);

  objc_msgSend_setSeriesIndexedPieWedgeExplosions_(self, v81, v82, v83, v84, v76);
  _Block_object_dispose(v89, 8);
}

- (NSDictionary)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips
{
  v5 = objc_msgSend_p_chartLayout2D(self, a2, v2, v3, v4);
  v10 = objc_msgSend_seriesIndexedPieNormalizedLabelDistancesFromWedgeTips(v5, v6, v7, v8, v9);

  return v10;
}

- (NSDictionary)seriesIndexedPieWedgeExplosions
{
  v5 = objc_msgSend_p_chartLayout2D(self, a2, v2, v3, v4);
  v10 = objc_msgSend_seriesIndexedPieWedgeExplosions(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setSeriesIndexedPieWedgeExplosions:(id)a3
{
  v4 = a3;
  objc_msgSend_willChangeValueForKey_(self, v5, v6, v7, v8, @"pieWedgeExplosions");
  v13 = objc_msgSend_p_chartLayout2D(self, v9, v10, v11, v12);
  objc_msgSend_setSeriesIndexedPieWedgeExplosions_(v13, v14, v15, v16, v17, v4);

  objc_msgSend_didChangeValueForKey_(self, v18, v19, v20, v21, @"pieWedgeExplosions");
}

- (void)p_setLegendSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8 = objc_msgSend_p_chartLayout2D(self, a2, a3.width, a3.height, v3);
  objc_msgSend_setLegendSize_(v8, v6, width, height, v7);
}

- (TSDLayoutGeometry)legendGeometry
{
  v7 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartDrawableLayout legendGeometry]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 328, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_legendGeometryFrame(v7, v6, v8, v9, v10);
  x = v26;
  y = v28;
  width = v30;
  height = v32;
  v35 = objc_msgSend_geometry(self, v34, v26, v28, v30);
  v40 = v35;
  if (v35)
  {
    objc_msgSend_transform(v35, v36, v37, v38, v39);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v48 = CGRectApplyAffineTransform(v47, &v45);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
  }

  v41 = objc_alloc(MEMORY[0x277D80300]);
  v43 = objc_msgSend_initWithFrame_(v41, v42, x, y, width, height);

  return v43;
}

- (void)p_setLegendGeometry:(id)a3 fromTransform:(CGAffineTransform *)a4 onLayout:(id)a5 shouldUpdateLayoutItemSize:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v12 = a5;
  if (!v10)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHChartDrawableLayout p_setLegendGeometry:fromTransform:onLayout:shouldUpdateLayoutItemSize:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 340, 0, "invalid nil value for '%{public}s'", "legendGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_frame(v10, v11, v13, v14, v15);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = *&a4->c;
  *&v45.a = *&a4->a;
  *&v45.c = v39;
  *&v45.tx = *&a4->tx;
  CGAffineTransformInvert(&v46, &v45);
  v47.origin.x = v32;
  v47.origin.y = v34;
  v47.size.width = v36;
  v47.size.height = v38;
  v48 = CGRectApplyAffineTransform(v47, &v46);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  if (v6)
  {
    objc_msgSend_p_setLegendSize_(self, v40, v36, v38, v48.size.width);
  }

  objc_msgSend_setLegendGeometryFrame_(v12, v40, x, y, width, height);
}

- (void)setLegendGeometry:(id)a3
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v4 = a3;
  v9 = objc_msgSend_geometry(self, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    objc_msgSend_transform(v9, v10, v11, v12, v13);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  v19 = objc_msgSend_chartLayout(self, v15, v16, v17, v18);
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  objc_msgSend_p_setLegendGeometry_fromTransform_onLayout_shouldUpdateLayoutItemSize_(self, v20, *&v25, *&v24, v21, v4, v22, v19, 0);
}

- (TSDLayoutGeometry)legendModelGeometry
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartDrawableLayout legendModelGeometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 361, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_alloc(MEMORY[0x277D80300]);
  objc_msgSend_legendModelGeometryFrame(v6, v26, v27, v28, v29);
  v34 = objc_msgSend_initWithFrame_(v25, v30, v31, v32, v33);

  return v34;
}

- (void)setLegendModelGeometry:(id)a3
{
  v43 = a3;
  objc_msgSend_willChangeValueForKey_(self, v4, v5, v6, v7, @"legendGeometry");
  v12 = v43;
  if (!v43)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartDrawableLayout setLegendModelGeometry:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 367, 0, "invalid nil value for '%{public}s'", "legendModelGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v12 = 0;
  }

  objc_msgSend_frame(v12, v8, v9, v10, v11);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = objc_msgSend_chartLayout(self, v36, v28, v30, v32);
  objc_msgSend_setLegendModelGeometryFrame_(v37, v38, v29, v31, v33, v35);

  objc_msgSend_didChangeValueForKey_(self, v39, v40, v41, v42, @"legendGeometry");
}

- (TSCHChartModel)model
{
  v5 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)dataSetIndex
{
  v5 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_dataSetIndex(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setDataSetIndex:(unint64_t)a3
{
  v11 = objc_msgSend_chartLayout(self, a2, v3, v4, v5);
  objc_msgSend_setDataSetIndex_(v11, v7, v8, v9, v10, a3);
}

- (void)invalidateChartLayoutState
{
  if (!self->_suppressChartLayoutInvalidation)
  {
    self->_chartInvalidFlags.chartLayoutState = 1;
    objc_msgSend_invalidate(self->_chartLayout, a2, v3, v4, v5);
    objc_msgSend_invalidateExteriorWrap(self, v7, v8, v9, v10);

    objc_msgSend_invalidate(self, v11, v12, v13, v14);
  }
}

- (void)invalidateChartLayoutStructure
{
  if (!self->_suppressChartLayoutInvalidation)
  {
    self->_chartInvalidFlags.chartLayoutStructure = 1;
    objc_msgSend_p_clearChartLayout(self, a2, v3, v4, v5);
    objc_msgSend_invalidateChartLayoutState(self, v7, v8, v9, v10);

    objc_msgSend_invalidate(self, v11, v12, v13, v14);
  }
}

- (void)invalidateSize
{
  objc_msgSend_invalidateChartLayoutState(self, a2, v2, v3, v4);
  self->_minSizeCache = *MEMORY[0x277CBF3A8];
  v6.receiver = self;
  v6.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v6 invalidateSize];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v2 invalidate];
}

- (void)validate
{
  objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v6 validate];
}

- (void)p_validateChartLayout
{
  if (self->_chartInvalidFlags.chartLayoutStructure || self->_chartInvalidFlags.chartLayoutState)
  {
    (MEMORY[0x2821F9670])(self, sel_p_forceValidateChartLayout);
  }
}

- (void)p_forceValidateChartLayout
{
  p_chartInvalidFlags = &self->_chartInvalidFlags;
  if (self->_chartInvalidFlags.chartLayoutStructure && self->_chartLayout)
  {
    objc_msgSend_p_clearChartLayout(self, a2, v2, v3, v4);
  }

  self->_suppressChartLayoutInvalidation = 1;
  v7 = objc_msgSend_dynamicGeometry(self, a2, v2, v3, v4);

  if (!v7)
  {
    v13 = objc_msgSend_p_chartLayout(self, v8, v9, v10, v11);
    v18 = objc_msgSend_info(self, v38, v39, v40, v41);
    v46 = objc_msgSend_geometry(v18, v42, v43, v44, v45);
    objc_msgSend_size(v46, v47, v48, v49, v50);
    objc_msgSend_layoutForChartBodySize_(v13, v51, v52, v53, v54);

    goto LABEL_10;
  }

  v13 = objc_msgSend_lastPureGeometry(self, v8, v9, v10, v11);
  if (v13)
  {
    v17 = self->_chartLayout;
    if (v17)
    {
      v18 = v17;
      objc_msgSend_size(v13, v12, v14, v15, v16);
      objc_msgSend_layoutForResizingSize_(v18, v19, v20, v21, v22);
LABEL_10:

      goto LABEL_11;
    }
  }

  v23 = MEMORY[0x277D81150];
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHChartDrawableLayout p_forceValidateChartLayout]");
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 496, 0, "p_validateChartLayout called during dynamic operation without having been previously laid out. No way to sync.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
LABEL_11:

  *p_chartInvalidFlags = 0;
  objc_msgSend_invalidateFrame(self, v55, v56, v57, v58);
  self->_suppressChartLayoutInvalidation = 0;
}

- (void)p_clearChartLayout
{
  p_chartInvalidFlags = &self->_chartInvalidFlags;
  if (!self->_chartInvalidFlags.chartLayoutStructure)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartDrawableLayout p_clearChartLayout]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 514, 0, "People who clear the layout, should set _chartInvalidFlags.chartLayoutStructure before doing so");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    p_chartInvalidFlags->chartLayoutStructure = 1;
  }

  if ((objc_msgSend_isBeingManipulated(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_setLastPureGeometry_(self, v22, v23, v24, v25, 0);
    objc_msgSend_setLastChartAreaGeometry_(self, v26, v27, v28, v29, 0);
    chartLayout = self->_chartLayout;
    self->_chartLayout = 0;
  }
}

- (id)p_infoGeometryForComputingLayoutGeometryWithChartLayout:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartDrawableLayout p_infoGeometryForComputingLayoutGeometryWithChartLayout:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 532, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if ((objc_msgSend_isValid(v5, v4, v6, v7, v8) & 1) == 0)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHChartDrawableLayout p_infoGeometryForComputingLayoutGeometryWithChartLayout:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 533, 0, "chartLayout is not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  objc_msgSend_outerLayoutFrame(v5, v24, v25, v26, v27);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = objc_msgSend_chartDrawableLayoutGeometryProvider(self, v51, v43, v45, v47);
  v57 = v52;
  if (v5 && v52 && objc_msgSend_isValid(v5, v53, v54, v55, v56) && (v108.origin.x = v44, v108.origin.y = v46, v108.size.width = v48, v108.size.height = v50, !CGRectIsNull(v108)))
  {
    objc_msgSend_unscaledLayoutClipRect(v57, v53, v54, v55, v56);
    objc_msgSend_unscaledLayoutFrame(v57, v66, v67, v68, v69);
    TSUScaleSizeWithinSize();
    objc_msgSend_layoutForCircumscribingSize_(v5, v70, v71, v72, v73);
    TSUSubtractPoints();
    v78 = objc_msgSend_chart(self, v74, v75, v76, v77);
    v83 = objc_msgSend_geometry(v78, v79, v80, v81, v82);
    v58 = objc_msgSend_mutableCopy(v83, v84, v85, v86, v87);

    objc_msgSend_chartBodyFrame(v5, v88, v89, v90, v91);
    objc_msgSend_setSize_(v58, v92, v93, v94, v93);
    objc_msgSend_position(v58, v95, v96, v97, v98);
    TSUAddPoints();
    objc_msgSend_setPosition_(v58, v99, v100, v101, v102);
    v63 = objc_msgSend_copy(v58, v103, v104, v105, v106);
  }

  else
  {
    v58 = objc_msgSend_chart(self, v53, v54, v55, v56);
    v63 = objc_msgSend_geometry(v58, v59, v60, v61, v62);
  }

  v64 = v63;

  return v64;
}

- (CGRect)boundsForStandardKnobs
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartDrawableLayout boundsForStandardKnobs]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 562, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_msgSend_outerShadowFrame(v6, v5, v7, v8, v9);
  objc_msgSend_boundsForResize(v6, v25, v26, v27, v28);
  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)layoutGeometryFromInfo
{
  layoutGeometryWhileCallingSuperComputeLayoutGeometry = self->_layoutGeometryWhileCallingSuperComputeLayoutGeometry;
  if (layoutGeometryWhileCallingSuperComputeLayoutGeometry)
  {
    v6 = layoutGeometryWhileCallingSuperComputeLayoutGeometry;
  }

  else
  {
    objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);
    v9 = self->_chartLayout;
    if (!v9)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartDrawableLayout layoutGeometryFromInfo]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 592, 0, "invalid nil value for '%{public}s'", "chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    v58.receiver = self;
    v58.super_class = TSCHChartDrawableLayout;
    v28 = [(TSCHChartDrawableLayout *)&v58 layoutGeometryFromInfo];
    v33 = objc_msgSend_chart(self, v29, v30, v31, v32);
    v38 = objc_msgSend_geometry(v33, v34, v35, v36, v37);
    v56 = 0;
    v57 = 0;
    v55 = v28;
    objc_msgSend_p_convertValidChartLayout_andInfoGeometry_toPureGeometry_toChartAreaGeometry_toShadowGeometry_(self, v39, v40, v41, v42, v9, v38, &v57, &v56, &v55);
    v43 = v57;
    v44 = v56;
    v45 = v55;

    objc_msgSend_setLastPureGeometry_(self, v46, v47, v48, v49, v43);
    objc_msgSend_setLastChartAreaGeometry_(self, v50, v51, v52, v53, v44);
    v6 = v45;
  }

  return v6;
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (objc_msgSend_layoutState(self, a2, a3.x, a3.y, v3) != 4)
  {
    v43.receiver = self;
    v43.super_class = TSCHChartDrawableLayout;
    [(TSCHChartDrawableLayout *)&v43 offsetGeometryBy:x, y];
    v11 = objc_msgSend_lastPureGeometry(self, v7, v8, v9, v10);
    v14 = objc_msgSend_geometryByTranslatingBy_(v11, v12, x, y, v13);
    objc_msgSend_setLastPureGeometry_(self, v15, v16, v17, v18, v14);

    v23 = objc_msgSend_lastChartAreaGeometry(self, v19, v20, v21, v22);
    v26 = objc_msgSend_geometryByTranslatingBy_(v23, v24, x, y, v25);
    objc_msgSend_setLastChartAreaGeometry_(self, v27, v28, v29, v30, v26);

    v35 = objc_msgSend_legendGeometryForResize(self, v31, v32, v33, v34);
    v38 = objc_msgSend_geometryByTranslatingBy_(v35, v36, x, y, v37);
    objc_msgSend_setLegendGeometryForResize_(self, v39, v40, v41, v42, v38);
  }
}

- (id)computeLayoutGeometry
{
  objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);
  v7 = self->_chartLayout;
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartDrawableLayout computeLayoutGeometry]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 628, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_lastPureGeometry(self, v6, v8, v9, v10);

  if (v26 && (objc_msgSend_dynamicGeometry(self, v27, v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
  {
    v32 = 0;
  }

  else
  {
    v33 = objc_msgSend_p_infoGeometryForComputingLayoutGeometryWithChartLayout_(self, v27, v28, v29, v30, v7);
    v115 = 0;
    v116 = 0;
    v114 = 0;
    objc_msgSend_p_convertValidChartLayout_andInfoGeometry_toPureGeometry_toChartAreaGeometry_toShadowGeometry_(self, v34, v35, v36, v37, v7, v33, &v116, &v115, &v114);
    v38 = v116;
    v39 = v115;
    v32 = v114;
    objc_msgSend_setLastPureGeometry_(self, v40, v41, v42, v43, v38);
    objc_msgSend_setLastChartAreaGeometry_(self, v44, v45, v46, v47, v39);
  }

  v48 = objc_msgSend_dynamicGeometry(self, v27, v28, v29, v30);

  if (v48)
  {
    v53 = objc_msgSend_chartDrawableLayoutGeometryProvider(self, v49, v50, v51, v52);

    if (v53)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCHChartDrawableLayout computeLayoutGeometry]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 653, 0, "expected nil value for '%{public}s'", "self.chartDrawableLayoutGeometryProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v73 = objc_msgSend_dynamicGeometry(self, v54, v55, v56, v57);

    v78 = objc_msgSend_lastPureGeometry(self, v74, v75, v76, v77);
    v83 = objc_msgSend_copy(v78, v79, v80, v81, v82);

    v112 = v73;
    v113 = 0;
    v88 = objc_msgSend_p_constrainAndResizePureGeometry_withValidChartLayout_toChartAreaGeometry_toShadowGeometry_toInfoGeometry_(self, v84, v85, v86, v87, v83, v7, &v113, &v112, 0);
    v89 = v113;
    v32 = v112;

    objc_msgSend_setLastPureGeometry_(self, v90, v91, v92, v93, v88);
    objc_msgSend_setLastChartAreaGeometry_(self, v94, v95, v96, v97, v89);
  }

  objc_storeStrong(&self->_layoutGeometryWhileCallingSuperComputeLayoutGeometry, v32);
  v111.receiver = self;
  v111.super_class = TSCHChartDrawableLayout;
  v98 = [(TSCHChartDrawableLayout *)&v111 computeLayoutGeometry];
  v103 = v98;
  if (v32 && v98)
  {
    objc_msgSend_size(v98, v99, v100, v101, v102);
    objc_msgSend_size(v32, v104, v105, v106, v107);
  }

  layoutGeometryWhileCallingSuperComputeLayoutGeometry = self->_layoutGeometryWhileCallingSuperComputeLayoutGeometry;
  self->_layoutGeometryWhileCallingSuperComputeLayoutGeometry = 0;

  v109 = v32;
  return v32;
}

- (id)computeInfoGeometryDuringResize
{
  objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);
  v7 = self->_chartLayout;
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartDrawableLayout computeInfoGeometryDuringResize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 697, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v27 = objc_msgSend_lastPureGeometry(self, v6, v8, v9, v10);
  if (!v27)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v28, v29, v30, "[TSCHChartDrawableLayout computeInfoGeometryDuringResize]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 702, 0, "invalid nil value for '%{public}s'", "lastPureGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v59 = 0;
  v60 = 0;
  v46 = objc_msgSend_p_constrainAndResizePureGeometry_withValidChartLayout_toChartAreaGeometry_toShadowGeometry_toInfoGeometry_(self, v26, v28, v29, v30, v27, v7, &v60, 0, &v59);
  v47 = v60;
  v48 = v59;
  objc_msgSend_setLastPureGeometry_(self, v49, v50, v51, v52, v46);
  objc_msgSend_setLastChartAreaGeometry_(self, v53, v54, v55, v56, v47);
  v57 = v48;

  return v48;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_infoGeometry(v4, v10, v11, v12, v13);

  v19 = objc_msgSend_infoGeometryForDesiredPureLayoutGeometry_(v9, v15, v16, v17, v18, v14);

  return v19;
}

- (void)willBeAddedToLayoutController:(id)a3
{
  v13.receiver = self;
  v13.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v13 willBeAddedToLayoutController:a3];
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
  objc_msgSend_postNotificationName_object_(v8, v9, v10, v11, v12, @"TSCHChartDrawableLayoutWillAddToLayoutControllerNotification", self);
}

- (id)propertiesThatInvalidateLayout
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_chartLayoutClass(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_propertiesThatInvalidateLayout(v15, v16, v17, v18, v19);

  return v20;
}

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  v19.receiver = self;
  v19.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v19 processChangedProperty:?];
  if (!self->_chartInvalidFlags.chartLayoutState)
  {
    v9 = objc_msgSend_propertiesThatInvalidateLayout(self, v5, v6, v7, v8);
    v14 = objc_msgSend_containsProperty_(v9, v10, v11, v12, v13, v3);

    if (v14)
    {
      objc_msgSend_invalidateChartLayoutState(self, v15, v16, v17, v18);
    }
  }
}

- (void)processChanges:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_chartLayout(self, v5, v6, v7, v8);
  objc_msgSend_processChanges_(v9, v10, v11, v12, v13, v4);

  if (!self->_chartInvalidFlags.chartLayoutStructure)
  {
    v18 = objc_msgSend_chart(self, v14, v15, v16, v17);
    v23 = objc_msgSend_chartType(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_chartLayoutClass(v23, v24, v25, v26, v27);
    if (v28 != objc_opt_class())
    {

LABEL_5:
      objc_msgSend_invalidateChartLayoutStructure(self, v33, v34, v35, v36);
      goto LABEL_6;
    }

    ShouldClearLayout = objc_msgSend_changesShouldClearLayout_(self, v29, v30, v31, v32, v4);

    if (ShouldClearLayout)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v46.receiver = self;
  v46.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v46 processChanges:v4];
  if (!self->_chartInvalidFlags.chartLayoutState && objc_msgSend_changesShouldSetNeedsLayout_(self, v38, v39, v40, v41, v4))
  {
    objc_msgSend_invalidateChartLayoutState(self, v42, v43, v44, v45);
  }
}

- (CGSize)p_calcMinSize
{
  v53.receiver = self;
  v53.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v53 minimumSize];
  v4 = v3;
  v6 = v5;
  v9 = objc_msgSend_chart(self, v7, v3, v5, v8);
  v14 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v10, v11, v12, v13, v9);

  if (v14)
  {
    objc_msgSend_layoutSettings(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHChartDrawableLayout p_calcMinSize]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 823, 0, "invalid nil value for '%{public}s'", "minSizeLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v49 = 0uLL;
    v50 = 0;
  }

  sub_27635FBB0(&v49, &v51);
  v49 = v51;
  v50 = v52;
  objc_msgSend_setLayoutSettings_(v14, v34, v51.n128_f64[0], v35, v36, &v49);
  objc_msgSend_layoutForChartBodySize_(v14, v37, fmax(v4, 30.0), fmax(v6, 30.0), v38);
  objc_msgSend_boundsForResize(v14, v39, v40, v41, v42);
  v44 = v43;
  v46 = v45;

  v47 = v44;
  v48 = v46;
  result.height = v48;
  result.width = v47;
  return result;
}

- (CGSize)minimumSize
{
  p_minSizeCache = &self->_minSizeCache;
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  width = self->_minSizeCache.width;
  height = self->_minSizeCache.height;
  if (*MEMORY[0x277CBF3A8] == width && v3 == height)
  {
    objc_msgSend_p_calcMinSize(self, a2, width, height, *MEMORY[0x277CBF3A8], v3);
    p_minSizeCache->width = width;
    p_minSizeCache->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  v6 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, v2, v3, v4);
  v11 = objc_msgSend_supportsTextWrapping(v6, v7, v8, v9, v10);

  if (v11)
  {
    v64.receiver = self;
    v64.super_class = TSCHChartDrawableLayout;
    [(TSCHChartDrawableLayout *)&v64 alignmentFrameForProvidingGuidesInRoot];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v25 = objc_msgSend_chartLayout(self, v12, v13, v14, v15);
    if (!v25)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v26, v27, v28, "[TSCHChartDrawableLayout alignmentFrameForProvidingGuidesInRoot]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 1035, 0, "invalid nil value for '%{public}s'", "chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    objc_msgSend_transformInRoot(self, v24, 0.0, v27, v28);
    objc_msgSend_boundsForResize(v25, v44, v45, v46, v47);
    objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(v25, v48, v49, v50, v51);
    TSUAddPoints();
    objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(v25, v52, v53, v54, v55);
    TSURectWithPoints();
    v17 = v56;
    v19 = v57;
    v21 = v58;
    v23 = v59;
  }

  v60 = v17;
  v61 = v19;
  v62 = v21;
  v63 = v23;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

- (void)take3DDepth
{
  self->_suppressChartLayoutInvalidation = 1;
  objc_msgSend_p_validateChartLayout(self, a2, v2, v3, v4);
  v7 = self->_chartLayout;
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartDrawableLayout take3DDepth]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1356, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_invalidate(v7, v6, v8, v9, v10);
  v30 = objc_msgSend_chart(self, v26, v27, v28, v29);
  v35 = objc_msgSend_geometry(v30, v31, v32, v33, v34);

  v36 = objc_alloc(MEMORY[0x277D80300]);
  v41 = objc_msgSend_initWithInfoGeometry_(v36, v37, v38, v39, v40, v35);
  if (!sub_2762ED4A8(v41))
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "[TSCHChartDrawableLayout take3DDepth]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v54, v55, v56, v47, v52, 1360, 0, "Geometry has scale component. This should not be!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
  }

  objc_msgSend_size(v41, v42, v43, v44, v45);
  objc_msgSend_layoutForChartBodySize_(v7, v61, v62, v63, v64);
  v83 = 0;
  v84 = 0;
  objc_msgSend_p_convertValidChartLayout_andInfoGeometry_toPureGeometry_toChartAreaGeometry_toShadowGeometry_(self, v65, v66, v67, v68, v7, v35, &v84, 0, &v83);
  v69 = v84;
  v70 = v83;
  objc_msgSend_setGeometry_(self, v71, v72, v73, v74, v70);
  objc_msgSend_invalidateFrame(self, v75, v76, v77, v78);
  objc_msgSend_invalidateExteriorWrap(self, v79, v80, v81, v82);
  self->_suppressChartLayoutInvalidation = 0;
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_layout(v4, v5, v6, v7, v8);

  if (v9 != self)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartDrawableLayout renderersWithRep:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1384, 0, "You're asking me for renderers for this rep, but I'm not this rep's layout. This is probably wrong.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_chartLayout(self, v10, v11, v12, v13);
  v34 = objc_msgSend_renderersWithRep_(v29, v30, v31, v32, v33, v4);

  return v34;
}

- (void)p_convertValidChartLayout:(id)a3 andInfoGeometry:(id)a4 toPureGeometry:(id *)a5 toChartAreaGeometry:(id *)a6 toShadowGeometry:(id *)a7
{
  v12 = a3;
  v14 = a4;
  p_lastPureGeometry = &self->_lastPureGeometry;
  if (&self->_lastPureGeometry == a5)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 1422, 0, "Don't try to set _lastPureGeometry this way. It's retained...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  p_lastChartAreaGeometry = &self->_lastChartAreaGeometry;
  if (&self->_lastChartAreaGeometry == a6)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 1423, 0, "Don't try to set _lastChartAreaGeometry this way. It's retained...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (v12)
  {
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v97, v98, v99, v100, v91, v96, 1432, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v105 = MEMORY[0x277D81150];
  v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
  v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v112, v113, v114, v115, v106, v111, 1433, 0, "invalid nil value for '%{public}s'", "infoGeometry");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119);
LABEL_11:
  if ((objc_msgSend_isValid(v12, v13, v15, v16, v17) & 1) == 0)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 1434, 0, "This method requires that the TSCHChartLayout be valid when passed in.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  if (!(a5 | a7))
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 1435, 0, "This method requires at least outPureGeometry or outShadowGeometry to be passed in.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  v82 = objc_msgSend_chart(self, v48, v49, v50, v51);
  v84 = v14;
  if (v82)
  {
    objc_msgSend_minimumChartBodySize(v82, v83, v85, v86, v87);
    v88 = v85;
    v89 = v86;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v88 = 30.0;
    v89 = 30.0;
    if (!v14)
    {
LABEL_23:
      v124 = v84;
      goto LABEL_35;
    }
  }

  if (objc_msgSend_widthValid(v84, v83, v85, v86, v87) && objc_msgSend_heightValid(v84, v120, v121, v122, v123))
  {
    goto LABEL_23;
  }

  v125 = objc_msgSend_mutableCopy(v84, v120, v121, v122, v123);
  if (objc_msgSend_widthValid(v84, v126, v127, v128, v129))
  {
    objc_msgSend_size(v84, v130, v131, v132, v133);
    if (v88 >= v135)
    {
      v135 = v88;
    }

    objc_msgSend_setSize_(v125, v134, v135, v89 * (v135 / v88), v136);
  }

  else if (objc_msgSend_heightValid(v84, v130, v131, v132, v133))
  {
    objc_msgSend_size(v84, v141, v142, v143, v144);
    if (v89 >= v146)
    {
      v148 = v89;
    }

    else
    {
      v148 = v146;
    }

    objc_msgSend_setSize_(v125, v145, v148, v88 * (v148 / v89), v147);
  }

  else
  {
    objc_msgSend_setSize_(v125, v141, v88, v89, v144);
  }

  objc_msgSend_setHeightValid_(v125, v137, v138, v139, v140, 1);
  objc_msgSend_setWidthValid_(v125, v149, v150, v151, v152, 1);
  v124 = v125;

LABEL_35:
  v157 = objc_msgSend_chart(self, v153, v154, v155, v156);
  v158 = v124;
  v163 = v158;
  if (v157)
  {
    objc_msgSend_minimumChartBodySize(v157, v159, v160, v161, v162);
    v164 = v160;
    v165 = v161;
    if (!v163)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v164 = 30.0;
    v165 = 30.0;
    if (!v158)
    {
LABEL_46:
      v205 = v163;
      goto LABEL_47;
    }
  }

  objc_msgSend_size(v163, v159, v160, v161, v162);
  if (v167 >= v164)
  {
    objc_msgSend_size(v163, v166, v167, v168, v169);
    if (v168 >= v165)
    {
      goto LABEL_46;
    }
  }

  v170 = MEMORY[0x277D81150];
  v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, "TSDInfoGeometry * _Nonnull TSCHEnsureMinSizeInfoGeometryForChart(TSCHChartInfo * _Nonnull __strong, TSDInfoGeometry * _Nonnull __strong)");
  v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v173, v174, v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
  objc_msgSend_size(v163, v177, v178, v179, v180);
  NSStringFromCGSize(v289);
  v181 = a6;
  v183 = v182 = a7;
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v184, v185, v186, v187, v171, v176, 2000, 0, "Chart infoGeometry size has dimension smaller than the minimum %@. That's a bad document.", v183);

  a7 = v182;
  a6 = v181;

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190, v191);
  v196 = objc_msgSend_mutableCopy(v163, v192, v193, v194, v195);
  objc_msgSend_size(v196, v197, v198, v199, v200);
  if (v202 < v164)
  {
    v202 = v164;
  }

  if (v203 < v165)
  {
    v203 = v165;
  }

  objc_msgSend_setSize_(v196, v201, v202, v203, v204);
  v205 = v196;

LABEL_47:
  if (v12)
  {
    if (v205)
    {
      if (a5 | a7)
      {
        if (objc_msgSend_isValid(v12, v206, v207, v208, v209))
        {
          objc_msgSend_size(v205, v210, v211, v212, v213);
          v214 = TSUNearlyEqualSizes();
          if (p_lastChartAreaGeometry != a6 && p_lastPureGeometry != a5 && (v214 & 1) == 0)
          {
            v215 = objc_alloc(MEMORY[0x277D80300]);
            v220 = objc_msgSend_initWithInfoGeometry_(v215, v216, v217, v218, v219, v205);
            if (!sub_2762ED4A8(v220))
            {
              v225 = MEMORY[0x277D81150];
              v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v222, v223, v224, "[TSCHChartDrawableLayout p_convertValidChartLayout:andInfoGeometry:toPureGeometry:toChartAreaGeometry:toShadowGeometry:]");
              v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, v228, v229, v230, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v225, v232, v233, v234, v235, v226, v231, 1453, 0, "Geometry has scale component. This should not be!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v236, v237, v238, v239);
            }

            objc_msgSend_size(v220, v221, v222, v223, v224);
            objc_msgSend_layoutForChartBodySize_(v12, v240, v241, v242, v243);
            objc_msgSend_chartBodyFrame(v12, v244, v245, v246, v247);
            v251 = 0.0;
            memset(&v288, 0, sizeof(v288));
            if (v220)
            {
              objc_msgSend_transform(v220, v248, 0.0, v249, v250);
            }

            if (a5)
            {
              objc_msgSend_boundsForResize(v12, v248, v251, v249, v250);
              v253 = v252;
              v255 = v254;
              TSUSubtractPoints();
              memset(&v287, 0, sizeof(v287));
              CGAffineTransformMakeTranslation(&v287, v256, v257);
              t1 = v287;
              memset(&v286, 0, sizeof(v286));
              t2 = v288;
              CGAffineTransformConcat(&v286, &t1, &t2);
              v258 = objc_alloc(MEMORY[0x277D80300]);
              t1 = v286;
              v261 = objc_msgSend_initWithSize_transform_(v258, v259, v253, v255, v260, &t1);
              *a5 = v261;
            }

            if (a6)
            {
              objc_msgSend_chartAreaFrame(v12, v248, v251, v249, v250);
              v263 = v262;
              v265 = v264;
              TSUSubtractPoints();
              memset(&v287, 0, sizeof(v287));
              CGAffineTransformMakeTranslation(&v287, v266, v267);
              t1 = v287;
              memset(&v286, 0, sizeof(v286));
              t2 = v288;
              CGAffineTransformConcat(&v286, &t1, &t2);
              v268 = objc_alloc(MEMORY[0x277D80300]);
              t1 = v286;
              v271 = objc_msgSend_initWithSize_transform_(v268, v269, v263, v265, v270, &t1);
              *a6 = v271;
            }

            if (a7)
            {
              objc_msgSend_outerShadowFrame(v12, v248, v251, v249, v250);
              v273 = v272;
              v275 = v274;
              TSUSubtractPoints();
              memset(&v287, 0, sizeof(v287));
              CGAffineTransformMakeTranslation(&v287, v276, v277);
              t1 = v287;
              memset(&v286, 0, sizeof(v286));
              t2 = v288;
              CGAffineTransformConcat(&v286, &t1, &t2);
              v278 = objc_alloc(MEMORY[0x277D80300]);
              t1 = v286;
              v281 = objc_msgSend_initWithSize_transform_(v278, v279, v273, v275, v280, &t1);
              *a7 = v281;
            }
          }
        }
      }
    }
  }
}

- (id)p_constrainAndResizePureGeometry:(id)a3 withValidChartLayout:(id)a4 toChartAreaGeometry:(id *)a5 toShadowGeometry:(id *)a6 toInfoGeometry:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v17 = v12;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (v12)
  {
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartDrawableLayout p_constrainAndResizePureGeometry:withValidChartLayout:toChartAreaGeometry:toShadowGeometry:toInfoGeometry:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 1518, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v58 = MEMORY[0x277D81150];
  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartDrawableLayout p_constrainAndResizePureGeometry:withValidChartLayout:toChartAreaGeometry:toShadowGeometry:toInfoGeometry:]");
  v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 1519, 0, "invalid nil value for '%{public}s'", "pureGeometry");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
LABEL_9:
  if ((objc_msgSend_isValid(v17, v13, v14, v15, v16) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHChartDrawableLayout p_constrainAndResizePureGeometry:withValidChartLayout:toChartAreaGeometry:toShadowGeometry:toInfoGeometry:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 1520, 0, "This method requires that the TSCHChartLayout be valid when passed in.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (v17 && v11 && a5 | a6 | a7 && objc_msgSend_isValid(v17, v18, v19, v20, v21) && (objc_msgSend_size(v11, v37, v38, v39, v40), !TSUNearlyEqualSizes()))
  {
    if (!sub_2762ED4A8(v11))
    {
      v77 = MEMORY[0x277D81150];
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "[TSCHChartDrawableLayout p_constrainAndResizePureGeometry:withValidChartLayout:toChartAreaGeometry:toShadowGeometry:toInfoGeometry:]");
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v84, v85, v86, v87, v78, v83, 1531, 0, "Geometry has scale component. This should not be!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
    }

    memset(&v157, 0, sizeof(v157));
    objc_msgSend_transform(v11, v73, 0.0, v75, v76);
    objc_msgSend_size(v11, v92, v93, v94, v95);
    objc_msgSend_layoutForResizingSize_(v17, v96, v97, v98, v99);
    objc_msgSend_boundsForResize(v17, v100, v101, v102, v103);
    v108 = v107;
    v110 = v109;
    if (a5)
    {
      objc_msgSend_chartAreaFrame(v17, v104, v105, v106, v107);
      v112 = v111;
      v114 = v113;
      TSUSubtractPoints();
      memset(&v156, 0, sizeof(v156));
      CGAffineTransformMakeTranslation(&v156, v115, v116);
      t1 = v156;
      memset(&v155, 0, sizeof(v155));
      t2 = v157;
      CGAffineTransformConcat(&v155, &t1, &t2);
      v117 = objc_alloc(MEMORY[0x277D80300]);
      t1 = v155;
      v120 = objc_msgSend_initWithSize_transform_(v117, v118, v112, v114, v119, &t1);
      *a5 = v120;
    }

    if (a6)
    {
      objc_msgSend_outerShadowFrame(v17, v104, v105, v106, v107);
      v122 = v121;
      v124 = v123;
      TSUSubtractPoints();
      memset(&v156, 0, sizeof(v156));
      CGAffineTransformMakeTranslation(&v156, v125, v126);
      t1 = v156;
      memset(&v155, 0, sizeof(v155));
      t2 = v157;
      CGAffineTransformConcat(&v155, &t1, &t2);
      v127 = objc_alloc(MEMORY[0x277D80300]);
      t1 = v155;
      v130 = objc_msgSend_initWithSize_transform_(v127, v128, v122, v124, v129, &t1);
      *a6 = v130;
    }

    if (a7)
    {
      objc_msgSend_chartBodyFrame(v17, v104, v105, v106, v107);
      v132 = v131;
      v134 = v133;
      TSUSubtractPoints();
      memset(&v156, 0, sizeof(v156));
      CGAffineTransformMakeTranslation(&v156, v135, v136);
      t1 = v156;
      memset(&v155, 0, sizeof(v155));
      t2 = v157;
      CGAffineTransformConcat(&v155, &t1, &t2);
      v137 = objc_alloc(MEMORY[0x277D802E8]);
      t1 = v155;
      v140 = objc_msgSend_initWithTransform_size_(v137, v138, v132, v134, v139, &t1);
      *a7 = v140;
    }

    v41 = v11;
    objc_msgSend_size(v41, v141, v142, v143, v144);
    if ((TSUNearlyEqualSizes() & 1) == 0)
    {
      v145 = objc_alloc(MEMORY[0x277D80300]);
      objc_msgSend_transform(v41, v146, v147, v148, v149);
      v152 = objc_msgSend_initWithSize_transform_(v145, v150, v108, v110, v151, &v156);

      v41 = v152;
    }
  }

  else
  {
    v41 = v11;
  }

  return v41;
}

- (BOOL)p_isPrintingInBackground
{
  v5 = objc_msgSend_layoutController(self, a2, v2, v3, v4);
  v10 = objc_msgSend_canvas(v5, v6, v7, v8, v9);

  if (objc_msgSend_isPrinting(v10, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v15, v16, v17, v18);
    v24 = objc_msgSend_isInBackground(v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)p_isRenderingForKPF
{
  v5 = objc_msgSend_layoutController(self, a2, v2, v3, v4);
  v10 = objc_msgSend_canvas(v5, v6, v7, v8, v9);

  LOBYTE(v5) = objc_msgSend_isRenderingForKPF(v10, v11, v12, v13, v14);
  return v5;
}

- (double)multiDataControlDesiredDistanceFromChartRep
{
  v5 = objc_msgSend_chartDrawableLayoutMode(self, a2, v2, v3, v4);
  result = 10.0;
  if (v5 == 1)
  {
    return 17.0;
  }

  return result;
}

- (double)p_approximatedAdditionalHeightForMultiDataControlWithMinimumAccommodatingScale:(double)a3
{
  if (a3 == 0.0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, v3, v4, "[TSCHChartDrawableLayout p_approximatedAdditionalHeightForMultiDataControlWithMinimumAccommodatingScale:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 1635, 0, "invalid minimum scale %f", *&a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  objc_msgSend_p_approximateMultiDataControlUnscaledHeight(self, a2, a3, v3, v4);
  v23 = v22;
  objc_msgSend_multiDataControlDesiredDistanceFromChartRep(self, v24, v22, v25, v26);
  return (v23 + v27 + 14.0) / a3;
}

- (CGRect)p_addMultiDataControlToInlineWrapBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_p_approximatedAdditionalHeightForMultiDataControlWithMinimumAccommodatingScale_(self, a2, 1.0, a3.origin.y, a3.size.width);
  v8 = height + v7;
  v9 = x;
  v10 = y;
  v11 = width;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  v114.receiver = self;
  v114.super_class = TSCHChartDrawableLayout;
  v5 = *&a4->c;
  v113[0] = *&a4->a;
  v113[1] = v5;
  v113[2] = *&a4->tx;
  [(TSCHChartDrawableLayout *)&v114 frameForCullingWithBaseFrame:v113 additionalTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  x = v6;
  y = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_layoutController(self, v14, v6, v8, v10);
  v20 = objc_msgSend_rootLayout(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_conformsToProtocol_(v20, v21, v22, v23, v24, &unk_2885C15B0);

  if (v25)
  {
    v30 = objc_msgSend_layoutController(self, v26, v27, v28, v29);
    v35 = objc_msgSend_rootLayout(v30, v31, v32, v33, v34);
    v36 = TSUProtocolCast();

    ShouldAccommodateControls = objc_msgSend_chartDrawableShouldAccommodateControls(v36, v37, v38, v39, v40, &unk_2885C15B0);
  }

  else
  {
    ShouldAccommodateControls = 1;
  }

  v42 = objc_msgSend_model(self, v26, v27, v28, v29);
  if (!objc_msgSend_isMultiData(v42, v43, v44, v45, v46))
  {
LABEL_9:

    goto LABEL_10;
  }

  v51 = objc_msgSend_layoutController(self, v47, v48, v49, v50);
  v56 = objc_msgSend_canvas(v51, v52, v53, v54, v55);
  v61 = objc_msgSend_isCanvasInteractive(v56, v57, v58, v59, v60) & ShouldAccommodateControls;

  if (v61 == 1)
  {
    objc_msgSend_p_approximatedAdditionalHeightForMultiDataControlWithMinimumAccommodatingScale_(self, v62, 0.2, v63, v64);
    r1 = v13 + v65;
    v42 = self->_chartLayout;
    if (!v42)
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHChartDrawableLayout frameForCullingWithBaseFrame:additionalTransform:]");
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 1670, 0, "invalid nil value for '%{public}s'", "chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    }

    objc_msgSend_chartBodyFrame(v42, v66, v67, v68, v69);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    objc_msgSend_p_approximateMultiDataControlUnscaledMinimumWidth(self, v93, v85, v87, v89);
    v115.origin.x = v86;
    v115.origin.y = v88;
    v115.size.width = v90;
    v115.size.height = v92;
    CGRectGetHeight(v115);
    TSURectWithSize();
    TSUCenterRectOverRect();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    objc_msgSend_outerLayoutFrame(v42, v102, v94, v96, v98);
    v121.origin.x = v95;
    v121.origin.y = v97;
    v121.size.width = v99;
    v121.size.height = v101;
    v117 = CGRectUnion(v116, v121);
    width = v117.size.width;
    height = v117.size.height;
    objc_msgSend_frame(self, v105, v117.origin.x, v117.origin.y, v117.size.width);
    TSUAddPoints();
    v122.origin.x = v106;
    v122.origin.y = v107;
    v118.origin.x = x;
    v118.origin.y = y;
    v118.size.width = v11;
    v118.size.height = r1;
    v122.size.width = width;
    v122.size.height = height;
    v119 = CGRectUnion(v118, v122);
    x = v119.origin.x;
    y = v119.origin.y;
    v11 = v119.size.width;
    v13 = v119.size.height;
    goto LABEL_9;
  }

LABEL_10:
  v108 = x;
  v109 = y;
  v110 = v11;
  v111 = v13;
  result.size.height = v111;
  result.size.width = v110;
  result.origin.y = v109;
  result.origin.x = v108;
  return result;
}

- (id)visibleGeometries
{
  v30.receiver = self;
  v30.super_class = TSCHChartDrawableLayout;
  v3 = [(TSCHChartDrawableLayout *)&v30 visibleGeometries];
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  isMultiData = objc_msgSend_isMultiData(v8, v9, v10, v11, v12);

  if (isMultiData)
  {
    v14 = objc_alloc(MEMORY[0x277D80300]);
    objc_msgSend_frameForCulling(self, v15, v16, v17, v18);
    v23 = objc_msgSend_initWithFrame_(v14, v19, v20, v21, v22);
    v28 = objc_msgSend_arrayByAddingObject_(v3, v24, v25, v26, v27, v23);

    v3 = v28;
  }

  return v3;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  v27.receiver = self;
  v27.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v27 boundsInfluencingExteriorWrap];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = objc_msgSend_model(self, v11, v3, v5, v7);
  isMultiData = objc_msgSend_isMultiData(v12, v13, v14, v15, v16);

  if (isMultiData)
  {
    objc_msgSend_p_addMultiDataControlToInlineWrapBounds_(self, v18, v4, v6, v8, v10);
    v4 = v19;
    v6 = v20;
    v8 = v21;
    v10 = v22;
  }

  v23 = v4;
  v24 = v6;
  v25 = v8;
  v26 = v10;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)alignmentFrame
{
  v7 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartDrawableLayout alignmentFrame]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1716, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_transform(self, v6, 0.0, v9, v10);
  v30 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v26, v27, v28, v29);
  v35 = objc_msgSend_supportsTextWrapping(v30, v31, v32, v33, v34);

  if (v35)
  {
    objc_msgSend_outerLayoutFrame(v7, v36, v37, v38, v39);
  }

  else
  {
    objc_msgSend_boundsForResize(v7, v36, v37, v38, v39);
  }

  objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(v7, v40, v41, v42, v43);
  TSUAddPoints();
  objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(v7, v44, v45, v46, v47);
  TSURectWithPoints();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = v49;
  v57 = v51;
  v58 = v53;
  v59 = v55;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (CGRect)alignmentFrameForInlineLayout
{
  v36.receiver = self;
  v36.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v36 alignmentFrameForInlineLayout];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v11, v3, v5, v7);
  if (objc_msgSend_supportsTextWrapping(v12, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_model(self, v17, v18, v19, v20);
    isMultiData = objc_msgSend_isMultiData(v21, v22, v23, v24, v25);

    if (isMultiData)
    {
      objc_msgSend_p_addMultiDataControlToInlineWrapBounds_(self, v27, v4, v6, v8, v10);
      v4 = v28;
      v6 = v29;
      v8 = v30;
      v10 = v31;
    }
  }

  else
  {
  }

  v32 = v4;
  v33 = v6;
  v34 = v8;
  v35 = v10;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)insertionFrame
{
  v6 = objc_msgSend_geometry(self, a2, v2, v3, v4);
  objc_msgSend_frame(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v23 = objc_msgSend_model(self, v19, v20, v21, v22);
  isMultiData = objc_msgSend_isMultiData(v23, v24, v25, v26, v27);

  if (isMultiData)
  {
    objc_msgSend_p_addMultiDataControlToInlineWrapBounds_(self, v29, v12, v14, v16, v18);
    v12 = v30;
    v14 = v31;
    v16 = v32;
    v18 = v33;
  }

  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v18;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (id)i_computeUnitedWrapPath
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartDrawableLayout i_computeUnitedWrapPath]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1753, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_msgSend_legendGeometryFrame(v6, v5, v7, v8, v9);
  v29 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v25, v26, v27, v28);
  objc_msgSend_chartAreaFrame(v6, v30, v31, v32, v33);
  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v6, v34, v35, v36, v37);
  v42 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v38, v39, v40, v41);
  v47 = objc_msgSend_uniteWithBezierPath_(v42, v43, v44, v45, v46, v29);

  return v47;
}

- (id)i_computeWrapPath
{
  v4.receiver = self;
  v4.super_class = TSCHChartDrawableLayout;
  v2 = [(TSCHChartDrawableLayout *)&v4 i_computeWrapPath];

  return v2;
}

- (CGRect)frameForCaptionPositioning
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  objc_msgSend_chartBodyFrame(v6, v7, v8, v9, v10);
  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v6, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  objc_msgSend_transform(self, v23, v15, v17, v19);
  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  v37 = CGRectApplyAffineTransform(v36, &v35);
  x = v37.origin.x;
  width = v37.size.width;
  v34.receiver = self;
  v34.super_class = TSCHChartDrawableLayout;
  [(TSCHChartDrawableLayout *)&v34 frameForCaptionPositioning];
  v27 = v26;
  v29 = v28;

  v30 = x;
  v31 = v27;
  v32 = width;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGSize)minSizeCache
{
  width = self->_minSizeCache.width;
  height = self->_minSizeCache.height;
  result.height = height;
  result.width = width;
  return result;
}

@end