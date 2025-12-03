@interface ErrorContentView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIView)accessibilityDescriptionView;
- (UIView)accessibilityTitleView;
@end

@implementation ErrorContentView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3A2CDAC(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIView)accessibilityTitleView
{
  selfCopy = self;
  v3 = sub_1E3A2D420();

  return v3;
}

- (UIView)accessibilityDescriptionView
{
  selfCopy = self;
  v3 = sub_1E3A2D498();

  return v3;
}

@end