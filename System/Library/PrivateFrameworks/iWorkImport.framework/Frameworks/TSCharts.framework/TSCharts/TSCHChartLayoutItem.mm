@interface TSCHChartLayoutItem
+ (Class)radarAreaLayoutItem;
+ (double)halfProtrusionForRegularPolygonWithSides:(int64_t)sides strokeWidth:(double)width;
+ (id)chartLayoutWithChartInfo:(id)info styleProvidingSource:(id)source;
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings;
- (BOOL)isInResize;
- (BOOL)stopIteratingItemsContainingPoint:(CGPoint)point withBlock:(id)block;
- (CGAffineTransform)transformToRoot;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection;
- (CGPoint)layoutOffset;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGRect)drawingRect;
- (CGRect)drawingRectCache;
- (CGRect)layoutRect;
- (CGRect)overhangRect;
- (CGRect)overhangRectCache;
- (CGRect)rootedDrawingRect;
- (CGRect)rootedLayoutRect;
- (CGSize)calcMinSize;
- (CGSize)drawingSize;
- (CGSize)layoutSize;
- (CGSize)minSize;
- (CGSize)minSizeCache;
- (CGSize)overhangSize;
- (CGSize)startingSize;
- (TSCHChartInfo)chart;
- (TSCHChartInfo)chartInfo;
- (TSCHChartLayoutItem)initWithParent:(id)parent;
- (TSCHChartLayoutItem)parent;
- (TSCHChartModel)model;
- (TSCHChartRootLayoutItem)root;
- (TSWPStyleProviding)styleProvidingSource;
- (double)overhangMagnitudeForEdge:(unsigned int)edge;
- (id)description;
- (id)hitChartElements:(CGPoint)elements passingTest:(id)test;
- (id)p_description;
- (id)renderersWithRep:(id)rep;
- (id)subselectionHaloPositionsForSelections:(id)selections;
- (id)subselectionKnobPositionsForSelection:(id)selection;
- (unint64_t)dataSetIndex;
- (void)buildSubTree;
- (void)clearAll;
- (void)clearDrawingRect;
- (void)clearLayoutSize;
- (void)clearMinSize;
- (void)clearOverhangRect;
- (void)layoutInward;
- (void)layoutOutward;
- (void)layoutUsingMethod:(int)method;
- (void)p_iterateChildrenWithBlock:(id)block;
- (void)setLayoutRect:(CGRect)rect;
- (void)setLayoutSettings:(id *)settings;
- (void)setLayoutSize:(CGSize)size;
@end

@implementation TSCHChartLayoutItem

+ (id)chartLayoutWithChartInfo:(id)info styleProvidingSource:(id)source
{
  sourceCopy = source;
  infoCopy = info;
  v7 = [TSCHChartRootLayoutItem alloc];
  v12 = objc_msgSend_initWithChartInfo_styleProvidingSource_(v7, v8, v9, v10, v11, infoCopy, sourceCopy);

  return v12;
}

- (TSCHChartLayoutItem)initWithParent:(id)parent
{
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = TSCHChartLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    children = v6->_children;
    v6->_children = v7;

    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v6->_minSizeCache = *MEMORY[0x277CBF3A8];
    v6->_drawingRectCache.origin = v9;
    *&v6->_drawingRectCacheValid = 0;
    v6->_drawingRectCache.size = v10;
    v6->_overhangRectCache.origin = v9;
    v6->_overhangRectCache.size = v10;
  }

  return v6;
}

- (TSCHChartRootLayoutItem)root
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v7 = objc_msgSend_root(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSCHChartInfo)chart
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSCHChartInfo)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSCHChartModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v7 = objc_msgSend_model(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v7 = objc_msgSend_styleProvidingSource(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings
{
  v8 = objc_msgSend_parent(self, a3, v3, v4, v5);

  if (v8)
  {
    v13 = objc_msgSend_parent(self, v9, v10, v11, v12);
    if (v13)
    {
      v34 = v13;
      objc_msgSend_layoutSettings(v13, v14, v15, v16, v17);
      v13 = v34;
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
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartLayoutItem layoutSettings]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 94, 0, "Returning default settings; You want to override this in the root object of the graph.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    *&retstr->var0 = 0;
    retstr->var8 = 0;
    retstr->var9 = 0;

    sub_27635FB94(retstr);
  }

  return result;
}

- (void)setLayoutSettings:(id *)settings
{
  v8 = objc_msgSend_parent(self, a2, v3, v4, v5);

  if (v8)
  {
    v13 = objc_msgSend_parent(self, v9, *&settings->var0, v11, v12, *&settings->var0, settings->var8, settings->var9);
    objc_msgSend_setLayoutSettings_(v13, v14, v15, v16, v17, &v34);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartLayoutItem setLayoutSettings:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 104, 0, "If you want this to do anything implement it on the root item. Not in the abstract base class.");

    v33 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v33, v29, v30, v31, v32);
  }
}

- (unint64_t)dataSetIndex
{
  v6 = objc_msgSend_root(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartLayoutItem dataSetIndex]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 110, 0, "invalid nil value for '%{public}s'", "root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_dataSetIndex(v6, v5, v7, v8, v9);

  return v25;
}

- (CGSize)calcMinSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minSize
{
  if (self->_minSizeCacheValid)
  {
    width = self->_minSizeCache.width;
    height = self->_minSizeCache.height;
  }

  else
  {
    objc_msgSend_calcMinSize(self, a2, v2, v3, v4);
    self->_minSizeCache.width = width;
    self->_minSizeCache.height = height;
    self->_minSizeCacheValid = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)clearMinSize
{
  v5 = *MEMORY[0x277CBF3A8];
  self->_minSizeCache = *MEMORY[0x277CBF3A8];
  self->_minSizeCacheValid = 0;
  objc_msgSend_clearDrawingRect(self, a2, *&v5, v2, v3);

  objc_msgSend_clearOverhangRect(self, v6, v7, v8, v9);
}

- (CGSize)layoutSize
{
  if (self->_layoutSizeSet)
  {
    width = self->_layoutSize.width;
    height = self->_layoutSize.height;
  }

  else
  {
    objc_msgSend_minSize(self, a2, v2, v3, v4);
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setLayoutSize:(CGSize)size
{
  self->_layoutSize = size;
  self->_layoutSizeSet = 1;
  objc_msgSend_clearDrawingRect(self, a2, size.width, size.height, v3);

  objc_msgSend_clearOverhangRect(self, v5, v6, v7, v8);
}

- (void)clearLayoutSize
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF3A8];
  self->_layoutSize = *MEMORY[0x277CBF3A8];
  self->_layoutSizeSet = 0;
  objc_msgSend_clearDrawingRect(self, a2, *&v5, v2, v3);
  objc_msgSend_clearOverhangRect(self, v6, v7, v8, v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_children;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v23, v27, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_clearLayoutSize(*(*(&v23 + 1) + 8 * v22++), v16, v17, v18, v19, v23);
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v17, v18, v19, &v23, v27, 16);
    }

    while (v20);
  }
}

- (CGRect)layoutRect
{
  objc_msgSend_layoutOffset(self, a2, v2, v3, v4);
  objc_msgSend_layoutSize(self, v6, v7, v8, v9);

  TSURectWithOriginAndSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setLayoutRect:(CGRect)rect
{
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_setLayoutSize_(self, a2, rect.size.width, rect.size.height, rect.size.width);

  objc_msgSend_setLayoutOffset_(self, v6, x, y, v7);
}

- (CGRect)rootedLayoutRect
{
  objc_msgSend_layoutRect(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_parent(self, v14, v6, v8, v10);

  if (v15)
  {
    v20 = objc_msgSend_parent(self, v16, v17, v18, v19);
    objc_msgSend_rootedLayoutRect(v20, v21, v22, v23, v24);

    TSUAddPoints();
    v7 = v25;
    v9 = v26;
  }

  v27 = v7;
  v28 = v9;
  v29 = v11;
  v30 = v13;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGAffineTransform)transformToRoot
{
  objc_msgSend_rootedLayoutRect(self, a3, v3, v4, v5);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return CGAffineTransformMakeTranslation(retstr, v7, v8);
}

- (CGRect)calcDrawingRect
{
  v46 = *MEMORY[0x277D85DE8];
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = self->_children;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v41, v45, 16);
  if (v19)
  {
    v24 = v19;
    v25 = *v42;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v14);
        }

        v27 = *(*(&v41 + 1) + 8 * i);
        objc_msgSend_layoutRect(v27, v20, v21, v22, v23, v41);
        objc_msgSend_drawingRect(v27, v28, v29, v30, v31);
        TSUAddPoints();
        TSURectWithOriginAndSize();
        v49.origin.x = v32;
        v49.origin.y = v33;
        v49.size.width = v34;
        v49.size.height = v35;
        v47.origin.x = v7;
        v47.origin.y = v9;
        v47.size.width = v11;
        v47.size.height = v13;
        *&v21 = CGRectUnion(v47, v49);
        v7 = v21;
        v9 = v22;
        v11 = v23;
        v13 = v36;
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, v21, v22, v23, &v41, v45, 16);
    }

    while (v24);
  }

  v37 = v7;
  v38 = v9;
  v39 = v11;
  v40 = v13;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGSize)drawingSize
{
  objc_msgSend_drawingRect(self, a2, v2, v3, v4);
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGRect)drawingRect
{
  if (self->_drawingRectCacheValid)
  {
    x = self->_drawingRectCache.origin.x;
    y = self->_drawingRectCache.origin.y;
    width = self->_drawingRectCache.size.width;
    height = self->_drawingRectCache.size.height;
  }

  else
  {
    objc_msgSend_calcDrawingRect(self, a2, v2, v3, v4);
    self->_drawingRectCache.origin.x = x;
    self->_drawingRectCache.origin.y = y;
    self->_drawingRectCache.size.width = width;
    self->_drawingRectCache.size.height = height;
    self->_drawingRectCacheValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)clearDrawingRect
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_drawingRectCache.origin = *MEMORY[0x277CBF3A0];
  self->_drawingRectCache.size = v2;
  self->_drawingRectCacheValid = 0;
}

- (CGRect)rootedDrawingRect
{
  objc_msgSend_drawingRect(self, a2, v2, v3, v4);
  objc_msgSend_rootedLayoutRect(self, v6, v7, v8, v9);
  TSUAddPoints();

  TSURectWithOriginAndSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)calcOverhangRect
{
  v46 = *MEMORY[0x277D85DE8];
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = self->_children;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v41, v45, 16);
  if (v19)
  {
    v24 = v19;
    v25 = *v42;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v14);
        }

        v27 = *(*(&v41 + 1) + 8 * i);
        objc_msgSend_layoutRect(v27, v20, v21, v22, v23, v41);
        objc_msgSend_overhangRect(v27, v28, v29, v30, v31);
        TSUAddPoints();
        TSURectWithOriginAndSize();
        v49.origin.x = v32;
        v49.origin.y = v33;
        v49.size.width = v34;
        v49.size.height = v35;
        v47.origin.x = v7;
        v47.origin.y = v9;
        v47.size.width = v11;
        v47.size.height = v13;
        *&v21 = CGRectUnion(v47, v49);
        v7 = v21;
        v9 = v22;
        v11 = v23;
        v13 = v36;
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, v21, v22, v23, &v41, v45, 16);
    }

    while (v24);
  }

  v37 = v7;
  v38 = v9;
  v39 = v11;
  v40 = v13;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGSize)overhangSize
{
  objc_msgSend_overhangRect(self, a2, v2, v3, v4);
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGRect)overhangRect
{
  if (self->_overhangRectCacheValid)
  {
    x = self->_overhangRectCache.origin.x;
    y = self->_overhangRectCache.origin.y;
    width = self->_overhangRectCache.size.width;
    height = self->_overhangRectCache.size.height;
  }

  else
  {
    objc_msgSend_calcOverhangRect(self, a2, v2, v3, v4);
    self->_overhangRectCache.origin.x = x;
    self->_overhangRectCache.origin.y = y;
    self->_overhangRectCache.size.width = width;
    self->_overhangRectCache.size.height = height;
    self->_overhangRectCacheValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)clearOverhangRect
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_overhangRectCache.origin = *MEMORY[0x277CBF3A0];
  self->_overhangRectCache.size = v2;
  self->_overhangRectCacheValid = 0;
}

- (BOOL)isInResize
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_parent(self, v7, v8, v9, v10);
    v16 = objc_msgSend_isInResize(v11, v12, v13, v14, v15);

    return v16;
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartLayoutItem isInResize]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 283, 0, "If you want this to do anything implement it on the root item. Not in the abstract base class.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    return 0;
  }
}

- (CGSize)startingSize
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_parent(self, v7, v8, v9, v10);
    objc_msgSend_startingSize(v11, v12, v13, v14, v15);
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartLayoutItem startingSize]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 292, 0, "If you want this to do anything implement it on the root item. Not in the abstract base class.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v17 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v35 = v17;
  v36 = v19;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)buildSubTree
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v16, v20, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_buildSubTree(*(*(&v16 + 1) + 8 * v15++), v9, v10, v11, v12, v16);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, v10, v11, v12, &v16, v20, 16);
    }

    while (v13);
  }

  self->_treeBuilt = 1;
}

- (void)clearAll
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF348];
  v5 = *MEMORY[0x277CBF3A8];
  v23 = *MEMORY[0x277CBF3A8];
  self->_layoutSize = *MEMORY[0x277CBF3A8];
  self->_layoutOffset = v4;
  self->_layoutSizeSet = 0;
  objc_msgSend_clearDrawingRect(self, a2, v4.x, *&v5, v2);
  objc_msgSend_clearOverhangRect(self, v6, v7, v8, v9);
  self->_minSizeCache = v23;
  self->_minSizeCacheValid = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_children;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v24, v28, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_clearAll(*(*(&v24 + 1) + 8 * v22++), v16, v17, v18, v19);
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v17, v18, v19, &v24, v28, 16);
    }

    while (v20);
  }
}

- (void)layoutInward
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_treeBuilt)
  {
    objc_msgSend_buildSubTree(self, a2, v2, v3, v4);
  }

  if (objc_msgSend_count(self->_children, a2, v2, v3, v4))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_children;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v19, v23, 16);
    if (v11)
    {
      v16 = v11;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_layoutInward(*(*(&v19 + 1) + 8 * v18++), v12, v13, v14, v15, v19);
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v19, v23, 16);
      }

      while (v16);
    }
  }
}

- (void)layoutOutward
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_treeBuilt)
  {
    objc_msgSend_buildSubTree(self, a2, v2, v3, v4);
  }

  if (objc_msgSend_count(self->_children, a2, v2, v3, v4))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_children;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v21, v25, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_layoutOutward(*(*(&v21 + 1) + 8 * v20++), v14, v15, v16, v17, v21);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, &v21, v25, 16);
      }

      while (v18);
    }
  }

  objc_msgSend_setLayoutOffset_(self, v6, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v7, v21);
}

- (void)layoutUsingMethod:(int)method
{
  if (method)
  {
    if (method == 1)
    {

      objc_msgSend_layoutOutward(self, a2, v3, v4, v5);
    }

    else if (method == 2)
    {

      objc_msgSend_layoutInward(self, a2, v3, v4, v5);
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartLayoutItem layoutUsingMethod:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v17, v18, v19, v8, v13, 366, 0, "[%@ %@] called with TSCHLayoutMethodUnknown. Doing nothing. Investigate.", v14, v15);

    v24 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v24, v20, v21, v22, v23);
  }
}

- (id)renderersWithRep:(id)rep
{
  v30 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v25, v29, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_renderersWithRep_(*(*(&v25 + 1) + 8 * i), v12, v13, v14, v15, repCopy, v25);
        objc_msgSend_addObjectsFromArray_(v5, v20, v21, v22, v23, v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v25, v29, 16);
    }

    while (v16);
  }

  return v5;
}

- (double)overhangMagnitudeForEdge:(unsigned int)edge
{
  objc_msgSend_layoutSize(self, a2, v3, v4, v5);
  TSURectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_msgSend_overhangRect(self, v16, v8, v10, v12);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  if (edge > 1)
  {
    if (edge == 2)
    {
      MaxX = CGRectGetMaxX(*&v18);
      v52.origin.x = v9;
      v52.origin.y = v11;
      v52.size.width = v13;
      v52.size.height = v15;
      MaxY = CGRectGetMaxX(v52);
    }

    else
    {
      if (edge != 3)
      {
        goto LABEL_8;
      }

      MaxX = CGRectGetMaxY(*&v18);
      v49.origin.x = v9;
      v49.origin.y = v11;
      v49.size.width = v13;
      v49.size.height = v15;
      MaxY = CGRectGetMaxY(v49);
    }

    v45 = MaxX - MaxY;
    return fmax(v45, 0.0);
  }

  if (!edge)
  {
    v50.origin.x = v9;
    v50.origin.y = v11;
    v50.size.width = v13;
    v50.size.height = v15;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v22;
    v51.origin.y = v23;
    v51.size.width = v24;
    v51.size.height = v25;
    MinY = CGRectGetMinX(v51);
    goto LABEL_10;
  }

  if (edge == 1)
  {
    v47.origin.x = v9;
    v47.origin.y = v11;
    v47.size.width = v13;
    v47.size.height = v15;
    MinX = CGRectGetMinY(v47);
    v48.origin.x = v22;
    v48.origin.y = v23;
    v48.size.width = v24;
    v48.size.height = v25;
    MinY = CGRectGetMinY(v48);
LABEL_10:
    v45 = MinX - MinY;
    return fmax(v45, 0.0);
  }

LABEL_8:
  v30 = MEMORY[0x277D81150];
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartLayoutItem overhangMagnitudeForEdge:]");
  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLayoutItem.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 396, 0, "Invalid CGRectEdge");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  v45 = 0.0;
  return fmax(v45, 0.0);
}

- (id)p_description
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);
  if (v6)
  {
    v11 = v6;
    v12 = &stru_288528678;
    do
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, v8, v9, v10, @"%@\t", v12);

      v18 = objc_msgSend_parent(v11, v14, v15, v16, v17);

      v11 = v18;
      v12 = v13;
    }

    while (v18);
  }

  else
  {
    v13 = &stru_288528678;
  }

  objc_msgSend_layoutRect(self, v7, v8, v9, v10);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  objc_msgSend_drawingRect(self, v27, v19, v21, v23);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = MEMORY[0x277CCACA8];
  v37 = objc_opt_class();
  v42 = objc_msgSend_stringWithFormat_(v36, v38, v39, v40, v41, @"%@%@ layoutRect: %.2f,%.2f %.2f,%.2f, drawingRect: %.2f,%.2f %.2f,%.2f%%@", v13, v37, *&v20, *&v22, *&v24, v26, v29, v31, v33, v35);

  return v42;
}

- (id)description
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_p_description(self, a2, v2, v3, v4);
  v12 = objc_msgSend_stringWithFormat_(v6, v8, v9, v10, v11, v7, @"\n");

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_children;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v34, v38, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v35;
    do
    {
      v25 = 0;
      v26 = v12;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v27 = MEMORY[0x277CCACA8];
        v28 = objc_msgSend_description(*(*(&v34 + 1) + 8 * v25), v19, v20, v21, v22);
        v12 = objc_msgSend_stringWithFormat_(v27, v29, v30, v31, v32, @"%@%@", v26, v28, v34);

        ++v25;
        v26 = v12;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, v20, v21, v22, &v34, v38, 16);
    }

    while (v23);
  }

  return v12;
}

- (BOOL)stopIteratingItemsContainingPoint:(CGPoint)point withBlock:(id)block
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v31 = 0;
  objc_msgSend_rootedDrawingRect(self, v8, v9, v10, v11);
  v34.x = x;
  v34.y = y;
  if (!CGRectContainsPoint(v35, v34) || (blockCopy[2](blockCopy, self, &v31), (v31 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = self->_children;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v27, v32, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v28;
LABEL_5:
      v22 = 0;
      while (1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v31 = objc_msgSend_stopIteratingItemsContainingPoint_withBlock_(*(*(&v27 + 1) + 8 * v22), v18, x, y, v19, blockCopy, v27);
        if (v31)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v23, v24, v19, &v27, v32, 16);
          if (v20)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v25 = v31;

  return v25;
}

- (void)p_iterateChildrenWithBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v22 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_children;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v18, v23, 16);
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v18 + 1) + 8 * v13), &v22);
        if (v22)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, v15, v16, v17, &v18, v23, 16);
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)hitChartElements:(CGPoint)elements passingTest:(id)test
{
  y = elements.y;
  x = elements.x;
  testCopy = test;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v18 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v13, v14, v15, v16, self);
  v44 = 0;
  v45 = &v44;
  v21 = 0x2020000000;
  v46 = 0x2020000000;
  v47 = 0;
  do
  {
    if (!objc_msgSend_count(v18, v17, *&v21, v19, v20))
    {
      break;
    }

    v26 = objc_msgSend_lastObject(v18, v22, v23, v24, v25);
    objc_msgSend_removeLastObject(v18, v27, v28, v29, v30);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_276285AE0;
    v40[3] = &unk_27A6B7298;
    v42 = testCopy;
    v41 = v12;
    v43 = &v44;
    objc_msgSend_iterateHitChartElements_withBlock_(v26, v31, x, y, v32, v40);
    if ((v45[3] & 1) == 0)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_276285B94;
      v38[3] = &unk_27A6B72C0;
      v39 = v18;
      objc_msgSend_p_iterateChildrenWithBlock_(v26, v33, v34, v35, v36, v38);
    }
  }

  while (*(v45 + 24) != 1);
  _Block_object_dispose(&v44, 8);

  return v12;
}

- (id)subselectionKnobPositionsForSelection:(id)selection
{
  selectionCopy = selection;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_276285CC8;
  v19 = sub_276285CD8;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276285CE0;
  v12[3] = &unk_27A6B72E8;
  v5 = selectionCopy;
  v13 = v5;
  v14 = &v15;
  objc_msgSend_p_iterateChildrenWithBlock_(self, v6, v7, v8, v9, v12);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)subselectionHaloPositionsForSelections:(id)selections
{
  selectionsCopy = selections;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_276285CC8;
  v19 = sub_276285CD8;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276285E9C;
  v12[3] = &unk_27A6B72E8;
  v5 = selectionsCopy;
  v13 = v5;
  v14 = &v15;
  objc_msgSend_p_iterateChildrenWithBlock_(self, v6, v7, v8, v9, v12);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection
{
  selectionCopy = selection;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276286014;
  v12[3] = &unk_27A6B72E8;
  v5 = selectionCopy;
  v13 = v5;
  v14 = &v15;
  objc_msgSend_p_iterateChildrenWithBlock_(self, v6, v7, v8, v9, v12);
  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (TSCHChartLayoutItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CGPoint)layoutOffset
{
  x = self->_layoutOffset.x;
  y = self->_layoutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)drawingRectCache
{
  x = self->_drawingRectCache.origin.x;
  y = self->_drawingRectCache.origin.y;
  width = self->_drawingRectCache.size.width;
  height = self->_drawingRectCache.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
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

- (CGRect)overhangRectCache
{
  x = self->_overhangRectCache.origin.x;
  y = self->_overhangRectCache.origin.y;
  width = self->_overhangRectCache.size.width;
  height = self->_overhangRectCache.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (Class)radarAreaLayoutItem
{
  if (qword_280A46350 != -1)
  {
    swift_once();
  }

  return swift_getObjCClassFromMetadata();
}

+ (double)halfProtrusionForRegularPolygonWithSides:(int64_t)sides strokeWidth:(double)width
{
  if (sides <= 1)
  {
    sidesCopy = 1;
  }

  else
  {
    sidesCopy = sides;
  }

  return width * 0.5 / sin(fmax((sidesCopy + -2.0) * 3.14159265 / sidesCopy, 1.04719755) * 0.5);
}

@end