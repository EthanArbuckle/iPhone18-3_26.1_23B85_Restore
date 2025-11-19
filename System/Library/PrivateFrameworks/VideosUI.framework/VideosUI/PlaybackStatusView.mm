@interface PlaybackStatusView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (double)bottomMarginWithBaselineMargin:(double)a3;
@end

@implementation PlaybackStatusView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E37D2FC0(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  v3 = self;
  sub_1E37D4154();
  v5 = v4;

  return v5;
}

@end