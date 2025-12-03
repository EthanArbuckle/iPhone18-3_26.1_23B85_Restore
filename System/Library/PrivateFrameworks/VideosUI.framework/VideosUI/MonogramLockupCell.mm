@interface MonogramLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)vui_setHighlighted:(BOOL)highlighted;
@end

@implementation MonogramLockupCell

- (void)setIsAccessibilityElement:(BOOL)element
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DCCC98(v4);
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3DCD750(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DCE9A8(v4);
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3DCF238();

  return v3;
}

@end