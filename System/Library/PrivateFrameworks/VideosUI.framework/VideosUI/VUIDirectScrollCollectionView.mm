@interface VUIDirectScrollCollectionView
- (VUIDirectScrollCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (double)_tapScrollDelta;
- (void)_downArrowAction:(id)action;
- (void)_upArrowAction:(id)action;
@end

@implementation VUIDirectScrollCollectionView

- (VUIDirectScrollCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VUIDirectScrollCollectionView;
  v4 = [(VUIDirectScrollCollectionView *)&v13 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    panGestureRecognizer = [(VUIDirectScrollCollectionView *)v4 panGestureRecognizer];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v14[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [panGestureRecognizer setAllowedTouchTypes:v9];

    [(VUIDirectScrollCollectionView *)v5 setBounces:1];
    [(VUIDirectScrollCollectionView *)v5 setShowsVerticalScrollIndicator:0];
    v10 = [objc_alloc(MEMORY[0x1E69DD670]) initWithTarget:v5 action:sel__downArrowAction_];
    [v10 setAllowedPressTypes:&unk_1F5E5E898];
    [(VUIDirectScrollCollectionView *)v5 addGestureRecognizer:v10];
    v11 = [objc_alloc(MEMORY[0x1E69DD670]) initWithTarget:v5 action:sel__upArrowAction_];
    [v11 setAllowedPressTypes:&unk_1F5E5E8B0];
    [(VUIDirectScrollCollectionView *)v5 addGestureRecognizer:v11];
  }

  return v5;
}

- (void)_downArrowAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] == 1 || objc_msgSend(actionCopy, "state") == 2)
  {
    [(VUIDirectScrollCollectionView *)self contentOffset];
    v5 = v4;
    v7 = v6;
    [(VUIDirectScrollCollectionView *)self contentSize];
    v9 = v8;
    [(VUIDirectScrollCollectionView *)self bounds];
    v10 = v9 - CGRectGetHeight(v18);
    [(VUIDirectScrollCollectionView *)self contentInset];
    v12 = v10 + v11;
    [(VUIDirectScrollCollectionView *)self _tapScrollDelta];
    v14 = v7 + v13;
    if (v12 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    [(VUIDirectScrollCollectionView *)self setContentOffset:1 animated:v5, v15];
  }
}

- (void)_upArrowAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] == 1 || objc_msgSend(actionCopy, "state") == 2)
  {
    [(VUIDirectScrollCollectionView *)self contentOffset];
    v5 = v4;
    v7 = v6;
    [(VUIDirectScrollCollectionView *)self _tapScrollDelta];
    [(VUIDirectScrollCollectionView *)self setContentOffset:1 animated:v5, fmax(v7 - v8, 0.0)];
  }
}

- (double)_tapScrollDelta
{
  collectionViewLayout = [(VUIDirectScrollCollectionView *)self collectionViewLayout];
  [collectionViewLayout itemSize];
  v4 = v3;
  [collectionViewLayout minimumLineSpacing];
  v6 = fmax(v4 + v5, 150.0);

  return v6;
}

@end