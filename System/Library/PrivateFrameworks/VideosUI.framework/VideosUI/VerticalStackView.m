@interface VerticalStackView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (double)bottomMarginWithBaselineMargin:(double)a3;
@end

@implementation VerticalStackView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E3DA52DC(a4, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  v4 = self;
  v5 = sub_1E3DA6ACC(a3);

  return v5;
}

@end