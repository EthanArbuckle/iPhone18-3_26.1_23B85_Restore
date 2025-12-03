@interface InsettedSeparatorDecorationView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation InsettedSeparatorDecorationView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_25_1();
  sub_1E3DAFCC8(v7);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end