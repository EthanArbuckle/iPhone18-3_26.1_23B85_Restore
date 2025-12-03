@interface _UITextFieldTVBackgroundProvider
- (CGRect)contentFrameForBounds:(CGRect)bounds;
@end

@implementation _UITextFieldTVBackgroundProvider

- (CGRect)contentFrameForBounds:(CGRect)bounds
{
  v3 = _UICGRectInsetZeroClamped(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, 0.0, 0.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end