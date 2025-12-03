@interface TSCHChartPolarAngleGridlineAxisRenderer
- (void)drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible;
- (void)p_addTickmarkPaths:(CGContext *)paths axis:(id)axis locations:(id)locations stroke:(id)stroke width:(float)width isMinor:(BOOL)minor;
@end

@implementation TSCHChartPolarAngleGridlineAxisRenderer

- (void)p_addTickmarkPaths:(CGContext *)paths axis:(id)axis locations:(id)locations stroke:(id)stroke width:(float)width isMinor:(BOOL)minor
{
  minorCopy = minor;
  axisCopy = axis;
  strokeCopy = stroke;
  v18 = objc_msgSend_axisLayoutItem(self, v14, v15, v16, v17);
  v24 = objc_msgSend_axisTickMarksLayoutItem(v18, v19, v20, v21, v22);
  if (v24 && objc_msgSend_shouldRender(strokeCopy, v23, v25, v26, v27))
  {

    if (width > 0.0)
    {
      v31 = axisCopy;
      if (!minorCopy)
      {
        v32 = objc_msgSend_chartInfo(self, axisCopy, v28, v29, v30);
        v37 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v33, v34, v35, v36, axisCopy, v32);

        v31 = axisCopy;
        if ((v37 & 1) == 0)
        {
          *&v28 = width;
          objc_msgSend_p_addPolarAngleTickmarkPaths_axis_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, axisCopy, v28, v29, v30, paths, axisCopy, strokeCopy, 0, 1, 0);
          v31 = axisCopy;
        }
      }

      if (objc_msgSend_intValueForProperty_defaultValue_(v31, v31, v28, v29, v30, 1051, 0))
      {
        *&v39 = width;
        objc_msgSend_p_addPolarAngleTickmarkPaths_axis_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, v38, v39, v40, v41, paths, axisCopy, strokeCopy, minorCopy, minorCopy, 1);
      }
    }
  }

  else
  {
  }
}

- (void)drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible
{
  v111 = objc_msgSend_axisLayoutItem(self, a2, visible.origin.x, visible.origin.y, visible.size.width, *&layer, visible.size.height);
  v11 = objc_msgSend_axisTickMarksLayoutItem(v111, v7, v8, v9, v10);
  v16 = objc_msgSend_model(self, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v111, v17, v18, v19, v20);
  v26 = objc_msgSend_axisForID_(v16, v22, v23, v24, v25, v21);

  v31 = objc_msgSend_axisID(v26, v27, v28, v29, v30);
  LODWORD(v21) = objc_msgSend_type(v31, v32, v33, v34, v35);

  if (v21 == 6)
  {
    v40 = objc_msgSend_chartInfo(self, v36, v37, v38, v39);
    v45 = objc_msgSend_intValueForProperty_defaultValue_(v26, v41, v42, v43, v44, 1055, 0);
    v50 = objc_msgSend_objectValueForProperty_(v40, v46, v47, v48, v49, 1080);
    v55 = v50;
    if (v45 && objc_msgSend_shouldRender(v50, v51, v52, v53, v54))
    {
      LODWORD(v57) = 1.0;
      objc_msgSend_floatValueForProperty_defaultValue_(v40, v56, v57, v58, v59, 1078);
      v61 = v60;
      CGContextSaveGState(context);
      CGContextSetBlendMode(context, kCGBlendModeCopy);
      CGContextSetAlpha(context, v61);
      CGContextBeginPath(context);
      objc_msgSend_applyToContext_(v55, v62, v63, v64, v65, context);
      if (!objc_msgSend_cap(v55, v66, v67, v68, v69))
      {
        CGContextSetLineCap(context, kCGLineCapSquare);
      }

      v74 = objc_msgSend_majorGridLocations(v26, v70, v71, v72, v73);
      objc_msgSend_majorTickmarkLength(v11, v75, v76, v77, v78);
      objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v79, v80, v81, v82, context, v26, v74, v55, 0);

      v87 = objc_msgSend_minorGridLocations(v26, v83, v84, v85, v86);
      objc_msgSend_minorTickmarkLength(v11, v88, v89, v90, v91);
      objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v92, v93, v94, v95, context, v26, v87, v55, 1);

      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }
  }

  else
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHChartPolarAngleGridlineAxisRenderer drawIntoLayer:inContext:visible:]");
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPolarAngleGridlineAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 46, 0, "unexpected axis type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
  }
}

@end