@interface StyledProgressBarView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (double)accessibilityProgress;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
@end

@implementation StyledProgressBarView

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v9 = a5;
  v10 = self;
  sub_1E41ED0D4(a3, a4, a5);
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E41ED274(a4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)accessibilityProgress
{
  v2 = self;
  sub_1E41EE998();
  v4 = v3;

  return v4;
}

@end