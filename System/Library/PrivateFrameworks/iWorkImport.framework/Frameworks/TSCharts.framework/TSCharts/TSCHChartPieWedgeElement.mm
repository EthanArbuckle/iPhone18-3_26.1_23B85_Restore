@interface TSCHChartPieWedgeElement
- (BOOL)angleInRange:(double)range startAngle:(double)angle endAngle:(double)endAngle;
- (BOOL)calloutLineIntersectsWedgeWithStartPoint:(CGPoint)point midPoint:(CGPoint)midPoint;
- (BOOL)isInUpperHalfOfChartWithStartPoint:(CGPoint)point;
- (BOOL)isOnLeftSideOfChart;
- (BOOL)lineIntersectsLineWithStartPoint:(CGPoint)point firstLineEndPoint:(CGPoint)endPoint secondLineStartPoint:(CGPoint)startPoint secondLineEndPoint:(CGPoint)lineEndPoint outIntersectionPoint:(CGPoint *)intersectionPoint;
- (BOOL)lineIntersectsWedgeWithLineStartPoint:(CGPoint)point lineEndPoint:(CGPoint)endPoint;
- (BOOL)pointWithinWedgeSpread:(CGPoint)spread percentage:(double)percentage;
- (BOOL)shouldUsePerpendicularBendedLineWithStartPoint:(CGPoint)point;
- (BOOL)wedgeBisectionIntersectsRect:(CGRect)rect outIntersectionPointClosestToWedgeTip:(CGPoint *)tip;
- (CGPoint)arcEndPoint;
- (CGPoint)arcStartPoint;
- (CGPoint)bendedLineMidpointWithStartPoint:(CGPoint)point length:(double)length shouldBeUpwards:(BOOL)upwards;
- (CGPoint)centerPoint;
- (CGPoint)defaultBendedLineEndpointWithStartPoint:(CGPoint)point;
- (CGPoint)defaultBendedLineMidpointWithStartPoint:(CGPoint)point;
- (CGPoint)defaultLabelCenterPoint;
- (CGPoint)defaultLabelCenterPointForLabelWithSize:(CGSize)size bended:(BOOL)bended;
- (CGPoint)defaultLabelEndpointForBendedLineLabels;
- (CGPoint)firstHalfOfBendedLineVectorNormalizedShouldBeUpwards:(BOOL)upwards;
- (CGPoint)midpointOnClosestEdgeToWedgeTip:(CGRect)tip;
- (CGPoint)normalizedWedgeBisectionVector;
- (CGPoint)pointAlongWedgeBisectionInChartCoordinateSpaceWithFloatDistanceFromWedgeTip:(double)tip;
- (CGPoint)pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip:(double)tip;
- (CGPoint)pointAtWedgeCircumferenceMiddleInChartCoordinateSpace;
- (CGPoint)pointAtWedgeTipInChartCoordinateSpace;
- (CGRect)defaultLabelRectForLabelWithSize:(CGSize)size bended:(BOOL)bended;
- (TSCHChartPieLabelRects)labelRectsForFirstLabelWithSize:(SEL)size secondLabelSize:(CGSize)labelSize stacked:(CGSize)stacked stackedLabelCenterAlign:(BOOL)align placeToTheSideOfPieChart:(BOOL)chart;
- (TSCHChartPieWedgeElement)initWithRadius:(double)radius startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle labelExplosion:(double)explosion wedgeExplosion:(double)wedgeExplosion series:(id)series;
- (TSCHChartSeries)series;
- (double)p_xShiftAmountWithEndpoint:(CGPoint)endpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLayoutSystem:(TSCHChartPieWedgeElementLayoutSystem *)system;
@end

@implementation TSCHChartPieWedgeElement

- (TSCHChartPieWedgeElement)initWithRadius:(double)radius startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle labelExplosion:(double)explosion wedgeExplosion:(double)wedgeExplosion series:(id)series
{
  seriesCopy = series;
  v20.receiver = self;
  v20.super_class = TSCHChartPieWedgeElement;
  v17 = [(TSCHChartPieWedgeElement *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_layoutSystem.coordinateSpace = 0;
    v17->_layoutSystem.centerPoint = *MEMORY[0x277CBF348];
    v17->_radius = radius;
    v17->_midAngle = midAngle;
    v17->_startAngle = angle;
    v17->_endAngle = endAngle;
    v17->_labelExplosion = explosion;
    v17->_wedgeExplosion = wedgeExplosion;
    objc_storeWeak(&v17->_series, seriesCopy);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v19 = v15;
  if (v15)
  {
    v44 = *&self->_layoutSystem.coordinateSpace;
    y = self->_layoutSystem.centerPoint.y;
    objc_msgSend_setLayoutSystem_(v15, v16, *&v44, v17, v18, &v44);
    objc_msgSend_setRadius_(v19, v20, self->_radius, v21, v22);
    objc_msgSend_setMidAngle_(v19, v23, self->_midAngle, v24, v25);
    objc_msgSend_setStartAngle_(v19, v26, self->_startAngle, v27, v28);
    objc_msgSend_setEndAngle_(v19, v29, self->_endAngle, v30, v31);
    objc_msgSend_setLabelExplosion_(v19, v32, self->_labelExplosion, v33, v34);
    objc_msgSend_setWedgeExplosion_(v19, v35, self->_wedgeExplosion, v36, v37);
    WeakRetained = objc_loadWeakRetained(&self->_series);
    objc_msgSend_setSeries_(v19, v39, v40, v41, v42, WeakRetained);
  }

  return v19;
}

- (CGPoint)centerPoint
{
  x = self->_layoutSystem.centerPoint.x;
  y = self->_layoutSystem.centerPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)defaultLabelCenterPoint
{
  objc_msgSend_centerPoint(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  radius = self->_radius;
  v11 = self->_wedgeExplosion * radius;
  v12 = __sincos_stret(self->_midAngle);
  v13 = radius * self->_labelExplosion / 100.0;
  v14 = v9 + v11 * v12.__sinval + v13 * v12.__sinval;
  v15 = v7 + v11 * v12.__cosval + v13 * v12.__cosval;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGRect)defaultLabelRectForLabelWithSize:(CGSize)size bended:(BOOL)bended
{
  objc_msgSend_defaultLabelCenterPointForLabelWithSize_bended_(self, a2, size.width, size.height, v4, bended);

  TSURectWithCenterAndSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (TSCHChartPieLabelRects)labelRectsForFirstLabelWithSize:(SEL)size secondLabelSize:(CGSize)labelSize stacked:(CGSize)stacked stackedLabelCenterAlign:(BOOL)align placeToTheSideOfPieChart:(BOOL)chart
{
  chartCopy = chart;
  alignCopy = align;
  height = stacked.height;
  v11 = labelSize.height;
  width = labelSize.width;
  if (labelSize.height >= stacked.height)
  {
    v15 = labelSize.height;
  }

  else
  {
    v15 = stacked.height;
  }

  v37 = stacked.width;
  v16 = width + stacked.width + 5.0;
  v17 = v11 + stacked.height;
  if (width >= stacked.height)
  {
    stacked.height = width;
  }

  if (align)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (align)
  {
    objc_msgSend_defaultLabelCenterPointForLabelWithSize_bended_(self, size, stacked.height, v18, v17, a8, stacked.height);
  }

  else
  {
    objc_msgSend_defaultLabelCenterPointForLabelWithSize_bended_(self, size, v16, v18, v17, a8, stacked.height);
  }

  v20 = v19;
  TSURectWithCenterAndSize();
  v26 = v22;
  v27 = v23;
  if (alignCopy)
  {
    v28 = v24;
    v29 = v25;
    if (chartCopy)
    {
      v30 = CGRectGetMidX(*&v22) + v37 * -0.5;
    }

    else
    {
      objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v21, v22, v23, v24);
      v36 = v20 > v35;
      v30 = v26;
      if (!v36)
      {
        v38.origin.x = v26;
        v38.origin.y = v27;
        v38.size.width = v28;
        v38.size.height = v29;
        v30 = CGRectGetMaxX(v38) - v37;
      }
    }

    v39.origin.x = v26;
    v39.origin.y = v27;
    v39.size.width = width;
    v39.size.height = v11;
    MaxY = CGRectGetMaxY(v39);
  }

  else
  {
    v31 = width;
    v32 = v11;
    v30 = CGRectGetMaxX(*&v22) + 5.0;
    MaxY = v27;
  }

  retstr->var0.origin.x = v26;
  retstr->var0.origin.y = v27;
  retstr->var0.size.width = width;
  retstr->var0.size.height = v11;
  retstr->var1.origin.x = v30;
  retstr->var1.origin.y = MaxY;
  retstr->var1.size.width = v37;
  retstr->var1.size.height = height;
  return result;
}

- (CGPoint)defaultLabelCenterPointForLabelWithSize:(CGSize)size bended:(BOOL)bended
{
  if (bended)
  {
    width = size.width;
    objc_msgSend_defaultLabelEndpointForBendedLineLabels(self, a2, size.width, size.height, v4);
    v8 = v7;
    v10 = v9;
    objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v11, v7, v9, v12);
    if (v8 <= v13)
    {
      v14 = -(width * 0.5);
    }

    else
    {
      v14 = width * 0.5;
    }

    v15 = v8 + v14;
  }

  else
  {
    objc_msgSend_defaultLabelCenterPoint(self, a2, size.width, size.height, v4);
    v10 = v16;
  }

  v17 = v10;
  result.y = v17;
  result.x = v15;
  return result;
}

- (double)p_xShiftAmountWithEndpoint:(CGPoint)endpoint
{
  x = endpoint.x;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, endpoint.x, endpoint.y, v3);
  v7 = vabdd_f64(x, v6);
  radius = self->_radius;
  v9 = radius - v7;
  objc_msgSend_pieFamilyLabelExplosionMinimumPercentage(TSCHStyleUtilities, v10, v7, radius, v11);
  v13 = v12;
  objc_msgSend_pieFamilyLabelExplosionMaximumPercentage(TSCHStyleUtilities, v14, v12, v15, v16);
  v18 = self->_radius;
  v19 = v18 * 0.05;
  v20 = v18 * 0.596791045 - v18 * 0.05;
  v21 = v19 + v20 * ((self->_labelExplosion - v13) / (v17 - v13));
  v22 = v9 + v21;
  v24 = objc_msgSend_isOnLeftSideOfChart(self, v23, v21, v20, v19);
  result = -v22;
  if (!v24)
  {
    return v22;
  }

  return result;
}

- (CGPoint)defaultLabelEndpointForBendedLineLabels
{
  objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip_(self, a2, 1.05, v2, v3);

  MEMORY[0x2821F9670](self, sel_defaultBendedLineEndpointWithStartPoint_, v5, v6, v7);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)bendedLineMidpointWithStartPoint:(CGPoint)point length:(double)length shouldBeUpwards:(BOOL)upwards
{
  objc_msgSend_firstHalfOfBendedLineVectorNormalizedShouldBeUpwards_(self, a2, point.x, point.y, length, upwards);
  TSUMultiplyPointScalar();

  TSUAddPoints();
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)defaultBendedLineEndpointWithStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_msgSend_defaultBendedLineMidpointWithStartPoint_(self, a2, point.x, point.y, v3);
  v8 = v7;
  v10 = v9;
  TSUNormalizeAngleInRadians();
  v14 = v13 * 57.2957795;
  if (v14 < 340.0 && v14 > 20.0 && (v14 > 200.0 || v14 < 160.0))
  {
    y = v10;
    x = v8;
  }

  objc_msgSend_p_xShiftAmountWithEndpoint_(self, v11, x, y, v12);
  v18 = x + v17;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)defaultBendedLineMidpointWithStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (objc_msgSend_shouldUsePerpendicularBendedLineWithStartPoint_(self, a2, point.x, point.y, v3))
  {
    started = objc_msgSend_isInUpperHalfOfChartWithStartPoint_(self, v7, x, y, v8);
    v10 = 7.0;
    if (started)
    {
      v10 = -7.0;
    }

    v11 = y + v10;
  }

  else
  {
    v12 = objc_msgSend_isInUpperHalfOfChartWithStartPoint_(self, v7, x, y, v8);
    objc_msgSend_bendedLineMidpointWithStartPoint_length_shouldBeUpwards_(self, v13, x, y, 7.0, v12);
    x = v14;
  }

  v15 = x;
  result.y = v11;
  result.x = v15;
  return result;
}

- (BOOL)shouldUsePerpendicularBendedLineWithStartPoint:(CGPoint)point
{
  TSUNormalizeAngleInRadians();
  v4 = v3 * 57.2957795;
  if (v4 >= 250.0 && v4 <= 290.0)
  {
    return 1;
  }

  if (v4 <= 110.0)
  {
    return v4 >= 70.0;
  }

  return 0;
}

- (CGPoint)pointAtWedgeTipInChartCoordinateSpace
{
  objc_msgSend_centerPoint(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v10 = self->_wedgeExplosion * self->_radius;
  v11 = __sincos_stret(self->_midAngle);
  v12 = v9 + v10 * v11.__sinval;
  v13 = v7 + v10 * v11.__cosval;
  result.y = v12;
  result.x = v13;
  return result;
}

- (CGPoint)pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip:(double)tip
{
  if (tip < 0.0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, tip, v3, v4, "[TSCHChartPieWedgeElement pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieWedgeElement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 272, 0, "Invalid percentage value: %f. Value must be greater than or equal to 0", *&tip);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, tip, v3, v4);
  v23 = v22;
  v25 = v24;
  v27 = __sincos_stret(self->_midAngle);
  cosval = v27.__cosval;
  sinval = 0.0;
  if (fabs(v27.__cosval) < 0.00999999978 || v27.__cosval == 0.0)
  {
    cosval = 0.0;
  }

  if (fabs(v27.__sinval) >= 0.00999999978 && v27.__sinval != 0.0)
  {
    sinval = v27.__sinval;
  }

  v31 = self->_radius * tip;
  v32 = v23 + v31 * cosval;
  v33 = v25 + v31 * sinval;
  result.y = v33;
  result.x = v32;
  return result;
}

- (CGPoint)pointAtWedgeCircumferenceMiddleInChartCoordinateSpace
{
  objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip_(self, a2, 1.0, v2, v3);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)pointAlongWedgeBisectionInChartCoordinateSpaceWithFloatDistanceFromWedgeTip:(double)tip
{
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, tip, v3, v4);
  objc_msgSend_normalizedWedgeBisectionVector(self, v6, v7, v8, v9);
  TSUMultiplyPointScalar();

  TSUAddPoints();
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)firstHalfOfBendedLineVectorNormalizedShouldBeUpwards:(BOOL)upwards
{
  upwardsCopy = upwards;
  if (objc_msgSend_isOnLeftSideOfChart(self, a2, v3, v4, v5))
  {
    v9.n128_f64[0] = 2.35619449;
  }

  else
  {
    v9.n128_f64[0] = 0.785398163;
  }

  v7.n128_u64[0] = 1.0;
  v8.n128_u64[0] = 0;

  MEMORY[0x2821EC448](!upwardsCopy, v7, v8, v9);
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)calloutLineIntersectsWedgeWithStartPoint:(CGPoint)point midPoint:(CGPoint)midPoint
{
  y = midPoint.y;
  x = midPoint.x;
  v6 = point.y;
  v7 = point.x;
  v9 = objc_msgSend_isOnLeftSideOfChart(self, a2, point.x, point.y, midPoint.x);
  radius = self->_radius;
  if (v9)
  {
    radius = -radius;
  }

  v12 = x + radius;
  started = objc_msgSend_lineIntersectsWedgeWithLineStartPoint_lineEndPoint_(self, v10, v7, v6, x, y);
  return (started | objc_msgSend_lineIntersectsWedgeWithLineStartPoint_lineEndPoint_(self, v14, x, y, v12, y)) & 1;
}

- (BOOL)lineIntersectsWedgeWithLineStartPoint:(CGPoint)point lineEndPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, *MEMORY[0x277CBF348], point.y, endPoint.x, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v10 = v9;
  v12 = v11;
  objc_msgSend_arcStartPoint(self, v13, v9, v11, v14);
  started = objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v15, v7, v6, x, &v33, y, v10, v12, v16, v17);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  objc_msgSend_arcEndPoint(self, v27, v23, v25, v28);
  return (started | objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v29, v7, v6, x, &v33, y, v24, v26, v30, v31)) & 1;
}

- (BOOL)pointWithinWedgeSpread:(CGPoint)spread percentage:(double)percentage
{
  objc_msgSend_angleAtWedgeTip(self, a2, spread.x, spread.y, percentage);
  midAngle = self->_midAngle;
  v8 = v6 * percentage * 0.5;
  v9 = midAngle - v8;
  v10 = midAngle + v8;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v11, v8, midAngle, 0.5);
  TSUSubtractPoints();
  TSUAngleFromDelta();

  return MEMORY[0x2821F9670](self, sel_angleInRange_startAngle_endAngle_, v12, v9, v10);
}

- (BOOL)isInUpperHalfOfChartWithStartPoint:(CGPoint)point
{
  y = point.y;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, point.x, point.y, v3);
  return y < v5 && vabdd_f64(y, v5) >= 0.00999999978;
}

- (CGPoint)normalizedWedgeBisectionVector
{
  objc_msgSend_pointAtWedgeCircumferenceMiddleInChartCoordinateSpace(self, a2, v2, v3, v4);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v6, v7, v8, v9);
  TSUSubtractPoints();

  TSUNormalizePoint();
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)isOnLeftSideOfChart
{
  objc_msgSend_pointAtWedgeCircumferenceMiddleInChartCoordinateSpace(self, a2, v2, v3, v4);
  v7 = v6;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v8, v6, v9, v10);
  return v7 < v11;
}

- (CGPoint)arcStartPoint
{
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, v2, v3, v4);
  v7 = v6;
  radius = self->_radius;
  v9 = cos(self->_startAngle);
  v10 = v7 + radius * v9;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v11, v9, v12, v13);
  v14 = self->_radius;
  v16 = v15 + v14 * sin(self->_startAngle);
  v17 = v10;
  result.y = v16;
  result.x = v17;
  return result;
}

- (CGPoint)arcEndPoint
{
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, a2, v2, v3, v4);
  v7 = v6;
  radius = self->_radius;
  v9 = cos(self->_endAngle);
  v10 = v7 + radius * v9;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v11, v9, v12, v13);
  v14 = self->_radius;
  v16 = v15 + v14 * sin(self->_endAngle);
  v17 = v10;
  result.y = v16;
  result.x = v17;
  return result;
}

- (BOOL)wedgeBisectionIntersectsRect:(CGRect)rect outIntersectionPointClosestToWedgeTip:(CGPoint *)tip
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v11 = CGRectGetMaxY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v33 = CGRectGetMinX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v30 = CGRectGetMaxX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v31 = CGRectGetMinY(v46);
  v38 = *MEMORY[0x277CBF348];
  v39 = v38;
  v36 = v38;
  v37 = v38;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v12, *&v38, v13, v14);
  v16 = v15;
  v18 = v17;
  TSUCenterOfRect();
  v20 = v19;
  v22 = v21;
  v23 = &v36;
  if (objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v24, v16, v18, v19, &v36, v21, MinX, MaxY, MaxX, v11) & 1) != 0 || (v23 = &v37, (objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v25, v16, v18, v20, &v37, v22, v33, MinY, v30, v31)) || (v23 = &v39, (objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v26, v16, v18, v20, &v39, v22, MinX, MaxY, v33, MinY)) || (v23 = &v38, (started = objc_msgSend_lineIntersectsLineWithStartPoint_firstLineEndPoint_secondLineStartPoint_secondLineEndPoint_outIntersectionPoint_(self, v27, v16, v18, v20, &v38, v22, MaxX, v11, v30, v31)) != 0))
  {
    *tip = *v23;
    LOBYTE(started) = 1;
  }

  return started;
}

- (BOOL)lineIntersectsLineWithStartPoint:(CGPoint)point firstLineEndPoint:(CGPoint)endPoint secondLineStartPoint:(CGPoint)startPoint secondLineEndPoint:(CGPoint)lineEndPoint outIntersectionPoint:(CGPoint *)intersectionPoint
{
  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUCrossPoints();
  if (v8 == 0.0)
  {
    return 0;
  }

  v10 = v8;
  TSUSubtractPoints();
  TSUCrossPoints();
  v12 = v11 / v10;
  TSUCrossPoints();
  result = 0;
  if (v12 >= 0.0 && v12 <= 1.0)
  {
    v15 = v13 / v10;
    if (v15 >= 0.0 && v15 <= 1.0)
    {
      TSUMultiplyPointScalar();
      TSUAddPoints();
      intersectionPoint->x = v17;
      intersectionPoint->y = v18;
      return 1;
    }
  }

  return result;
}

- (CGPoint)midpointOnClosestEdgeToWedgeTip:(CGRect)tip
{
  height = tip.size.height;
  width = tip.size.width;
  y = tip.origin.y;
  x = tip.origin.x;
  v59[4] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCAE60];
  MinX = CGRectGetMinX(tip);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MidY = CGRectGetMidY(v61);
  v13 = objc_msgSend_valueWithCGPoint_(v8, v11, MinX, MidY, v12);
  v14 = MEMORY[0x277CCAE60];
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  MidX = CGRectGetMidX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  MinY = CGRectGetMinY(v63);
  v19 = objc_msgSend_valueWithCGPoint_(v14, v17, MidX, MinY, v18);
  v20 = MEMORY[0x277CCAE60];
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  MaxX = CGRectGetMaxX(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v22 = CGRectGetMidY(v65);
  v25 = objc_msgSend_valueWithCGPoint_(v20, v23, MaxX, v22, v24);
  v26 = MEMORY[0x277CCAE60];
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v27 = CGRectGetMidX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MaxY = CGRectGetMaxY(v67);
  v31 = objc_msgSend_valueWithCGPoint_(v26, v29, v27, MaxY, v30);
  v59[0] = v13;
  v59[1] = v19;
  v59[2] = v25;
  v59[3] = v31;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v33, v34, v35, v59, 4);
  TSUCenterOfRect();
  v41 = v38;
  v42 = v39;
  v43 = 0;
  v44 = 3.40282347e38;
  do
  {
    v45 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v38, v39, v40, v43);
    objc_msgSend_CGPointValue(v45, v46, v47, v48, v49);
    v51 = v50;
    v53 = v52;
    objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self, v54, v50, v52, v55);
    TSUDistance();
    if (v56 < v44)
    {
      v44 = v56;
      v42 = v53;
      v41 = v51;
    }

    ++v43;
  }

  while (v43 != 4);

  v57 = v41;
  v58 = v42;
  result.y = v58;
  result.x = v57;
  return result;
}

- (BOOL)angleInRange:(double)range startAngle:(double)angle endAngle:(double)endAngle
{
  TSUNormalizeAngleInRadians();
  v6 = v5;
  TSUNormalizeAngleInRadians();
  if (v6 <= v7)
  {
    return 0;
  }

  v8 = v7;
  TSUNormalizeAngleInRadians();
  if (v8 > v9)
  {
    v9 = v9 + 6.28318531;
  }

  return v6 < v9;
}

- (void)setLayoutSystem:(TSCHChartPieWedgeElementLayoutSystem *)system
{
  v3 = *&system->coordinateSpace;
  self->_layoutSystem.centerPoint.y = system->centerPoint.y;
  *&self->_layoutSystem.coordinateSpace = v3;
}

- (TSCHChartSeries)series
{
  WeakRetained = objc_loadWeakRetained(&self->_series);

  return WeakRetained;
}

@end