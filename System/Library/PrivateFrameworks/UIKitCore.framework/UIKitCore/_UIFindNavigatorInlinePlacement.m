@interface _UIFindNavigatorInlinePlacement
- (CGSize)intrinsicContentSize;
@end

@implementation _UIFindNavigatorInlinePlacement

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end