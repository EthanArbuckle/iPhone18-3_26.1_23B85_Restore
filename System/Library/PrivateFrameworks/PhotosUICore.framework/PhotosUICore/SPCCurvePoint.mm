@interface SPCCurvePoint
+ (id)pointWithX:(double)x y:(double)y;
- (CGPoint)CGPoint;
- (CGPoint)leftTangentPoint;
- (CGPoint)rightTangentPoint;
- (SPCCurvePoint)initWithX:(double)x y:(double)y;
@end

@implementation SPCCurvePoint

- (CGPoint)rightTangentPoint
{
  objc_copyStruct(v4, &self->_rightTangentPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)leftTangentPoint
{
  objc_copyStruct(v4, &self->_leftTangentPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)CGPoint
{
  x = self->_x;
  y = self->_y;
  result.y = y;
  result.x = x;
  return result;
}

- (SPCCurvePoint)initWithX:(double)x y:(double)y
{
  v7.receiver = self;
  v7.super_class = SPCCurvePoint;
  result = [(SPCCurvePoint *)&v7 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
  }

  return result;
}

+ (id)pointWithX:(double)x y:(double)y
{
  v4 = [[SPCCurvePoint alloc] initWithX:x y:y];

  return v4;
}

@end