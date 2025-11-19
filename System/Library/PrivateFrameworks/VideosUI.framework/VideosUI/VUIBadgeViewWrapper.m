@interface VUIBadgeViewWrapper
- (CGRect)badgeFrame;
- (CGSize)badgeSize;
@end

@implementation VUIBadgeViewWrapper

- (CGSize)badgeSize
{
  width = self->_badgeSize.width;
  height = self->_badgeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)badgeFrame
{
  x = self->_badgeFrame.origin.x;
  y = self->_badgeFrame.origin.y;
  width = self->_badgeFrame.size.width;
  height = self->_badgeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end