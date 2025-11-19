@interface SportsCanonicalBannerCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)mainImageLoadedNotificationHandler;
- (void)onSystemTraitCollectionDidChange:(id)a3;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation SportsCanonicalBannerCell

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E4105D30();
}

- (void)vui_cellWillBeDisplayed
{
  v4 = self;
  OUTLINED_FUNCTION_14_184();
  sub_1E4105E34(v2, v3);
}

- (void)vui_cellDidEndDisplaying
{
  v4 = self;
  OUTLINED_FUNCTION_13_190();
  sub_1E4105E34(v2, v3);
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E4105EE0(a4, width, height);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)mainImageLoadedNotificationHandler
{
  v2 = self;
  sub_1E4108AC0();
}

- (void)onSystemTraitCollectionDidChange:(id)a3
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  v10 = self;
  OUTLINED_FUNCTION_31_4();
  sub_1E4108CB4();

  (*(v6 + 8))(v9, v4);
}

@end