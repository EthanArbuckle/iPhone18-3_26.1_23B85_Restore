@interface ConnectedAppFooterViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation ConnectedAppFooterViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_25_1();
  sub_1E37910F0(v6);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

@end