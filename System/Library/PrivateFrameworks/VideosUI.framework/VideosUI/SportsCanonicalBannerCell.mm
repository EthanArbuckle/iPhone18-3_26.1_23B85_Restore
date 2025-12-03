@interface SportsCanonicalBannerCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)mainImageLoadedNotificationHandler;
- (void)onSystemTraitCollectionDidChange:(id)change;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation SportsCanonicalBannerCell

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E4105D30();
}

- (void)vui_cellWillBeDisplayed
{
  selfCopy = self;
  OUTLINED_FUNCTION_14_184();
  sub_1E4105E34(v2, v3);
}

- (void)vui_cellDidEndDisplaying
{
  selfCopy = self;
  OUTLINED_FUNCTION_13_190();
  sub_1E4105E34(v2, v3);
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E4105EE0(only, width, height);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)mainImageLoadedNotificationHandler
{
  selfCopy = self;
  sub_1E4108AC0();
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
  sub_1E4108CB4();

  (*(v6 + 8))(v9, v4);
}

@end