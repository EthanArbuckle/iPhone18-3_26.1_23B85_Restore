@interface UIWebElementActionInfo
- (CGPoint)interactionLocation;
@end

@implementation UIWebElementActionInfo

- (CGPoint)interactionLocation
{
  x = self->_interactionLocation.x;
  y = self->_interactionLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end