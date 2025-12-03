@interface VerticalStackView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (double)bottomMarginWithBaselineMargin:(double)margin;
@end

@implementation VerticalStackView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E3DA52DC(only, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  selfCopy = self;
  v5 = sub_1E3DA6ACC(margin);

  return v5;
}

@end