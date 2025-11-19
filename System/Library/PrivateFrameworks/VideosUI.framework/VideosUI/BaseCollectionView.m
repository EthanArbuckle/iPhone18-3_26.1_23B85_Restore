@interface BaseCollectionView
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC8VideosUI18BaseCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation BaseCollectionView

- (_TtC8VideosUI18BaseCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E373BA64(v6);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v10 = OUTLINED_FUNCTION_4_279();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4205F14();
  sub_1E41FE804();
  v17 = v7;
  v18 = v6;
  v19 = v8;
  OUTLINED_FUNCTION_6_244();
  sub_1E4160F74();

  (*(v12 + 8))(v16, v10);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  v13 = v4;
  v14 = v5;
  sub_1E4161324();

  (*(v8 + 8))(v12, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(v4, &selRef_vuiScrollViewDidScroll_);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E4161514();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(v4, &selRef_vuiScrollViewDidEndScrollingAnimation_);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(v4, &selRef_vuiScrollViewDidEndDecelerating_);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E416178C(v6, a4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v8 = v7;
  v9 = v6;
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_6_12();
  sub_1E4161890();
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1E41619B8();

  return self & 1;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_17_0();
  sub_1E42062B4();
  v7 = v5;
  v8 = v6;
  OUTLINED_FUNCTION_6_12();
  v9 = sub_1E4161C50();

  return v9;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  OUTLINED_FUNCTION_5_257();
  sub_1E4162098();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  OUTLINED_FUNCTION_5_257();
  sub_1E41621B0();

  swift_unknownObjectRelease();
}

- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1E41622C8();

  swift_unknownObjectRelease();
}

@end