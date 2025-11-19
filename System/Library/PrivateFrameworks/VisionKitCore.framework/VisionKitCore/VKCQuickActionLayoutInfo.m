@interface VKCQuickActionLayoutInfo
- (CGRect)desiredFrame;
- (CGRect)frame;
@end

@implementation VKCQuickActionLayoutInfo

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)desiredFrame
{
  x = self->_desiredFrame.origin.x;
  y = self->_desiredFrame.origin.y;
  width = self->_desiredFrame.size.width;
  height = self->_desiredFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end