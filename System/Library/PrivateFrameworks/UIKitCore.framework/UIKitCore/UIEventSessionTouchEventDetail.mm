@interface UIEventSessionTouchEventDetail
- (CGPoint)lastLocation;
- (UIEventSessionTouchEventDetail)init;
@end

@implementation UIEventSessionTouchEventDetail

- (UIEventSessionTouchEventDetail)init
{
  v3.receiver = self;
  v3.super_class = UIEventSessionTouchEventDetail;
  result = [(UIEventSessionTouchEventDetail *)&v3 init];
  if (result)
  {
    *&result->_windowSection = 0u;
    *&result->_upDownState = 0u;
  }

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

@end