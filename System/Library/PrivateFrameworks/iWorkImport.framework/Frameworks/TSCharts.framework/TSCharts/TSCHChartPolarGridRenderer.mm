@interface TSCHChartPolarGridRenderer
- (BOOL)p_polarAxisIsEnabled:(int)enabled;
- (CGPath)p_polarAxisShapePathWithRect:(CGRect)rect unitSpaceValue:(double)value numberOfValues:(unint64_t)values;
- (CGRect)p_frame;
- (double)p_rotationInRadians;
- (void)p_debugRenderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)p_drawFillWithContext:(CGContext *)context fill:(id)fill frameToDraw:(CGRect)draw;
- (void)p_renderGridlinesWithContext:(CGContext *)context axis:(id)axis stroke:(id)stroke locations:(id)locations frame:(CGRect)frame;
@end

@implementation TSCHChartPolarGridRenderer

- (BOOL)p_polarAxisIsEnabled:(int)enabled
{
  v6 = *&enabled;
  v8 = objc_msgSend_model(self, a2, v3, v4, v5);
  v9 = [TSCHChartAxisID alloc];
  v14 = objc_msgSend_initWithType_ordinal_(v9, v10, v11, v12, v13, v6, 0);
  v19 = objc_msgSend_axisForID_(v8, v15, v16, v17, v18, v14);

  v24 = objc_msgSend_chartInfo(self, v20, v21, v22, v23);
  LOBYTE(v14) = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v25, v26, v27, v28, v19, v24);

  return v14;
}

- (double)p_rotationInRadians
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  objc_msgSend_floatValueForProperty_defaultValue_(v5, v6, 0.0, v7, v8, 1109);
  v10 = v9 * -0.0174532925;

  return v10;
}

- (CGPath)p_polarAxisShapePathWithRect:(CGRect)rect unitSpaceValue:(double)value numberOfValues:(unint64_t)values
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = objc_msgSend_chartInfo(self, a2, rect.origin.x, rect.origin.y, rect.size.width);
  v17 = objc_msgSend_intValueForProperty_defaultValue_(v12, v13, v14, v15, v16, 1108, 0) != 0;

  objc_msgSend_p_rotationInRadians(self, v18, v19, v20, v21);

  return objc_msgSend_newPolarAxisShapePathWithRect_unitSpaceValue_numberOfValues_elliptical_rotation_(TSCHRenderUtilities, v22, x, y, width, values, v17, height, value, v23);
}

- (CGRect)p_frame
{
  v5 = objc_msgSend_layoutItem(self, a2, v2, v3, v4);
  v6 = TSUCheckedProtocolCast();

  objc_msgSend_rootedBaseLayoutRect(v6, v7, v8, v9, v10, &unk_2885B6F88);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)p_renderGridlinesWithContext:(CGContext *)context axis:(id)axis stroke:(id)stroke locations:(id)locations frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  axisCopy = axis;
  locationsCopy = locations;
  v19 = objc_msgSend_chartInfo(self, v15, v16, v17, v18);
  v24 = objc_msgSend_model(axisCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_numberOfGroupsInAllSeries(v24, v25, v26, v27, v28);

  v34 = objc_msgSend_axisID(axisCopy, v30, v31, v32, v33);
  v39 = objc_msgSend_type(v34, v35, v36, v37, v38);

  if (v39 == 5)
  {
    if (objc_msgSend_count(locationsCopy, v40, v41, v42, v43))
    {
      v48 = 0;
      while (1)
      {
        v49 = objc_msgSend_objectAtIndexedSubscript_(locationsCopy, v44, v45, v46, v47, v48);
        objc_msgSend_doubleValue(v49, v50, v51, v52, v53);
        v55 = v54;
        v56 = v54;

        if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }

        objc_msgSend_unitSpaceValueForDataSpaceValue_(axisCopy, v57, v55, v59, v60);
        v61 = v58;
        if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }

        if (v58 != 1.0)
        {
          break;
        }

        if ((objc_msgSend_p_polarAxisIsEnabled_(self, v57, v58, v59, v60, 6) & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (++v48 >= objc_msgSend_count(locationsCopy, v57, v58, v59, v60))
        {
          goto LABEL_24;
        }
      }

      if (v58 <= 0.0)
      {
        goto LABEL_9;
      }

LABEL_8:
      v62 = objc_msgSend_p_polarAxisShapePathWithRect_unitSpaceValue_numberOfValues_(self, v57, x, y, width, v29, height, v61);
      CGContextBeginPath(context);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
      CGPathRelease(v62);
      goto LABEL_9;
    }
  }

  else
  {
    v63 = objc_msgSend_axisID(axisCopy, v40, v41, v42, v43);
    v68 = objc_msgSend_type(v63, v64, v65, v66, v67);

    if (v68 != 6)
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "[TSCHChartPolarGridRenderer p_renderGridlinesWithContext:axis:stroke:locations:frame:]");
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGridRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v80, v81, v82, v83, v74, v79, 331, 0, "Expected a polar angle axis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
    }

    if (objc_msgSend_intValueForProperty_defaultValue_(axisCopy, v69, v70, v71, v72, 1050, 0))
    {
      objc_msgSend_floatValueForProperty_defaultValue_(axisCopy, v88, 0.0, v89, v90, 1033);
    }

    TSUCenterOfRect();
    v92 = v91;
    v94 = v93;
    CGContextBeginPath(context);
    v99 = objc_msgSend_model(self, v95, v96, v97, v98);
    v104 = objc_msgSend_numberOfGroupsInAllSeries(v99, v100, v101, v102, v103);

    if (v104)
    {
      v107 = 0;
      v108 = 360.0;
      do
      {
        v109 = 360.0 / v104;
        if (v109 * v107 != 0.0 || (objc_msgSend_p_polarAxisIsEnabled_(self, v105, v107, v108, v106, 5) & 1) == 0)
        {
          objc_msgSend_outerEndOfSpokeWithUnitCircleOffsetAngleInDegrees_chartBodySize_chartInfo_(TSCHRenderUtilities, v105, v109 * v107, width, height, v19);
          TSUMultiplyPointScalar();
          TSUAddPoints();
          v111 = v110;
          v113 = v112;
          CGContextMoveToPoint(context, v92, v94);
          CGContextAddLineToPoint(context, v111, v113);
        }

        ++v107;
      }

      while (v104 != v107);
    }

    CGContextStrokePath(context);
  }

LABEL_24:
}

- (void)p_drawFillWithContext:(CGContext *)context fill:(id)fill frameToDraw:(CGRect)draw
{
  height = draw.size.height;
  width = draw.size.width;
  y = draw.origin.y;
  x = draw.origin.x;
  fillCopy = fill;
  v16 = objc_msgSend_model(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfGroupsInAllSeries(v16, v17, v18, v19, v20);
  v23 = objc_msgSend_p_polarAxisShapePathWithRect_unitSpaceValue_numberOfValues_(self, v22, x, y, width, v21, height, 1.0);

  objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v24, v25, v26, v27, fillCopy, context, v23);

  CGPathRelease(v23);
}

- (void)p_debugRenderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  v6 = objc_msgSend_layoutItem(self, a2, visible.origin.x, visible.origin.y, visible.size.width, visible.size.height);
  objc_msgSend_rootedLayoutRect(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v19, v11, v13, v15);
  objc_msgSend_debugRenderLayoutRect_inContext_withColor_alpha_fillRect_(TSCHRenderUtilities, v21, v12, v14, v16, context, v20, 1, v18, 0.4);

  objc_msgSend_p_frame(self, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v36 = objc_msgSend_greenColor(MEMORY[0x277D81180], v34, v26, v28, v30);
  objc_msgSend_debugRenderLayoutRect_inContext_withColor_alpha_fillRect_(TSCHRenderUtilities, v35, v27, v29, v31, context, v36, 1, v33, 0.4);
}

@end