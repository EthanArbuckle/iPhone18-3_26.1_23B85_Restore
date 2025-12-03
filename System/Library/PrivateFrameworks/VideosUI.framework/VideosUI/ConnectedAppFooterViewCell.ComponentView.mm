@interface ConnectedAppFooterViewCell.ComponentView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation ConnectedAppFooterViewCell.ComponentView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_25_1();
  sub_1E37914AC(v6, v7, v8);
  OUTLINED_FUNCTION_18_3();

  v9 = OUTLINED_FUNCTION_17_4();
  result.height = v10;
  result.width = v9;
  return result;
}

@end