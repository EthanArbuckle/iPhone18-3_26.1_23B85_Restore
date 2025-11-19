@interface PUBadgeTransitionInfo
- (CGRect)frame;
- (UIOffset)badgesOffset;
@end

@implementation PUBadgeTransitionInfo

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

- (UIOffset)badgesOffset
{
  horizontal = self->_badgesOffset.horizontal;
  vertical = self->_badgesOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end