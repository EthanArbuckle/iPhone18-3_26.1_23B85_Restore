@interface UIEventSessionHeatMapTouch
- (CGPoint)lastLocation;
- (UIEventSessionHeatMapTouch)init;
- (double)touchDownDuration;
- (void)setLastVisitedCoordinate:(id *)coordinate;
@end

@implementation UIEventSessionHeatMapTouch

- (UIEventSessionHeatMapTouch)init
{
  v3.receiver = self;
  v3.super_class = UIEventSessionHeatMapTouch;
  result = [(UIEventSessionHeatMapTouch *)&v3 init];
  if (result)
  {
    result->_upDownState = 0;
    result->_tapDragState = 0;
    result->_dragDistance = 0.0;
  }

  return result;
}

- (double)touchDownDuration
{
  if (!self->_touchDownTime)
  {
    return 0.0;
  }

  touchUpTime = self->_touchUpTime;
  if (!touchUpTime)
  {
    return 0.0;
  }

  [(NSDate *)touchUpTime timeIntervalSinceDate:?];
  return result;
}

- (CGPoint)lastLocation
{
  x = self->_lastLocation.x;
  y = self->_lastLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setLastVisitedCoordinate:(id *)coordinate
{
  v3 = *&coordinate->var0;
  *&self->_lastVisitedCoordinate.isValid = *&coordinate->var2;
  *&self->_lastVisitedCoordinate.row = v3;
}

@end