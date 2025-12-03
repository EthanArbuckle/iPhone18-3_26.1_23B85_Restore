@interface TSDMutableTransformGradient
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size;
- (void)setGradientAngleInDegrees:(double)degrees;
- (void)setLastColor:(id)color;
- (void)setStartPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size;
@end

@implementation TSDMutableTransformGradient

- (void)setLastColor:(id)color
{
  colorCopy = color;
  v11 = objc_msgSend_gradientStops(self, v5, v6);
  v9 = objc_msgSend_count(v11, v7, v8);
  objc_msgSend_setColorOfStopAtIndex_toColor_(self, v10, v9 - 1, colorCopy);
}

- (void)setStartPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size
{
  objc_msgSend_p_scalePoint_fromShapeWithNaturalSize_(self, a2, v4, point.x, point.y, size.width, size.height);

  objc_msgSend_p_setStartPoint_(self, v6, v7);
}

- (void)setEndPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size
{
  objc_msgSend_p_scalePoint_fromShapeWithNaturalSize_(self, a2, v4, point.x, point.y, size.width, size.height);

  objc_msgSend_p_setEndPoint_(self, v6, v7);
}

- (void)setGradientAngleInDegrees:(double)degrees
{
  p_startPoint = &self->super._startPoint;
  p_endPoint = &self->super._endPoint;
  TSUMixPoints();
  TSUSubtractPoints();
  TSUPointLength();
  TSUDeltaFromAngle();
  TSUMultiplyPointScalar();
  TSUAddPoints();
  p_startPoint->x = v5;
  p_startPoint->y = v6;
  TSUSubtractPoints();
  p_endPoint->x = v7;
  p_endPoint->y = v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDTransformGradient, a2, zone);
  v7 = objc_msgSend_gradientStops(self, v5, v6);
  v10 = objc_msgSend_gradientType(self, v8, v9);
  objc_msgSend_opacity(self, v11, v12);
  v14 = objc_msgSend_initWithGradientStops_type_opacity_(v4, v13, v7, v10);

  v17 = objc_msgSend_i_advancedGradientFlag(self, v15, v16);
  objc_msgSend_i_setAdvancedGradientFlag_(v14, v18, v17);
  objc_msgSend_startPoint(self, v19, v20);
  objc_msgSend_p_setStartPoint_(v14, v21, v22);
  objc_msgSend_endPoint(self, v23, v24);
  objc_msgSend_p_setEndPoint_(v14, v25, v26);
  objc_msgSend_baseNaturalSize(self, v27, v28);
  objc_msgSend_p_setBaseNaturalSize_(v14, v29, v30);
  return v14;
}

@end