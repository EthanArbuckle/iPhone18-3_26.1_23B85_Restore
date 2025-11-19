@interface SXGradient
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (SXGradient)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 colors:(id)a5 locations:(id)a6;
@end

@implementation SXGradient

- (SXGradient)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 colors:(id)a5 locations:(id)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
  v13 = a6;
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
    v16 = [v12 copy];
    colors = v15->_colors;
    v15->_colors = v16;

    v18 = [v13 copy];
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