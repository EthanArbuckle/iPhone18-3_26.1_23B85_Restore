@interface SXGradient
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (SXGradient)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint colors:(id)colors locations:(id)locations;
@end

@implementation SXGradient

- (SXGradient)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint colors:(id)colors locations:(id)locations
{
  y = endPoint.y;
  x = endPoint.x;
  v9 = point.y;
  v10 = point.x;
  colorsCopy = colors;
  locationsCopy = locations;
  v21.receiver = self;
  v21.super_class = SXGradient;
  v14 = [(SXGradient *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_startPoint.x = v10;
    v14->_startPoint.y = v9;
    v14->_endPoint.x = x;
    v14->_endPoint.y = y;
    v16 = [colorsCopy copy];
    colors = v15->_colors;
    v15->_colors = v16;

    v18 = [locationsCopy copy];
    locations = v15->_locations;
    v15->_locations = v18;
  }

  return v15;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end