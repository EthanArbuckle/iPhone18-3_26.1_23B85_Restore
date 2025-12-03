@interface TSCHChartDrawableLayoutLegendResizer
+ (CGRect)innerAnchoringFrameFromChartAreaFrame:(CGRect)frame;
+ (CGRect)outerAnchoringFrameFromChartAreaFrame:(CGRect)frame;
+ (CGRect)snappedLegendFrame:(CGRect)frame forChartAreaFrame:(CGRect)areaFrame;
+ (double)p_sideIntersectionLengthForChartAreaFrame:(CGRect)frame;
+ (id)legendResizerWithInitialFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames;
- (BOOL)p_hasConfinedLocationWithinConfinementBoundsForLocation:(double)location dimension:(int64_t)dimension returningConfinedLocation:(double *)confinedLocation;
- (BOOL)p_isLegendAnchoredForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension returningLegendLocation:(double *)location;
- (TSCHChartDrawableLayoutLegendResizer)initWithInitialFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames;
- (TSCHLegendAnchorRange)p_pushedLegendForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension returningIsConfined:(BOOL *)confined;
- (TSCHLegendAnchorRange)p_resizedLegendForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension;
- (id)resizedLegendGeometry:(id)geometry forLastChartAreaFrame:(CGRect)frame newChartAreaFrame:(CGRect)areaFrame isIndirectResizing:(BOOL)resizing;
- (int)p_anchoringStateForLegendFrame:(CGRect)frame chartAreaFrame:(CGRect)areaFrame dimension:(int64_t)dimension returningAnchoringPosition:(double *)position;
- (void)p_initializeAnchoringStateForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames;
- (void)p_updateLegendConfinementBoundsForChartAreaFrame:(CGRect)frame legendFrame:(CGRect)legendFrame;
- (void)p_updateLegendConfinementBoundsForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames;
- (void)p_updateStateForIsIndirectResizing:(BOOL)resizing;
@end

@implementation TSCHChartDrawableLayoutLegendResizer

+ (double)p_sideIntersectionLengthForChartAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_2761E2498(0, a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  objc_msgSend_p_sideIntersectionLengthForChartAreaRange_(self, v8, v9, v10, v11);
  v13 = v12;
  sub_2761E2498(1, v14, x, y, width, height);
  objc_msgSend_p_sideIntersectionLengthForChartAreaRange_(self, v15, v16, v17, v18);
  return fmin(v13, v19);
}

+ (CGRect)innerAnchoringFrameFromChartAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_msgSend_p_sideIntersectionLengthForChartAreaFrame_(self, a2, frame.origin.x, frame.origin.y, frame.size.width);
  v8 = v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, v8);
}

+ (CGRect)outerAnchoringFrameFromChartAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_msgSend_p_sideIntersectionLengthForChartAreaFrame_(self, a2, frame.origin.x, frame.origin.y, frame.size.width);
  v8 = -v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, -0.0, v8);
}

+ (CGRect)snappedLegendFrame:(CGRect)frame forChartAreaFrame:(CGRect)areaFrame
{
  height = areaFrame.size.height;
  width = areaFrame.size.width;
  y = areaFrame.origin.y;
  x = areaFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  objc_msgSend_innerAnchoringFrameFromChartAreaFrame_(self, a2, areaFrame.origin.x, areaFrame.origin.y, areaFrame.size.width, areaFrame.size.height);
  v59 = v13;
  v60 = v14;
  v61 = v16;
  v62 = v15;
  objc_msgSend_outerAnchoringFrameFromChartAreaFrame_(self, v17, x, y, width, height);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3010000000;
  v68[3] = &unk_27657B92B;
  v69 = *MEMORY[0x277CBF348];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2761E453C;
  v67[3] = &unk_27A6B6980;
  v67[4] = v68;
  *&v67[5] = v11;
  *&v67[6] = v10;
  *&v67[7] = v9;
  *&v67[8] = v8;
  v26 = MEMORY[0x277C98B30](v67);
  sub_2761E3E9C(v26, v19, v21, v23, v25);
  v70.origin.x = v59;
  v70.origin.y = v60;
  v70.size.width = v62;
  v70.size.height = v61;
  if (!CGRectIsEmpty(v70))
  {
    if (TSUSizeIsEmpty())
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "+[TSCHChartDrawableLayoutLegendResizer snappedLegendFrame:forChartAreaFrame:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
      v71.origin.x = v59;
      v71.origin.y = v60;
      v71.size.width = v62;
      v71.size.height = v61;
      v38 = NSStringFromCGRect(v71);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v32, v37, 451, 0, "Should not have empty size for non-empty rect %@", v38);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2761E4654;
    v63[3] = &unk_27A6B69A8;
    v65 = v9 / v62;
    v66 = v8 / v61;
    v64 = v26;
    sub_2761E3E9C(v63, v59, v60, v62, v61);
  }

  TSUAddPoints();
  TSURectWithOriginAndSize();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  _Block_object_dispose(v68, 8);
  v55 = v48;
  v56 = v50;
  v57 = v52;
  v58 = v54;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

+ (id)legendResizerWithInitialFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames
{
  v4 = [self alloc];
  size = frames->var1.size;
  v12[2] = frames->var1.origin;
  v12[3] = size;
  v6 = frames->var2.size;
  v12[4] = frames->var2.origin;
  v12[5] = v6;
  v7 = frames->var0.size;
  v12[0] = frames->var0.origin;
  v12[1] = v7;
  v10 = objc_msgSend_initWithInitialFrames_(v4, v8, *v12, v7.width, v9, v12);

  return v10;
}

- (TSCHChartDrawableLayoutLegendResizer)initWithInitialFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames
{
  v13.receiver = self;
  v13.super_class = TSCHChartDrawableLayoutLegendResizer;
  v4 = [(TSCHChartDrawableLayoutLegendResizer *)&v13 init];
  v7 = v4;
  if (v4)
  {
    size = frames->var1.size;
    v12[2] = frames->var1.origin;
    v12[3] = size;
    v9 = frames->var2.size;
    v12[4] = frames->var2.origin;
    v12[5] = v9;
    v10 = frames->var0.size;
    v12[0] = frames->var0.origin;
    v12[1] = v10;
    objc_msgSend_p_initializeAnchoringStateForFrames_(v4, v5, *v12, v10.width, v6, v12);
  }

  return v7;
}

- (int)p_anchoringStateForLegendFrame:(CGRect)frame chartAreaFrame:(CGRect)areaFrame dimension:(int64_t)dimension returningAnchoringPosition:(double *)position
{
  height = areaFrame.size.height;
  width = areaFrame.size.width;
  y = areaFrame.origin.y;
  x = areaFrame.origin.x;
  sub_2761E2498(dimension, a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  v13 = v12;
  v15 = v14;
  sub_2761E2498(dimension, v16, x, y, width, height);
  v18 = v17;
  v20 = v19;
  sub_2761E302C(v21, v22, v13, v15, v17, v19);
  v84 = v23;
  v81 = v20;
  v82 = v18;
  sub_2761E302C(v24, v25, v18, v20, v13, v15);
  v83 = v26;
  v27 = objc_opt_class();
  objc_msgSend_innerAnchoringFrameFromChartAreaFrame_(v27, v28, x, y, width, height);
  sub_2761E2498(dimension, v29, v30, v31, v32, v33);
  v35 = v34;
  v37 = v36;
  v38 = objc_opt_class();
  objc_msgSend_outerAnchoringFrameFromChartAreaFrame_(v38, v39, x, y, width, height);
  sub_2761E2498(dimension, v40, v41, v42, v43, v44);
  v46 = v45;
  v48 = fmax(v35, v47);
  v49 = fmin(v35, v47);
  v52 = sub_2761E23B4(v49, v48, v49, v50, v51);
  v54 = v53;
  v58 = sub_2761E23B4(fmin(v37, v46), fmax(v37, v46), v57, v55, v56);
  v60 = v59;
  sub_2761E2D10(v13, v15, v52, v54, v61, v62);
  v64 = v63;
  sub_2761E2D10(v13, v15, v58, v60, v65, v66);
  if (v64 == 0.0 && v69 == 0.0)
  {
    result = 3;
    v71 = 0.0;
  }

  else
  {
    v71 = 0.0;
    v72 = v69 == 0.0 || v64 == 0.0;
    if (v72 && v84 >= 0.9 && v83 >= 0.8)
    {
      result = 3;
    }

    else if (v64 == 0.0)
    {
      v71 = v13 - v82;
      result = 1;
    }

    else if (v69 == 0.0)
    {
      v71 = v13 - v81;
      result = 2;
    }

    else
    {
      sub_2761E2D10(v13, v15, v82, v81, v67, v68);
      if (v75 == 0.0)
      {
        v76 = sub_2761E2878(v73, v74, v82, v81, v13, v15);
        if (sub_2761E21EC(v76, v79, v80, v77, v78) <= 0.6)
        {
          result = 0;
        }

        else
        {
          result = 3;
        }
      }

      else
      {
        result = 4;
      }
    }
  }

  if (position)
  {
    *position = v71;
  }

  return result;
}

- (void)p_initializeAnchoringStateForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames
{
  x = frames->var0.origin.x;
  y = frames->var0.origin.y;
  width = frames->var0.size.width;
  height = frames->var0.size.height;
  if (!CGRectIsNull(frames->var1))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartDrawableLayoutLegendResizer p_initializeAnchoringStateForFrames:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v20 = NSStringFromCGRect(frames->var1);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v14, v19, 526, 0, "last frame should not be initialized %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (CGRectIsNull(frames->var2))
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHChartDrawableLayoutLegendResizer p_initializeAnchoringStateForFrames:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 527, 0, "new chart area frame cannot be null");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = frames->var2.origin.x;
  v49 = frames->var2.origin.y;
  v50 = frames->var2.size.width;
  v51 = frames->var2.size.height;
  self->_anchoringStates[0] = objc_msgSend_p_anchoringStateForLegendFrame_chartAreaFrame_dimension_returningAnchoringPosition_(self, v29, x, y, width, 0, self->_anchoringPosition, height, v48, v49, v50, v51);
  self->_anchoringStates[1] = objc_msgSend_p_anchoringStateForLegendFrame_chartAreaFrame_dimension_returningAnchoringPosition_(self, v52, x, y, width, 1, &self->_anchoringPosition[1], height, v48, v49, v50, v51);
}

- (void)p_updateLegendConfinementBoundsForChartAreaFrame:(CGRect)frame legendFrame:(CGRect)legendFrame
{
  height = legendFrame.size.height;
  width = legendFrame.size.width;
  y = legendFrame.origin.y;
  x = legendFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, frame.origin.x, frame.origin.y, frame.size.width);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_2761E4D60;
  v22 = &unk_27A6B69D0;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  selfCopy = self;
  v24 = v13;
  v14 = v13;
  sub_2761E3E9C(&v19, v11, v10, v9, v8);
  objc_msgSend_setP_legendConfinementBounds_(self, v15, v16, v17, v18, v14, v19, v20, v21, v22, selfCopy);
}

- (void)p_updateLegendConfinementBoundsForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames
{
  if ((objc_msgSend_p_shouldUpdateConfinedPushableAnchoring(self, a2, v3, v4, v5) & 1) == 0)
  {
    v16 = CGRectInset(frames->var2, -20.0, -20.0);
    if (CGRectIntersectsRect(frames->var0, v16))
    {
      objc_msgSend_setP_shouldUpdateConfinedPushableAnchoring_(self, v8, v9, v10, v11, 1);
      x = frames->var1.origin.x;
      y = frames->var1.origin.y;
      width = frames->var1.size.width;

      MEMORY[0x2821F9670](self, sel_p_updateLegendConfinementBoundsForChartAreaFrame_legendFrame_, x, y, width);
    }
  }
}

- (BOOL)p_isLegendAnchoredForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension returningLegendLocation:(double *)location
{
  size = frames->var0.size;
  origin = frames->var0.origin;
  v17 = size;
  x = frames->var1.origin.x;
  size.width = frames->var1.origin.y;
  v8 = frames->var2.size;
  v14 = frames->var2.origin;
  width = frames->var1.size.width;
  height = frames->var1.size.height;
  v15 = v8;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2761E5010;
  v13[3] = &unk_27A6B69F8;
  v13[4] = self;
  v13[5] = &v19;
  dimensionCopy = dimension;
  v13[6] = &v23;
  sub_2761E3E9C(v13, x, size.width, width, height);
  if (location)
  {
    *location = v20[3];
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v11;
}

- (BOOL)p_hasConfinedLocationWithinConfinementBoundsForLocation:(double)location dimension:(int64_t)dimension returningConfinedLocation:(double *)confinedLocation
{
  if (dimension >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, location, v5, v6, "[TSCHChartDrawableLayoutLegendResizer p_hasConfinedLocationWithinConfinementBoundsForLocation:dimension:returningConfinedLocation:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 602, 0, "invalid dimension %ld", dimension);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  locationCopy = location;
  v26 = objc_msgSend_p_legendConfinementBounds(self, a2, COERCE_DOUBLE(0x2020000000), v5, v6);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2761E539C;
  v32[3] = &unk_27A6B6A20;
  v32[5] = &v33;
  v32[6] = dimension;
  *&v32[7] = location;
  v32[4] = &v37;
  objc_msgSend_enumerateObjectsUsingBlock_(v26, v27, COERCE_DOUBLE(3221225472), v28, v29, v32);

  if (confinedLocation)
  {
    *confinedLocation = v34[3];
  }

  v30 = *(v38 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v30;
}

- (TSCHLegendAnchorRange)p_pushedLegendForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension returningIsConfined:(BOOL *)confined
{
  if (dimension >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartDrawableLayoutLegendResizer p_pushedLegendForFrames:dimension:returningIsConfined:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 626, 0, "invalid dimension %ld", dimension);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  size = frames->var1.size;
  origin = frames->var1.origin;
  v61 = size;
  v28 = frames->var2.size;
  v62 = frames->var2.origin;
  v63 = v28;
  v29 = frames->var0.size;
  v58 = frames->var0.origin;
  v59 = v29;
  objc_msgSend_p_updateLegendConfinementBoundsForFrames_(self, a2, v58.x, v29.width, v7, &v58);
  sub_2761E2498(dimension, v30, frames->var0.origin.x, frames->var0.origin.y, frames->var0.size.width, frames->var0.size.height);
  v32 = v31;
  v34 = v33;
  if (!objc_msgSend_p_shouldUpdateConfinedPushableAnchoring(self, v35, v31, v33, v36))
  {
LABEL_7:
    v54 = 0;
    if (!confined)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v57 = 0.0;
  v39 = frames->var1.size;
  origin = frames->var1.origin;
  v61 = v39;
  v40 = frames->var2.size;
  v62 = frames->var2.origin;
  v63 = v40;
  v41 = frames->var0.size;
  v58 = frames->var0.origin;
  v59 = v41;
  if (objc_msgSend_p_isLegendAnchoredForFrames_dimension_returningLegendLocation_(self, v37, v58.x, v41.width, v38, &v58, dimension, &v57))
  {
    v58.x = v57;
    hasConfinedLocationWithinConfinementBoundsForLocation_dimension_returningConfinedLocation = objc_msgSend_p_hasConfinedLocationWithinConfinementBoundsForLocation_dimension_returningConfinedLocation_(self, v42, v57, v43, v44, dimension, &v58);
    if (!hasConfinedLocationWithinConfinementBoundsForLocation_dimension_returningConfinedLocation)
    {
      goto LABEL_7;
    }

    x = v58.x;
    v49 = sub_2761E21EC(v32, v34, v47, hasConfinedLocationWithinConfinementBoundsForLocation_dimension_returningConfinedLocation, v46);
    v32 = sub_2761E23B4(x, x + v49, v52, v50, v51);
    v34 = v53;
    if (v57 == v58.x)
    {
      goto LABEL_7;
    }

    v54 = vabdd_f64(v57, v58.x) >= fabs(v58.x * 0.000000999999997);
    if (!confined)
    {
      goto LABEL_11;
    }

LABEL_10:
    *confined = v54;
    goto LABEL_11;
  }

  v54 = 1;
  if (confined)
  {
    goto LABEL_10;
  }

LABEL_11:
  v55 = v32;
  v56 = v34;
  result.var1 = v56;
  result.var0 = v55;
  return result;
}

- (TSCHLegendAnchorRange)p_resizedLegendForFrames:(TSCHChartDrawableLayoutLegendResizerFrames *)frames dimension:(int64_t)dimension
{
  if (dimension >= 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartDrawableLayoutLegendResizer p_resizedLegendForFrames:dimension:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 660, 0, "invalid dimension %ld", dimension);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  sub_2761E2498(dimension, a2, frames->var1.origin.x, frames->var1.origin.y, frames->var1.size.width, frames->var1.size.height);
  v26 = v25;
  v28 = v27;
  sub_2761E2498(dimension, v29, frames->var2.origin.x, frames->var2.origin.y, frames->var2.size.width, frames->var2.size.height);
  v31 = v30;
  v33 = v32;
  sub_2761E2498(dimension, v34, frames->var0.origin.x, frames->var0.origin.y, frames->var0.size.width, frames->var0.size.height);
  v40 = v37;
  v41 = v38;
  anchoringStates = self->_anchoringStates;
  v43 = self->_anchoringStates[dimension];
  if (v43 > 1)
  {
    if (v43 != 2)
    {
      if (v43 != 3)
      {
        if (v43 == 4)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }

      v50 = sub_2761E2878(v35, v36, v26, v28, v37, v38);
      v37 = sub_2761E2AC4(v51, v52, v31, v33, v50, v53);
LABEL_16:
      v40 = v37;
      v41 = v38;
      goto LABEL_17;
    }

    v44 = v33 + self->_anchoringPosition[dimension];
    goto LABEL_12;
  }

  if (!v43)
  {
    v54 = sub_2761E22CC(v37, v38, v39, v35, v36);
    v57 = sub_2761E25F0(v55, v56, v26, v28, v54);
    v60 = sub_2761E2780(v58, v59, v31, v33, v57);
    v64 = sub_2761E21EC(v40, v41, v63, v61, v62) * 0.5;
    v49 = v60 - v64;
    v47 = v60 + v64;
    goto LABEL_15;
  }

  if (v43 == 1)
  {
    v44 = v31 + self->_anchoringPosition[dimension];
LABEL_12:
    v47 = sub_2761E21EC(v37, v38, v39, v35, v36) + v44;
    v49 = v44;
LABEL_15:
    v37 = sub_2761E23B4(v49, v47, v48, v45, v46);
    goto LABEL_16;
  }

LABEL_20:
  v87 = MEMORY[0x277D81150];
  v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHChartDrawableLayoutLegendResizer p_resizedLegendForFrames:dimension:]");
  v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v94, v95, v96, v97, v88, v93, 693, 0, "invalid state %ld", anchoringStates[dimension]);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99, v100, v101);
LABEL_17:
  if (v40 > v41)
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHChartDrawableLayoutLegendResizer p_resizedLegendForFrames:dimension:]");
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, v73, v74, v75, @"(%f, %f)", *&v40, *&v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v77, v78, v79, v80, v66, v71, 697, 0, "invalid result %@ dimension %ld", v76, dimension);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  }

  v85 = v40;
  v86 = v41;
  result.var1 = v86;
  result.var0 = v85;
  return result;
}

- (void)p_updateStateForIsIndirectResizing:(BOOL)resizing
{
  if (resizing)
  {
    memset_pattern16(self->_anchoringStates, &unk_2764D6490, 8uLL);
  }
}

- (id)resizedLegendGeometry:(id)geometry forLastChartAreaFrame:(CGRect)frame newChartAreaFrame:(CGRect)areaFrame isIndirectResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v78 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  objc_msgSend_p_updateStateForIsIndirectResizing_(self, v13, v14, v15, v16, resizingCopy);
  if (!geometryCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartDrawableLayoutLegendResizer resizedLegendGeometry:forLastChartAreaFrame:newChartAreaFrame:isIndirectResizing:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 712, 0, "invalid nil value for '%{public}s'", "legendGeometryForResize");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  objc_msgSend_frame(geometryCopy, v17, v18, v19, v20);
  v39 = v38;
  v41 = v40;
  v42 = v37;
  v44 = v43;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v76 = xmmword_2764D6470;
  *v77 = unk_2764D6480;
  v48 = &v76;
  v49 = 1;
  do
  {
    v50 = v49;
    if (self->_anchoringStates[v45] == 4)
    {
      ++v47;
      LOBYTE(v71.a) = 0;
      v72.a = v39;
      v72.b = v41;
      v72.c = v42;
      v72.d = v44;
      v72.tx = x;
      v72.ty = y;
      v73 = width;
      v74 = height;
      areaFrameCopy2 = areaFrame;
      IsConfined = objc_msgSend_p_pushedLegendForFrames_dimension_returningIsConfined_(self, v36, areaFrame.size.height, areaFrame.size.width, v37, &v72);
      *v48 = v52;
      *(v48 + 1) = v53;
      v46 += LOBYTE(v71.a);
    }

    else
    {
      v72.a = v39;
      v72.b = v41;
      v72.c = v42;
      v72.d = v44;
      v72.tx = x;
      v72.ty = y;
      v73 = width;
      v74 = height;
      areaFrameCopy2 = areaFrame;
      IsConfined = objc_msgSend_p_resizedLegendForFrames_dimension_(self, v36, areaFrame.size.height, areaFrame.size.width, v37, &v72);
      *v48 = v52;
      *(v48 + 1) = v53;
    }

    v49 = 0;
    v48 = v77;
    v45 = 1;
  }

  while ((v50 & 1) != 0);
  if (v47 && v46 == v47)
  {
    IsConfined = objc_msgSend_setP_shouldUpdateConfinedPushableAnchoring_(self, v36, v52, v53, v37, 0, 1);
  }

  sub_2761E31EC(*&v76, *(&v76 + 1), v77[0], v77[1], IsConfined, v36);
  v55 = v54;
  v57 = v56;
  TSUSubtractPoints();
  memset(&v72, 0, sizeof(v72));
  CGAffineTransformMakeTranslation(&v72, v58, v59);
  memset(&v71, 0, sizeof(v71));
  if (geometryCopy)
  {
    objc_msgSend_transform(geometryCopy, v60, 0.0, v61, v62);
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v72;
  CGAffineTransformConcat(&v71, &t1, &t2);
  v63 = objc_alloc(MEMORY[0x277D80300]);
  t2 = v71;
  v66 = objc_msgSend_initWithSize_transform_(v63, v64, v55, v57, v65, &t2);

  return v66;
}

@end