@interface VUICarouselView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for;
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for;
- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation;
- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation VUICarouselView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  OUTLINED_FUNCTION_5_16();
  v5 = v4;
  OUTLINED_FUNCTION_6_12();
  sub_1E3AFD2D4();
  OUTLINED_FUNCTION_18_3();

  v6 = OUTLINED_FUNCTION_17_4();
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1E3AFDD08();

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_118();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  sub_1E41FE804();
  viewCopy = view;
  v9 = v4;
  v10 = sub_1E3AFDDA0(v9, v5);

  v11 = OUTLINED_FUNCTION_53();
  v12(v11);

  return v10;
}

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
{
  OUTLINED_FUNCTION_118();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  sub_1E41FE804();
  viewCopy = view;
  v9 = v4;
  sub_1E3AFE1CC(v9, v5);

  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
}

- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E41FE804();
  viewCopy = view;
  displayCopy = display;
  selfCopy = self;
  sub_1E3AFE5B0(selfCopy, displayCopy);

  (*(v10 + 8))(v14, v8);
}

- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E41FE804();
  (*(v7 + 8))(v11, v5);
}

- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4205F14();
  sub_1E41FE804();

  (*(v8 + 8))(v12, v6);
}

- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_1E3AFE8F0();
}

- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v8 = v7;
  v10 = v6;
  OUTLINED_FUNCTION_6_12();
  sub_1E3AFED08(v9);
}

@end