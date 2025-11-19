@interface UIZoomTransitionInteractionContext
- (CGPoint)location;
- (CGVector)velocity;
@end

@implementation UIZoomTransitionInteractionContext

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGVector)velocity
{
  dx = self->_velocity.dx;
  dy = self->_velocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end