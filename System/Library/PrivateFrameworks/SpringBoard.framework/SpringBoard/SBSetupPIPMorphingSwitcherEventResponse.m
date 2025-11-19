@interface SBSetupPIPMorphingSwitcherEventResponse
- (CGRect)appLayoutBoundingBox;
@end

@implementation SBSetupPIPMorphingSwitcherEventResponse

- (CGRect)appLayoutBoundingBox
{
  x = self->_appLayoutBoundingBox.origin.x;
  y = self->_appLayoutBoundingBox.origin.y;
  width = self->_appLayoutBoundingBox.size.width;
  height = self->_appLayoutBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end