@interface OverlayView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUILabel)accessibilityTitleLabel;
@end

@implementation OverlayView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E397E2E0(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (VUILabel)accessibilityTitleLabel
{
  selfCopy = self;
  v3 = sub_1E397EE8C();

  return v3;
}

@end