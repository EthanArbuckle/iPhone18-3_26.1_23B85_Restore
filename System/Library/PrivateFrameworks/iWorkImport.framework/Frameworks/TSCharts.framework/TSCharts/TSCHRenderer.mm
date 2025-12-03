@interface TSCHRenderer
- (CGRect)chartLayoutSpaceRenderingRect;
- (CGRect)frameForEditingTextForSelectionPath:(id)path;
- (CGRect)tLayerRectForContext:(CGContext *)context;
- (TSCHRenderer)initWithChartRep:(id)rep layoutItem:(id)item;
- (TSCHSupportsRendering)chartRep;
- (double)viewScale;
- (int)textDrawingFlagForSelectionPath:(id)path;
- (void)drawErrorBarsInContext:(CGContext *)context chartVertical:(BOOL)vertical elementRenderClass:(Class)class;
- (void)drawTrendLinesInContext:(CGContext *)context chartVertical:(BOOL)vertical elementRenderClass:(Class)class;
- (void)p_debugLayoutInContext:(CGContext *)context;
- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)strokeRectInContext:(CGContext *)context rect:(CGRect)rect color:(CGColor *)color;
@end

@implementation TSCHRenderer

- (TSCHRenderer)initWithChartRep:(id)rep layoutItem:(id)item
{
  repCopy = rep;
  itemCopy = item;
  if (!itemCopy)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHRenderer initWithChartRep:layoutItem:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 33, 0, "invalid nil value for '%{public}s'", "chartLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    if (repCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHRenderer initWithChartRep:layoutItem:]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 34, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
    goto LABEL_3;
  }

  if (!repCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v69.receiver = self;
  v69.super_class = TSCHRenderer;
  v12 = [(TSCHRenderer *)&v69 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_chartRep, repCopy);
    objc_storeStrong(&v13->_layoutItem, item);
    v18 = objc_msgSend_chartInfo(v13, v14, v15, v16, v17);

    if (!v18)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHRenderer initWithChartRep:layoutItem:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 42, 0, "invalid nil value for '%{public}s'", "self.chartInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }
  }

  return v13;
}

- (double)viewScale
{
  v5 = objc_msgSend_chartRep(self, a2, v2, v3, v4);
  objc_msgSend_viewScale(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (CGRect)frameForEditingTextForSelectionPath:(id)path
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int)textDrawingFlagForSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v9 = objc_msgSend_chartRep(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();
  v15 = objc_msgSend_activeTextEditingPath(v10, v11, v12, v13, v14);

  v20 = 0;
  if (pathCopy && v15)
  {
    if (objc_msgSend_isEqual_(pathCopy, v16, v17, v18, v19, v15))
    {
      objc_opt_class();
      v25 = objc_msgSend_chartRep(self, v21, v22, v23, v24);
      v26 = TSUDynamicCast();
      v31 = objc_msgSend_drawingSearchReference(v26, v27, v28, v29, v30);

      if (v31)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v10 = objc_msgSend_layoutItem(self, a2, visible.origin.x, visible.origin.y, visible.size.width);
  objc_msgSend_rootedDrawingRect(v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  if (CGRectIntersectsRect(v25, v26))
  {
    UIGraphicsPushContext(context);
    CGContextSaveGState(context);
    objc_msgSend_p_renderIntoContext_visible_(self, v23, x, y, width, context, height);
    CGContextRestoreGState(context);

    UIGraphicsPopContext();
  }
}

- (void)strokeRectInContext:(CGContext *)context rect:(CGRect)rect color:(CGColor *)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  sub_27628CB34(context, x, y, width, height, 2.0);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGContextClipToRectSafe();
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, 2.0);
  CGContextSetStrokeColorWithColor(context, color);
  v20.origin.x = v12;
  v20.origin.y = v14;
  v20.size.width = v16;
  v20.size.height = v18;
  CGContextStrokeRect(context, v20);

  CGContextRestoreGState(context);
}

- (void)p_debugLayoutInContext:(CGContext *)context
{
  v7 = objc_msgSend_layoutItem(self, a2, v3, v4, v5);
  objc_msgSend_rootedLayoutRect(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v20 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v18, 0.800000012, 1.0, v19);
  objc_msgSend_CGColor(v20, v21, v22, v23, v24);

  MEMORY[0x2821F9670](self, sel_strokeRectInContext_rect_color_, v13, v15, v17);
}

- (CGRect)chartLayoutSpaceRenderingRect
{
  v5 = objc_msgSend_layoutItem(self, a2, v2, v3, v4);
  objc_msgSend_rootedDrawingRect(v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)tLayerRectForContext:(CGContext *)context
{
  if (context)
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v8 = fabs(x);
  v9 = INFINITY;
  v10 = fabs(y) != INFINITY;
  v11 = fabs(width) != INFINITY;
  v12 = fabs(height);
  v15 = v8 == INFINITY || !v10 || !v11 || v12 == INFINITY;
  if (v15 || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, CGRectIsInfinite(v35)))
  {
    v16 = objc_msgSend_chartRep(self, a2, v8, v12, v9);
    v21 = objc_msgSend_geometry(v16, v17, v18, v19, v20);
    objc_msgSend_size(v21, v22, v23, v24, v25);
    TSURectWithSize();
    x = v26;
    y = v27;
    width = v28;
    height = v29;
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (TSCHSupportsRendering)chartRep
{
  WeakRetained = objc_loadWeakRetained(&self->_chartRep);

  return WeakRetained;
}

- (void)drawErrorBarsInContext:(CGContext *)context chartVertical:(BOOL)vertical elementRenderClass:(Class)class
{
  v11 = objc_msgSend_chartRep(self, a2, v5, v6, v7, context, vertical);
  v16 = objc_msgSend_model(self, v12, v13, v14, v15);
  v21 = objc_msgSend_renderSeriesIndexSet(v11, v17, v18, v19, v20);
  objc_opt_class();
  v22 = TSUDynamicCast();
  v27 = objc_msgSend_chartInfo(self, v23, v24, v25, v26);
  v32 = objc_msgSend_chartType(v27, v28, v29, v30, v31);

  v37 = objc_msgSend_valueAxisIDs(v32, v33, v34, v35, v36);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_276327EC4;
  v46[3] = &unk_27A6B6FB0;
  v47 = v16;
  v48 = v37;
  v49 = v11;
  v50 = v22;
  classCopy = class;
  contextCopy = context;
  v38 = v22;
  v39 = v11;
  v40 = v37;
  v41 = v16;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v21, v42, v43, v44, v45, 2, v46);
}

- (void)drawTrendLinesInContext:(CGContext *)context chartVertical:(BOOL)vertical elementRenderClass:(Class)class
{
  if (context)
  {
    v11 = objc_msgSend_chartRep(self, a2, v5, v6, v7, context, vertical);
    v16 = objc_msgSend_model(self, v12, v13, v14, v15);
    v21 = objc_msgSend_renderSeriesIndexSet(v11, v17, v18, v19, v20);
    objc_opt_class();
    v26 = objc_msgSend_layoutItem(self, v22, v23, v24, v25);
    v27 = TSUDynamicCast();

    objc_opt_class();
    v32 = objc_msgSend_parent(v27, v28, v29, v30, v31);
    v33 = TSUDynamicCast();

    HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
    if (v33)
    {
      v39 = HasBackgroundsSuppressed;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_276328BC8;
      v75[3] = &unk_27A6B9A18;
      v76 = v11;
      v77 = v16;
      classCopy = class;
      v78 = v27;
      selfCopy = self;
      contextCopy = context;
      v83 = v39;
      v80 = v33;
      objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v21, v40, v41, v42, v43, 2, v75);
    }

    else
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHRenderer(TrendLines) drawTrendLinesInContext:chartVertical:elementRenderClass:]");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRendererTrendLines.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 46, 0, "invalid nil value for '%{public}s'", "areaLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
    }
  }

  else
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHRenderer(TrendLines) drawTrendLinesInContext:chartVertical:elementRenderClass:]", vertical, class);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRendererTrendLines.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 34, 0, "invalid nil value for '%{public}s'", "context");

    v59 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v59, v55, v56, v57, v58);
  }
}

@end