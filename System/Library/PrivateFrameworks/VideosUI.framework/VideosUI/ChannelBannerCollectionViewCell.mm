@interface ChannelBannerCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)onSystemTraitCollectionDidChange:(id)change;
@end

@implementation ChannelBannerCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_6_12();
  sub_1E3D5DAF0(only, v6);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)onSystemTraitCollectionDidChange:(id)change
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  selfCopy = self;
  OUTLINED_FUNCTION_31_4();
  sub_1E3D5F93C();

  (*(v6 + 8))(v9, v4);
}

@end