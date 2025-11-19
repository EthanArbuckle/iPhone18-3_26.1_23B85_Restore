@interface UITextDragFinishState
- (CGPoint)location;
@end

@implementation UITextDragFinishState

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end