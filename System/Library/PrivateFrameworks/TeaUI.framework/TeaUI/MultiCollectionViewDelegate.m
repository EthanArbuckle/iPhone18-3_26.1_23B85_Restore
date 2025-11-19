@interface MultiCollectionViewDelegate
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)collectionView:(id)a3 shouldUpdateFocusInContext:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)collectionView:(id)a3 transitionLayoutForOldLayout:(id)a4 newLayout:(id)a5;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation MultiCollectionViewDelegate

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = MultiCollectionViewDelegate.responds(to:)(a3);

  return a3 & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidScroll(_:)(v4);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.collectionViewDidEndMultipleSelectionInteraction(_:)(v4);
}

- (BOOL)collectionView:(id)a3 shouldUpdateFocusInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:shouldUpdateFocusIn:)(v6, v7);

  return v9;
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:targetContentOffsetForProposedContentOffset:)(v7, __PAIR128__(*&y, *&x));

  v10 = v9.x;
  v11 = v9.y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  MultiCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(v8, v9, v10);
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  MultiCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  v12 = self;
  v13 = MultiCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  LOBYTE(self) = MultiCollectionViewDelegate.collectionView(_:shouldSpringLoadItemAt:with:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v26 = self;
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  sub_1D818E924();
  sub_1D818E924();
  sub_1D818E924();
  v20 = a3;
  v21 = v26;
  MultiCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_1D818E8E4();
  v22(v19, v7);

  return v23;
}

- (id)collectionView:(id)a3 transitionLayoutForOldLayout:(id)a4 newLayout:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12.super.super.isa = MultiCollectionViewDelegate.collectionView(_:transitionLayoutForOldLayout:newLayout:)(v8, v9, v10).super.super.isa;

  return v12.super.super.isa;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = self;
  MultiCollectionViewDelegate.indexPathForPreferredFocusedView(in:)(v8, v7);

  v10 = sub_1D818E994();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    v11 = sub_1D818E8E4();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  return v11;
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.viewForZooming(in:)(v6, v4);
  v8 = v7;

  return v8;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidZoom(_:)(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewWillBeginDragging(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewWillBeginDecelerating(_:)(v4);
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidScrollToTop(_:)(v4);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidEndScrollingAnimation(_:)(v4);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiCollectionViewDelegate.scrollViewDidChangeAdjustedContentInset(_:)(v4);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MultiCollectionViewDelegate.scrollViewShouldScrollToTop(_:)(v4);

  return self & 1;
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MultiCollectionViewDelegate.scrollViewWillBeginZooming(_:with:)(v6, a4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  MultiCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  MultiCollectionViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(v8, a4, a5);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  MultiCollectionViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v9, a5, x, y);
}

@end