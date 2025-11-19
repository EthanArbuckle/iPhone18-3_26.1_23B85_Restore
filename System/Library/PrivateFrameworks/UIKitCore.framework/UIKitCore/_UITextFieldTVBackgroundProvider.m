@interface _UITextFieldTVBackgroundProvider
- (CGRect)contentFrameForBounds:(CGRect)a3;
@end

@implementation _UITextFieldTVBackgroundProvider

- (CGRect)contentFrameForBounds:(CGRect)a3
{
  v3 = _UICGRectInsetZeroClamped(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, 0.0, 0.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end