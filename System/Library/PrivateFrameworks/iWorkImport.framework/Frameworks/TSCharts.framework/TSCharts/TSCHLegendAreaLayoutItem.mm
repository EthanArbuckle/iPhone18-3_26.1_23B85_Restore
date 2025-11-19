@interface TSCHLegendAreaLayoutItem
- (CGAffineTransform)i_transformForRenderingLabel:(SEL)a3 paragraphStyle:(unint64_t)a4 cellType:(id)a5 rangePtr:(int)a6 outElementSize:(_NSRange *)a7 outClipRect:(CGSize *)a8;
- (CGAffineTransform)transformForRenderingBadge:(SEL)a3 cellType:(unint64_t)a4 outElementSize:(int)a5 outClipRect:(CGSize *)a6;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3;
- (CGRect)calcDrawingRect;
- (CGRect)legendModelGeometryFrame;
- (CGSize)calcMinSize;
- (TSCHLegendAreaLayoutItem)initWithParent:(id)a3;
- (TSCHLegendModelCache)legendModelCache;
- (double)p_legendModelWidth;
- (id)renderersWithRep:(id)a3;
- (void)clearAll;
- (void)clearLayoutSize;
- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4;
- (void)resetLayoutSize;
- (void)setLayoutSize:(CGSize)a3;
- (void)setLegendModelGeometryFrame:(CGRect)a3;
- (void)updateLegendGeometryFrameFromLegendModelCache;
@end

@implementation TSCHLegendAreaLayoutItem

- (TSCHLegendAreaLayoutItem)initWithParent:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSCHLegendAreaLayoutItem;
  v3 = [(TSCHChartLayoutItem *)&v10 initWithParent:a3];
  v8 = v3;
  if (v3)
  {
    objc_msgSend_updateLegendGeometryFrameFromLegendModelCache(v3, v4, v5, v6, v7);
  }

  return v8;
}

- (void)resetLayoutSize
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  objc_msgSend_clearLayoutSize(self, v10, v6, v8, v11);

  objc_msgSend_setLayoutSize_(self, v12, v7, v9, v13);
}

- (void)clearLayoutSize
{
  v2.receiver = self;
  v2.super_class = TSCHLegendAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v2 clearLayoutSize];
}

- (void)clearAll
{
  v2.receiver = self;
  v2.super_class = TSCHLegendAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v2 clearAll];
}

- (TSCHLegendModelCache)legendModelCache
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_textStyleProvidingSource(self, v7, v8, v9, v10);
  v16 = objc_msgSend_legendModelCacheForStyleProvidingSource_(v6, v12, v13, v14, v15, v11);

  return v16;
}

- (void)setLayoutSize:(CGSize)a3
{
  width = a3.width;
  v6 = objc_msgSend_legendModelCache(self, a2, a3.width, a3.height, v3);
  v10 = objc_msgSend_viewCacheForWidth_(v6, v7, width, v8, v9);
  objc_msgSend_legendSize(v10, v11, v12, v13, v14);
  v15.receiver = self;
  v15.super_class = TSCHLegendAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v15 setLayoutSize:?];
}

- (double)p_legendModelWidth
{
  if (self->_legendGeometryFrame)
  {
    objc_msgSend_legendModelGeometryFrame(self, a2, v2, v3, v4);
    return v5;
  }

  else
  {
    v7 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
    v12 = objc_msgSend_legend(v7, v8, v9, v10, v11);

    if (v12)
    {
      objc_msgSend_legendSize(v12, v13, v14, v15, v16);
      v6 = v17;
    }

    else
    {
      v6 = 0.0;
    }
  }

  return v6;
}

- (CGSize)calcMinSize
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(v6, v7, v8, v9, v10, 1113, 1);

  if (v11)
  {
    v16 = objc_msgSend_legendModelCache(self, v12, v13, v14, v15);
    objc_msgSend_p_legendModelWidth(self, v17, v18, v19, v20);
    v25 = objc_msgSend_viewCacheForWidth_(v16, v21, v22, v23, v24);
    objc_msgSend_legendSize(v25, v26, v27, v28, v29);
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v31 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v34 = v31;
  v35 = v33;
  result.height = v35;
  result.width = v34;
  return result;
}

- (CGRect)calcDrawingRect
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_legendModelCache(self, v14, v6, v8, v10);
  objc_msgSend_effectiveStrokeWidth(v15, v16, v17, v18, v19);
  v21 = v20 * -0.5;
  objc_msgSend_effectiveStrokeWidth(v15, v22, v20, v23, v24);
  v26 = v25 * -0.5;
  v46.origin.x = v7;
  v46.origin.y = v9;
  v46.size.width = v11;
  v46.size.height = v13;
  v47 = CGRectInset(v46, v21, v26);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v32 = objc_msgSend_shadow(v15, v31, v47.origin.x, v47.origin.y, v47.size.width);
  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v33, v34, v35, v36, v32))
  {
    objc_msgSend_shadowBoundsForRect_(v32, v37, x, y, width, height);
    x = v38;
    y = v39;
    width = v40;
    height = v41;
  }

  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)legendModelGeometryFrame
{
  legendGeometryFrame = self->_legendGeometryFrame;
  if (!legendGeometryFrame)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHLegendAreaLayoutItem legendModelGeometryFrame]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 139, 0, "invalid nil value for '%{public}s'", "_legendGeometryFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    legendGeometryFrame = self->_legendGeometryFrame;
  }

  objc_msgSend_CGRectValue(legendGeometryFrame, a2, v2, v3, v4);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setLegendModelGeometryFrame:(CGRect)a3
{
  v4 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  legendGeometryFrame = self->_legendGeometryFrame;
  self->_legendGeometryFrame = v4;

  v7 = self;
  do
  {
    objc_msgSend_clearDrawingRect(v7, v6, v8, v9, v10);
    objc_msgSend_clearOverhangRect(v7, v11, v12, v13, v14);
    v19 = objc_msgSend_parent(v7, v15, v16, v17, v18);

    v7 = v19;
  }

  while (v19);
}

- (void)updateLegendGeometryFrameFromLegendModelCache
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v23 = objc_msgSend_legend(v6, v7, v8, v9, v10);

  if (v23)
  {
    objc_msgSend_legendOffset(v23, v11, v12, v13, v14);
    objc_msgSend_legendSize(v23, v15, v16, v17, v18);
    TSURectWithOriginAndSize();
  }

  else
  {
    v19 = *MEMORY[0x277CBF398];
    v20 = *(MEMORY[0x277CBF398] + 8);
    v21 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
  }

  objc_msgSend_setLegendModelGeometryFrame_(self, v11, v19, v20, v21, v22);
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [TSCHLegendRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, v4, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

- (CGAffineTransform)i_transformForRenderingLabel:(SEL)a3 paragraphStyle:(unint64_t)a4 cellType:(id)a5 rangePtr:(int)a6 outElementSize:(_NSRange *)a7 outClipRect:(CGSize *)a8
{
  v12 = *&a6;
  v16 = a5;
  v17 = MEMORY[0x277CBF398];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v22 = *MEMORY[0x277CBF3A8];
  v23 = *(MEMORY[0x277CBF3A8] + 8);
  v24 = MEMORY[0x277CBF2C0];
  v121 = *(MEMORY[0x277CBF2C0] + 16);
  v122 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v121;
  v120 = *(v24 + 32);
  *&retstr->tx = v120;
  v27 = objc_msgSend_legendModelCache(self, v25, *&v120, *&v121, v26);
  v33 = objc_msgSend_cellForSeriesIndex_cellType_(v27, v28, v29, v30, v31, a4, v12);
  if (v33)
  {
    v118 = v16;
    objc_msgSend_layoutSize(self, v32, v34, v35, v36);
    v123 = objc_msgSend_viewCacheForWidth_(v27, v37, v38, v39, v40);
    v45 = objc_msgSend_labelString(v33, v41, v42, v43, v44);
    v116 = v22;
    v117 = v23;
    if (a7)
    {
      location = a7->location;
      length = a7->length;
    }

    else
    {
      location = 0;
      length = -1;
    }

    v119 = v45;
    v52 = objc_msgSend_length(v45, v46, v47, v48, v49);
    v127.location = 0;
    v127.length = v52;
    v128.location = location;
    v128.length = length;
    v53 = NSIntersectionRange(v127, v128);
    objc_msgSend_rootedLayoutRect(self, v53.length, v54, v55, v56);
    objc_msgSend_originForCell_(v123, v57, v58, v59, v60, v33);
    v62 = v61;
    objc_msgSend_labelFrame(v33, v63, v61, v64, v65);
    TSUAddPoints();
    TSUAddPoints();
    v67 = v66;
    v69 = v68;
    if (objc_msgSend_legendIsRTL(v27, v70, v66, v68, v71))
    {
      objc_msgSend_rootedLayoutRect(self, v72, v73, v74, v75);
      MaxX = CGRectGetMaxX(v129);
      v77 = MaxX - v62;
      objc_msgSend_labelFrame(v33, v78, MaxX, v79, v80);
      v67 = v77 - CGRectGetMaxX(v130);
    }

    *&v126.a = v122;
    *&v126.c = v121;
    *&v126.tx = v120;
    CGAffineTransformTranslate(retstr, &v126, v67, v69);
    if (v53.location || v52 != v53.length)
    {
      v91 = *v17;
      v92 = *(v17 + 16);
      v125.origin = *v17;
      v125.size = v92;
      v93 = v118;
      if (!v118)
      {
        v93 = objc_msgSend_paragraphStyle(v27, v81, v91.x, v92.width, v84);
      }

      v94 = objc_msgSend_sharedText(TSCHText, v81, v91.x, v92.width, v84);
      v99 = objc_msgSend_textStyleProvidingSource(self, v95, v96, v97, v98);
      objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_layoutProperties_styleProvidingSource_outErasableFrame_(v94, v100, 0.0, v101, v102, v53.location, v53.length, v119, v93, 0, v99, &v125);
      v104 = v103;
      v106 = v105;
      v22 = v107;
      v23 = v108;

      v131.origin.x = v104;
      v131.origin.y = v106;
      v131.size.width = v22;
      v131.size.height = v23;
      v16 = v93;
      if (CGRectIsNull(v131) || CGRectIsNull(v125))
      {
        *&retstr->a = v122;
        *&retstr->c = v121;
        *&retstr->tx = v120;
        v22 = v116;
        v23 = v117;
      }

      else
      {
        v109 = *&retstr->c;
        *&v124.a = *&retstr->a;
        *&v124.c = v109;
        *&v124.tx = *&retstr->tx;
        CGAffineTransformTranslate(&v126, &v124, v104, v106);
        v110 = *&v126.c;
        *&retstr->a = *&v126.a;
        *&retstr->c = v110;
        *&retstr->tx = *&v126.tx;
        TSUSubtractPoints();
        TSURectWithOriginAndSize();
        x = v111;
        y = v112;
        width = v113;
        height = v114;
      }
    }

    else
    {
      objc_msgSend_labelFrame(v33, v81, v82, v83, v84);
      v22 = v85;
      v23 = v86;
      TSURectWithSize();
      x = v87;
      y = v88;
      width = v89;
      height = v90;
      v16 = v118;
    }
  }

  v132.origin.x = x;
  v132.origin.y = y;
  v132.size.width = width;
  v132.size.height = height;
  if (!CGRectIsNull(v132))
  {
    v133.origin.x = x;
    v133.origin.y = y;
    v133.size.width = width;
    v133.size.height = height;
    v134 = CGRectInset(v133, -1.0, -1.0);
    x = v134.origin.x;
    y = v134.origin.y;
    width = v134.size.width;
    height = v134.size.height;
  }

  if (a9)
  {
    a9->origin.x = x;
    a9->origin.y = y;
    a9->size.width = width;
    a9->size.height = height;
  }

  if (a8)
  {
    a8->width = v22;
    a8->height = v23;
  }

  return result;
}

- (CGAffineTransform)transformForRenderingBadge:(SEL)a3 cellType:(unint64_t)a4 outElementSize:(int)a5 outClipRect:(CGSize *)a6
{
  v10 = *&a5;
  v14 = MEMORY[0x277CBF2C0];
  v76 = *(MEMORY[0x277CBF2C0] + 16);
  v77 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v76;
  v75 = *(v14 + 32);
  *&retstr->tx = v75;
  v15 = objc_msgSend_legendModelCache(self, a3, *&v75, *&v76, v7);
  v21 = objc_msgSend_cellForSeriesIndex_cellType_(v15, v16, v17, v18, v19, a4, v10);
  if (v21)
  {
    objc_msgSend_layoutSize(self, v20, v22, v23, v24);
    v29 = objc_msgSend_viewCacheForWidth_(v15, v25, v26, v27, v28);
    objc_msgSend_rootedLayoutRect(self, v30, v31, v32, v33);
    objc_msgSend_originForCell_(v29, v34, v35, v36, v37, v21);
    v39 = v38;
    objc_msgSend_badgeFrame(v21, v40, v38, v41, v42);
    TSUAddPoints();
    TSUAddPoints();
    v44 = v43;
    v46 = v45;
    if (objc_msgSend_legendIsRTL(v15, v47, v43, v45, v48))
    {
      objc_msgSend_rootedLayoutRect(self, v49, v50, v51, v52);
      MaxX = CGRectGetMaxX(v79);
      v54 = MaxX - v39;
      objc_msgSend_badgeFrame(v21, v55, MaxX, v56, v57);
      v44 = v54 - CGRectGetMaxX(v80);
    }

    *&v78.a = v77;
    *&v78.c = v76;
    *&v78.tx = v75;
    CGAffineTransformTranslate(retstr, &v78, v44, v46);
    objc_msgSend_badgeFrame(v21, v58, v59, v60, v61);
    v63 = v62;
    v65 = v64;
    TSURectWithSize();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    if (a7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v67 = *MEMORY[0x277CBF398];
    v69 = *(MEMORY[0x277CBF398] + 8);
    v71 = *(MEMORY[0x277CBF398] + 16);
    v73 = *(MEMORY[0x277CBF398] + 24);
    v63 = *MEMORY[0x277CBF3A8];
    v65 = *(MEMORY[0x277CBF3A8] + 8);
    if (a7)
    {
LABEL_5:
      a7->origin.x = v67;
      a7->origin.y = v69;
      a7->size.width = v71;
      a7->size.height = v73;
    }
  }

  if (a6)
  {
    a6->width = v63;
    a6->height = v65;
  }

  return result;
}

- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4
{
  x = a3.x;
  y = a3.y;
  v145[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v10 = objc_msgSend_chartInfo(self, v5, v7, v8, v9);
    v15 = objc_msgSend_chartType(v10, v11, v12, v13, v14);
    v134 = objc_msgSend_supportsTrendLines(v15, v16, v17, v18, v19);
    if (objc_msgSend_intValueForProperty_defaultValue_(v10, v20, v21, v22, v23, 1113, 0))
    {
      objc_msgSend_layoutRect(self, v24, v25, v26, v27);
      v28 = v147.origin.x;
      v29 = v147.origin.y;
      width = v147.size.width;
      height = v147.size.height;
      if (!CGRectIsNull(v147))
      {
        v148.origin.x = v28;
        v148.origin.y = v29;
        v148.size.width = width;
        v148.size.height = height;
        v146.x = x;
        v146.y = y;
        if (CGRectContainsPoint(v148, v146))
        {
          v131 = v10;
          v132 = v6;
          v36 = objc_msgSend_model(self, v32, v33, v34, v35);
          v41 = objc_msgSend_numberOfSeries(v36, v37, v38, v39, v40);

          v46 = objc_msgSend_legendModelCache(self, v42, v43, v44, v45);
          objc_msgSend_symbolGap(v46, v47, v48, v49, v50);
          v52 = v51;
          v129 = v46;
          objc_msgSend_horizontalCellSpacing(v46, v53, v51, v54, v55);
          v133 = v41;
          v130 = v15;
          if (v41)
          {
            v60 = 0;
            v61 = v52 + v57;
            v62 = &qword_2764D61A8;
            v137 = vdupq_lane_s64(*&x, 0);
            do
            {
              v145[0] = @"seriesName";
              v145[1] = @"trendLineName";
              v67 = objc_msgSend_model(self, v63, v64, v65, v66);
              v72 = objc_msgSend_seriesAtIndex_(v67, v68, v69, v70, v71, v60);

              v135 = v72;
              if (v134 && objc_msgSend_intValueForProperty_defaultValue_(v72, v73, v74, v75, v76, 1180, 0))
              {
                if (objc_msgSend_intValueForProperty_defaultValue_(v72, v73, v77, v75, v76, 1200, 0))
                {
                  v78 = 2;
                }

                else
                {
                  v78 = 1;
                }
              }

              else
              {
                v78 = 1;
              }

              v79 = 0;
              v80 = 0;
              do
              {
                v81 = *(v62 + v79);
                memset(v143, 0, sizeof(v143));
                v142[0] = 0;
                v142[1] = 0;
                memset(&v141, 0, sizeof(v141));
                objc_msgSend_transformForRenderingLabel_cellType_outElementSize_outClipRect_(self, v73, 0.0, v75, v76, v60, v81, v142, v143);
                TSURectWithSize();
                v82 = v149.origin.x;
                v83 = v149.origin.y;
                v84 = v149.size.width;
                v85 = v149.size.height;
                if (CGRectIsEmpty(v149))
                {
                  if (v84 != 0.0 || v85 == 0.0)
                  {
                    v90 = MEMORY[0x277D81150];
                    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "[TSCHLegendAreaLayoutItem iterateHitChartElements:withBlock:]");
                    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendAreaLayoutItem.m");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v97, v98, v99, v100, v91, v96, 330, 0, "need to deal with zero height");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
                  }

                  v82 = v82 - v52;
                  v84 = v61 + v84;
                }

                v139 = v141;
                CGAffineTransformInvert(&v140, &v139);
                v105 = vaddq_f64(*&v140.tx, vmlaq_f64(vmulq_n_f64(*&v140.c, y), v137, *&v140.a));
                v106 = v105.y;
                v150.origin.x = v82;
                v150.origin.y = v83;
                v150.size.width = v84;
                v150.size.height = v85;
                if (CGRectContainsPoint(v150, v105))
                {
                  v108 = v145[v79];
                  v109 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v73, v107, v75, v76, v60);
                  v144 = v109;
                  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, v111, v112, v113, &v144, 1);
                  v114 = self;
                  v116 = v115 = v62;
                  v121 = objc_msgSend_selectionPathWithType_name_arguments_(TSCHSelectionPath, v117, v118, v119, v120, @"text", v108, v116);

                  v62 = v115;
                  self = v114;

                  v80 = v121;
                }

                ++v79;
              }

              while (v78 != v79);

              for (i = 1; i != -1; --i)
              {
              }

              if (v80)
              {
                break;
              }

              ++v60;
            }

            while (v60 < v133);
          }

          else
          {
            v80 = 0;
          }

          v123 = objc_msgSend_legendType(TSCHSelectionPathType, v56, v57, v58, v59);
          v128 = objc_msgSend_selectionPathWithPathType_arguments_subSelection_(TSCHSelectionPath, v124, v125, v126, v127, v123, 0, v80);

          v6 = v132;
          (*(v132 + 2))(v132, v128, 0);

          v15 = v130;
          v10 = v131;
        }
      }
    }
  }
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = TSCHLegendAreaLayoutItem;
  Mutable = [(TSCHChartLayoutItem *)&v42 newDragAndDropHighlightPathForSelection:v4];
  if (objc_msgSend_count(v4, v6, v7, v8, v9))
  {
    if (Mutable)
    {
      MutableCopy = CGPathCreateMutableCopy(Mutable);
      CGPathRelease(Mutable);
      Mutable = MutableCopy;
    }

    else
    {
      Mutable = CGPathCreateMutable();
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = v4;
    v11 = v4;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v38, v43, 16);
    if (v16)
    {
      v21 = v16;
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v11);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          v25 = objc_msgSend_legendType(TSCHSelectionPathType, v17, v18, v19, v20);
          v30 = objc_msgSend_pathType(v24, v26, v27, v28, v29);
          isEqual = objc_msgSend_isEqual_(v25, v31, v32, v33, v34, v30);

          if (isEqual)
          {
            objc_msgSend_rootedLayoutRect(self, v17, v18, v19, v20);
            CGPathAddRectSafe();
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v18, v19, v20, &v38, v43, 16);
      }

      while (v21);
    }

    v4 = v37;
  }

  return Mutable;
}

@end