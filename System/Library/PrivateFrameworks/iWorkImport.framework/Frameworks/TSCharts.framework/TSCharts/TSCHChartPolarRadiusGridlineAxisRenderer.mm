@interface TSCHChartPolarRadiusGridlineAxisRenderer
- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5;
- (void)p_addTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8;
@end

@implementation TSCHChartPolarRadiusGridlineAxisRenderer

- (void)p_addTickmarkPaths:(CGContext *)a3 axis:(id)a4 locations:(id)a5 stroke:(id)a6 width:(float)a7 isMinor:(BOOL)a8
{
  v8 = a8;
  v49 = a4;
  v14 = a5;
  v15 = a6;
  v20 = objc_msgSend_axisLayoutItem(self, v16, v17, v18, v19);
  v26 = objc_msgSend_axisTickMarksLayoutItem(v20, v21, v22, v23, v24);
  if (v26 && objc_msgSend_shouldRender(v15, v25, v27, v28, v29))
  {

    if (a7 > 0.0)
    {
      v34 = objc_msgSend_chartInfo(self, v30, v31, v32, v33);
      v39 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v35, v36, v37, v38, v49, v34);

      if ((v39 & 1) == 0)
      {
        *&v41 = a7;
        objc_msgSend_p_addPolarRadiusTickmarkPaths_axis_absoluteRadii_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, v40, v41, v42, v43, a3, v49, v14, v15, v8, 1, 0);
      }

      if (objc_msgSend_intValueForProperty_defaultValue_(v49, v40, v41, v42, v43, 1051, 0))
      {
        LOBYTE(v48) = 1;
        *&v45 = a7;
        objc_msgSend_p_addPolarRadiusTickmarkPaths_axis_absoluteRadii_stroke_width_isMinor_includeFirstSpoke_includeSpokesOtherThanTheFirst_(self, v44, v45, v46, v47, a3, v49, v14, v15, v8, 0, v48);
      }
    }
  }

  else
  {
  }
}

- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5
{
  v111 = objc_msgSend_axisLayoutItem(self, a2, a5.origin.x, a5.origin.y, a5.size.width, *&a3, a5.size.height);
  v11 = objc_msgSend_axisTickMarksLayoutItem(v111, v7, v8, v9, v10);
  v16 = objc_msgSend_model(self, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v111, v17, v18, v19, v20);
  v26 = objc_msgSend_axisForID_(v16, v22, v23, v24, v25, v21);

  v31 = objc_msgSend_axisID(v26, v27, v28, v29, v30);
  LODWORD(v21) = objc_msgSend_type(v31, v32, v33, v34, v35);

  if (v21 == 5)
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
      CGContextSaveGState(a4);
      CGContextSetBlendMode(a4, kCGBlendModeCopy);
      CGContextSetAlpha(a4, v61);
      CGContextBeginPath(a4);
      objc_msgSend_applyToContext_(v55, v62, v63, v64, v65, a4);
      if (!objc_msgSend_cap(v55, v66, v67, v68, v69))
      {
        CGContextSetLineCap(a4, kCGLineCapSquare);
      }

      v74 = objc_msgSend_majorGridLocations(v26, v70, v71, v72, v73);
      objc_msgSend_majorTickmarkLength(v11, v75, v76, v77, v78);
      objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v79, v80, v81, v82, a4, v26, v74, v55, 0);

      v87 = objc_msgSend_minorGridLocations(v26, v83, v84, v85, v86);
      objc_msgSend_minorTickmarkLength(v11, v88, v89, v90, v91);
      objc_msgSend_p_addTickmarkPaths_axis_locations_stroke_width_isMinor_(self, v92, v93, v94, v95, a4, v26, v87, v55, 1);

      CGContextStrokePath(a4);
      CGContextRestoreGState(a4);
    }
  }

  else
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHChartPolarRadiusGridlineAxisRenderer drawIntoLayer:inContext:visible:]");
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPolarRadiusGridlineAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 47, 0, "unexpected axis type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
  }
}

@end