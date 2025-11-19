@interface StoryChromeLayoutSpec
- (UIEdgeInsets)minimumMargins;
@end

@implementation StoryChromeLayoutSpec

- (UIEdgeInsets)minimumMargins
{
  top = self->minimumMargins.top;
  left = self->minimumMargins.left;
  bottom = self->minimumMargins.bottom;
  right = self->minimumMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end