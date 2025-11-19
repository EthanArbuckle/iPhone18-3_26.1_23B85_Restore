@interface SwipeActionCollectionView
- (BOOL)allowsSelection;
- (BOOL)coordinatingSwipeActionShouldCancel;
- (CGPoint)contentOffset;
- (UIPanGestureRecognizer)coordinatingSwipeActionPanGestureRecognizer;
- (void)coordinatingResetSwipeAction;
- (void)didMoveToWindow;
- (void)handleFromCoordinatingGestureWithGestureRecognizer:(id)a3;
- (void)handlePanGestureWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4;
- (void)performBatchUpdates:(id)a3 completion:(id)a4;
- (void)reloadData;
- (void)setAllowsSelection:(BOOL)a3;
- (void)setContentOffset:(CGPoint)a3;
@end

@implementation SwipeActionCollectionView

- (CGPoint)contentOffset
{
  v2 = self;
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
  v2 = self;
  SwipeActionCollectionView.reloadData()();
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  SwipeActionCollectionView.contentOffset.setter(x, y);
}

- (BOOL)allowsSelection
{
  v2 = self;
  v3 = SwipeActionCollectionView.allowsSelection.getter();

  return v3 & 1;
}

- (void)didMoveToWindow
{
  v2 = self;
  SwipeActionCollectionView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  SwipeActionCollectionView.layoutSubviews()();
}

- (void)setAllowsSelection:(BOOL)a3
{
  v4 = self;
  SwipeActionCollectionView.allowsSelection.setter(a3);
}

- (void)handlePanGestureWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D80836C4(v4);
}

- (void)handleFromCoordinatingGestureWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8083774(v4);
}

- (UIPanGestureRecognizer)coordinatingSwipeActionPanGestureRecognizer
{
  v2 = SwipeActionCollectionView.coordinatingSwipeActionPanGestureRecognizer.getter();

  return v2;
}

- (BOOL)coordinatingSwipeActionShouldCancel
{
  v2 = self;
  v3 = SwipeActionCollectionView.coordinatingSwipeActionShouldCancel.getter();

  return v3;
}

- (void)coordinatingResetSwipeAction
{
  v2 = self;
  SwipeActionCollectionView.coordinatingResetSwipeAction()();
}

- (void)performBatchUpdates:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
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
  v12 = self;
  SwipeActionCollectionView.performBatchUpdates(_:completion:)(v6, v9, v11, v10);
  sub_1D7E0E10C(v11);
  sub_1D7E0E10C(v6);
}

- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4
{
  v6 = self;
  SwipeActionCollectionView.moveSection(_:toSection:)(a3, a4);
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1D818E924();
  sub_1D818E924();
  v12 = self;
  SwipeActionCollectionView.moveItem(at:to:)();

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end