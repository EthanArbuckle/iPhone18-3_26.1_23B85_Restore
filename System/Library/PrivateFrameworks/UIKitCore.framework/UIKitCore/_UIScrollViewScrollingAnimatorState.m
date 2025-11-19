@interface _UIScrollViewScrollingAnimatorState
- (CGPoint)force;
- (CGPoint)maximumVelocity;
- (CGPoint)offset;
@end

@implementation _UIScrollViewScrollingAnimatorState

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)maximumVelocity
{
  x = self->_maximumVelocity.x;
  y = self->_maximumVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)force
{
  x = self->_force.x;
  y = self->_force.y;
  result.y = y;
  result.x = x;
  return result;
}

@end