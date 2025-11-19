@interface TSCHChartPieLabelPlacement
- (BOOL)calloutLineEndpointPastStartpoint:(id)a3;
- (BOOL)calloutLineEndsOutsidePieWedge:(id)a3;
- (CGAffineTransform)transformOutwardsAlongWedgeBisectionForWedgeLayoutInfo:(SEL)a3 withMinimumNecessaryDistance:(id)a4;
- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)a3;
- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)a3;
- (CGRect)titleRect;
- (TSCHChartPieLabelPlacement)initWithArrayOfWedgeLayoutInfos:(id)a3 titleRectInWedgeElementSpace:(CGRect)a4;
- (double)lineEndLength:(id)a3 stroke:(id)a4;
- (double)minimumNecessaryDistanceFromWedgeTipForWedgeLayoutInfo:(id)a3;
- (double)minimumNecessaryDistanceFromWedgeTipToWedgeLabelToPreventOverlapForWedgeLayoutInfo:(id)a3 adjacentWedgeLayoutInfo:(id)a4;
- (id)newPathForLineEnd:(id)a3 startPoint:(CGPoint)a4 angle:(double)a5 stroke:(id)a6;
- (int64_t)calloutLineRenderAmount:(id)a3 startLineEnd:(id)a4 endLineEnd:(id)a5 stroke:(id)a6;
@end

@implementation TSCHChartPieLabelPlacement

- (TSCHChartPieLabelPlacement)initWithArrayOfWedgeLayoutInfos:(id)a3 titleRectInWedgeElementSpace:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v37[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v36.receiver = self;
  v36.super_class = TSCHChartPieLabelPlacement;
  v11 = [(TSCHChartPieLabelPlacement *)&v36 init];
  if (v11)
  {
    v15 = objc_msgSend_copy(v9, v10, v12, v13, v14);
    allWedgeLayoutInfos = v11->_allWedgeLayoutInfos;
    v11->_allWedgeLayoutInfos = v15;

    v17 = objc_alloc(MEMORY[0x277CCAC98]);
    v22 = objc_msgSend_initWithKey_ascending_(v17, v18, v19, v20, v21, @"wedgeElement.series.seriesIndex", 1);
    v23 = v11->_allWedgeLayoutInfos;
    v37[0] = v22;
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v25, v26, v27, v37, 1);
    v33 = objc_msgSend_sortedArrayUsingDescriptors_(v23, v29, v30, v31, v32, v28);
    allWedgeLayoutInfosSortedBySeriesIndex = v11->_allWedgeLayoutInfosSortedBySeriesIndex;
    v11->_allWedgeLayoutInfosSortedBySeriesIndex = v33;

    v11->_titleRect.origin.x = x;
    v11->_titleRect.origin.y = y;
    v11->_titleRect.size.width = width;
    v11->_titleRect.size.height = height;
  }

  return v11;
}

- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)a3
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)a3
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)calloutLineEndsOutsidePieWedge:(id)a3
{
  v4 = a3;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v5, v6, v7, v8, v4);
  v13 = objc_msgSend_wedgeElement(v4, v9, v10, v11, v12);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v13, v14, v15, v16, v17);
  TSUDistance();
  v19 = v18;
  v23 = objc_msgSend_wedgeElement(v4, v20, v18, v21, v22);

  objc_msgSend_radius(v23, v24, v25, v26, v27);
  LOBYTE(v4) = v19 > v28;

  return v4;
}

- (BOOL)calloutLineEndpointPastStartpoint:(id)a3
{
  v4 = a3;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v5, v6, v7, v8, v4);
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v9, v10, v11, v12, v4);
  v17 = objc_msgSend_wedgeElement(v4, v13, v14, v15, v16);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v17, v18, v19, v20, v21);
  TSUDistance();
  v23 = v22;
  v27 = objc_msgSend_wedgeElement(v4, v24, v22, v25, v26);

  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v27, v28, v29, v30, v31);
  TSUDistance();
  LOBYTE(v4) = v23 > v32;

  return v4;
}

- (int64_t)calloutLineRenderAmount:(id)a3 startLineEnd:(id)a4 endLineEnd:(id)a5 stroke:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v14, v15, v16, v17, v13);
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v18, v19, v20, v21, v13);

  TSUDistance();
  v23 = v22;
  objc_msgSend_lineEndLength_stroke_(self, v24, v22, v25, v26, v12, v10);
  v28 = v27;

  objc_msgSend_lineEndLength_stroke_(self, v29, v30, v31, v32, v11, v10);
  v34 = v33;

  if (v23 < 10.0)
  {
    return 0;
  }

  v36 = v34 + v28 * 0.75;
  if (v28 > v34)
  {
    v36 = v28 + v34 * 0.75;
  }

  if (v36 <= v23)
  {
    return 3;
  }

  if (v28 > v23)
  {
    return 1;
  }

  return 2;
}

- (double)lineEndLength:(id)a3 stroke:(id)a4
{
  v5 = a3;
  v7 = a4;
  v11 = 0.0;
  if (v5 && (objc_msgSend_isNone(v5, v6, v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_width(v7, v12, v13, v14, v15);
    objc_msgSend_scaleForStrokeWidth_(v5, v16, v17, v18, v19);
    v21 = v20;
    v25 = objc_msgSend_path(v5, v22, v20, v23, v24);
    v26 = v25;
    v31 = objc_msgSend_CGPath(v26, v27, v28, v29, v30);
    BoundingBox = CGPathGetBoundingBox(v31);
    MaxY = CGRectGetMaxY(BoundingBox);
    objc_msgSend_endPoint(v5, v33, MaxY, v34, v35);
    v37 = MaxY - v36;

    if (v37 < 0.0)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartPieLabelPlacement lineEndLength:stroke:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieLabelPlacement.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 138, 0, "Line end height should not be negative: %f", *&v37);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    isFilled = objc_msgSend_isFilled(v5, v38, v39, v40, v41);
    v58 = v37 + 0.75;
    if (isFilled)
    {
      v58 = v37;
    }

    v11 = v21 * v58;
  }

  return v11;
}

- (id)newPathForLineEnd:(id)a3 startPoint:(CGPoint)a4 angle:(double)a5 stroke:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v12 = a6;
  if (v10 && (objc_msgSend_isNone(v10, v11, v13, v14, v15) & 1) == 0)
  {
    v21 = objc_msgSend_path(v10, v16, v17, v18, v19);
    v20 = objc_msgSend_copy(v21, v22, v23, v24, v25);

    objc_msgSend_endPoint(v10, v26, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    objc_msgSend_width(v12, v34, v30, v32, v35);
    objc_msgSend_scaleForStrokeWidth_(v10, v36, v37, v38, v39);
    v41 = v40;
    memset(&v46, 0, sizeof(v46));
    CGAffineTransformMakeTranslation(&v46, x, y);
    v44 = v46;
    CGAffineTransformScale(&v45, &v44, v41, v41);
    v46 = v45;
    v44 = v45;
    CGAffineTransformRotate(&v45, &v44, a5);
    v46 = v45;
    v44 = v45;
    CGAffineTransformTranslate(&v45, &v44, -v31, -v33);
    v46 = v45;
    objc_msgSend_transformUsingAffineTransform_(v20, v42, v45.tx, v45.c, v45.a, &v45);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (CGAffineTransform)transformOutwardsAlongWedgeBisectionForWedgeLayoutInfo:(SEL)a3 withMinimumNecessaryDistance:(id)a4
{
  v7 = a4;
  v22 = objc_msgSend_wedgeElement(v7, v8, v9, v10, v11);
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(v7, v12, v13, v14, v15);

  TSUCenterOfRect();
  objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithFloatDistanceFromWedgeTip_(v22, v16, a5, v17, v18);
  TSUSubtractPoints();
  CGAffineTransformMakeTranslation(retstr, v19, v20);

  return result;
}

- (double)minimumNecessaryDistanceFromWedgeTipForWedgeLayoutInfo:(id)a3
{
  v4 = a3;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(v4, v5, v6, v7, v8);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  CGRectGetMaxX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGRectGetMinY(v43);
  TSUDistance();
  v14 = v13;
  v18 = objc_msgSend_wedgeElement(v4, v15, v13, v16, v17);
  objc_msgSend_angleAtWedgeTip(v18, v19, v20, v21, v22);
  objc_msgSend_distanceFromCenterToChordOfLength_wedgeAngle_(self, v23, v14, v24, v25);
  v27 = v26;

  v32 = objc_msgSend_wedgeElement(v4, v28, v29, v30, v31);

  objc_msgSend_radius(v32, v33, v34, v35, v36);
  v38 = v37 + v37;

  if (v38 >= v27)
  {
    return v27;
  }

  else
  {
    return v38;
  }
}

- (double)minimumNecessaryDistanceFromWedgeTipToWedgeLabelToPreventOverlapForWedgeLayoutInfo:(id)a3 adjacentWedgeLayoutInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  TSUCenterOfRect();
  v71.origin.x = v13;
  v71.origin.y = v15;
  v71.size.width = v17;
  v71.size.height = v19;
  CGRectGetMaxX(v71);
  v72.origin.x = v13;
  v72.origin.y = v15;
  v72.size.width = v17;
  v72.size.height = v19;
  CGRectGetMinY(v72);
  TSUDistance();
  v70 = v20;
  v24 = objc_msgSend_wedgeElement(v7, v21, v20, v22, v23);
  objc_msgSend_angleAtWedgeTip(v24, v25, v26, v27, v28);
  v30 = v29 * 0.5;

  objc_msgSend_combinedLabelRectInChartCoordinateSpace(v6, v31, v32, v33, v34);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  TSUCenterOfRect();
  v73.origin.x = v36;
  v73.origin.y = v38;
  v73.size.width = v40;
  v73.size.height = v42;
  CGRectGetMaxX(v73);
  v74.origin.x = v36;
  v74.origin.y = v38;
  v74.size.width = v40;
  v74.size.height = v42;
  CGRectGetMinY(v74);
  TSUDistance();
  v44 = v43;
  v48 = objc_msgSend_wedgeElement(v6, v45, v43, v46, v47);

  objc_msgSend_angleAtWedgeTip(v48, v49, v50, v51, v52);
  v54 = v53 * 0.5;

  objc_msgSend_distanceFromCenterToChordOfLength_wedgeAngle_(self, v55, v70 + v44, v30 + v54, v56);
  v58 = v57;
  v62 = objc_msgSend_wedgeElement(v7, v59, v57, v60, v61);

  objc_msgSend_radius(v62, v63, v64, v65, v66);
  v68 = v67 + v67;

  if (v68 >= v58)
  {
    return v58;
  }

  else
  {
    return v68;
  }
}

- (CGRect)titleRect
{
  x = self->_titleRect.origin.x;
  y = self->_titleRect.origin.y;
  width = self->_titleRect.size.width;
  height = self->_titleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end