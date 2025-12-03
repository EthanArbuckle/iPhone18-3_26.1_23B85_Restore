@interface TSCHChartLayout
+ (CGRect)normalizeRect:(CGRect)rect outerRect:(CGRect)outerRect;
+ (CGRect)outerRectForRects:(id)rects;
+ (CGSize)legendSizeForChartInfo:(id)info initialWidth:(double)width;
+ (id)chartLayoutWithChartInfo:(id)info;
- (BOOL)layoutFrameShouldEncloseInfoGeometry;
- (CGAffineTransform)transformToConvertChartLayoutToNatural;
- (CGPoint)convertChartLayoutSpaceToNaturalSpace:(CGPoint)space;
- (CGPoint)convertNaturalSpaceToChartLayoutSpace:(CGPoint)space;
- (CGRect)boundsForResize;
- (CGRect)chartAreaFrame;
- (CGRect)chartBodyFrame;
- (CGRect)convertChartLayoutSpaceRectToNaturalSpaceRect:(CGRect)rect;
- (CGRect)convertNaturalSpaceRectToChartLayoutSpaceRect:(CGRect)rect;
- (CGRect)legendDrawingFrame;
- (CGRect)legendFrame;
- (CGRect)legendGeometryFrame;
- (CGRect)legendModelGeometryFrame;
- (CGRect)outerLayoutFrame;
- (CGRect)outerShadowFrame;
- (CGRect)titleFrame;
- (TSCHChartLayout)initWithChartInfo:(id)info;
- (TSWPStyleProviding)styleProvidingSource;
- (void)setForceLegendAtBottom:(BOOL)bottom;
- (void)setForceOmitLabelPlacement:(BOOL)placement;
- (void)setForceOmitLegend:(BOOL)legend;
- (void)setForceTitleAtTop:(BOOL)top;
@end

@implementation TSCHChartLayout

+ (CGSize)legendSizeForChartInfo:(id)info initialWidth:(double)width
{
  v7 = objc_msgSend_chartLayoutWithChartInfo_styleProvidingSource_(TSCHChartRootLayoutItem, a2, width, v4, v5, info, 0);
  v8 = [TSCHLegendAreaLayoutItem alloc];
  v13 = objc_msgSend_initWithParent_(v8, v9, v10, v11, v12, v7);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_setLayoutSize_(v13, v14, width, 0.0, v15);
    objc_msgSend_layoutSize(v16, v17, v18, v19, v20);
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v22 = *MEMORY[0x277CBF3A8];
    v24 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

+ (id)chartLayoutWithChartInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_chartType(infoCopy, v4, v5, v6, v7);
  v13 = objc_alloc(objc_msgSend_chartLayoutClass(v8, v9, v10, v11, v12));
  v18 = objc_msgSend_initWithChartInfo_(v13, v14, v15, v16, v17, infoCopy);

  return v18;
}

- (TSCHChartLayout)initWithChartInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartLayout initWithChartInfo:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 56, 0, "invalid nil value for '%{public}s'", "info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v30.receiver = self;
  v30.super_class = TSCHChartLayout;
  v25 = [(TSCHChartLayout *)&v30 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_chartInfo, info);
    v26->_needsLayout = 1;
    sub_27635FB94(&v28);
    *&v26->_layoutSettings.forceOmitLegend = v28;
    v26->_layoutSettings.max3DLimitingSeries = v29;
  }

  return v26;
}

- (CGRect)outerLayoutFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)outerShadowFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)chartAreaFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)legendFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)titleFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)legendDrawingFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)legendGeometryFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)chartBodyFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)layoutFrameShouldEncloseInfoGeometry
{
  v5 = objc_msgSend_chartType(self->_chartInfo, a2, v2, v3, v4);
  ShouldEncloseInfoGeometry = objc_msgSend_layoutFrameShouldEncloseInfoGeometry(v5, v6, v7, v8, v9);

  return ShouldEncloseInfoGeometry;
}

- (CGRect)boundsForResize
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGAffineTransform)transformToConvertChartLayoutToNatural
{
  objc_msgSend_outerShadowFrame(self, a3, v3, v4, v5);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v8 = -v7;
  v10 = -v9;

  return CGAffineTransformMakeTranslation(retstr, v8, v10);
}

- (CGPoint)convertChartLayoutSpaceToNaturalSpace:(CGPoint)space
{
  objc_msgSend_outerShadowFrame(self, a2, space.x, space.y, v3);

  TSUSubtractPoints();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertNaturalSpaceToChartLayoutSpace:(CGPoint)space
{
  objc_msgSend_outerShadowFrame(self, a2, space.x, space.y, v3);

  TSUAddPoints();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertChartLayoutSpaceRectToNaturalSpaceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsNull(rect))
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinX = CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxY = CGRectGetMaxY(v27);
    objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(self, v12, MinX, MinY, v13);
    objc_msgSend_convertChartLayoutSpaceToNaturalSpace_(self, v14, MaxX, MaxY, v15);
    TSURectWithPoints();
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)convertNaturalSpaceRectToChartLayoutSpaceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsNull(rect))
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinX = CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxY = CGRectGetMaxY(v27);
    objc_msgSend_convertNaturalSpaceToChartLayoutSpace_(self, v12, MinX, MinY, v13);
    objc_msgSend_convertNaturalSpaceToChartLayoutSpace_(self, v14, MaxX, MaxY, v15);
    TSURectWithPoints();
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)setForceOmitLegend:(BOOL)legend
{
  legendCopy = legend;
  v13 = 0uLL;
  v14 = 0;
  objc_msgSend_layoutSettings(self, a2, v3, v4, v5);
  if (legendCopy)
  {
    LOBYTE(v13) = legendCopy;
    v11 = v13;
    v12 = v14;
    objc_msgSend_setLayoutSettings_(self, v8, *&v13, v9, v10, &v11);
  }
}

- (void)setForceOmitLabelPlacement:(BOOL)placement
{
  placementCopy = placement;
  v13 = 0uLL;
  v14 = 0;
  objc_msgSend_layoutSettings(self, a2, v3, v4, v5);
  if (placementCopy)
  {
    BYTE3(v13) = placementCopy;
    v11 = v13;
    v12 = v14;
    objc_msgSend_setLayoutSettings_(self, v8, *&v13, v9, v10, &v11);
  }
}

- (void)setForceTitleAtTop:(BOOL)top
{
  topCopy = top;
  v13 = 0uLL;
  v14 = 0;
  objc_msgSend_layoutSettings(self, a2, v3, v4, v5);
  if (topCopy)
  {
    BYTE4(v13) = topCopy;
    v11 = v13;
    v12 = v14;
    objc_msgSend_setLayoutSettings_(self, v8, *&v13, v9, v10, &v11);
  }
}

- (void)setForceLegendAtBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  v13 = 0uLL;
  v14 = 0;
  objc_msgSend_layoutSettings(self, a2, v3, v4, v5);
  if (bottomCopy)
  {
    BYTE5(v13) = bottomCopy;
    v11 = v13;
    v12 = v14;
    objc_msgSend_setLayoutSettings_(self, v8, *&v13, v9, v10, &v11);
  }
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

- (CGRect)legendModelGeometryFrame
{
  objc_copyStruct(v6, &self->_legendModelGeometryFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (CGRect)normalizeRect:(CGRect)rect outerRect:(CGRect)outerRect
{
  TSUSubtractPoints();

  TSURectWithOriginAndSize();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)outerRectForRects:(id)rects
{
  type metadata accessor for CGRect(0);
  v3 = sub_2764B1228();
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = v3 + 56;
    do
    {
      *&v4 = CGRectUnion(*&v4, *(v9 - 24));
      v9 += 32;
      --v8;
    }

    while (v8);
  }

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end