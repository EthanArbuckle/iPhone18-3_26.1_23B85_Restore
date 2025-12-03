@interface PlaybackStatusView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (double)bottomMarginWithBaselineMargin:(double)margin;
@end

@implementation PlaybackStatusView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E37D2FC0(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  selfCopy = self;
  sub_1E37D4154();
  v5 = v4;

  return v5;
}

@end