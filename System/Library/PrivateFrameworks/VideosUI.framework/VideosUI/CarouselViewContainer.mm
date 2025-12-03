@interface CarouselViewContainer
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)pageChangeEventWithSender:(id)sender;
@end

@implementation CarouselViewContainer

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E3EE0304(only, width);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pageChangeEventWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1E3EE0CD4(senderCopy);
}

@end