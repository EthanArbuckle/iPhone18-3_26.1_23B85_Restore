@interface EpicShowcaseViewContainer
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)pageChangeEventWithSender:(id)sender;
@end

@implementation EpicShowcaseViewContainer

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E411A2D4(only, width);

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pageChangeEventWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1E411AC28(senderCopy);
}

@end