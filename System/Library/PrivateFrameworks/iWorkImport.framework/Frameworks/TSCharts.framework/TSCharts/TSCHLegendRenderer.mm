@interface TSCHLegendRenderer
- (BOOL)canRenderSelectionPath:(id)path;
- (CGPoint)textEditingPixelAlignmentOffset;
- (id)allRenderingFills;
- (id)legendLayoutItem;
- (id)p_selectionPathForCell:(id)cell;
- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width;
- (void)p_draw3DLineBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawBadgeForCell:(id)cell intoContext:(CGContext *)context;
- (void)p_drawDefaultBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawDonutBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawLabelForCell:(id)cell intoContext:(CGContext *)context rangePtr:(_NSRange *)ptr;
- (void)p_drawLineAreaBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawPieBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)renderIntoContext:(CGContext *)context selection:(id)selection;
@end

@implementation TSCHLegendRenderer

- (id)p_selectionPathForCell:(id)cell
{
  v34[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v8 = objc_msgSend_cellType(cellCopy, v4, v5, v6, v7);
  v9 = off_27A6B9668;
  if (v8)
  {
    v9 = off_27A6B9670;
  }

  v10 = *v9;
  v11 = [TSCHSelectionPath alloc];
  v12 = MEMORY[0x277CCABB0];
  v17 = objc_msgSend_seriesIndex(cellCopy, v13, v14, v15, v16);

  v22 = objc_msgSend_numberWithUnsignedInteger_(v12, v18, v19, v20, v21, v17);
  v34[0] = v22;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v24, v25, v26, v34, 1);
  v32 = objc_msgSend_initWithType_name_arguments_(v11, v28, v29, v30, v31, @"text", v10, v27);

  return v32;
}

- (id)legendLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (void)p_drawDefaultBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v69 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v68.origin = *MEMORY[0x277CBF398];
  v68.size = v12;
  memset(&v67, 0, sizeof(v67));
  v15 = objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  v20 = objc_msgSend_cellType(cellCopy, v16, v17, v18, v19);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v21, v22, v23, v24, v15, v20, &v69, &v68);
  }

  else
  {
    memset(&v67, 0, sizeof(v67));
  }

  if (!CGRectIsNull(v68))
  {
    CGContextSaveGState(context);
    v66 = v67;
    CGContextConcatCTM(context, &v66);
    TSURectWithSize();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_27628CB34(context, v25, v27, v29, v31, 0.0);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v43 = objc_msgSend_fill(cellCopy, v41, v33, v35, v37);
    if (v43)
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v42, v34, v36, v38, v43, context, v40);
    }

    v47 = objc_msgSend_stroke(cellCopy, v42, v44, v45, v46);
    if (objc_msgSend_shouldRender(v47, v48, v49, v50, v51))
    {
      objc_msgSend_effectiveStrokeWidth(cellCopy, v52, v53, v54, v55);
      sub_27628CB34(context, v26, v28, v30, v32, v56 + v56);
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      objc_msgSend_applyToContext_insideStroke_(v47, v65, v57, v59, v61, context, 1);
      CGContextClipToRectSafe();
      v70.origin.x = v58;
      v70.origin.y = v60;
      v70.size.width = v62;
      v70.size.height = v64;
      CGContextStrokeRect(context, v70);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_drawLineAreaBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v156 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v155.origin = *MEMORY[0x277CBF398];
  v155.size = v12;
  memset(&v154, 0, sizeof(v154));
  v15 = objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  v20 = objc_msgSend_cellType(cellCopy, v16, v17, v18, v19);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v21, v22, v23, v24, v15, v20, &v156, &v155);
  }

  else
  {
    memset(&v154, 0, sizeof(v154));
  }

  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  if (!CGRectIsNull(v155))
  {
    CGContextSaveGState(context);
    transform = v154;
    CGContextConcatCTM(context, &transform);
    width_low = objc_msgSend_symbolType(cellCopy, v26, v27, v28, v29);
    TSURectWithSize();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    objc_msgSend_badgeFillFrame(cellCopy, v39, v31, v33, v35);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_27628CB34(context, v32, v34, v36, v38, 0.0);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    rect.origin.x = v41;
    rect.origin.y = v43;
    v56 = v41;
    v57 = v49;
    v149 = v45;
    v150 = v47;
    sub_27628CB34(context, v56, v43, v45, v47, 0.0);
    rect.size.width = v58;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = objc_msgSend_stroke(cellCopy, v65, v58, v59, v61);
    v71 = objc_msgSend_fill(cellCopy, v67, v68, v69, v70);
    v76 = objc_msgSend_symbolStroke(cellCopy, v72, v73, v74, v75);
    v81 = objc_msgSend_symbolFill(cellCopy, v77, v78, v79, v80);
    if (v71)
    {
      CGContextSaveGState(context);
      CGContextClipToRectSafe();
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v82, rect.size.width, v60, v62, v71, context, v64);
      CGContextRestoreGState(context);
    }

    v83 = v62 * 0.6;
    CGContextSaveGState(context);
    if (width_low == 7)
    {
      v88 = 0;
    }

    else if ((objc_msgSend_badgeType(cellCopy, v84, v85, v86, v87) != 1 || objc_msgSend_lineType(cellCopy, v84, v85, v86, v87)) && objc_msgSend_shouldRender(v66, v84, v85, v86, v87))
    {
      LODWORD(rect.size.width) = width_low;
      v89 = objc_msgSend_pattern(v66, v84, v85, v86, v87);
      if (v89 && (v90 = v89, v148 = HasBackgroundsSuppressed, objc_msgSend_pattern(v66, v84, v85, v86, v87), v91 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend_patternType(v91, v92, v93, v94, v95), v91, v90, v96 != 2))
      {
        v157.origin.x = v57;
        v157.origin.y = v51;
        v157.size.width = v53;
        v157.size.height = v55;
        CGContextBeginTransparencyLayerWithRect(context, v157, 0);
        CGContextSetBlendMode(context, kCGBlendModeCopy);
        CGContextSaveGState(context);
        TSUCenterOfRect();
        v100 = objc_msgSend_newClipPathForSymbol_at_width_stroke_(TSCHRenderUtilities, v97, v98, v99, v83, LODWORD(rect.size.width), v76);
        if (v100)
        {
          v158.origin.x = v57;
          v158.origin.y = v51;
          v158.size.width = v53;
          v158.size.height = v55;
          CGContextAddRect(context, v158);
          CGContextAddPathSafe();
          CGContextEOClip(context);
        }

        else
        {
          CGContextClipToRectSafe();
        }

        objc_msgSend_applyToContext_(v66, v101, v102, v103, v104, context);
        v109 = objc_msgSend_badgeType(cellCopy, v105, v106, v107, v108);
        if (v71 && v109 == 6 && !LODWORD(rect.size.width))
        {
          objc_msgSend_width(v66, v110, v111, v112, v113);
          sub_27628CB34(context, rect.origin.x, rect.origin.y, v149, v150, v114);
          v119 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v115, v116, v117, v118);
          objc_msgSend_addPathToContext_(v119, v120, v121, v122, v123, context);
        }

        else
        {
          v159.origin.y = rect.origin.y;
          v159.origin.x = rect.origin.x;
          v159.size.width = v149;
          v159.size.height = v150;
          MinX = CGRectGetMinX(v159);
          v160.origin.x = rect.origin.x;
          v160.origin.y = rect.origin.y;
          v160.size.width = v149;
          v160.size.height = v150;
          MinY = CGRectGetMinY(v160);
          transform.a = MinX;
          transform.b = MinY;
          v161.origin.x = rect.origin.x;
          v161.origin.y = rect.origin.y;
          v161.size.width = v149;
          v161.size.height = v150;
          MaxX = CGRectGetMaxX(v161);
          v162.origin.x = rect.origin.x;
          v162.origin.y = rect.origin.y;
          v162.size.width = v149;
          v162.size.height = v150;
          rect.size.height = MaxX;
          v152 = CGRectGetMinY(v162);
          objc_msgSend_width(v66, v129, v152, MaxX, v130);
          v132 = v131;
          v136 = objc_msgSend_cap(v66, v133, v131, v134, v135);
          sub_27628C654(context, &transform.a, &rect.size.height, v136, v132);
          CGContextMoveToPoint(context, transform.a, transform.b);
          CGContextAddLineToPoint(context, rect.size.height, v152);
        }

        if (v148)
        {
          objc_msgSend_blackColor(MEMORY[0x277D81180], v124, v125, v126, v127);
        }

        else
        {
          objc_msgSend_color(v66, v124, v125, v126, v127);
        }
        v137 = ;
        v142 = objc_msgSend_CGColor(v137, v138, v139, v140, v141);
        CGContextSetStrokeColorWithColor(context, v142);

        CGContextStrokePath(context);
        if (v100)
        {
          CGPathRelease(v100);
        }

        CGContextRestoreGState(context);
        v88 = 1;
      }

      else
      {
        v88 = 0;
      }

      width_low = LODWORD(rect.size.width);
    }

    else
    {
      v88 = 0;
    }

    if ((objc_msgSend_shouldRender(v76, v84, v85, v86, v87) & 1) != 0 || v81)
    {
      TSUCenterOfRect();
      objc_msgSend_drawSymbol_inContext_at_width_fill_stroke_(TSCHRenderUtilities, v143, v144, v145, v83, width_low, context, v81, v76);
    }

    if (v88)
    {
      CGContextEndTransparencyLayer(context);
    }

    CGContextRestoreGState(context);
    CGContextRestoreGState(context);
  }
}

- (void)p_drawPieBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v57 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v56.origin = *MEMORY[0x277CBF398];
  v56.size = v12;
  memset(&v55, 0, sizeof(v55));
  v15 = objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  v20 = objc_msgSend_cellType(cellCopy, v16, v17, v18, v19);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v21, v22, v23, v24, v15, v20, &v57, &v56);
  }

  else
  {
    memset(&v55, 0, sizeof(v55));
  }

  if (!CGRectIsNull(v56))
  {
    v29 = objc_msgSend_fill(cellCopy, v25, v26, v27, v28);
    v34 = objc_msgSend_stroke(cellCopy, v30, v31, v32, v33);
    CGContextSaveGState(context);
    v54 = v55;
    CGContextConcatCTM(context, &v54);
    TSURectWithSize();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    objc_msgSend_effectiveStrokeWidth(cellCopy, v43, v35, v37, v39);
    sub_27628CB34(context, v36, v38, v40, v42, v44 + v44);
    Mutable = CGPathCreateMutable();
    CGPathAddEllipseInRectSafe();
    CGContextAddPathSafe();
    CGContextClip(context);
    if (v29)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v46, v47, v48, v49, v29, context, Mutable);
    }

    if (objc_msgSend_shouldRender(v34, v46, v47, v48, v49))
    {
      objc_msgSend_applyToContext_insideStroke_(v34, v50, v51, v52, v53, context, 1);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(Mutable);
    CGContextRestoreGState(context);
  }
}

- (void)p_drawDonutBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v69 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v68.origin = *MEMORY[0x277CBF398];
  v68.size = v12;
  memset(&v67, 0, sizeof(v67));
  v15 = objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  v20 = objc_msgSend_cellType(cellCopy, v16, v17, v18, v19);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v21, v22, v23, v24, v15, v20, &v69, &v68);
  }

  else
  {
    memset(&v67, 0, sizeof(v67));
  }

  if (!CGRectIsNull(v68))
  {
    v29 = objc_msgSend_fill(cellCopy, v25, v26, v27, v28);
    v34 = objc_msgSend_stroke(cellCopy, v30, v31, v32, v33);
    CGContextSaveGState(context);
    transform = v67;
    CGContextConcatCTM(context, &transform);
    if (*&v69 >= *(&v69 + 1))
    {
      v35 = *(&v69 + 1);
    }

    else
    {
      v35 = *&v69;
    }

    v36 = (*&v69 - v35) * 0.5;
    v37 = (*(&v69 + 1) - v35) * 0.5;
    v70.origin.x = v36;
    v70.origin.y = v37;
    v70.size.width = v35;
    v70.size.height = v35;
    CGRectGetMidX(v70);
    v71.origin.x = v36;
    v71.origin.y = v37;
    v71.size.width = v35;
    v71.size.height = v35;
    MidY = CGRectGetMidY(v71);
    v42 = objc_msgSend_series(cellCopy, v39, MidY, v40, v41);
    v47 = objc_msgSend_chartInfo(v42, v43, v44, v45, v46);

    v52 = objc_msgSend_valueForProperty_(v47, v48, v49, v50, v51, 1103);
    objc_msgSend_floatValue(v52, v53, v54, v55, v56);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddArcSafe();
    CGPathAddLineToPointSafe();
    CGPathAddArcSafe();
    if (v29)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v58, v59, v60, v61, v29, context, Mutable);
    }

    if (objc_msgSend_shouldRender(v34, v58, v59, v60, v61))
    {
      objc_msgSend_applyToContext_insideStroke_(v34, v62, v63, v64, v65, context, 1);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(Mutable);
    CGContextRestoreGState(context);
  }
}

- (void)p_draw3DLineBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v43 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v42.origin = *MEMORY[0x277CBF398];
  v42.size = v12;
  memset(&v41, 0, sizeof(v41));
  v15 = objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  v20 = objc_msgSend_cellType(cellCopy, v16, v17, v18, v19);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v21, v22, v23, v24, v15, v20, &v43, &v42);
  }

  else
  {
    memset(&v41, 0, sizeof(v41));
  }

  if (!CGRectIsNull(v42))
  {
    CGContextSaveGState(context);
    v40 = v41;
    CGContextConcatCTM(context, &v40);
    *(&v43 + 1) = *(&v43 + 1) * 0.25;
    TSURectWithCenterAndSize();
    sub_27628CB34(context, v25, v26, v27, v28, 0.0);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v39 = objc_msgSend_fill(cellCopy, v37, v29, v31, v33);
    if (v39)
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v38, v30, v32, v34, v39, context, v36);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_drawBadgeForCell:(id)cell intoContext:(CGContext *)context
{
  cellCopy = cell;
  CGContextSaveGState(context);
  v10 = objc_msgSend_badgeType(cellCopy, v6, v7, v8, v9);
  if (v10 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << v10) & 0x46) != 0)
  {
    objc_msgSend_p_drawLineAreaBadgeIntoContext_forCell_(self, v11, v12, v13, v14, context, cellCopy);
    goto LABEL_9;
  }

  v11 = cellCopy;
  if (((1 << v10) & 0x28) != 0)
  {
    objc_msgSend_p_drawPieBadgeIntoContext_forCell_(self, cellCopy, v12, v13, v14, context, cellCopy);
    goto LABEL_9;
  }

  if (v10 == 4)
  {
    objc_msgSend_p_draw3DLineBadgeIntoContext_forCell_(self, cellCopy, v12, v13, v14, context, cellCopy);
  }

  else
  {
LABEL_8:
    objc_msgSend_p_drawDefaultBadgeIntoContext_forCell_(self, v11, v12, v13, v14, context, cellCopy);
  }

LABEL_9:
  CGContextRestoreGState(context);
}

- (void)p_drawLabelForCell:(id)cell intoContext:(CGContext *)context rangePtr:(_NSRange *)ptr
{
  cellCopy = cell;
  v13 = objc_msgSend_legendLayoutItem(self, v9, v10, v11, v12);
  v109 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF398] + 16);
  v108.origin = *MEMORY[0x277CBF398];
  v108.size = v14;
  memset(&v107, 0, sizeof(v107));
  v17 = objc_msgSend_seriesIndex(cellCopy, v15, 0.0, v14.width, v16);
  v22 = objc_msgSend_cellType(cellCopy, v18, v19, v20, v21);
  if (v13)
  {
    objc_msgSend_transformForRenderingLabel_cellType_outElementSize_outClipRect_(v13, v23, v24, v25, v26, v17, v22, &v109, &v108);
  }

  else
  {
    memset(&v107, 0, sizeof(v107));
  }

  if (!CGRectIsNull(v108))
  {
    CGContextSaveGState(context);
    transform = v107;
    CGContextConcatCTM(context, &transform);
    TSURectWithSize();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = objc_msgSend_p_selectionPathForCell_(self, v35, v27, v29, v31, cellCopy);
    v41 = objc_msgSend_textDrawingFlagForSelectionPath_(self, v37, v38, v39, v40, v36);

    if (v41 != 2)
    {
      if (v41 == 1)
      {
        v46 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v42, v43, v44, v45);
        v51 = objc_msgSend_CGColor(v46, v47, v48, v49, v50);
        CGContextSetFillColorWithColor(context, v51);

        v56 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v52, v53, v54, v55);
        v61 = objc_msgSend_CGColor(v56, v57, v58, v59, v60);
        CGContextSetStrokeColorWithColor(context, v61);

        v112.origin.x = v28;
        v112.origin.y = v30;
        v112.size.width = v32;
        v112.size.height = v34;
        CGContextFillRect(context, v112);
      }

      v62 = objc_msgSend_chartInfo(self, v42, v43, v44, v45);
      v67 = objc_msgSend_legend(v62, v63, v64, v65, v66);
      v72 = objc_msgSend_intValueForProperty_defaultValue_(v67, v68, v69, v70, v71, 1214, 0);

      v77 = objc_msgSend_paragraphStyleAtIndex_(v62, v73, v74, v75, v76, v72);
      v82 = objc_msgSend_labelString(cellCopy, v78, v79, v80, v81);
      v87 = v82;
      if (ptr)
      {
        location = ptr->location;
        length = ptr->length;
      }

      else
      {
        location = 0;
        length = -1;
      }

      v110.length = objc_msgSend_length(v82, v83, v84, v85, v86);
      v110.location = 0;
      v111.location = location;
      v111.length = length;
      v90 = NSIntersectionRange(v110, v111);
      v94 = objc_msgSend_sharedText(TSCHText, v90.length, v91, v92, v93);
      objc_msgSend_viewScale(self, v95, v96, v97, v98);
      v100 = v99;
      v104 = objc_msgSend_textStyleProvidingSource(v13, v101, v99, v102, v103);
      objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_styleProvidingSource_outTextLayoutResults_(v94, v105, 0.0, v28, v30, v87, v77, context, v90.location, v90.length, 0, v100, v104, 0);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  v139 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_legendLayoutItem(self, a2, visible.origin.x, visible.origin.y, visible.size.width, visible.size.height);
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v16 = objc_msgSend_legendModelCache(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_chartRep(self, v17, v18, v19, v20);
  objc_msgSend_tLayerRectForContext_(self, v22, v23, v24, v25, context);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (objc_msgSend_legendOn(v16, v34, v26, v28, v30))
  {
    objc_msgSend_rootedLayoutRect(v6, v35, v36, v37, v38);
    v130 = v40;
    v132 = v39;
    v126 = v42;
    v128 = v41;
    objc_msgSend_rootedDrawingRect(v6, v43, v39, v40, v41);
    x = v140.origin.x;
    y = v140.origin.y;
    width = v140.size.width;
    height = v140.size.height;
    v144.origin.x = v27;
    v144.origin.y = v29;
    v144.size.width = v31;
    v144.size.height = v33;
    if (CGRectIntersectsRect(v140, v144))
    {
      CGContextSaveGState(context);
      v52 = objc_msgSend_shadow(v16, v48, v49, v50, v51);
      if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v53, v54, v55, v56, v52) && objc_msgSend_shadowsEnabled(v21, v57, v58, v59, v60))
      {
        objc_msgSend_viewScale(self, v57, v58, v59, v60);
        v124 = v61;
        v65 = sub_27631FD2C(context, v62, v61, v63, v64);
        objc_msgSend_applyToContext_viewScale_flipped_(v52, v66, v124, v67, v68, context, v65);
        v141.origin.x = x;
        v141.origin.y = y;
        v141.size.width = width;
        v141.size.height = height;
        v145.origin.x = v27;
        v145.origin.y = v29;
        v145.size.width = v31;
        v145.size.height = v33;
        v142 = CGRectIntersection(v141, v145);
        CGContextBeginTransparencyLayerWithRect(context, v142, 0);
        v125 = 1;
      }

      else
      {
        v125 = 0;
      }

      objc_msgSend_opacity(v16, v57, v58, v59, v60);
      CGContextSetAlpha(context, v69);
      CGContextSaveGState(context);
      objc_msgSend_effectiveStrokeWidth(v16, v70, v71, v72, v73);
      sub_27628CB34(context, v132, v130, v128, v126, v74);
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v85 = objc_msgSend_fill(v16, v83, v75, v77, v79);
      if (v85)
      {
        objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v84, v76, v78, v80, v85, context, v82);
      }

      v129 = v85;
      v131 = v52;
      v133 = v21;
      v89 = objc_msgSend_stroke(v16, v84, v86, v87, v88);
      if (objc_msgSend_shouldRender(v89, v90, v91, v92, v93))
      {
        objc_msgSend_applyToContext_insideStroke_(v89, v94, v95, v96, v97, context, 0);
        v143.origin.x = v76;
        v143.origin.y = v78;
        v143.size.width = v80;
        v143.size.height = v82;
        CGContextStrokeRect(context, v143);
      }

      v127 = v89;
      CGContextRestoreGState(context);
      CGContextSaveGState(context);
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v101 = objc_msgSend_cells(v16, v98, 0.0, v99, v100);
      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, v103, v104, v105, &v134, v138, 16);
      if (v106)
      {
        v107 = v106;
        v108 = *v135;
        do
        {
          for (i = 0; i != v107; ++i)
          {
            if (*v135 != v108)
            {
              objc_enumerationMutation(v101);
            }

            v110 = *(*(&v134 + 1) + 8 * i);
            v111 = objc_autoreleasePoolPush();
            objc_msgSend_p_drawBadgeForCell_intoContext_(self, v112, v113, v114, v115, v110, context);
            objc_msgSend_p_drawLabelForCell_intoContext_rangePtr_(self, v116, v117, v118, v119, v110, context, 0);
            objc_autoreleasePoolPop(v111);
          }

          v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v120, v121, v122, v123, &v134, v138, 16);
        }

        while (v107);
      }

      CGContextRestoreGState(context);
      if (v125)
      {
        CGContextEndTransparencyLayer(context);
      }

      CGContextRestoreGState(context);

      v21 = v133;
    }
  }
}

- (BOOL)canRenderSelectionPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_type(pathCopy, v4, v5, v6, v7);
  if (objc_msgSend_isEqual_(v8, v9, v10, v11, v12, @"text"))
  {
    v17 = objc_msgSend_name(pathCopy, v13, v14, v15, v16);
    if (objc_msgSend_isEqual_(v17, v18, v19, v20, v21, @"seriesName"))
    {
      isEqual = 1;
    }

    else
    {
      v27 = objc_msgSend_name(pathCopy, v22, v23, v24, v25);
      isEqual = objc_msgSend_isEqual_(v27, v28, v29, v30, v31, @"trendLineName");
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)renderIntoContext:(CGContext *)context selection:(id)selection
{
  selectionCopy = selection;
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  if (objc_msgSend_canRenderSelectionPath_(self, v12, v13, v14, v15, v11))
  {
    v20 = objc_msgSend_legendLayoutItem(self, v16, v17, v18, v19);
    v25 = objc_msgSend_legendModelCache(v20, v21, v22, v23, v24);

    objc_opt_class();
    v30 = objc_msgSend_argumentAtIndex_(v11, v26, v27, v28, v29, 0);
    v31 = TSUCheckedDynamicCast();
    v36 = objc_msgSend_intValue(v31, v32, v33, v34, v35);

    v41 = objc_msgSend_name(v11, v37, v38, v39, v40);
    LODWORD(v30) = objc_msgSend_isEqual_(v41, v42, v43, v44, v45, @"seriesName");

    v51 = objc_msgSend_cellForSeriesIndex_cellType_(v25, v46, v47, v48, v49, v36, v30 ^ 1);
    if (v51)
    {
      v59[0] = objc_msgSend_range(selectionCopy, v50, v52, v53, v54);
      v59[1] = v55;
      objc_msgSend_p_drawLabelForCell_intoContext_rangePtr_(self, v55, v56, v57, v58, v51, context, v59);
    }
  }
}

- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width
{
  selectionCopy = selection;
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  if (objc_msgSend_canEditTextForSelectionPath_(self, v12, v13, v14, v15, v11))
  {
    v20 = objc_msgSend_legendLayoutItem(self, v16, v17, v18, v19);
    objc_opt_class();
    v25 = objc_msgSend_argumentAtIndex_(v11, v21, v22, v23, v24, 0);
    v26 = TSUCheckedDynamicCast();
    v31 = objc_msgSend_intValue(v26, v27, v28, v29, v30);

    v36 = objc_msgSend_name(v11, v32, v33, v34, v35);
    isEqual = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, @"seriesName");

    v42 = MEMORY[0x277CBF3A8];
    v52 = *MEMORY[0x277CBF3A8];
    v43 = *(MEMORY[0x277CBF398] + 16);
    v51.origin = *MEMORY[0x277CBF398];
    v51.size = v43;
    v46 = objc_msgSend_range(selectionCopy, v44, 0.0, v43.width, v45, 0, 0, 0, 0, 0, 0);
    if (v20)
    {
      objc_msgSend_transformForRenderingLabel_cellType_range_outElementSize_outClipRect_(v20, v47, v48, v49, v50, v31, isEqual ^ 1u, v46, v47, &v52, &v51);
    }

    if (!CGRectIsNull(v51) && (*v42 != *&v52 || v42[1] != *(&v52 + 1)))
    {
      TSURectWithSize();
      CGPathAddRectSafe();
    }
  }
}

- (id)allRenderingFills
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_legendLayoutItem(self, v4, v5, v6, v7);
  v13 = objc_msgSend_legendModelCache(v8, v9, v10, v11, v12);

  v19 = objc_msgSend_fill(v13, v14, v15, v16, v17);
  if (v19)
  {
    objc_msgSend_addObject_(v3, v18, v20, v21, v22, v19);
  }

  v23 = objc_msgSend_copy(v3, v18, v20, v21, v22);

  return v23;
}

- (CGPoint)textEditingPixelAlignmentOffset
{
  x = self->_textEditingPixelAlignmentOffset.x;
  y = self->_textEditingPixelAlignmentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end