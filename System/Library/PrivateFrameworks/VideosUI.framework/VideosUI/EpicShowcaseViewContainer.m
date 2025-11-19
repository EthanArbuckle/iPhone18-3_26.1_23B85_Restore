@interface EpicShowcaseViewContainer
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)pageChangeEventWithSender:(id)a3;
@end

@implementation EpicShowcaseViewContainer

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E411A2D4(a4, width);

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pageChangeEventWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E411AC28(v4);
}

@end