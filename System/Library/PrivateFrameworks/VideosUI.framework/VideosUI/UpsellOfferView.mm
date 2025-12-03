@interface UpsellOfferView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (void)handleGroupWatchActivityStateDidChange:(id)change;
@end

@implementation UpsellOfferView

- (void)handleGroupWatchActivityStateDidChange:(id)change
{
  v4 = sub_1E41FDF34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E38EDC78();

  (*(v5 + 8))(v7, v4);
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1E38EDE80(width, height);

  v6 = OUTLINED_FUNCTION_17_4();
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E38EF5AC(only, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end