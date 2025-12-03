@interface SwipeActionCollectionView
- (BOOL)allowsSelection;
- (BOOL)coordinatingSwipeActionShouldCancel;
- (CGPoint)contentOffset;
- (UIPanGestureRecognizer)coordinatingSwipeActionPanGestureRecognizer;
- (void)coordinatingResetSwipeAction;
- (void)didMoveToWindow;
- (void)handleFromCoordinatingGestureWithGestureRecognizer:(id)recognizer;
- (void)handlePanGestureWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)reloadData;
- (void)setAllowsSelection:(BOOL)selection;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation SwipeActionCollectionView

- (CGPoint)contentOffset
{
  selfCopy = self;
  SwipeActionCollectionView.contentOffset.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)reloadData
{
  selfCopy = self;
  SwipeActionCollectionView.reloadData()();
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  SwipeActionCollectionView.contentOffset.setter(x, y);
}

- (BOOL)allowsSelection
{
  selfCopy = self;
  v3 = SwipeActionCollectionView.allowsSelection.getter();

  return v3 & 1;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  SwipeActionCollectionView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  SwipeActionCollectionView.layoutSubviews()();
}

- (void)setAllowsSelection:(BOOL)selection
{
  selfCopy = self;
  SwipeActionCollectionView.allowsSelection.setter(selection);
}

- (void)handlePanGestureWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D80836C4(recognizerCopy);
}

- (void)handleFromCoordinatingGestureWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D8083774(recognizerCopy);
}

- (UIPanGestureRecognizer)coordinatingSwipeActionPanGestureRecognizer
{
  v2 = SwipeActionCollectionView.coordinatingSwipeActionPanGestureRecognizer.getter();

  return v2;
}

- (BOOL)coordinatingSwipeActionShouldCancel
{
  selfCopy = self;
  v3 = SwipeActionCollectionView.coordinatingSwipeActionShouldCancel.getter();

  return v3;
}

- (void)coordinatingResetSwipeAction
{
  selfCopy = self;
  SwipeActionCollectionView.coordinatingResetSwipeAction()();
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  v6 = _Block_copy(updates);
  v7 = _Block_copy(completion);
  v8 = v7;
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = sub_1D7F52DBC;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_1D8085E78;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  selfCopy = self;
  SwipeActionCollectionView.performBatchUpdates(_:completion:)(v6, v9, v11, v10);
  sub_1D7E0E10C(v11);
  sub_1D7E0E10C(v6);
}

- (void)moveSection:(int64_t)section toSection:(int64_t)toSection
{
  selfCopy = self;
  SwipeActionCollectionView.moveSection(_:toSection:)(section, toSection);
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1D818E924();
  sub_1D818E924();
  selfCopy = self;
  SwipeActionCollectionView.moveItem(at:to:)();

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end