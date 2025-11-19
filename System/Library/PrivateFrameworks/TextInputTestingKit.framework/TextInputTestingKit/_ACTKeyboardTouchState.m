@interface _ACTKeyboardTouchState
- (CGPoint)initialDragPoint;
@end

@implementation _ACTKeyboardTouchState

- (CGPoint)initialDragPoint
{
  x = self->_initialDragPoint.x;
  y = self->_initialDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end