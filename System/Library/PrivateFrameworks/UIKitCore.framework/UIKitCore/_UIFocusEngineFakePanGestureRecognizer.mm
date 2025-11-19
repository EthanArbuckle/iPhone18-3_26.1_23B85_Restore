@interface _UIFocusEngineFakePanGestureRecognizer
- (CGPoint)digitizerLocation;
- (CGPoint)velocity;
@end

@implementation _UIFocusEngineFakePanGestureRecognizer

- (CGPoint)digitizerLocation
{
  x = self->_digitizerLocation.x;
  y = self->_digitizerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end