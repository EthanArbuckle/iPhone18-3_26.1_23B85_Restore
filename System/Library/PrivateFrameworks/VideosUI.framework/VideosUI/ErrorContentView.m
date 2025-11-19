@interface ErrorContentView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIView)accessibilityDescriptionView;
- (UIView)accessibilityTitleView;
@end

@implementation ErrorContentView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3A2CDAC(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIView)accessibilityTitleView
{
  v2 = self;
  v3 = sub_1E3A2D420();

  return v3;
}

- (UIView)accessibilityDescriptionView
{
  v2 = self;
  v3 = sub_1E3A2D498();

  return v3;
}

@end