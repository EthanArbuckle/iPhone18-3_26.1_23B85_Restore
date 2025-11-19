@interface MonogramLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)zoomSourceView;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation MonogramLockupCell

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DCCC98(v4);
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3DCD750(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DCE9A8(v4);
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E3DCF238();

  return v3;
}

@end