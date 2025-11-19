@interface CarouselViewContainer
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)pageChangeEventWithSender:(id)a3;
@end

@implementation CarouselViewContainer

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E3EE0304(a4, width);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pageChangeEventWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3EE0CD4(v4);
}

@end