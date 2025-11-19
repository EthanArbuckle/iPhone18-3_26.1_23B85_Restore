@interface TSCHChartBackgroundRenderer
- (id)allRenderingFills;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4 style:(id)a5;
@end

@implementation TSCHChartBackgroundRenderer

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4 style:(id)a5
{
  v99 = a5;
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartRep(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartType(v11, v17, v18, v19, v20);
  if (objc_msgSend_supportsBackgroundFill(v21, v22, v23, v24, v25))
  {
    v30 = objc_msgSend_objectValueForProperty_(v99, v26, v27, v28, v29, 1076);
    v35 = objc_msgSend_objectValueForProperty_(v99, v31, v32, v33, v34, 1077);
    v40 = objc_msgSend_layoutItem(self, v36, v37, v38, v39);
    objc_msgSend_rootedDrawingRect(v40, v41, v42, v43, v44);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v57 = 0.0;
    if (v35 && objc_msgSend_shouldRender(v35, v53, v54, v55, v56))
    {
      objc_msgSend_width(v35, v58, v59, v60, v61);
      *&v62 = v62;
      v57 = *&v62;
    }

    sub_27628CB34(a3, v46, v48, v50, v52, v57);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    objc_opt_class();
    v71 = TSUDynamicCast();
    v76 = objc_msgSend_color(v71, v72, v73, v74, v75);
    v81 = objc_msgSend_CGColor(v76, v77, v78, v79, v80);

    if (!v81 || (Alpha = CGColorGetAlpha(v81), Alpha > 0.0) || objc_msgSend_forceRenderBlankBackground(v16, v82, Alpha, v84, v85))
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v82, v64, v66, v68, v30, a3, v70);
    }

    if (v35 && objc_msgSend_shouldRender(v35, v82, v86, v87, v88))
    {
      CGContextSetLineWidth(a3, v57);
      CGContextSetLineCap(a3, kCGLineCapButt);
      CGContextSetLineJoin(a3, kCGLineJoinMiter);
      CGContextSetMiterLimit(a3, 1.0);
      v93 = objc_msgSend_color(v35, v89, v90, v91, v92);
      v98 = objc_msgSend_CGColor(v93, v94, v95, v96, v97);
      CGContextSetStrokeColorWithColor(a3, v98);

      v101.origin.x = v64;
      v101.origin.y = v66;
      v101.size.width = v68;
      v101.size.height = v70;
      CGContextStrokeRect(a3, v101);
    }
  }
}

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = objc_msgSend_chartInfo(self, a2, a4.origin.x, a4.origin.y, a4.size.width);
  objc_msgSend_p_renderIntoContext_visible_style_(self, v10, x, y, width, a3, v11, height);
}

- (id)allRenderingFills
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_objectValueForProperty_(v8, v9, v10, v11, v12, 1076);

  if (v13)
  {
    objc_msgSend_addObject_(v3, v14, v15, v16, v17, v13);
  }

  v18 = objc_msgSend_copy(v3, v14, v15, v16, v17);

  return v18;
}

@end