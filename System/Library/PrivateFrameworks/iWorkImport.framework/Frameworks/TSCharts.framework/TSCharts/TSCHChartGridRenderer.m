@interface TSCHChartGridRenderer
- (CGRect)p_frame;
- (id)allRenderingFills;
- (id)p_majorLocationsWithAxis:(id)a3;
- (void)p_debugRenderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_renderBackground:(CGContext *)a3 style:(id)a4;
- (void)p_renderGridlines:(CGContext *)a3 axis:(id)a4 locations:(id)a5 showProperty:(int)a6 strokeProperty:(int)a7 shadowProperty:(int)a8 opacityProperty:(int)a9;
- (void)p_renderGridlinesWithContext:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 locations:(id)a6 frame:(CGRect)a7;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
@end

@implementation TSCHChartGridRenderer

- (CGRect)p_frame
{
  v5 = objc_msgSend_layoutItem(self, a2, v2, v3, v4);
  objc_msgSend_rootedLayoutRect(v5, v6, v7, v8, v9);
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

- (id)p_majorLocationsWithAxis:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_majorGridLocations(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_arrayWithArray_(v5, v11, v12, v13, v14, v10);

  v20 = objc_msgSend_intValueForProperty_defaultValue_(v4, v16, v17, v18, v19, 1054, 0);
  v25 = objc_msgSend_chartInfo(self, v21, v22, v23, v24);
  v30 = objc_msgSend_intValueForProperty_defaultValue_(v25, v26, v27, v28, v29, 1112, 0);
  v31 = v30 != 0;

  if (v20)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v36 = objc_msgSend_model(self, v32, 0.0, v34, v35);
    v41 = objc_msgSend_axisList(v36, v37, v38, v39, v40);

    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, &v90, v94, 16);
    if (v46)
    {
      v51 = v46;
      v88 = 0;
      v89 = v30 != 0;
      v52 = *v91;
      v87 = v30 != 0;
      do
      {
        v53 = 0;
        do
        {
          if (*v91 != v52)
          {
            objc_enumerationMutation(v41);
          }

          v54 = *(*(&v90 + 1) + 8 * v53);
          objc_msgSend_interceptForAxis_(v4, v47, v48, v49, v50, v54);
          v56 = v55;
          objc_msgSend_min(v4, v57, v55, v58, v59);
          if (v56 > v48)
          {
            objc_msgSend_max(v4, v47, v48, v49, v50);
            if (v56 < v48)
            {
              v60 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v47, v56, v49, v50);
              if ((objc_msgSend_containsObject_(v15, v61, v62, v63, v64, v60) & 1) == 0)
              {
                objc_msgSend_addObject_(v15, v65, v66, v67, v68, v60);
                v88 = 1;
              }
            }
          }

          if (!v30 && objc_msgSend_intValueForProperty_defaultValue_(v54, v47, v48, v49, v50, 1049, 0))
          {
            v69 = objc_msgSend_axisID(v54, v47, v48, v49, v50);
            v74 = objc_msgSend_ordinal(v69, v70, v71, v72, v73);

            if (v74)
            {
              v75 = objc_msgSend_axisID(v54, v47, v48, v49, v50);
              v80 = objc_msgSend_ordinal(v75, v76, v77, v78, v79) == 1;

              v89 |= v80;
            }

            else
            {
              v87 = 1;
            }
          }

          ++v53;
        }

        while (v51 != v53);
        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v47, v48, v49, v50, &v90, v94, 16);
        v51 = v81;
      }

      while (v81);

      if (v88)
      {
        objc_msgSend_sortUsingSelector_(v15, v32, v33, v34, v35, sel_compare_);
      }

      v31 = v89;
      if (!v87)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (!v30)
      {
        goto LABEL_33;
      }

      v31 = 1;
    }

    goto LABEL_28;
  }

  if (v30)
  {
LABEL_28:
    if (objc_msgSend_count(v15, v32, v33, v34, v35))
    {
      objc_msgSend_removeObjectAtIndex_(v15, v32, v33, v34, v35, 0);
    }
  }

LABEL_30:
  if (v31 && objc_msgSend_count(v15, v32, v33, v34, v35))
  {
    objc_msgSend_removeLastObject(v15, v82, v83, v84, v85);
  }

LABEL_33:

  return v15;
}

- (void)p_renderGridlinesWithContext:(CGContext *)a3 axis:(id)a4 stroke:(id)a5 locations:(id)a6 frame:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20 = objc_msgSend_axisID(v13, v16, v17, v18, v19);
  v25 = objc_msgSend_type(v20, v21, v22, v23, v24);

  v30 = 0.0;
  if (v14 && objc_msgSend_shouldRender(v14, v26, v27, v28, v29))
  {
    objc_msgSend_width(v14, v26, v27, v28, v29);
    v30 = v27;
  }

  if (objc_msgSend_count(v15, v26, v27, v28, v29))
  {
    v34 = 0;
    v35 = height;
    v36 = y + height;
    do
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(v15, v31, v35, v32, v33, v34);
      objc_msgSend_doubleValue(v37, v38, v39, v40, v41);
      v43 = v42;
      v44 = v42;

      if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        objc_msgSend_unitSpaceValueForDataSpaceValue_(v13, v45, v43, v47, v48);
        v49 = v46;
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          objc_msgSend_min(v13, v45, v46, v47, v48);
          v51 = v50;
          objc_msgSend_max(v13, v52, v50, v53, v54);
          if (v51 == v56)
          {
            v59 = objc_msgSend_count(v15, v55, v56, v57, v58);
            v49 = 0.0;
            if (v59 >= 2)
            {
              v49 = v34 / (v59 - 1);
            }
          }

          v60 = v36 - v49 * height;
          v61 = x + v49 * width;
          if (v25 == 2)
          {
            v62 = x;
          }

          else
          {
            v62 = x + v49 * width;
          }

          if (v25 == 2)
          {
            v63 = v36 - v49 * height;
          }

          else
          {
            v63 = y;
          }

          v67 = v62;
          v68 = v63;
          if (v25 == 2)
          {
            v61 = x + width;
          }

          else
          {
            v60 = y + height;
          }

          v65 = v61;
          v66 = v60;
          sub_27628C654(a3, &v67, &v65, 0, v30);
          CGContextBeginPath(a3);
          CGContextMoveToPoint(a3, v67, v68);
          CGContextAddLineToPoint(a3, v65, v66);
          CGContextStrokePath(a3);
        }
      }

      ++v34;
    }

    while (v34 < objc_msgSend_count(v15, v45, v46, v47, v48));
  }
}

- (void)p_debugRenderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  objc_msgSend_p_frame(self, a2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_greenColor(MEMORY[0x277D81180], v13, v5, v7, v9);
  objc_msgSend_debugRenderLayoutRect_inContext_withColor_alpha_fillRect_(TSCHRenderUtilities, v14, v6, v8, v10, a3, v15, 1, v12, 0.4);
}

- (void)p_renderBackground:(CGContext *)a3 style:(id)a4
{
  v6 = a4;
  objc_msgSend_p_frame(self, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v35 = objc_msgSend_objectValueForProperty_(v6, v19, v11, v13, v15, 1101);
  LODWORD(v20) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v6, v21, v20, v22, v23, 1102);
  v25 = v24;

  sub_27628CB34(a3, v12, v14, v16, v18, 0.0);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  CGContextSaveGState(a3);
  CGContextSetAlpha(a3, v25);
  objc_msgSend_p_drawFillWithContext_fill_frameToDraw_(self, v34, v27, v29, v31, a3, v35, v33);
  CGContextRestoreGState(a3);
}

- (void)p_renderGridlines:(CGContext *)a3 axis:(id)a4 locations:(id)a5 showProperty:(int)a6 strokeProperty:(int)a7 shadowProperty:(int)a8 opacityProperty:(int)a9
{
  v9 = *&a8;
  v10 = *&a7;
  v11 = *&a6;
  v90 = a4;
  v15 = a5;
  if (objc_msgSend_intValueForProperty_defaultValue_(v90, v16, v17, v18, v19, v11, 0))
  {
    v24 = objc_msgSend_objectValueForProperty_(v90, v20, v21, v22, v23, v10);
    v29 = v24;
    if (v24)
    {
      if (objc_msgSend_shouldRender(v24, v25, v26, v27, v28))
      {
        if (TSDCGContextHasBackgroundsSuppressed())
        {
          v34 = 0;
          v35 = v90;
        }

        else
        {
          v51 = objc_msgSend_objectValueForProperty_(v90, v30, v31, v32, v33, v9);
          v35 = v90;
          v34 = v51;
        }

        LODWORD(v31) = 1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(v35, v35, v31, v32, v33, a9);
        v53 = v52;
        CGContextSaveGState(a3);
        CGContextSetAlpha(a3, v53);
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v54, v55, v56, v57, v34) && (objc_msgSend_chartRep(self, v58, v59, v60, v61), v62 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend_shadowsEnabled(v62, v63, v64, v65, v66), v62, v67))
        {
          objc_msgSend_tLayerRectForContext_(self, v58, v59, v60, v61, a3);
          CGContextBeginTransparencyLayerWithRect(a3, v92, 0);
          objc_msgSend_viewScale(self, v68, v69, v70, v71);
          v73 = v72;
          v77 = sub_27631FD2C(a3, v74, v72, v75, v76);
          objc_msgSend_applyToContext_viewScale_flipped_(v34, v78, v73, v79, v80, a3, v77);
          v81 = 1;
        }

        else
        {
          v81 = 0;
        }

        objc_msgSend_applyToContext_(v29, v58, v59, v60, v61, a3);
        objc_msgSend_p_frame(self, v82, v83, v84, v85);
        objc_msgSend_p_renderGridlinesWithContext_axis_stroke_locations_frame_(self, v86, v87, v88, v89, a3, v90, v29, v15);
        if (v81)
        {
          CGContextEndTransparencyLayer(a3);
        }

        CGContextRestoreGState(a3);
      }
    }

    else
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartGridRenderer p_renderGridlines:axis:locations:showProperty:strokeProperty:shadowProperty:opacityProperty:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGridRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 189, 0, "invalid nil value for '%{public}s'", "stroke");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }
  }
}

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_chartRep(self, a2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v11 = objc_msgSend_renderGrid(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
    objc_msgSend_p_renderBackground_style_(self, v17, v18, v19, v20, a3, v16);

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v24 = objc_msgSend_model(self, v21, 0.0, v22, v23);
    v29 = objc_msgSend_axisList(v24, v25, v26, v27, v28);

    obj = v29;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v31, v32, v33, &v60, v64, 16);
    if (v34)
    {
      v39 = v34;
      v40 = *v61;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v60 + 1) + 8 * i);
          v43 = objc_msgSend_p_majorLocationsWithAxis_(self, v35, v36, v37, v38, v42);
          LODWORD(v57) = 1036;
          objc_msgSend_p_renderGridlines_axis_locations_showProperty_strokeProperty_shadowProperty_opacityProperty_(self, v44, v45, v46, v47, a3, v42, v43, 1054, 1038, 1037, v57);
          v52 = objc_msgSend_minorGridLocations(v42, v48, v49, v50, v51);
          LODWORD(v58) = 1039;
          objc_msgSend_p_renderGridlines_axis_locations_showProperty_strokeProperty_shadowProperty_opacityProperty_(self, v53, v54, v55, v56, a3, v42, v52, 1057, 1041, 1040, v58);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, v36, v37, v38, &v60, v64, 16);
      }

      while (v39);
    }
  }
}

- (id)allRenderingFills
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_objectValueForProperty_(v8, v9, v10, v11, v12, 1101);

  if (v13)
  {
    objc_msgSend_addObject_(v3, v14, v15, v16, v17, v13);
  }

  v18 = objc_msgSend_copy(v3, v14, v15, v16, v17);

  return v18;
}

@end