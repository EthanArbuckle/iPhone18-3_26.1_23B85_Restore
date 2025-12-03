@interface TSCHChartRootLayoutItem
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings;
- (BOOL)isInResize;
- (CGPoint)bottomLegendOffsetForChartAreaFrame:(CGRect)frame legendFrame:(CGRect)legendFrame;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGSize)startingSize;
- (NSDictionary)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips;
- (NSDictionary)seriesIndexedPieWedgeExplosions;
- (TSCHChartAbstractAreaLayoutItem)chartAreaLayoutItem;
- (TSCHChartRootLayoutItem)initWithChartInfo:(id)info styleProvidingSource:(id)source;
- (TSCHLegendAreaLayoutItem)legendAreaLayoutItem;
- (id)chartInfo;
- (id)model;
- (id)renderersWithRep:(id)rep;
- (id)root;
- (id)styleProvidingSource;
- (unint64_t)dataSetIndex;
- (void)buildSubTree;
- (void)clearAll;
- (void)invalidateSeriesIndexedPieWedgeExplosions;
- (void)invalidateTransientModel;
- (void)layoutInward;
- (void)layoutOutward;
- (void)p_updatePieWedgeExplosionsFromModel;
- (void)positionLegendAtBottom;
- (void)setChartBodySize:(CGSize)size;
- (void)setChartInnerFrame:(CGRect)frame legendInnerFrame:(CGRect)innerFrame;
- (void)setDataSetIndex:(unint64_t)index;
- (void)setLayoutSettings:(id *)settings;
- (void)setLegendSize:(CGSize)size;
- (void)updateLayoutOffset;
- (void)updateLayoutSize;
@end

@implementation TSCHChartRootLayoutItem

- (TSCHChartRootLayoutItem)initWithChartInfo:(id)info styleProvidingSource:(id)source
{
  infoCopy = info;
  sourceCopy = source;
  if (!infoCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHChartRootLayoutItem initWithChartInfo:styleProvidingSource:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 39, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v48.receiver = self;
  v48.super_class = TSCHChartRootLayoutItem;
  v27 = [(TSCHChartLayoutItem *)&v48 initWithParent:0];
  v28 = v27;
  if (v27)
  {
    objc_storeWeak(&v27->_chartInfo, infoCopy);
    v33 = objc_msgSend_model(infoCopy, v29, v30, v31, v32);
    v38 = objc_msgSend_multiDataSetIndex(v33, v34, v35, v36, v37);
    v43 = objc_msgSend_modelForDataSetIndex_(infoCopy, v39, v40, v41, v42, v38);
    chartModel = v28->_chartModel;
    v28->_chartModel = v43;

    v45 = *MEMORY[0x277CBF398];
    v46 = *(MEMORY[0x277CBF398] + 16);
    v28->_legendInnerFrame.origin = *MEMORY[0x277CBF398];
    v28->_legendInnerFrame.size = v46;
    v28->_chartInnerFrame.origin = v45;
    v28->_chartInnerFrame.size = v46;
    v28->_startingSize = *MEMORY[0x277CBF3A8];
    objc_storeWeak(&v28->_styleProvidingSource, sourceCopy);
  }

  return v28;
}

- (id)root
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_parent(self, v7, v8, v9, v10);

    if (v11)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartRootLayoutItem root]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 60, 0, "This object is supposed to be the root, but somehow has a parent. Sup with that?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    v31 = objc_msgSend_parent(self, v12, v13, v14, v15);
    selfCopy = objc_msgSend_root(v31, v32, v33, v34, v35);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings
{
  v8 = objc_msgSend_parent(self, a3, v3, v4, v5);

  if (v8)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartRootLayoutItem layoutSettings]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 69, 0, "This object is supposed to be the root, but somehow has a parent. Sup with that?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    v33 = objc_msgSend_parent(self, v29, v30, v31, v32);
    if (v33)
    {
      v38 = v33;
      objc_msgSend_layoutSettings(v33, v34, v35, v36, v37);
      v33 = v38;
    }

    else
    {
      *&retstr->var0 = 0;
      retstr->var8 = 0;
      retstr->var9 = 0;
    }
  }

  else
  {
    *&retstr->var0 = *&self->_layoutSettings.forceOmitLegend;
    retstr->var9 = self->_layoutSettings.max3DLimitingSeries;
  }

  return result;
}

- (void)setLayoutSettings:(id *)settings
{
  v8 = objc_msgSend_parent(self, a2, v3, v4, v5);

  if (v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartRootLayoutItem setLayoutSettings:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 78, 0, "This object is supposed to be the root, but somehow has a parent. Sup with that?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v43 = *&settings->var0;
    var9 = settings->var9;
    v31 = objc_msgSend_parent(self, v28, *&v43, v29, v30);
    objc_msgSend_setLayoutSettings_(v31, v32, v33, v34, v35, &v43);
  }

  else
  {
    v43 = *&self->_layoutSettings.forceOmitLegend;
    var9 = self->_layoutSettings.max3DLimitingSeries;
    v41 = *&settings->var0;
    v42 = settings->var9;
    if (!sub_27635FBE4(&v43, &v41))
    {
      objc_msgSend_clearAll(self, v36, v37, v38, v39);
      v40 = *&settings->var0;
      self->_layoutSettings.max3DLimitingSeries = settings->var9;
      *&self->_layoutSettings.forceOmitLegend = v40;
    }
  }
}

- (id)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);

  return WeakRetained;
}

- (id)model
{
  chartModel = self->_chartModel;
  if (!chartModel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRootLayoutItem model]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 94, 0, "invalid nil value for '%{public}s'", "_chartModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chartModel = self->_chartModel;
  }

  return chartModel;
}

- (id)styleProvidingSource
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartRootLayoutItem styleProvidingSource]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 99, 0, "expected nil value for '%{public}s'", "self.parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_parent(self, v7, v8, v9, v10);

  if (v26)
  {
    v31 = objc_msgSend_parent(self, v27, v28, v29, v30);
    WeakRetained = objc_msgSend_styleProvidingSource(v31, v32, v33, v34, v35);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);
  }

  return WeakRetained;
}

- (TSCHChartAbstractAreaLayoutItem)chartAreaLayoutItem
{
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  chartArea = self->_chartArea;

  return chartArea;
}

- (TSCHLegendAreaLayoutItem)legendAreaLayoutItem
{
  objc_msgSend_layoutSettings(self, a2, v2, v3, v4);
  if (v16)
  {
    v10 = 0;
  }

  else
  {
    if ((objc_msgSend_treeBuilt(self, v6, v7, v8, v9) & 1) == 0)
    {
      objc_msgSend_buildSubTree(self, v11, v12, v13, v14);
    }

    v10 = self->_legend;
  }

  return v10;
}

- (void)clearAll
{
  v5.receiver = self;
  v5.super_class = TSCHChartRootLayoutItem;
  [(TSCHChartLayoutItem *)&v5 clearAll];
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_legendInnerFrame.origin = *MEMORY[0x277CBF398];
  self->_legendInnerFrame.size = v4;
  self->_chartInnerFrame.origin = v3;
  self->_chartInnerFrame.size = v4;
}

- (CGRect)calcDrawingRect
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(v6, v7, v8, v9, v10, 1113, 1);

  v17 = objc_msgSend_children(self, v12, v13, v14, v15);
  if (!v11)
  {
    v21 = objc_msgSend_children(self, v16, v18, v19, v20);
    v26 = objc_msgSend_mutableCopy(v21, v22, v23, v24, v25);

    objc_msgSend_removeObject_(v26, v27, v28, v29, v30, self->_legend);
    objc_msgSend_setChildren_(self, v31, v32, v33, v34, v26);
  }

  v48.receiver = self;
  v48.super_class = TSCHChartRootLayoutItem;
  [(TSCHChartLayoutItem *)&v48 calcDrawingRect];
  v39 = v36;
  v40 = v37;
  v41 = v38;
  v43 = v42;
  if (!v11)
  {
    objc_msgSend_setChildren_(self, v35, v36, v37, v38, v17);
  }

  v44 = v39;
  v45 = v40;
  v46 = v41;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (CGRect)calcOverhangRect
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);

  TSURectWithSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setChartInnerFrame:(CGRect)frame legendInnerFrame:(CGRect)innerFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_legendInnerFrame = CGRectStandardize(innerFrame);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  self->_chartInnerFrame = CGRectStandardize(v9);
}

- (void)setLegendSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  self->_legendInnerFrame.size = size;
  v7 = objc_msgSend_chartInfo(self, a2, size.width, size.height, v3);
  v12 = objc_msgSend_intValueForProperty_defaultValue_(v7, v8, v9, v10, v11, 1113, 1);

  v17 = objc_msgSend_legendAreaLayoutItem(self, v13, v14, v15, v16);
  if (v17 && v12)
  {
    v20 = v17;
    objc_msgSend_setLayoutSize_(v17, v18, width, height, v19);
    v17 = v20;
  }
}

- (CGPoint)bottomLegendOffsetForChartAreaFrame:(CGRect)frame legendFrame:(CGRect)legendFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  TSUCenterRectOverRect();
  MinX = CGRectGetMinX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMinX(v14);
  if (MinX >= v9)
  {
    MinX = v9;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetMaxY(v15) + 17.0;
  v11 = MinX;
  result.y = v10;
  result.x = v11;
  return result;
}

- (void)positionLegendAtBottom
{
  v6 = objc_msgSend_legendAreaLayoutItem(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartAreaLayoutItem(self, v7, v8, v9, v10);
  v16 = v11;
  if (v6 && v11)
  {
    objc_msgSend_rootedLayoutRect(v11, v12, v13, v14, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    objc_msgSend_rootedLayoutRect(v6, v25, v17, v19, v21);
    objc_msgSend_bottomLegendOffsetForChartAreaFrame_legendFrame_(self, v26, v18, v20, v22, v24, v27, v28, v29, v30);
    objc_msgSend_setLayoutOffset_(v6, v31, v32, v33, v34);
    v35 = *(MEMORY[0x277CBF398] + 16);
    v74[0] = *MEMORY[0x277CBF398];
    v74[1] = v35;
    v73[0] = v74[0];
    v73[1] = v35;
    objc_msgSend_rootedLayoutRect(v16, v36, *v74, *&v35, v37);
    objc_msgSend_chartBodyLayoutRect(v16, v38, v39, v40, v41);
    objc_msgSend_rootedLayoutRect(v6, v42, v43, v44, v45);
    v71 = v46;
    v72 = v47;
    v69 = v48;
    v70 = v49;
    sub_276283170(0, v74, 0, v73);
    objc_msgSend_setLayoutOffset_(v16, v50, *v74, *(v74 + 1), v51, v69, v70, v71, v72);
    objc_msgSend_setLayoutOffset_(v6, v52, *v73, *(v73 + 1), v53);
  }

  else
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartRootLayoutItem positionLegendAtBottom]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 196, 0, "Invalid layout items legend %@, area %@", v6, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
  }
}

- (void)updateLayoutSize
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(v6, v7, v8, v9, v10, 1113, 1);

  v48 = objc_msgSend_legendAreaLayoutItem(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartAreaLayoutItem(self, v16, v17, v18, v19);
  if (!v48 || !v11)
  {
    v25 = *MEMORY[0x277CBF398];
    v26 = *(MEMORY[0x277CBF398] + 8);
    v27 = *(MEMORY[0x277CBF398] + 16);
    v29 = *(MEMORY[0x277CBF398] + 24);
    if (!v21)
    {
      goto LABEL_4;
    }

LABEL_6:
    objc_msgSend_layoutRect(v21, v20, v22, v23, v24);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    goto LABEL_7;
  }

  objc_msgSend_layoutRect(v48, v20, v22, v23, v24);
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v29 = v28;
  if (v21)
  {
    goto LABEL_6;
  }

LABEL_4:
  v30 = *MEMORY[0x277CBF398];
  v31 = *(MEMORY[0x277CBF398] + 8);
  v32 = *(MEMORY[0x277CBF398] + 16);
  v33 = *(MEMORY[0x277CBF398] + 24);
LABEL_7:
  v50.origin.x = v30;
  v50.origin.y = v31;
  v50.size.width = v32;
  v50.size.height = v33;
  if (!CGRectIsNull(v50))
  {
    v51.origin.x = v25;
    v51.origin.y = v26;
    v51.size.width = v27;
    v51.size.height = v29;
    IsNull = CGRectIsNull(v51);
    v39 = IsNull ? v32 : v27;
    v40 = IsNull ? v33 : v29;
    v41 = IsNull ? v31 : v26;
    v42 = IsNull ? v30 : v25;
    v53.origin.x = v30;
    v53.origin.y = v31;
    v53.size.width = v32;
    v53.size.height = v33;
    v52 = CGRectUnion(*(&v39 - 2), v53);
    width = v52.size.width;
    height = v52.size.height;
    objc_msgSend_layoutSize(self, v45, v52.origin.x, v52.origin.y, v52.size.width);
    if ((TSUNearlyEqualSizes() & 1) == 0)
    {
      objc_msgSend_setLayoutSize_(self, v46, width, height, v47);
    }
  }
}

- (void)updateLayoutOffset
{
  v6 = objc_msgSend_chartAreaLayoutItem(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_intValueForProperty_defaultValue_(v11, v12, v13, v14, v15, 1113, 1);

  v22 = objc_msgSend_legendAreaLayoutItem(self, v17, v18, v19, v20);
  v26 = MEMORY[0x277CBF348];
  if (v22 && v16)
  {
    objc_msgSend_layoutSettings(self, v21, v23, v24, v25);
    if (v84 == 1)
    {
      objc_msgSend_positionLegendAtBottom(self, v27, v28, v29, v30);
    }

    else
    {
      v55 = *(MEMORY[0x277CBF398] + 16);
      v83[0] = *MEMORY[0x277CBF398];
      v83[1] = v55;
      v82[0] = v83[0];
      v82[1] = v55;
      objc_msgSend_rootedLayoutRect(v6, v27, *v83, *&v55, v30);
      objc_msgSend_chartBodyLayoutRect(v6, v56, v57, v58, v59);
      objc_msgSend_legendModelGeometryFrame(v22, v60, v61, v62, v63);
      v65 = v64;
      v67 = v66;
      objc_msgSend_legendModelGeometryFrame(v22, v68, v64, v66, v69);
      v80 = v70;
      v81 = v71;
      sub_2762833A4(0, v83, 0, v82);
      objc_msgSend_setLayoutOffset_(v6, v72, *v83, *(v83 + 1), v73, *&v65, *&v67, v80, v81);
      objc_msgSend_setLayoutOffset_(v22, v74, *v82, *(v82 + 1), v75);
    }

    objc_msgSend_layoutRect(v22, v31, v32, v33, v34);
    v43 = v38;
    v44 = v39;
    v45 = v40;
    v46 = v76;
    if (!v6)
    {
LABEL_11:
      v48 = *MEMORY[0x277CBF3A0];
      v50 = *(MEMORY[0x277CBF3A0] + 8);
      v52 = *(MEMORY[0x277CBF3A0] + 16);
      v54 = *(MEMORY[0x277CBF3A0] + 24);
      goto LABEL_12;
    }
  }

  else
  {
    v35 = *MEMORY[0x277CBF348];
    v36 = *(MEMORY[0x277CBF348] + 8);
    objc_msgSend_setLayoutOffset_(v6, v21, *MEMORY[0x277CBF348], v36, v25);
    if (v22)
    {
      objc_msgSend_setLayoutOffset_(v22, v37, v35, v36, v40);
      objc_msgSend_setLayoutSize_(v22, v41, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v42);
    }

    v43 = *MEMORY[0x277CBF3A0];
    v44 = *(MEMORY[0x277CBF3A0] + 8);
    v45 = *(MEMORY[0x277CBF3A0] + 16);
    v46 = *(MEMORY[0x277CBF3A0] + 24);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  objc_msgSend_layoutRect(v6, v37, v38, v39, v40);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
LABEL_12:
  v85.origin.x = v43;
  v85.origin.y = v44;
  v85.size.width = v45;
  v85.size.height = v46;
  v86 = CGRectUnion(v85, *&v48);
  objc_msgSend_setLayoutSize_(self, v77, v86.size.width, v86.size.height, v86.size.width);
  objc_msgSend_setLayoutOffset_(self, v78, *v26, v26[1], v79);
}

- (void)layoutInward
{
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  v10 = objc_msgSend_chartInfo(self, v6, v7, v8, v9);
  v15 = objc_msgSend_intValueForProperty_defaultValue_(v10, v11, v12, v13, v14, 1113, 1);

  v20 = objc_msgSend_legendAreaLayoutItem(self, v16, v17, v18, v19);
  v26 = objc_msgSend_chartAreaLayoutItem(self, v21, v22, v23, v24);
  if (v20 && v15)
  {
    p_legendInnerFrame = &self->_legendInnerFrame;
    if (CGRectIsNull(self->_legendInnerFrame) || (p_chartInnerFrame = &self->_chartInnerFrame, CGRectIsNull(self->_chartInnerFrame)))
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCHChartRootLayoutItem layoutInward]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 293, 0, "You must set the pre-requisites by calling [TSCHChartRootLayoutItem setChartInnerFrame:legendInnerFrame:] prior to laying out with TSCHLayoutMethodInward");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
      goto LABEL_12;
    }

    objc_msgSend_layoutSize(self, v31, v32, v33, v34);
    v66 = v65;
    v143 = v67;
    v70 = objc_msgSend_chartInfo(self, v68, v65, v67, v69);
    v148.origin.x = p_chartInnerFrame->origin.x;
    v148.origin.y = self->_chartInnerFrame.origin.y;
    y = v148.origin.y;
    x = p_chartInnerFrame->origin.x;
    width = self->_chartInnerFrame.size.width;
    v148.size.height = self->_chartInnerFrame.size.height;
    rect = v148.size.height;
    v72 = p_legendInnerFrame->origin.x;
    v73 = self->_legendInnerFrame.origin.y;
    v74 = self->_legendInnerFrame.size.width;
    height = self->_legendInnerFrame.size.height;
    v148.size.width = width;
    v156.origin.x = p_legendInnerFrame->origin.x;
    v156.origin.y = v73;
    v156.size.width = v74;
    v156.size.height = height;
    v149 = CGRectUnion(v148, v156);
    v76 = v149.size.width;
    v77 = v149.size.height;
    objc_msgSend_resizedLegendFrame_oldChartSize_newChartSize_(v70, v78, v72, v73, v74, height, v149.size.width, v149.size.height, v66, v143);
    v80 = v79;
    memset(&v147, 0, sizeof(v147));
    CGAffineTransformMakeScale(&v147, v66 / v76, v143 / v77);
    v146 = v147;
    v150.origin.y = y;
    v150.origin.x = x;
    v150.size.width = width;
    v150.size.height = rect;
    v151 = CGRectApplyAffineTransform(v150, &v146);
    v81 = v151.origin.x;
    v82 = v151.origin.y;
    v83 = v151.size.width;
    v84 = v151.size.height;
    TSURectWithSize();
    v157.origin.x = v85;
    v157.origin.y = v86;
    v157.size.width = v87;
    v157.size.height = v88;
    v152.origin.x = v81;
    v152.origin.y = v82;
    v152.size.width = v83;
    v152.size.height = v84;
    v153 = CGRectIntersection(v152, v157);
    v142 = v153.origin.x;
    v89 = v153.origin.y;
    v90 = v153.size.width;
    v91 = v153.size.height;
    objc_msgSend_setLayoutSize_(v20, v92, v80, 0.0, v153.size.width);
    objc_msgSend_layoutSize(v20, v93, v94, v95, v96);
    TSURectWithOriginAndSize();
    v97 = v154.origin.x;
    v98 = v154.origin.y;
    v99 = v154.size.width;
    v100 = v154.size.height;
    if (CGRectGetMaxX(v154) <= v66)
    {
      v101 = v97;
    }

    else
    {
      v101 = v66 - v99;
    }

    if (v101 >= 0.0)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0.0;
    }

    v155.origin.x = v102;
    v155.origin.y = v98;
    v155.size.width = v99;
    v155.size.height = v100;
    if (CGRectGetMaxY(v155) <= v143)
    {
      v104 = v98;
    }

    else
    {
      v104 = v143 - v100;
    }

    if (v104 >= 0.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0.0;
    }

    objc_msgSend_setLayoutSize_(v26, v103, v90, v91, v143);
    objc_msgSend_setLayoutOffset_(v26, v106, v142, v89, v107);
    objc_msgSend_setLayoutSize_(v20, v108, v99, v100, v109);
    objc_msgSend_setLayoutOffset_(v20, v110, v102, v105, v111);
    objc_msgSend_layoutSize(v20, v112, v113, v114, v115);
    v117 = v116;
    if ((TSUNearlyEqualSizes() & 1) == 0)
    {
      v122 = MEMORY[0x277D81150];
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "[TSCHChartRootLayoutItem layoutInward]");
      v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v129, v130, v131, v132, v123, v128, 355, 0, "The legendItem resized the legend after we explicitly got this size FROM it. Check on this.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
    }

    if ((TSUNearlyEqualSizes() & 1) == 0 && v117 > 0.0)
    {
      objc_msgSend_setLayoutSize_(v20, v137, v99, v117, v138);
    }
  }

  else
  {
    objc_msgSend_layoutSize(self, v25, v27, v28, v29);
    objc_msgSend_setLayoutSize_(v26, v51, v52, v53, v54);
    objc_msgSend_setLayoutOffset_(v26, v55, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v56);
  }

  v145.receiver = self;
  v145.super_class = TSCHChartRootLayoutItem;
  [(TSCHChartLayoutItem *)&v145 layoutInward];
  objc_msgSend_layoutSettings(self, v57, v58, v59, v60);
  if (v144 == 1)
  {
    objc_msgSend_positionLegendAtBottom(self, v61, v62, v63, v64);
  }

  objc_msgSend_updateLayoutSize(self, v61, v62, v63, v64);
LABEL_12:
}

- (void)setChartBodySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ((objc_msgSend_treeBuilt(self, a2, size.width, size.height, v3) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v7, v8, v9, v10);
  }

  v33 = objc_msgSend_chartAreaLayoutItem(self, v7, v8, v9, v10);
  if (!v33)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartRootLayoutItem setChartBodySize:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 393, 0, "invalid nil value for '%{public}s'", "areaLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_chartAreaLayoutItem(self, v11, v12, v13, v14);
  objc_msgSend_setChartBodyLayoutSize_(v30, v31, width, height, v32);
}

- (void)layoutOutward
{
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  v11 = objc_msgSend_chartAreaLayoutItem(self, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHChartRootLayoutItem layoutOutward]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 405, 0, "invalid nil value for '%{public}s'", "areaItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  objc_msgSend_chartBodyLayoutRect(v11, v10, v12, v13, v14);
  v33 = *MEMORY[0x277CBF3A8];
  v34 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] == v31 && v34 == v32)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v33, v34, v31, "[TSCHChartRootLayoutItem layoutOutward]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 409, 0, "You must set the pre-requisites by calling [TSCHChartRootLayoutItem setChartBodySize:] prior to laying out with TSCHLayoutMethodOutward (and it can't be CGSizeZero.)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  v55.receiver = self;
  v55.super_class = TSCHChartRootLayoutItem;
  [(TSCHChartLayoutItem *)&v55 layoutOutward:v33];
  objc_msgSend_updateLayoutOffset(self, v51, v52, v53, v54);
}

- (void)buildSubTree
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  if (self->_chartArea)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartRootLayoutItem buildSubTree]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 429, 0, "expected nil value for '%{public}s'", "_chartArea");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_chartInfo(self, v6, v8, v9, v10);
  v31 = objc_msgSend_chartType(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_chartLayoutItemClass(v31, v32, v33, v34, v35);

  v37 = [v36 alloc];
  v42 = objc_msgSend_initWithParent_(v37, v38, v39, v40, v41, self);
  chartArea = self->_chartArea;
  self->_chartArea = v42;

  objc_msgSend_addObject_(v7, v44, v45, v46, v47, self->_chartArea);
  if (self->_legend)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCHChartRootLayoutItem buildSubTree]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 435, 0, "expected nil value for '%{public}s'", "_legend");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  objc_msgSend_layoutSettings(self, v48, v49, v50, v51);
  if ((v88 & 1) == 0)
  {
    v71 = [TSCHLegendAreaLayoutItem alloc];
    v76 = objc_msgSend_initWithParent_(v71, v72, v73, v74, v75, self);
    legend = self->_legend;
    self->_legend = v76;

    objc_msgSend_addObject_(v7, v78, v79, v80, v81, self->_legend);
  }

  v82 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v67, v68, v69, v70, v7);
  objc_msgSend_setChildren_(self, v83, v84, v85, v86, v82);

  v87.receiver = self;
  v87.super_class = TSCHChartRootLayoutItem;
  [(TSCHChartLayoutItem *)&v87 buildSubTree];
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [TSCHChartBackgroundRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, repCopy, self);
  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);
  v20 = objc_msgSend_chartAreaLayoutItem(self, v16, v17, v18, v19);
  v25 = objc_msgSend_renderersWithRep_(v20, v21, v22, v23, v24, repCopy);
  objc_msgSend_addObjectsFromArray_(v5, v26, v27, v28, v29, v25);

  v34 = objc_msgSend_legendAreaLayoutItem(self, v30, v31, v32, v33);
  v39 = v34;
  if (v34)
  {
    v40 = objc_msgSend_renderersWithRep_(v34, v35, v36, v37, v38, repCopy);
    objc_msgSend_addObjectsFromArray_(v5, v41, v42, v43, v44, v40);
  }

  return v5;
}

- (BOOL)isInResize
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (!v6)
  {
    return self->_inResize;
  }

  v11 = objc_msgSend_parent(self, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartRootLayoutItem isInResize]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 489, 0, "This object is supposed to be the root, but somehow has a parent. Sup with that?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_parent(self, v12, v13, v14, v15);
  v36 = objc_msgSend_isInResize(v31, v32, v33, v34, v35);

  return v36;
}

- (CGSize)startingSize
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_parent(self, v7, v8, v9, v10);

    if (v11)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartRootLayoutItem startingSize]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 499, 0, "This object is supposed to be the root, but somehow has a parent. Sup with that?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    v31 = objc_msgSend_parent(self, v12, v13, v14, v15);
    objc_msgSend_startingSize(v31, v32, v33, v34, v35);
    width = v36;
    height = v38;
  }

  else
  {
    width = self->_startingSize.width;
    height = self->_startingSize.height;
  }

  v40 = width;
  v41 = height;
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)invalidateSeriesIndexedPieWedgeExplosions
{
  objc_msgSend_willChangeValueForKey_(self, a2, v2, v3, v4, @"seriesIndexedPieWedgeExplosions");
  seriesIndexedPieWedgeExplosions = self->_seriesIndexedPieWedgeExplosions;
  self->_seriesIndexedPieWedgeExplosions = 0;

  objc_msgSend_didChangeValueForKey_(self, v7, v8, v9, v10, @"seriesIndexedPieWedgeExplosions");
}

- (NSDictionary)seriesIndexedPieWedgeExplosions
{
  seriesIndexedPieWedgeExplosions = self->_seriesIndexedPieWedgeExplosions;
  if (!seriesIndexedPieWedgeExplosions)
  {
    objc_msgSend_p_updatePieWedgeExplosionsFromModel(self, a2, v2, v3, v4);
    seriesIndexedPieWedgeExplosions = self->_seriesIndexedPieWedgeExplosions;
  }

  return seriesIndexedPieWedgeExplosions;
}

- (void)p_updatePieWedgeExplosionsFromModel
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartType(v6, v7, v8, v9, v10);
  hasExplodableSeriesElements = objc_msgSend_hasExplodableSeriesElements(v11, v12, v13, v14, v15);

  if (hasExplodableSeriesElements)
  {
    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18, v19, v20);
    selfCopy = self;
    v26 = objc_msgSend_model(self, v22, v23, v24, v25);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v30 = objc_msgSend_seriesList(v26, v27, 0.0, v28, v29);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v32, v33, v34, &v75, v79, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v76;
      do
      {
        v42 = 0;
        do
        {
          if (*v76 != v41)
          {
            objc_enumerationMutation(v30);
          }

          v43 = objc_msgSend_seriesIndex(*(*(&v75 + 1) + 8 * v42), v36, v37, v38, v39);
          v48 = objc_msgSend_pieSeriesModelCacheForSeries_(v26, v44, v45, v46, v47, v43);
          v49 = MEMORY[0x277CCABB0];
          objc_msgSend_effectiveWedgeExplosion(v48, v50, v51, v52, v53);
          v58 = objc_msgSend_numberWithFloat_(v49, v54, v55, v56, v57);
          v63 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v59, v60, v61, v62, v43);
          objc_msgSend_setObject_forKey_(v21, v64, v65, v66, v67, v58, v63);

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v36, v37, v38, v39, &v75, v79, 16);
      }

      while (v40);
    }

    v72 = objc_msgSend_copy(v21, v68, v69, v70, v71);
    seriesIndexedPieWedgeExplosions = selfCopy->_seriesIndexedPieWedgeExplosions;
    selfCopy->_seriesIndexedPieWedgeExplosions = v72;
  }
}

- (NSDictionary)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips
{
  v5 = objc_msgSend_chartAreaLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_seriesIndexedPieNormalizedLabelDistancesFromWedgeTips(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)dataSetIndex
{
  chartModel = self->_chartModel;
  if (!chartModel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRootLayoutItem dataSetIndex]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 545, 0, "invalid nil value for '%{public}s'", "_chartModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chartModel = self->_chartModel;
  }

  return objc_msgSend_multiDataSetIndex(chartModel, a2, v2, v3, v4);
}

- (void)setDataSetIndex:(unint64_t)index
{
  chartModel = self->_chartModel;
  if (!chartModel)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartRootLayoutItem setDataSetIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 550, 0, "invalid nil value for '%{public}s'", "_chartModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    chartModel = self->_chartModel;
  }

  objc_msgSend_setMultiDataSetIndex_(chartModel, a2, v3, v4, v5, index);
}

- (void)invalidateTransientModel
{
  chartModel = self->_chartModel;
  if (!chartModel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRootLayoutItem invalidateTransientModel]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRootLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 555, 0, "invalid nil value for '%{public}s'", "_chartModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chartModel = self->_chartModel;
  }

  MEMORY[0x2821F9670](chartModel, sel_updateTransientModelFromInfoModel, v2, v3, v4);
}

@end