@interface CloseButton
- (BOOL)accessibilityActivate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation CloseButton

- (CGSize)intrinsicContentSize
{
  v2 = 28.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 28.0;
  v4 = 28.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  CloseButton.accessibilityActivate()();

  return 1;
}

@end