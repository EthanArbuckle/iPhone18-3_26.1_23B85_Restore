@interface TSCH2DChartLayout
+ (id)propertiesThatInvalidateLayout;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3;
- (CGPoint)p_cachedOriginRelativeToChartAreaFrame;
- (CGRect)chartAreaFrame;
- (CGRect)chartBodyFrame;
- (CGRect)legendDrawingFrame;
- (CGRect)legendFrame;
- (CGRect)legendGeometryFrame;
- (CGRect)legendModelGeometryFrame;
- (CGRect)outerLayoutFrame;
- (CGRect)outerShadowFrame;
- (CGRect)titleFrame;
- (TSCH2DChartLayout)initWithChartInfo:(id)a3;
- (id)hitChartElements:(CGPoint)a3 passingTest:(id)a4;
- (id)model;
- (id)p_layoutTree;
- (id)renderersWithRep:(id)a3;
- (id)subselectionHaloPositionsForSelections:(id)a3;
- (id)subselectionKnobPositionsForSelection:(id)a3;
- (void)beginDynamicOperation;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidateCachedOriginRelativeToChartAreaFrame;
- (void)layoutForChartAreaSize:(CGSize)a3;
- (void)layoutForChartBodySize:(CGSize)a3;
- (void)layoutForCircumscribingSize:(CGSize)a3;
- (void)p_ensureValidForInwardLayout;
- (void)p_layoutNowForChartAreaSize:(CGSize)a3;
- (void)p_layoutNowForChartBodySize:(CGSize)a3;
- (void)p_layoutNowForCircumscribingSize:(CGSize)a3;
- (void)setDataSetIndex:(unint64_t)a3;
- (void)setLayoutSettings:(id *)a3;
- (void)setLegendGeometryFrame:(CGRect)a3;
- (void)setLegendModelGeometryFrame:(CGRect)a3;
- (void)setLegendSize:(CGSize)a3;
- (void)setSeriesIndexedPieWedgeExplosions:(id)a3;
- (void)setStyleProvidingSource:(id)a3;
@end

@implementation TSCH2DChartLayout

- (TSCH2DChartLayout)initWithChartInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSCH2DChartLayout;
  result = [(TSCHChartLayout *)&v7 initWithChartInfo:a3];
  if (result)
  {
    v4 = *MEMORY[0x277CBF398];
    v5 = *(MEMORY[0x277CBF398] + 16);
    result->_startingChartInnerFrame.origin = *MEMORY[0x277CBF398];
    result->_startingChartInnerFrame.size = v5;
    result->_startingLegendInnerFrame.origin = v4;
    result->_startingLegendInnerFrame.size = v5;
    v6 = *MEMORY[0x277CBF3A8];
    result->_startingSize = *MEMORY[0x277CBF3A8];
    result->_lastChartBodySize = v6;
  }

  return result;
}

- (CGRect)outerLayoutFrame
{
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_p_layoutTree(self, v6, v7, v8, v9);
    objc_msgSend_layoutRect(v10, v11, v12, v13, v14);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v20 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)outerShadowFrame
{
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_p_layoutTree(self, v6, v7, v8, v9);
    objc_msgSend_drawingRect(v10, v11, v12, v13, v14);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v20 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)chartAreaFrame
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v14 = objc_msgSend_p_layoutTree(self, v10, v11, v12, v13);
    v19 = objc_msgSend_chartAreaLayoutItem(v14, v15, v16, v17, v18);

    if (v19)
    {
      objc_msgSend_rootedLayoutRect(v19, v20, v21, v22, v23);
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }
  }

  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)legendFrame
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v14 = objc_msgSend_p_layoutTree(self, v10, v11, v12, v13);
    v19 = objc_msgSend_legendAreaLayoutItem(v14, v15, v16, v17, v18);

    if (v19)
    {
      objc_msgSend_rootedLayoutRect(v19, v20, v21, v22, v23);
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }
  }

  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)legendDrawingFrame
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v14 = objc_msgSend_p_layoutTree(self, v10, v11, v12, v13);
    v19 = objc_msgSend_legendAreaLayoutItem(v14, v15, v16, v17, v18);

    if (v19)
    {
      objc_msgSend_rootedDrawingRect(v19, v20, v21, v22, v23);
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }
  }

  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)titleFrame
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v14 = objc_msgSend_p_layoutTree(self, v10, v11, v12, v13);
    v19 = objc_msgSend_chartAreaLayoutItem(v14, v15, v16, v17, v18);

    if (v19)
    {
      objc_msgSend_titleFrame(v19, v20, v21, v22, v23);
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }
  }

  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)invalidateCachedOriginRelativeToChartAreaFrame
{
  cachedOriginRelativeToChartAreaFrame = self->_cachedOriginRelativeToChartAreaFrame;
  self->_cachedOriginRelativeToChartAreaFrame = 0;
}

- (CGPoint)p_cachedOriginRelativeToChartAreaFrame
{
  v7 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v8 = objc_msgSend_p_layoutTree(self, a2, v2, v3, v4);
  v13 = objc_msgSend_legendAreaLayoutItem(v8, v9, v10, v11, v12);

  if (v13)
  {
    cachedOriginRelativeToChartAreaFrame = self->_cachedOriginRelativeToChartAreaFrame;
    if (!cachedOriginRelativeToChartAreaFrame)
    {
      objc_msgSend_legendModelGeometryFrame(v13, v14, v15, v16, v17);
      v56 = v20;
      v57 = v19;
      v22 = v21;
      v24 = v23;
      v25 = *(MEMORY[0x277CBF398] + 16);
      v58[0] = *MEMORY[0x277CBF398];
      v58[1] = v25;
      objc_msgSend_chartAreaFrame(self, v26, *v58, *&v25, v21);
      objc_msgSend_chartBodyFrame(self, v27, v28, v29, v30);
      sub_2762833A4(0, v58, 0, 0);
      TSUSubtractPoints();
      v35 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v31, v32, v33, v34, v57, v56, *&v22, v24);
      v36 = self->_cachedOriginRelativeToChartAreaFrame;
      self->_cachedOriginRelativeToChartAreaFrame = v35;

      cachedOriginRelativeToChartAreaFrame = self->_cachedOriginRelativeToChartAreaFrame;
      if (!cachedOriginRelativeToChartAreaFrame)
      {
        v37 = MEMORY[0x277D81150];
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH2DChartLayout p_cachedOriginRelativeToChartAreaFrame]");
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 145, 0, "invalid nil value for '%{public}s'", "_cachedOriginRelativeToChartAreaFrame");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
        cachedOriginRelativeToChartAreaFrame = self->_cachedOriginRelativeToChartAreaFrame;
      }
    }

    objc_msgSend_CGPointValue(cachedOriginRelativeToChartAreaFrame, v14, v15, v16, v17);
    v7 = v52;
    v6 = v53;
  }

  v54 = v7;
  v55 = v6;
  result.y = v55;
  result.x = v54;
  return result;
}

- (CGRect)legendGeometryFrame
{
  v6 = MEMORY[0x277CBF398];
  v7 = objc_msgSend_p_layoutTree(self, a2, v2, v3, v4);
  v12 = objc_msgSend_legendAreaLayoutItem(v7, v8, v9, v10, v11);

  if (v12)
  {
    objc_msgSend_p_cachedOriginRelativeToChartAreaFrame(self, v13, v14, v15, v16);
    objc_msgSend_legendModelGeometryFrame(v12, v17, v18, v19, v20);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = *(v6 + 1);
    v50 = *v6;
    v51 = v29;
    v49[0] = v50;
    v49[1] = v29;
    objc_msgSend_chartAreaFrame(self, v30, *&v50, *&v29, v25);
    objc_msgSend_chartBodyFrame(self, v31, v32, v33, v34);
    sub_2762833A4(0, v49, 0, &v50);
    TSUAddPoints();
    v36 = *(&v51 + 1);
    v35 = *&v51;
    TSUSubtractPoints();
    objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(self, v37, v38, v39, v40, v22, v24, *&v26, v28);
    v42 = v41;
    v44 = v43;
  }

  else
  {
    v42 = *v6;
    v44 = v6[1];
    v35 = v6[2];
    v36 = v6[3];
  }

  v45 = v42;
  v46 = v44;
  v47 = v35;
  v48 = v36;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (void)setLegendGeometryFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_msgSend_p_layoutTree(self, a2, a3.origin.x, a3.origin.y, a3.size.width);
  v13 = objc_msgSend_legendAreaLayoutItem(v8, v9, v10, v11, v12);

  if (v13)
  {
    objc_msgSend_convertNaturalSpaceRectToChartLayoutSpaceRect_(self, v14, x, y, width, height);
    v16 = v15;
    v18 = v17;
    v20 = *&v19;
    v22 = v21;
    v23 = *(MEMORY[0x277CBF398] + 16);
    v52 = *MEMORY[0x277CBF398];
    v53 = v23;
    objc_msgSend_chartAreaFrame(self, v24, *&v52, *&v23, v19);
    objc_msgSend_chartBodyFrame(self, v25, v26, v27, v28);
    sub_27628348C(&v52, &v53, v29, v30, v31, v32, v33, v34, v16, v18, v20, v22);
    objc_msgSend_setLegendModelGeometryFrame_(v13, v35, *&v52, *(&v52 + 1), *&v53, *(&v53 + 1));
    objc_msgSend_layoutOffset(v13, v36, v37, v38, v39);
    if ((TSUNearlyEqualPoints() & 1) == 0)
    {
      objc_msgSend_setLayoutOffset_(v13, v40, *&v16, *&v18, v41);
    }

    if (!CGRectIsNull(self->_startingLegendInnerFrame))
    {
      objc_msgSend_layoutRect(v13, v42, v43, v44, v45);
      self->_startingLegendInnerFrame.origin.x = v43;
      self->_startingLegendInnerFrame.origin.y = v44;
      self->_startingLegendInnerFrame.size.width = v45;
      self->_startingLegendInnerFrame.size.height = v46;
    }

    v47 = objc_msgSend_p_layoutTree(self, v42, v43, v44, v45);
    objc_msgSend_updateLayoutOffset(v47, v48, v49, v50, v51);
  }
}

- (CGRect)legendModelGeometryFrame
{
  v5 = objc_msgSend_p_layoutTree(self, a2, v2, v3, v4);
  v10 = objc_msgSend_legendAreaLayoutItem(v5, v6, v7, v8, v9);

  if (v10)
  {
    objc_msgSend_legendModelGeometryFrame(v10, v11, v12, v13, v14);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v20 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)setLegendModelGeometryFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_msgSend_p_layoutTree(self, a2, a3.origin.x, a3.origin.y, a3.size.width);
  v14 = objc_msgSend_legendAreaLayoutItem(v7, v8, v9, v10, v11);

  v13 = v14;
  if (v14)
  {
    objc_msgSend_setLegendModelGeometryFrame_(v14, v12, x, y, width, height);
    v13 = v14;
  }
}

- (CGRect)chartBodyFrame
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    v14 = objc_msgSend_p_layoutTree(self, v10, v11, v12, v13);
    v19 = objc_msgSend_chartAreaLayoutItem(v14, v15, v16, v17, v18);

    if (v19)
    {
      objc_msgSend_chartBodyLayoutRect(v19, v20, v21, v22, v23);
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }
  }

  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)setLayoutSettings:(id *)a3
{
  objc_msgSend_layoutSettings(self, a2, v3, v4, v5);
  v14 = *a3;
  if (!sub_27635FBE4(&v15, &v14))
  {
    layoutTreeRoot = self->_layoutTreeRoot;
    self->_layoutTreeRoot = 0;

    objc_msgSend_invalidate(self, v9, v10, v11, v12);
    v13.receiver = self;
    v13.super_class = TSCH2DChartLayout;
    v15 = *&a3->var0;
    var9 = a3->var9;
    [(TSCHChartLayout *)&v13 setLayoutSettings:&v15];
  }
}

- (void)setStyleProvidingSource:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_styleProvidingSource(self, v5, v6, v7, v8);

  if (v9 != v4)
  {
    layoutTreeRoot = self->_layoutTreeRoot;
    self->_layoutTreeRoot = 0;

    objc_msgSend_invalidate(self, v11, v12, v13, v14);
    v15.receiver = self;
    v15.super_class = TSCH2DChartLayout;
    [(TSCHChartLayout *)&v15 setStyleProvidingSource:v4];
  }
}

- (id)p_layoutTree
{
  layoutTreeRoot = self->_layoutTreeRoot;
  if (!layoutTreeRoot)
  {
    v7 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
    v12 = objc_msgSend_styleProvidingSource(self, v8, v9, v10, v11);
    v17 = objc_msgSend_chartLayoutWithChartInfo_styleProvidingSource_(TSCHChartLayoutItem, v13, v14, v15, v16, v7, v12);
    v18 = self->_layoutTreeRoot;
    self->_layoutTreeRoot = v17;

    objc_msgSend_invalidate(self, v19, v20, v21, v22);
    layoutTreeRoot = self->_layoutTreeRoot;
  }

  return layoutTreeRoot;
}

+ (id)propertiesThatInvalidateLayout
{
  if (qword_280A47238 != -1)
  {
    sub_2764A76E4();
  }

  v3 = qword_280A47230;

  return v3;
}

- (void)layoutForCircumscribingSize:(CGSize)a3
{
  if (a3.width >= 0.0)
  {
    width = a3.width;
  }

  else
  {
    width = 0.0;
  }

  if (a3.height >= 0.0)
  {
    height = a3.height;
  }

  else
  {
    height = 0.0;
  }

  objc_msgSend_p_ensureValidForInwardLayout(self, a2, a3.width, a3.height, 0.0);
  objc_msgSend_outerLayoutFrame(self, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (objc_msgSend_isValid(self, v18, v10, v12, v14))
  {
    v21 = vabdd_f64(width, v15);
    v20 = 0.2;
    if (v21 >= 0.2 || (v21 = vabdd_f64(height, v17), v21 >= 0.2) || (v25.origin.x = v11, v25.origin.y = v13, v25.size.width = v15, v25.size.height = v17, CGRectIsNull(v25)))
    {
      objc_msgSend_invalidate(self, v19, v20, v21, v22);
    }
  }

  if ((objc_msgSend_isValid(self, v19, v20, v21, v22) & 1) == 0)
  {

    MEMORY[0x2821F9670](self, sel_p_layoutNowForCircumscribingSize_, width, height, v23);
  }
}

- (void)layoutForChartAreaSize:(CGSize)a3
{
  if (a3.width >= 0.0)
  {
    width = a3.width;
  }

  else
  {
    width = 0.0;
  }

  if (a3.height >= 0.0)
  {
    height = a3.height;
  }

  else
  {
    height = 0.0;
  }

  objc_msgSend_p_ensureValidForInwardLayout(self, a2, a3.width, a3.height, 0.0);
  objc_msgSend_chartAreaFrame(self, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (objc_msgSend_isValid(self, v18, v10, v12, v14))
  {
    v21 = vabdd_f64(width, v15);
    v20 = 0.2;
    if (v21 >= 0.2 || (v21 = vabdd_f64(height, v17), v21 >= 0.2) || (v25.origin.x = v11, v25.origin.y = v13, v25.size.width = v15, v25.size.height = v17, CGRectIsNull(v25)))
    {
      objc_msgSend_invalidate(self, v19, v20, v21, v22);
    }
  }

  if ((objc_msgSend_isValid(self, v19, v20, v21, v22) & 1) == 0)
  {

    MEMORY[0x2821F9670](self, sel_p_layoutNowForChartAreaSize_, width, height, v23);
  }
}

- (void)layoutForChartBodySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_chartInfo(self, a2, a3.width, a3.height, v3);
  objc_msgSend_minimumChartBodySize(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  if (v13 >= width)
  {
    width = v13;
  }

  if (v15 >= height)
  {
    height = v15;
  }

  v20 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v25 = objc_msgSend_chartType(v20, v21, v22, v23, v24);
  objc_msgSend_mungeBodySize_(v25, v26, width, height, v27);
  v29 = v28;
  v31 = v30;

  objc_msgSend_chartBodyFrame(self, v32, v33, v34, v35);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  if (objc_msgSend_isValid(self, v44, v36, v38, v40))
  {
    v47 = vabdd_f64(v29, v41);
    v46 = 0.2;
    if (v47 >= 0.2 || (v47 = vabdd_f64(v31, v43), v47 >= 0.2) || (v51.origin.x = v37, v51.origin.y = v39, v51.size.width = v41, v51.size.height = v43, CGRectIsNull(v51)))
    {
      objc_msgSend_invalidate(self, v45, v46, v47, v48);
    }
  }

  self->_lastChartBodySize.width = v29;
  self->_lastChartBodySize.height = v31;
  if ((objc_msgSend_isValid(self, v45, v46, v47, v48) & 1) == 0)
  {

    MEMORY[0x2821F9670](self, sel_p_layoutNowForChartBodySize_, v29, v31, v49);
  }
}

- (void)p_layoutNowForCircumscribingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_p_layoutTree(self, v7, v8, v9, v10);
  if (objc_msgSend_isValid(self, v12, v13, v14, v15))
  {
    objc_msgSend_clearAll(v11, v16, v17, v18, v19);
  }

  if (!v11)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH2DChartLayout p_layoutNowForCircumscribingSize:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 521, 0, "invalid nil value for '%{public}s'", "layoutTree");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  objc_msgSend_layoutSettings(self, v16, v17, v18, v19);
  v51 = v53;
  v52 = v54;
  objc_msgSend_setLayoutSettings_(v11, v35, *&v53, v36, v37, &v51);
  objc_msgSend_setLayoutSize_(v11, v38, width, height, v39);
  objc_msgSend_setLayoutOffset_(v11, v40, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v41);
  objc_msgSend_setChartInnerFrame_legendInnerFrame_(v11, v42, self->_startingChartInnerFrame.origin.x, self->_startingChartInnerFrame.origin.y, self->_startingChartInnerFrame.size.width, self->_startingChartInnerFrame.size.height, self->_startingLegendInnerFrame.origin.x, self->_startingLegendInnerFrame.origin.y, self->_startingLegendInnerFrame.size.width, self->_startingLegendInnerFrame.size.height);
  objc_msgSend_layoutUsingMethod_(v11, v43, v44, v45, v46, 2);
  objc_msgSend_setNeedsLayout_(self, v47, v48, v49, v50, 0);

  objc_autoreleasePoolPop(v6);
}

- (void)p_layoutNowForChartAreaSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_p_layoutTree(self, v7, v8, v9, v10);
  if (objc_msgSend_isValid(self, v12, v13, v14, v15))
  {
    objc_msgSend_clearAll(v11, v16, v17, v18, v19);
  }

  if (!v11)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH2DChartLayout p_layoutNowForChartAreaSize:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 549, 0, "invalid nil value for '%{public}s'", "layoutTree");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  objc_msgSend_layoutSettings(self, v16, v17, v18, v19);
  v60 = v62;
  v61 = v63;
  objc_msgSend_setLayoutSettings_(v11, v35, *&v62, v36, v37, &v60);
  v42 = objc_msgSend_chartAreaLayoutItem(v11, v38, v39, v40, v41);
  objc_msgSend_setLayoutSize_(v42, v43, width, height, v44);
  objc_msgSend_setLayoutOffset_(v11, v45, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v46);
  objc_msgSend_setChartInnerFrame_legendInnerFrame_(v11, v47, self->_startingChartInnerFrame.origin.x, self->_startingChartInnerFrame.origin.y, self->_startingChartInnerFrame.size.width, self->_startingChartInnerFrame.size.height, self->_startingLegendInnerFrame.origin.x, self->_startingLegendInnerFrame.origin.y, self->_startingLegendInnerFrame.size.width, self->_startingLegendInnerFrame.size.height);
  objc_msgSend_layoutUsingMethod_(v42, v48, v49, v50, v51, 2);
  objc_msgSend_updateLayoutOffset(v11, v52, v53, v54, v55);
  objc_msgSend_setNeedsLayout_(self, v56, v57, v58, v59, 0);

  objc_autoreleasePoolPop(v6);
}

- (void)p_layoutNowForChartBodySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_p_layoutTree(self, v7, v8, v9, v10);
  if (objc_msgSend_isValid(self, v12, v13, v14, v15))
  {
    objc_msgSend_clearAll(v11, v16, v17, v18, v19);
  }

  if (!v11)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH2DChartLayout p_layoutNowForChartBodySize:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 584, 0, "invalid nil value for '%{public}s'", "rootItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  objc_msgSend_layoutSettings(self, v16, v17, v18, v19);
  v48 = v50;
  v49 = v51;
  objc_msgSend_setLayoutSettings_(v11, v35, *&v50, v36, v37, &v48);
  objc_msgSend_setChartBodySize_(v11, v38, width, height, v39);
  objc_msgSend_layoutUsingMethod_(v11, v40, v41, v42, v43, 1);
  objc_msgSend_setNeedsLayout_(self, v44, v45, v46, v47, 0);

  objc_autoreleasePoolPop(v6);
}

- (void)invalidate
{
  v12.receiver = self;
  v12.super_class = TSCH2DChartLayout;
  [(TSCHChartLayout *)&v12 invalidate];
  if (self->_layoutTreeRoot)
  {
    v7 = objc_msgSend_p_layoutTree(self, v3, v4, v5, v6);
    objc_msgSend_clearAll(v7, v8, v9, v10, v11);
  }
}

- (void)p_ensureValidForInwardLayout
{
  p_lastChartBodySize = &self->_lastChartBodySize;
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  width = self->_lastChartBodySize.width;
  if (*MEMORY[0x277CBF3A8] == width && v5 == self->_lastChartBodySize.height)
  {
    v13 = objc_msgSend_chartInfo(self, a2, v4, v5, width);
    v18 = objc_msgSend_geometry(v13, v14, v15, v16, v17);
    objc_msgSend_size(v18, v19, v20, v21, v22);
    p_lastChartBodySize->width = v23;
    p_lastChartBodySize->height = v24;

    if (objc_msgSend_isValid(self, v25, v26, v27, v28))
    {
LABEL_10:
      v12 = 1;
      goto LABEL_11;
    }

LABEL_9:
    objc_msgSend_layoutForChartBodySize_(self, v8, p_lastChartBodySize->width, p_lastChartBodySize->height, v9);
    goto LABEL_10;
  }

  if ((objc_msgSend_isValid(self, a2, v4, v5, width) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!CGRectIsNull(self->_startingChartInnerFrame))
  {
    goto LABEL_12;
  }

  v12 = 0;
LABEL_11:
  v29 = objc_msgSend_p_layoutTree(self, v8, v10, v11, v9);
  v34 = objc_msgSend_chartAreaLayoutItem(v29, v30, v31, v32, v33);
  objc_msgSend_layoutRect(v34, v35, v36, v37, v38);
  self->_startingChartInnerFrame.origin.x = v39;
  self->_startingChartInnerFrame.origin.y = v40;
  self->_startingChartInnerFrame.size.width = v41;
  self->_startingChartInnerFrame.size.height = v42;

  if (!v12)
  {
LABEL_12:
    if (!CGRectIsNull(self->_startingLegendInnerFrame))
    {
      return;
    }
  }

  p_startingLegendInnerFrame = &self->_startingLegendInnerFrame;
  v61 = objc_msgSend_p_layoutTree(self, v43, v44, v45, v46);
  v52 = objc_msgSend_legendAreaLayoutItem(v61, v48, v49, v50, v51);
  objc_msgSend_layoutRect(v52, v53, v54, v55, v56);
  p_startingLegendInnerFrame->origin.x = v57;
  p_startingLegendInnerFrame->origin.y = v58;
  p_startingLegendInnerFrame->size.width = v59;
  p_startingLegendInnerFrame->size.height = v60;
}

- (void)beginDynamicOperation
{
  objc_msgSend_p_ensureValidForInwardLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_p_layoutTree(self, v6, v7, v8, v9);
  v15 = objc_msgSend_legendAreaLayoutItem(v10, v11, v12, v13, v14);
  objc_msgSend_layoutRect(v15, v16, v17, v18, v19);
  self->_startingLegendInnerFrame.origin.x = v20;
  self->_startingLegendInnerFrame.origin.y = v21;
  self->_startingLegendInnerFrame.size.width = v22;
  self->_startingLegendInnerFrame.size.height = v23;

  v28 = objc_msgSend_p_layoutTree(self, v24, v25, v26, v27);
  v33 = objc_msgSend_chartAreaLayoutItem(v28, v29, v30, v31, v32);
  objc_msgSend_layoutRect(v33, v34, v35, v36, v37);
  self->_startingChartInnerFrame.origin.x = v38;
  self->_startingChartInnerFrame.origin.y = v39;
  self->_startingChartInnerFrame.size.width = v40;
  self->_startingChartInnerFrame.size.height = v41;

  v42.receiver = self;
  v42.super_class = TSCH2DChartLayout;
  [(TSCHChartLayout *)&v42 beginDynamicOperation];
}

- (void)endDynamicOperation
{
  v5.receiver = self;
  v5.super_class = TSCH2DChartLayout;
  [(TSCHChartLayout *)&v5 endDynamicOperation];
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_startingChartInnerFrame.origin = *MEMORY[0x277CBF398];
  self->_startingChartInnerFrame.size = v4;
  self->_startingLegendInnerFrame.origin = v3;
  self->_startingLegendInnerFrame.size = v4;
}

- (void)setLegendSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->_startingLegendInnerFrame.size = a3;
  v8 = objc_msgSend_p_layoutTree(self, a2, a3.width, a3.height, v3);
  objc_msgSend_setLegendSize_(v8, v6, width, height, v7);
}

- (void)setSeriesIndexedPieWedgeExplosions:(id)a3
{
  v39 = a3;
  if (!v39)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH2DChartLayout setSeriesIndexedPieWedgeExplosions:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 707, 0, "invalid nil value for '%{public}s'", "explosions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  layoutTreeRoot = self->_layoutTreeRoot;
  if (!layoutTreeRoot)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH2DChartLayout setSeriesIndexedPieWedgeExplosions:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 708, 0, "invalid nil value for '%{public}s'", "_layoutTreeRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    layoutTreeRoot = self->_layoutTreeRoot;
  }

  objc_msgSend_setSeriesIndexedPieWedgeExplosions_(layoutTreeRoot, v4, v5, v6, v7, v39);
}

- (id)model
{
  layoutTreeRoot = self->_layoutTreeRoot;
  if (!layoutTreeRoot)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH2DChartLayout model]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 722, 0, "invalid nil value for '%{public}s'", "_layoutTreeRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    layoutTreeRoot = self->_layoutTreeRoot;
  }

  return objc_msgSend_model(layoutTreeRoot, a2, v2, v3, v4);
}

- (void)setDataSetIndex:(unint64_t)a3
{
  layoutTreeRoot = self->_layoutTreeRoot;
  if (!layoutTreeRoot)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH2DChartLayout setDataSetIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 733, 0, "invalid nil value for '%{public}s'", "_layoutTreeRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    layoutTreeRoot = self->_layoutTreeRoot;
  }

  objc_msgSend_setDataSetIndex_(layoutTreeRoot, a2, v3, v4, v5, a3);
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isValid(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_p_layoutTree(self, v9, v10, v11, v12);
    v18 = objc_msgSend_renderersWithRep_(v13, v14, v15, v16, v17, v4);
  }

  else
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v9, v10, v11, v12);
  }

  return v18;
}

- (id)hitChartElements:(CGPoint)a3 passingTest:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12 = objc_msgSend_p_layoutTree(self, v8, v9, v10, v11);
  v15 = objc_msgSend_hitChartElements_passingTest_(v12, v13, x, y, v14, v7);

  return v15;
}

- (id)subselectionKnobPositionsForSelection:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_layoutTree(self, v5, v6, v7, v8);
  v14 = objc_msgSend_subselectionKnobPositionsForSelection_(v9, v10, v11, v12, v13, v4);

  return v14;
}

- (id)subselectionHaloPositionsForSelections:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_layoutTree(self, v5, v6, v7, v8);
  v14 = objc_msgSend_subselectionHaloPositionsForSelections_(v9, v10, v11, v12, v13, v4);

  return v14;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_layoutTree(self, v5, v6, v7, v8);
  v14 = objc_msgSend_newDragAndDropHighlightPathForSelection_(v9, v10, v11, v12, v13, v4);

  return v14;
}

@end