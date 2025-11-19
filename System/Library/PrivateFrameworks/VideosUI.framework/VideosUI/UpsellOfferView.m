@interface UpsellOfferView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (void)handleGroupWatchActivityStateDidChange:(id)a3;
@end

@implementation UpsellOfferView

- (void)handleGroupWatchActivityStateDidChange:(id)a3
{
  v4 = sub_1E41FDF34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  v8 = self;
  sub_1E38EDC78();

  (*(v5 + 8))(v7, v4);
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1E38EDE80(width, height);

  v6 = OUTLINED_FUNCTION_17_4();
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E38EF5AC(a4, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end