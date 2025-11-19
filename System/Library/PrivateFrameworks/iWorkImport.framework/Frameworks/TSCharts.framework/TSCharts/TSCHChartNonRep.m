@interface TSCHChartNonRep
- (CGRect)outerShadowFrame;
- (TSCHChartLayout)chartLayout;
- (TSCHChartNonRep)initWithChartInfo:(id)a3;
- (id)geometry;
- (id)renderGroupIndexSetForSeriesIndex:(unint64_t)a3;
- (id)renderSeriesIndexSet;
- (id)renderers;
- (void)clearRenderers;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TSCHChartNonRep

- (TSCHChartNonRep)initWithChartInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartNonRep initWithChartInfo:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartNonRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 27, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v31.receiver = self;
  v31.super_class = TSCHChartNonRep;
  v24 = [(TSCHChartNonRep *)&v31 init];
  v29 = v24;
  if (v24)
  {
    objc_msgSend_setChartInfo_(v24, v25, v26, v27, v28, v5);
  }

  return v29;
}

- (TSCHChartLayout)chartLayout
{
  chartLayout = self->_chartLayout;
  if (!chartLayout)
  {
    v7 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
    v12 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v8, v9, v10, v11, v7);
    v13 = self->_chartLayout;
    self->_chartLayout = v12;

    v18 = self->_chartLayout;
    if (v18 || (v19 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHChartNonRep chartLayout]"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartNonRep.m"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 41, 0, "invalid nil value for '%{public}s'", "_chartLayout"), v25, v20, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33), (v18 = self->_chartLayout) != 0))
    {
      objc_msgSend_layoutSettings(v18, v14, v15, v16, v17);
    }

    else
    {
      v39 = 0uLL;
      v40 = 0;
    }

    sub_27635FBB0(&v39, &v41);
    v34 = self->_chartLayout;
    v39 = v41;
    v40 = v42;
    objc_msgSend_setLayoutSettings_(v34, v35, v41.n128_f64[0], v36, v37, &v39);
    chartLayout = self->_chartLayout;
  }

  return chartLayout;
}

- (id)renderers
{
  v2 = self;
  objc_sync_enter(v2);
  renderers = v2->_renderers;
  if (!renderers)
  {
    v8 = objc_msgSend_chartLayout(v2, v3, v4, v5, v6);
    v13 = objc_msgSend_renderersWithRep_(v8, v9, v10, v11, v12, v2);
    v14 = v2->_renderers;
    v2->_renderers = v13;

    renderers = v2->_renderers;
  }

  v15 = renderers;
  objc_sync_exit(v2);

  return v15;
}

- (void)clearRenderers
{
  obj = self;
  objc_sync_enter(obj);
  renderers = obj->_renderers;
  obj->_renderers = 0;

  objc_sync_exit(obj);
}

- (id)geometry
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_geometry(v11, v12, v13, v14, v15);
  objc_msgSend_size(v16, v17, v18, v19, v20);
  objc_msgSend_layoutForChartBodySize_(v6, v21, v22, v23, v24);

  v25 = objc_alloc(MEMORY[0x277D80300]);
  v30 = objc_msgSend_chartLayout(self, v26, v27, v28, v29);
  objc_msgSend_outerShadowFrame(v30, v31, v32, v33, v34);
  v36 = v35;
  v37 = *(MEMORY[0x277CBF2C0] + 16);
  v42[0] = *MEMORY[0x277CBF2C0];
  v42[1] = v37;
  v43 = *(MEMORY[0x277CBF2C0] + 32);
  v40 = objc_msgSend_initWithSize_transform_(v25, v38, v39, v36, *&v43, v42);

  return v40;
}

- (id)renderSeriesIndexSet
{
  v5 = MEMORY[0x277CCAA78];
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_model(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfSeries(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_indexSetWithIndexesInRange_(v5, v17, v18, v19, v20, 0, v16);

  return v21;
}

- (id)renderGroupIndexSetForSeriesIndex:(unint64_t)a3
{
  v7 = MEMORY[0x277CCAA78];
  v8 = objc_msgSend_chartLayout(self, a2, v3, v4, v5);
  v13 = objc_msgSend_model(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_numberOfGroupsInSeriesAtIndex_(v13, v14, v15, v16, v17, a3);
  v23 = objc_msgSend_indexSetWithIndexesInRange_(v7, v19, v20, v21, v22, 0, v18);

  return v23;
}

- (CGRect)outerShadowFrame
{
  v5 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  objc_msgSend_outerShadowFrame(v5, v6, v7, v8, v9);
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

- (void)drawInContext:(CGContext *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v10 = objc_msgSend_chartLayout(self, v9, ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width);
  v15 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
  v20 = objc_msgSend_geometry(v15, v16, v17, v18, v19);
  objc_msgSend_size(v20, v21, v22, v23, v24);
  objc_msgSend_layoutForChartBodySize_(v10, v25, v26, v27, v28);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = objc_msgSend_renderers(self, v29, 0.0, v30, v31, 0);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, &v45, v49, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v46;
    do
    {
      v41 = 0;
      do
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_renderIntoContext_visible_(*(*(&v45 + 1) + 8 * v41++), v38, x, y, width, a3, height);
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, v42, v43, v44, &v45, v49, 16);
    }

    while (v39);
  }
}

@end