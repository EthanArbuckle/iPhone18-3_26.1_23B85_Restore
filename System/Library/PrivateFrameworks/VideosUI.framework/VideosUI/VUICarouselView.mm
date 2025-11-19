@interface VUICarouselView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3;
- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation VUICarouselView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1E3AFDD08();

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  OUTLINED_FUNCTION_118();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  sub_1E41FE804();
  v8 = a3;
  v9 = v4;
  v10 = sub_1E3AFDDA0(v9, v5);

  v11 = OUTLINED_FUNCTION_53();
  v12(v11);

  return v10;
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  OUTLINED_FUNCTION_118();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  sub_1E41FE804();
  v8 = a3;
  v9 = v4;
  sub_1E3AFE1CC(v9, v5);

  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
}

- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E41FE804();
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_1E3AFE5B0(v17, v16);

  (*(v10 + 8))(v14, v8);
}

- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5
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

- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6
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

- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3AFE8F0();
}

- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v8 = v7;
  v10 = v6;
  OUTLINED_FUNCTION_6_12();
  sub_1E3AFED08(v9);
}

@end