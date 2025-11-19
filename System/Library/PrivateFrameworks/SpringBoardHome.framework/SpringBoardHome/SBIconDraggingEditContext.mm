@interface SBIconDraggingEditContext
- (CGPoint)enteredScreenLocation;
@end

@implementation SBIconDraggingEditContext

- (CGPoint)enteredScreenLocation
{
  x = self->_enteredScreenLocation.x;
  y = self->_enteredScreenLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end