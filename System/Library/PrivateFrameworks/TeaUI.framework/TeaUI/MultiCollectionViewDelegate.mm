@interface MultiCollectionViewDelegate
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)collectionView:(id)view shouldUpdateFocusInContext:(id)context;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionView:(id)view transitionLayoutForOldLayout:(id)layout newLayout:(id)newLayout;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)viewForZoomingInScrollView:(id)view;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MultiCollectionViewDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  LOBYTE(selector) = MultiCollectionViewDelegate.responds(to:)(selector);

  return selector & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  MultiCollectionViewDelegate.collectionViewDidEndMultipleSelectionInteraction(_:)(interactionCopy);
}

- (BOOL)collectionView:(id)view shouldUpdateFocusInContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  selfCopy = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:shouldUpdateFocusIn:)(viewCopy, contextCopy);

  return v9;
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  selfCopy = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:targetContentOffsetForProposedContentOffset:)(viewCopy, __PAIR128__(*&y, *&x));

  v10 = v9.x;
  v11 = v9.y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(viewCopy, configurationCopy);

  return v9;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = MultiCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(viewCopy, configurationCopy);

  return v9;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  MultiCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(viewCopy, contextCopy, coordinatorCopy);
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  v13 = MultiCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(self) = MultiCollectionViewDelegate.collectionView(_:shouldSpringLoadItemAt:with:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
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
  viewCopy = view;
  v21 = selfCopy;
  MultiCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_1D818E8E4();
  v22(v19, v7);

  return v23;
}

- (id)collectionView:(id)view transitionLayoutForOldLayout:(id)layout newLayout:(id)newLayout
{
  viewCopy = view;
  layoutCopy = layout;
  newLayoutCopy = newLayout;
  selfCopy = self;
  v12.super.super.isa = MultiCollectionViewDelegate.collectionView(_:transitionLayoutForOldLayout:newLayout:)(viewCopy, layoutCopy, newLayoutCopy).super.super.isa;

  return v12.super.super.isa;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  viewCopy = view;
  selfCopy = self;
  MultiCollectionViewDelegate.indexPathForPreferredFocusedView(in:)(viewCopy, v7);

  v10 = sub_1D818E994();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    v11 = sub_1D818E8E4();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  return v11;
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  MultiCollectionViewDelegate.viewForZooming(in:)(v6, viewCopy);
  v8 = v7;

  return v8;
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidZoom(_:)(zoomCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewWillBeginDragging(_:)(draggingCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewWillBeginDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidScrollToTop(_:)(topCopy);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidEndScrollingAnimation(_:)(animationCopy);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidChangeAdjustedContentInset(_:)(insetCopy);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = MultiCollectionViewDelegate.scrollViewShouldScrollToTop(_:)(topCopy);

  return self & 1;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewWillBeginZooming(_:with:)(zoomingCopy, view);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(draggingCopy, decelerate);
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(zoomingCopy, view, scale);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  MultiCollectionViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x, y);
}

@end