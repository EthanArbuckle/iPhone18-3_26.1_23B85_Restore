@interface TSCHChartAxisRenderer
- (BOOL)canEditTextForSelectionPath:(id)a3;
- (BOOL)canRenderSelectionPath:(id)a3;
- (BOOL)needsAnySeparateLayers;
- (BOOL)p_isTitleVisible;
- (BOOL)p_needsSharedTickMarkLayer;
- (CGRect)frameForEditingTextForSelectionPath:(id)a3;
- (CGRect)p_tickmarkFrameFromElementSize:(CGSize)a3 location:(int)a4 tickLength:(double)a5;
- (double)p_strokeWidthForRenderingTickmarks:(id)a3;
- (id)axis;
- (id)axisLayoutItem;
- (id)axisTitleSelectionPath;
- (id)transparencyLayers;
- (void)addSelection:(id)a3 toCGPath:(CGPath *)a4 useWrapWidth:(BOOL)a5;
- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5;
- (void)p_addLinePath:(CGContext *)a3 stroke:(id)a4;
- (void)p_addLinearTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8;
- (void)p_addPolarAngleTickmarkPaths:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 width:(float)a6 isMinor:(BOOL)a7 includeFirstSpoke:(BOOL)a8 includeSpokesOtherThanTheFirst:(BOOL)a9;
- (void)p_addPolarRadiusTickmarkPaths:(CGContext *)a3 axis:(id)a4 absoluteRadii:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8 includeFirstSpoke:(BOOL)a9 includeSpokesOtherThanTheFirst:(BOOL)a10;
- (void)p_addPolarTickmarkPaths:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 width:(float)a6 isMinor:(BOOL)a7 includeFirstSpoke:(BOOL)a8 includeSpokesOtherThanTheFirst:(BOOL)a9 betweenSpokes:(BOOL)a10 unitCircleRadii:(id)a11 isRotated:(BOOL)a12;
- (void)p_addTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8;
- (void)p_debugRenderTickmarkArea:(CGContext *)a3;
- (void)p_drawTitle:(CGContext *)a3 rangePtr:(_NSRange *)a4;
- (void)p_renderTickmarkInContext:(CGContext *)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 strokeWidth:(double)a6 strokeCap:(int)a7;
- (void)renderIntoContext:(CGContext *)a3 selection:(id)a4;
- (void)willBeginTransparencyLayer:(int)a3 inContext:(CGContext *)a4;
@end

@implementation TSCHChartAxisRenderer

- (id)axisTitleSelectionPath
{
  v27[1] = *MEMORY[0x277D85DE8];
  axisTitleSelectionPath = self->_axisTitleSelectionPath;
  if (!axisTitleSelectionPath)
  {
    v4 = [TSCHSelectionPath alloc];
    v9 = objc_msgSend_axisLayoutItem(self, v5, v6, v7, v8);
    v14 = objc_msgSend_axisID(v9, v10, v11, v12, v13);
    v27[0] = v14;
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v16, v17, v18, v27, 1);
    v24 = objc_msgSend_initWithType_name_arguments_(v4, v20, v21, v22, v23, @"text", @"axisTitle", v19);
    v25 = self->_axisTitleSelectionPath;
    self->_axisTitleSelectionPath = v24;

    axisTitleSelectionPath = self->_axisTitleSelectionPath;
  }

  return axisTitleSelectionPath;
}

- (BOOL)p_needsSharedTickMarkLayer
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_axisLayoutItem(self, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_axisForID_(v6, v22, v23, v24, v25, v21);

  if (objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v27, v28, v29, v30, v26, v11))
  {
    v35 = objc_msgSend_objectValueForProperty_(v11, v31, v32, v33, v34, 1080);
    LODWORD(v36) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v11, v37, v36, v38, v39, 1078);
    v44 = *&v41;
    Alpha = 1.0;
    if (v35 && objc_msgSend_shouldRender(v35, v40, v41, v42, v43))
    {
      v47 = objc_msgSend_color(v35, v40, v46, v42, v43);
      v52 = objc_msgSend_CGColor(v47, v48, v49, v50, v51);
      Alpha = CGColorGetAlpha(v52);
    }

    v53 = objc_msgSend_objectValueForProperty_(v11, v40, v44, v42, v43, 1079);
    v59 = objc_msgSend_chartRep(self, v54, v55, v56, v57);
    v63 = Alpha * v44 < 1.0 || objc_msgSend_hasShadow_(TSCHStyleUtilities, v58, v60, v61, v62, v53) && objc_msgSend_shadowsEnabled(v59, v64, v65, v66, v67);
  }

  else
  {
    v63 = 0;
  }

  return v63;
}

- (BOOL)needsAnySeparateLayers
{
  if (objc_msgSend_p_needsSharedTickMarkLayer(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return objc_msgSend_p_needsPositionBasedTransparencyLayer(self, v6, v7, v8, v9);
}

- (id)transparencyLayers
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithObjects_(v3, v4, v5, v6, v7, &unk_28856BF78, 0);
  if (objc_msgSend_p_needsSharedTickMarkLayer(self, v9, v10, v11, v12))
  {
    objc_msgSend_addObject_(v8, v13, v14, v15, v16, &unk_28856BF90);
  }

  if (objc_msgSend_p_needsPositionBasedTransparencyLayer(self, v13, v14, v15, v16))
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = objc_msgSend_axisLayoutItem(self, v17, v18, v19, v20);
    v27 = objc_msgSend_axisPosition(v22, v23, v24, v25, v26);
    v28 = sub_2762A5ADC(v27);
    v33 = objc_msgSend_numberWithInt_(v21, v29, v30, v31, v32, v28);
    objc_msgSend_addObject_(v8, v34, v35, v36, v37, v33);
  }

  v38 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v17, v18, v19, v20, v8);

  return v38;
}

- (void)willBeginTransparencyLayer:(int)a3 inContext:(CGContext *)a4
{
  if (a3 == 0x10000)
  {
    v42 = objc_msgSend_chartInfo(self, a2, v5, v6, v7);
    v14 = objc_msgSend_chartRep(self, v10, v11, v12, v13);
    if (TSDCGContextHasBackgroundsSuppressed())
    {
      v19 = 0;
      hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v15, v16, v17, v18, 0);
    }

    else
    {
      v19 = objc_msgSend_objectValueForProperty_(v42, v15, v16, v17, v18, 1079);
      hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v25, v26, v27, v28, v19);
    }

    if (hasShadow && objc_msgSend_shadowsEnabled(v14, v21, v22, v23, v24))
    {
      objc_msgSend_viewScale(self, v29, v30, v31, v32);
      v34 = v33;
      v38 = sub_27631FD2C(a4, v35, v33, v36, v37);
      objc_msgSend_applyToContext_viewScale_flipped_(v19, v39, v34, v40, v41, a4, v38);
    }
  }
}

- (id)axisLayoutItem
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)axis
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_axis(v5, v6, v7, v8, v9);

  return v10;
}

- (void)p_drawTitle:(CGContext *)a3 rangePtr:(_NSRange *)a4
{
  v10 = objc_msgSend_axisLayoutItem(self, a2, v4, v5, v6);
  v15 = objc_msgSend_axisTitleLayoutItem(v10, v11, v12, v13, v14);
  v18 = v15;
  v19 = *(MEMORY[0x277CBF398] + 16);
  v93.origin = *MEMORY[0x277CBF398];
  v93.size = v19;
  v20 = *MEMORY[0x277CBF3A8];
  v92 = *MEMORY[0x277CBF3A8];
  memset(&v91, 0, sizeof(v91));
  if (v15)
  {
    objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v15, v16, 0.0, *&v20, v17, &v92, &v93);
  }

  if (!CGRectIsNull(v93))
  {
    v25 = objc_msgSend_axisTitleSelectionPath(self, v21, v22, v23, v24);
    v30 = objc_msgSend_textDrawingFlagForSelectionPath_(self, v26, v27, v28, v29, v25);

    if (v30 != 2)
    {
      v35 = objc_msgSend_model(v10, v31, v32, v33, v34);
      v88 = objc_msgSend_axisID(v10, v36, v37, v38, v39);
      v89 = v35;
      v44 = objc_msgSend_axisForID_(v35, v40, v41, v42, v43);
      v87 = objc_msgSend_objectValueForProperty_(v44, v45, v46, v47, v48, 1062);
      v53 = objc_msgSend_intValueForProperty_defaultValue_(v44, v49, v50, v51, v52, 1063, 0);
      v58 = objc_msgSend_chartInfo(self, v54, v55, v56, v57);
      v63 = objc_msgSend_paragraphStyleAtIndex_(v58, v59, v60, v61, v62, v53);

      v68 = objc_msgSend_sharedText(TSCHText, v64, v65, v66, v67);
      CGContextSaveGState(a3);
      transform = v91;
      CGContextConcatCTM(a3, &transform);
      CGContextClipToRectSafe();
      if (v30 == 1)
      {
        v73 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v69, v70, v71, v72);
        v78 = objc_msgSend_CGColor(v73, v74, v75, v76, v77);
        CGContextSetFillColorWithColor(a3, v78);

        TSURectWithSize();
        CGContextFillRect(a3, v94);
      }

      width = v93.size.width;
      objc_msgSend_viewScale(self, v69, v70, v71, v72);
      v82 = *MEMORY[0x277CBF348];
      v83 = *(MEMORY[0x277CBF348] + 8);
      if (a4)
      {
        location = a4->location;
        length = a4->length;
        v86 = v87;
        objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_(v68, v80, width, v82, v83, v87, v63, a3, location, length, v81);
      }

      else
      {
        v86 = v87;
        objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_viewScale_(v68, v80, width, v82, v83, v87, v63, a3, v81);
      }

      CGContextRestoreGState(a3);
    }
  }
}

- (void)p_addLinePath:(CGContext *)a3 stroke:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_axisLayoutItem(self, v7, v8, v9, v10);
  v16 = objc_msgSend_axisLineLayoutItem(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v11, v17, v18, v19, v20);
  v26 = objc_msgSend_type(v21, v22, v23, v24, v25);

  if (v26 == 6)
  {
    v31 = objc_msgSend_chartInfo(self, v27, v28, v29, v30);
    v36 = objc_msgSend_intValueForProperty_defaultValue_(v31, v32, v33, v34, v35, 1108, 0) != 0;

    v41 = objc_msgSend_chartInfo(self, v37, v38, v39, v40);
    objc_msgSend_floatValueForProperty_defaultValue_(v41, v42, 0.0, v43, v44, 1109);
    v46 = v45 * -0.0174532925;

    objc_msgSend_rootedLayoutRect(v11, v47, v48, v49, v50);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = objc_msgSend_model(self, v59, v51, v53, v55);
    v65 = objc_msgSend_numberOfGroupsInAllSeries(v60, v61, v62, v63, v64);
    v67 = objc_msgSend_newPolarAxisShapePathWithRect_unitSpaceValue_numberOfValues_elliptical_rotation_(TSCHRenderUtilities, v66, v52, v54, v56, v65, v36, v58, 1.0, v46);

    objc_msgSend_applyToContext_(v6, v68, v69, v70, v71, a3);
    CGContextBeginPath(a3);
    CGContextAddPathSafe();
    CGContextStrokePath(a3);
    CGPathRelease(v67);
  }

  else
  {
    v72 = *(MEMORY[0x277CBF398] + 16);
    v126.origin = *MEMORY[0x277CBF398];
    v126.size = v72;
    v73 = *MEMORY[0x277CBF3A8];
    v125 = *MEMORY[0x277CBF3A8];
    memset(&v124, 0, sizeof(v124));
    if (v16)
    {
      objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v16, v27, 0.0, *&v73, v30, &v125, &v126);
    }

    if (!CGRectIsNull(v126))
    {
      CGContextSaveGState(a3);
      transform = v124;
      CGContextConcatCTM(a3, &transform);
      v78 = 0.0;
      if (v6 && objc_msgSend_shouldRender(v6, v74, v75, v76, v77))
      {
        objc_msgSend_width(v6, v74, v79, v80, v77);
        v78 = v81;
      }

      *&transform.a = *MEMORY[0x277CBF348];
      v121 = transform.a + *&v125;
      b = transform.b;
      if (v26 == 5)
      {
        v82 = objc_msgSend_model(self, v74, *&v125, transform.a, v77, *&v121, *&b);
        v87 = objc_msgSend_categoryAxisList(v82, v83, v84, v85, v86);

        if (objc_msgSend_count(v87, v88, v89, v90, v91) != 1)
        {
          v96 = MEMORY[0x277D81150];
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "[TSCHChartAxisRenderer p_addLinePath:stroke:]");
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisRenderer.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 242, 0, "A radar chart should have exactly one category axis");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
        }

        v111 = objc_msgSend_firstObject(v87, v92, v93, v94, v95);
        if (objc_msgSend_intValueForProperty_defaultValue_(v111, v112, v113, v114, v115, 1050, 0))
        {
          objc_msgSend_floatValueForProperty_defaultValue_(v111, v116, 0.0, v117, v118, 1033);
        }

        TSUMultiplyPointScalar();
        v121 = v119;
        b = v120;
      }

      sub_27628C654(a3, &transform.a, &v121, 2, v78);
      CGContextMoveToPoint(a3, transform.a, transform.b);
      CGContextAddLineToPoint(a3, v121, b);
      CGContextRestoreGState(a3);
    }
  }
}

- (void)p_debugRenderTickmarkArea:(CGContext *)a3
{
  v90 = objc_msgSend_axisLayoutItem(self, a2, v3, v4, v5);
  v11 = objc_msgSend_axisPosition(v90, v7, v8, v9, v10);
  CGContextSetLineWidth(a3, 1.0);
  CGContextSetLineCap(a3, kCGLineCapButt);
  v16 = v90;
  if (v90)
  {
    objc_msgSend_rootedLayoutRect(v90, v12, v13, v14, v15);
    sub_27628CB34(a3, v17, v18, v19, v20, 1.0);
    v25 = v24;
    v27 = v26;
    v28 = v11 == 5 || (v11 & 0xFFFFFFFD) == 1;
    v29 = v28;
    if (v28)
    {
      v30 = v23;
    }

    else
    {
      v30 = v23 + -1.0;
    }

    if (v28)
    {
      v31 = v22 + -1.0;
    }

    else
    {
      v31 = v22;
    }

    v32 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v21, 0.0, 1.0, 0.0, 0.5);
    v37 = objc_msgSend_CGColor(v32, v33, v34, v35, v36);

    CGContextSetStrokeColorWithColor(a3, v37);
    CGContextSetFillColorWithColor(a3, v37);
    v92.origin.x = v25;
    v92.origin.y = v27;
    v92.size.width = v31;
    v92.size.height = v30;
    CGContextStrokeRect(a3, v92);
    v42 = objc_msgSend_axisTickMarksLayoutItem(v90, v38, v39, v40, v41);
    v47 = v42;
    if (v42)
    {
      objc_msgSend_rootedLayoutRect(v42, v43, v44, v45, v46);
      sub_27628CB34(a3, v48, v49, v50, v51, 1.0);
      v56 = v55;
      v58 = v57;
      if (v29)
      {
        v59 = v54;
      }

      else
      {
        v59 = v54 + -1.0;
      }

      if (v29)
      {
        v60 = v53 + -1.0;
      }

      else
      {
        v60 = v53;
      }

      v61 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v52, 1.0, 0.5, 0.0, 0.5);
      v66 = objc_msgSend_CGColor(v61, v62, v63, v64, v65);

      CGContextSetStrokeColorWithColor(a3, v66);
      CGContextSetFillColorWithColor(a3, v66);
      v93.origin.x = v56;
      v93.origin.y = v58;
      v93.size.width = v60;
      v93.size.height = v59;
      CGContextStrokeRect(a3, v93);
      objc_msgSend_rootedDrawingRect(v47, v67, v68, v69, v70);
      sub_27628CB34(a3, v71, v72, v73, v74, 1.0);
      v79 = v78;
      v81 = v80;
      if (v29)
      {
        v82 = v77;
      }

      else
      {
        v82 = v77 + -1.0;
      }

      if (v29)
      {
        v83 = v76 + -1.0;
      }

      else
      {
        v83 = v76;
      }

      v84 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v75, 1.0, 1.0, 0.0, 0.5);
      v89 = objc_msgSend_CGColor(v84, v85, v86, v87, v88);

      CGContextSetStrokeColorWithColor(a3, v89);
      CGContextSetFillColorWithColor(a3, v89);
      v94.origin.x = v79;
      v94.origin.y = v81;
      v94.size.width = v83;
      v94.size.height = v82;
      CGContextStrokeRect(a3, v94);
    }

    v16 = v90;
  }
}

- (double)p_strokeWidthForRenderingTickmarks:(id)a3
{
  v3 = a3;
  v8 = v3;
  v9 = 0.0;
  if (v3 && objc_msgSend_shouldRender(v3, v4, v5, v6, v7))
  {
    objc_msgSend_width(v8, v10, v11, v12, v13);
    v9 = v14;
  }

  return v9;
}

- (void)p_renderTickmarkInContext:(CGContext *)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 strokeWidth:(double)a6 strokeCap:(int)a7
{
  v15 = a4;
  v14 = a5;
  if (a7 == 2)
  {
    v9 = a6 * 0.5;
    if (a4.x == a5.x || vabdd_f64(a4.x, a5.x) < fabs(a5.x * 0.000000999999997))
    {
      if (a4.y <= a5.y)
      {
        v15.y = a4.y + v9;
        v10 = a5.y - v9;
      }

      else
      {
        v15.y = a4.y - v9;
        v10 = a5.y + v9;
      }
    }

    else
    {
      TSUSubtractPoints();
      TSUNormalizePoint();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v15.x = v11;
      v15.y = v12;
      TSUSubtractPoints();
      v14.x = v13;
    }

    v14.y = v10;
  }

  sub_27628C654(a3, &v15.x, &v14.x, 2, a6);
  CGContextMoveToPoint(a3, v15.x, v15.y);
  CGContextAddLineToPoint(a3, v14.x, v14.y);
}

- (CGRect)p_tickmarkFrameFromElementSize:(CGSize)a3 location:(int)a4 tickLength:(double)a5
{
  v6 = a5 * 0.5;
  v7 = objc_msgSend_chartInfo(self, a2, 0.5, a3.height, a5);
  v12 = objc_msgSend_chartType(v7, v8, v9, v10, v11);
  started = objc_msgSend_supportsStartAngleRotation(v12, v13, v14, v15, v16);

  TSURectWithSize();
  v22 = v18;
  v23 = v19;
  Width = v20;
  if (a4 == 3)
  {
    if (started)
    {
      v23 = 0.0;
    }
  }

  else
  {
    v25 = v21;
    if (a4 == 2)
    {
      TSURectWithSize();
      TSUCenterRectOverRect();
      v22 = v30;
      Width = v31;
      if (started)
      {
        v23 = -v6;
      }

      else
      {
        v23 = v28;
      }

      v6 = v29;
    }

    else if (a4 == 1)
    {
      MinX = CGRectGetMinX(*&v18);
      v36.origin.x = v22;
      v36.origin.y = v23;
      v36.size.width = Width;
      v36.size.height = v25;
      v27 = CGRectGetHeight(v36) - v6;
      v37.origin.x = v22;
      v37.origin.y = v23;
      v37.size.width = Width;
      v37.size.height = v25;
      Width = CGRectGetWidth(v37);
      if (started)
      {
        v23 = -v6;
      }

      else
      {
        v23 = v27;
      }

      v22 = MinX;
    }

    else
    {
      v6 = v21;
    }
  }

  v32 = v22;
  v33 = v23;
  v34 = Width;
  v35 = v6;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)p_addLinearTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8
{
  v82 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v72 = self;
  v20 = objc_msgSend_axisLayoutItem(self, v16, v17, v18, v19);
  v25 = objc_msgSend_axisTickMarksLayoutItem(v20, v21, v22, v23, v24);
  v31 = objc_msgSend_intValueForProperty_defaultValue_(v13, v26, v27, v28, v29, 1061, 2);
  v33 = *(MEMORY[0x277CBF398] + 16);
  v80.origin = *MEMORY[0x277CBF398];
  v80.size = v33;
  v34 = *MEMORY[0x277CBF3A8];
  v79 = *MEMORY[0x277CBF3A8];
  memset(&v78, 0, sizeof(v78));
  if (v25)
  {
    objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v25, v30, 0.0, *&v34, v32, &v79, &v80);
  }

  if (!CGRectIsNull(v80))
  {
    objc_msgSend_p_tickmarkFrameFromElementSize_location_tickLength_(v72, v35, *&v79, *(&v79 + 1), a7, v31);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    CGContextSaveGState(a3);
    transform = v78;
    CGContextConcatCTM(a3, &transform);
    objc_msgSend_p_strokeWidthForRenderingTickmarks_(v72, v44, v45, v46, v47, v15);
    v49 = v48;
    v70 = v15;
    objc_msgSend_p_strokeCapForRenderingTickmarks_(v72, v50, v48, v51, v52, v15);
    v54 = v53;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v71 = v14;
    v55 = v14;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v57, v58, v59, &v73, v81, 16);
    if (v60)
    {
      v65 = v60;
      v66 = 0;
      v67 = *v74;
      v68 = v39 + v43;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v74 != v67)
          {
            objc_enumerationMutation(v55);
          }

          objc_msgSend_doubleValue(*(*(&v73 + 1) + 8 * i), v61, v62, v63, v64);
          if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            objc_msgSend_unitSpaceValueForDataSpaceValue_(v13, v61, v62, v63, v64);
            if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              objc_msgSend_p_renderTickmarkInContext_startPoint_endPoint_strokeWidth_strokeCap_(v72, v61, v37 + v62 * v41, v39, v37 + v62 * v41, a3, v54, v68, v49);
              ++v66;
              if (__ROR8__(0x8F5C28F5C28F5C29 * v66, 2) <= 0x28F5C28F5C28F5CuLL)
              {
                CGContextStrokePath(a3);
                CGContextBeginPath(a3);
              }
            }
          }
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v61, v62, v63, v64, &v73, v81, 16);
      }

      while (v65);
    }

    CGContextRestoreGState(a3);
    v15 = v70;
    v14 = v71;
  }
}

- (void)p_addPolarTickmarkPaths:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 width:(float)a6 isMinor:(BOOL)a7 includeFirstSpoke:(BOOL)a8 includeSpokesOtherThanTheFirst:(BOOL)a9 betweenSpokes:(BOOL)a10 unitCircleRadii:(id)a11 isRotated:(BOOL)a12
{
  v12 = a9;
  v13 = a8;
  v14 = a7;
  v135 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a5;
  v123 = a11;
  if (v14)
  {
    v24 = objc_msgSend_intValueForProperty_defaultValue_(v18, v20, v21, v22, v23, 1058, 0);
  }

  else
  {
    v24 = objc_msgSend_intValueForProperty_defaultValue_(v18, v20, v21, v22, v23, 1055, 0);
  }

  if (v24)
  {
    objc_msgSend_p_strokeWidthForRenderingTickmarks_(self, v25, v26, v27, v28, v19);
    v126 = v29;
    v118 = v19;
    objc_msgSend_p_strokeCapForRenderingTickmarks_(self, v30, v29, v31, v32, v19);
    v127 = v33;
    v37 = objc_msgSend_chartInfo(self, v34, v33, v35, v36);
    v116 = objc_msgSend_axisLayoutItem(self, v38, v39, v40, v41);
    v46 = objc_msgSend_root(v116, v42, v43, v44, v45);
    v51 = objc_msgSend_chartAreaLayoutItem(v46, v47, v48, v49, v50);
    objc_msgSend_chartBodyLayoutRect(v51, v52, v53, v54, v55);
    v57 = v56;
    v59 = v58;

    memset(&v133, 0, sizeof(v133));
    CGAffineTransformMakeScale(&v133, v57 * 0.5, v59 * 0.5);
    v119 = v18;
    v64 = objc_msgSend_intValueForProperty_defaultValue_(v18, v60, v61, v62, v63, 1061, 2);
    objc_msgSend_p_tickmarksStretchInside_(self, v65, v66, v67, v68, v64);
    objc_msgSend_p_tickmarksStretchOutside_(self, v69, -0.0, -0.5, v70, v64);
    if (a12)
    {
      v73 = -1.0;
    }

    else
    {
      v73 = 0.0;
    }

    v117 = v37;
    objc_msgSend_floatValueForProperty_defaultValue_(v37, v71, 0.0, v73, v72, 1109);
    v75 = v74;
    CGContextSaveGState(a3);
    v80 = objc_msgSend_model(self, v76, v77, v78, v79);
    v85 = objc_msgSend_numberOfGroupsInAllSeries(v80, v81, v82, v83, v84);

    v86 = !v13;
    if (v12)
    {
      v87 = v85;
    }

    else
    {
      v87 = 1;
    }

    if (a10)
    {
      v88 = 0.5;
    }

    else
    {
      v88 = 0.0;
    }

    v122 = v88;
    if (v87 > v86)
    {
      TSUCenterOfRect();
      v121 = 360.0 / v85;
      v120 = -(v75 + 90.0);
      do
      {
        memset(&v132, 0, sizeof(v132));
        CGAffineTransformMakeRotation(&v132, (v120 + (v122 + v86) * v121) * 0.0174532925);
        c = v132.c;
        d = v132.d;
        tx = v132.tx;
        ty = v132.ty;
        a = v133.a;
        v125 = v132.a;
        v94 = v133.c;
        v95 = v133.tx;
        b = v132.b;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v96 = v123;
        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, v98, v99, v100, &v128, v134, 16);
        if (v101)
        {
          v102 = v101;
          TSUNormalizePoint();
          TSUMultiplyPointScalar();
          TSUMultiplyPointScalar();
          v104 = a;
          v105 = (ty + b + d * 0.0) * v94 + a * (tx + v125 + c * 0.0);
          v106 = v95;
          v107 = *v129;
          do
          {
            for (i = 0; i != v102; ++i)
            {
              if (*v129 != v107)
              {
                objc_enumerationMutation(v96);
              }

              objc_msgSend_tsu_CGFloatValue(*(*(&v128 + 1) + 8 * i), v103, v105, v106, v104);
              v104 = v105;
              if (v86)
              {
                if (v105 == 0.0)
                {
                  continue;
                }

                v105 = fabs(v105);
                v106 = 0.00999999978;
                if (v105 < 0.00999999978)
                {
                  continue;
                }
              }

              TSUMultiplyPointScalar();
              TSUAddPoints();
              TSUAddPoints();
              v110 = v109;
              v112 = v111;
              TSUAddPoints();
              objc_msgSend_p_renderTickmarkInContext_startPoint_endPoint_strokeWidth_strokeCap_(self, v113, v110, v112, v114, a3, v127, v115, v126);
              CGContextStrokePath(a3);
              CGContextBeginPath(a3);
            }

            v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v103, v105, v106, v104, &v128, v134, 16);
          }

          while (v102);
        }

        ++v86;
      }

      while (v86 != v87);
    }

    CGContextRestoreGState(a3);

    v19 = v118;
    v18 = v119;
  }
}

- (void)p_addPolarRadiusTickmarkPaths:(CGContext *)a3 axis:(id)a4 absoluteRadii:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8 includeFirstSpoke:(BOOL)a9 includeSpokesOtherThanTheFirst:(BOOL)a10
{
  v10 = a9;
  v11 = a8;
  v17 = a6;
  v18 = a4;
  v29 = objc_msgSend_unitSpaceValuesForDataSpaceValues_(v18, v19, v20, v21, v22, a5);
  v28 = 1;
  v27 = 0;
  *&v23 = a7;
  objc_msgSend_p_addPolarTickmarkPaths_axis_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_betweenSpokes_unitCircleRadii_isRotated_(self, v24, v23, v25, v26, a3, v18, v17, v11, v10, a10, v27, v29, v28);
}

- (void)p_addPolarAngleTickmarkPaths:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 width:(float)a6 isMinor:(BOOL)a7 includeFirstSpoke:(BOOL)a8 includeSpokesOtherThanTheFirst:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v11 = a7;
  v54[1] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a4;
  v22 = objc_msgSend_model(self, v18, v19, v20, v21);
  v27 = objc_msgSend_numberOfGroupsInAllSeries(v22, v23, v24, v25, v26);

  v28 = cos(3.14159265 / v27);
  v32 = objc_msgSend_chartInfo(self, v29, v28, v30, v31);
  v37 = objc_msgSend_intValueForProperty_defaultValue_(v32, v33, v34, v35, v36, 1108, 0) == 0;

  v41 = 1.0;
  if (v11 && v37)
  {
    v41 = v28;
  }

  v42 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v38, v41, v39, v40);
  v54[0] = v42;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v44, v45, v46, v54, 1);
  v53 = 0;
  v52 = v11;
  *&v48 = a6;
  objc_msgSend_p_addPolarTickmarkPaths_axis_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_betweenSpokes_unitCircleRadii_isRotated_(self, v49, v48, v50, v51, a3, v17, v16, v11, v10, v9, v52, v47, v53);
}

- (void)p_addTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8
{
  v8 = a8;
  v65 = a4;
  v14 = a5;
  v15 = a6;
  v20 = objc_msgSend_axisLayoutItem(self, v16, v17, v18, v19);
  v25 = objc_msgSend_axisTickMarksLayoutItem(v20, v21, v22, v23, v24);
  v30 = v25;
  if (v15 && v25 && objc_msgSend_shouldRender(v15, v26, v27, v28, v29))
  {

    if (a7 > 0.0)
    {
      v35 = objc_msgSend_axisID(v65, v31, v32, v33, v34);
      v40 = objc_msgSend_type(v35, v36, v37, v38, v39);

      if (v40 == 5)
      {
        v55 = objc_msgSend_chartInfo(self, v41, v42, v43, v44);
        v60 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v56, v57, v58, v59, v65, v55);

        if (v60)
        {
          *&v62 = a7;
          objc_msgSend_p_addPolarRadiusTickmarkPaths_axis_absoluteRadii_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, v61, v62, v63, v64, a3, v65, v14, v15, v8, 1, 0);
        }
      }

      else if (v40 == 6)
      {
        if (!v8)
        {
          v45 = objc_msgSend_chartInfo(self, v41, v42, v43, v44);
          v50 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v46, v47, v48, v49, v65, v45);

          if (v50)
          {
            *&v52 = a7;
            objc_msgSend_p_addPolarAngleTickmarkPaths_axis_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, v51, v52, v53, v54, a3, v65, v15, 0, 1, 0);
          }
        }
      }

      else
      {
        *&v42 = a7;
        objc_msgSend_p_addLinearTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v41, v42, v43, v44, a3, v65, v14, v15, v8);
      }
    }
  }

  else
  {
  }
}

- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5
{
  v8 = objc_msgSend_p_needsPositionBasedTransparencyLayer(self, a2, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height);
  v17 = a3 == 0x7FFFFFFF;
  if (objc_msgSend_p_needsSharedTickMarkLayer(self, v9, v10, v11, v12))
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  if (v8)
  {
    v19 = objc_msgSend_axisLayoutItem(self, v13, v14, v15, v16);
    v24 = objc_msgSend_axisPosition(v19, v20, v21, v22, v23);
    v17 = sub_2762A5ADC(v24) == a3;
  }

  if (v18 == a3)
  {
    v25 = objc_msgSend_axisLayoutItem(self, v13, v14, v15, v16);
    v30 = objc_msgSend_axisTickMarksLayoutItem(v25, v26, v27, v28, v29);
    v35 = objc_msgSend_model(self, v31, v32, v33, v34);
    v40 = objc_msgSend_axisID(v25, v36, v37, v38, v39);
    v45 = objc_msgSend_axisForID_(v35, v41, v42, v43, v44, v40);

    v50 = objc_msgSend_chartInfo(self, v46, v47, v48, v49);
    v55 = objc_msgSend_objectValueForProperty_(v50, v51, v52, v53, v54, 1080);
    v60 = v55;
    if (v55 && objc_msgSend_shouldRender(v55, v56, v57, v58, v59))
    {
      v116 = v30;
      LODWORD(v62) = 1.0;
      objc_msgSend_floatValueForProperty_defaultValue_(v50, v61, v62, v63, v64, 1078);
      v66 = v65;
      CGContextSaveGState(a4);
      CGContextSetBlendMode(a4, kCGBlendModeCopy);
      CGContextSetAlpha(a4, v66);
      CGContextBeginPath(a4);
      objc_msgSend_applyToContext_(v60, v67, v68, v69, v70, a4);
      if (!objc_msgSend_cap(v60, v71, v72, v73, v74))
      {
        CGContextSetLineCap(a4, kCGLineCapSquare);
      }

      v79 = objc_msgSend_chartInfo(self, v75, v76, v77, v78);
      v84 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v80, v81, v82, v83, v45, v79);

      v90 = objc_msgSend_intValueForProperty_defaultValue_(v45, v85, v86, v87, v88, 1055, 0);
      if (v84)
      {
        objc_msgSend_p_addLinePath_stroke_(self, v89, v91, v92, v93, a4, v60);
      }

      v30 = v116;
      if (v90)
      {
        v94 = objc_msgSend_majorGridLocations(v45, v89, v91, v92, v93);
        objc_msgSend_majorTickmarkLength(v116, v95, v96, v97, v98);
        objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v99, v100, v101, v102, a4, v45, v94, v60, 0);

        v107 = objc_msgSend_minorGridLocations(v45, v103, v104, v105, v106);
        objc_msgSend_minorTickmarkLength(v116, v108, v109, v110, v111);
        objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v112, v113, v114, v115, a4, v45, v107, v60, 1);
      }

      CGContextStrokePath(a4);
      CGContextRestoreGState(a4);
    }
  }

  if (v17)
  {

    objc_msgSend_p_drawTitle_rangePtr_(self, v13, v14, v15, v16, a4, 0);
  }
}

- (BOOL)canRenderSelectionPath:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_axisLayoutItem(self, v5, v6, v7, v8);
  v14 = objc_msgSend_axisID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_type(v4, v15, v16, v17, v18);
  if (objc_msgSend_isEqual_(v19, v20, v21, v22, v23, @"text"))
  {
    v28 = objc_msgSend_name(v4, v24, v25, v26, v27);
    if (objc_msgSend_isEqual_(v28, v29, v30, v31, v32, @"axisTitle"))
    {
      v37 = objc_msgSend_argumentAtIndex_(v4, v33, v34, v35, v36, 0);
      isEqual = objc_msgSend_isEqual_(v37, v38, v39, v40, v41, v14);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)renderIntoContext:(CGContext *)a3 selection:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_firstPath(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_axisLayoutItem(self, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_type(v11, v22, v23, v24, v25);
  if ((objc_msgSend_isEqual_(v26, v27, v28, v29, v30, @"text") & 1) == 0)
  {
    goto LABEL_6;
  }

  v35 = objc_msgSend_name(v11, v31, v32, v33, v34);
  if ((objc_msgSend_isEqual_(v35, v36, v37, v38, v39, @"axisTitle") & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v44 = objc_msgSend_argumentAtIndex_(v11, v40, v41, v42, v43, 0);
  isEqual = objc_msgSend_isEqual_(v44, v45, v46, v47, v48, v21);

  if (isEqual)
  {
    v58[0] = objc_msgSend_range(v6, v50, v51, v52, v53);
    v58[1] = v54;
    objc_msgSend_p_drawTitle_rangePtr_(self, v54, v55, v56, v57, a3, v58);
  }

LABEL_7:
}

- (BOOL)p_isTitleVisible
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_axisID(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_axisForID_(v10, v16, v17, v18, v19, v15);
  v25 = objc_msgSend_intValueForProperty_defaultValue_(v20, v21, v22, v23, v24, 1060, 0) != 0;

  return v25;
}

- (void)addSelection:(id)a3 toCGPath:(CGPath *)a4 useWrapWidth:(BOOL)a5
{
  v6 = a3;
  v11 = objc_msgSend_path(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_axisTitleSelectionPath(self, v12, v13, v14, v15);
  if (objc_msgSend_isEqual_(v11, v17, v18, v19, v20, v16))
  {
    isTitleVisible = objc_msgSend_p_isTitleVisible(self, v21, v22, v23, v24);

    if (isTitleVisible)
    {
      v30 = objc_msgSend_axisLayoutItem(self, v26, v27, v28, v29);
      v35 = objc_msgSend_axisTitleLayoutItem(v30, v31, v32, v33, v34);
      v36 = *(MEMORY[0x277CBF398] + 16);
      v47.origin = *MEMORY[0x277CBF398];
      v47.size = v36;
      v37 = MEMORY[0x277CBF3A8];
      v46 = *MEMORY[0x277CBF3A8];
      v40 = objc_msgSend_range(v6, v38, 0.0, *&v46, v39, 0, 0, 0, 0, 0, 0);
      if (v35)
      {
        objc_msgSend_transformForRenderingRange_outElementSize_outClipRect_(v35, v41, v42, v43, v44, v40, v41, &v46, &v47);
      }

      if (!CGRectIsNull(v47) && (*v37 != *&v46 || v37[1] != *(&v46 + 1)))
      {
        TSURectWithSize();
        CGPathAddRectSafe();
      }
    }
  }

  else
  {
  }
}

- (BOOL)canEditTextForSelectionPath:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_axisTitleSelectionPath(self, v5, v6, v7, v8);
  if (!objc_msgSend_isEqual_(v4, v10, v11, v12, v13, v9))
  {

    goto LABEL_5;
  }

  isTitleVisible = objc_msgSend_p_isTitleVisible(self, v14, v15, v16, v17);

  if (!isTitleVisible)
  {
LABEL_5:
    v29.receiver = self;
    v29.super_class = TSCHChartAxisRenderer;
    v27 = [(TSCHRenderer *)&v29 canEditTextForSelectionPath:v4];
    goto LABEL_6;
  }

  objc_msgSend_frameForEditingTextForSelectionPath_(self, v19, v20, v21, v22, v4);
  self->_startingEditingFrame.origin.x = v23;
  self->_startingEditingFrame.origin.y = v24;
  self->_startingEditingFrame.size.width = v25;
  self->_startingEditingFrame.size.height = v26;
  v27 = 1;
LABEL_6:

  return v27;
}

- (CGRect)frameForEditingTextForSelectionPath:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_axisTitleSelectionPath(self, v5, v6, v7, v8);
  isEqual = objc_msgSend_isEqual_(v4, v10, v11, v12, v13, v9);

  if (isEqual)
  {
    v19 = MEMORY[0x277CBF398];
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v24 = objc_msgSend_axisLayoutItem(self, v15, v16, v17, v18);
    v29 = objc_msgSend_axisID(v24, v25, v26, v27, v28);
    v34 = objc_msgSend_model(self, v30, v31, v32, v33);
    v39 = objc_msgSend_axisForID_(v34, v35, v36, v37, v38, v29);

    v45 = objc_msgSend_axisTitleLayoutItem(v24, v40, v41, v42, v43);
    if (v45)
    {
      if (objc_msgSend_intValueForProperty_defaultValue_(v39, v44, v46, v47, v48, 1060, 0))
      {
        v82 = *MEMORY[0x277CBF3A8];
        v51 = *(v19 + 16);
        v81.origin = *v19;
        v81.size = v51;
        memset(&v80, 0, sizeof(v80));
        objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v45, v49, 0.0, v51.width, v50, &v82, &v81);
        if (!CGRectIsNull(v81))
        {
          v56 = objc_msgSend_axisPosition(v24, v52, v53, v54, v55);
          v57 = v56;
          if (v56 == 4 || v56 == 2)
          {
            TSURectWithSize();
            v79 = v80;
            v84 = CGRectApplyAffineTransform(v83, &v79);
            x = v84.origin.x;
            y = v84.origin.y;
            width = v84.size.width;
            height = v84.size.height;
            if (v57 == 4)
            {
              v58 = self->_startingEditingFrame.size.height;
              v59 = v84.size.height == v58;
              v60 = v84.origin.y + v84.size.height - v58;
              if (!v59)
              {
                y = v60;
              }
            }
          }

          else
          {
            TSURectWithSize();
            v79 = v80;
            v86 = CGRectApplyAffineTransform(v85, &v79);
            v69 = v86.origin.x;
            v70 = v86.origin.y;
            v71 = v86.size.width;
            v72 = v86.size.height;
            CGRectGetMinX(v86);
            v87.origin.x = v69;
            v87.origin.y = v70;
            v87.size.width = v71;
            v87.size.height = v72;
            CGRectGetMidY(v87);
            v88.origin.x = v69;
            v88.origin.y = v70;
            v88.size.width = v71;
            v88.size.height = v72;
            CGRectGetWidth(v88);
            TSURectWithCenterAndSize();
            x = v74;
            y = v75;
            width = v76;
            height = v73;
            v77 = self->_startingEditingFrame.size.height;
            if (v73 != v77)
            {
              if (v57 == 3)
              {
                x = x + v73 - v77;
              }

              else if (v57 == 1)
              {
                x = x - (v73 - v77);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v78.receiver = self;
    v78.super_class = TSCHChartAxisRenderer;
    [(TSCHRenderer *)&v78 frameForEditingTextForSelectionPath:v4];
    x = v61;
    y = v62;
    width = v63;
    height = v64;
  }

  v65 = x;
  v66 = y;
  v67 = width;
  v68 = height;
  result.size.height = v68;
  result.size.width = v67;
  result.origin.y = v66;
  result.origin.x = v65;
  return result;
}

@end