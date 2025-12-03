@interface BaseCollectionView
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC8VideosUI18BaseCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation BaseCollectionView

- (_TtC8VideosUI18BaseCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E373BA64(v6);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(scrollCopy, &selRef_vuiScrollViewDidScroll_);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1E4161514();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(animationCopy, &selRef_vuiScrollViewDidEndScrollingAnimation_);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E4161690(deceleratingCopy, &selRef_vuiScrollViewDidEndDecelerating_);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E416178C(draggingCopy, decelerate);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v8 = v7;
  v9 = v6;
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_6_12();
  sub_1E4161890();
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = sub_1E41619B8();

  return self & 1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
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

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_5_257();
  sub_1E4162098();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_5_257();
  sub_1E41621B0();

  swift_unknownObjectRelease();
}

- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E41622C8();

  swift_unknownObjectRelease();
}

@end