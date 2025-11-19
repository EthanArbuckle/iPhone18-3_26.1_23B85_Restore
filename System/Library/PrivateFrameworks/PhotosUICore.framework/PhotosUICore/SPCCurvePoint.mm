@interface SPCCurvePoint
+ (id)pointWithX:(double)a3 y:(double)a4;
- (CGPoint)CGPoint;
- (CGPoint)leftTangentPoint;
- (CGPoint)rightTangentPoint;
- (SPCCurvePoint)initWithX:(double)a3 y:(double)a4;
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

- (SPCCurvePoint)initWithX:(double)a3 y:(double)a4
{
  v7.receiver = self;
  v7.super_class = SPCCurvePoint;
  result = [(SPCCurvePoint *)&v7 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
  }

  return result;
}

+ (id)pointWithX:(double)a3 y:(double)a4
{
  v4 = [[SPCCurvePoint alloc] initWithX:a3 y:a4];

  return v4;
}

@end