@interface UICollectionViewControllerWrapperView
- (id)_deepestActionResponder;
- (id)preferredFocusedView;
- (void)didMoveToSuperview;
@end

@implementation UICollectionViewControllerWrapperView

- (void)didMoveToSuperview
{
  v7 = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  v3 = [v7 collectionView];
  if (v3)
  {
    v4 = [(UIView *)self superview];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 superview];

      if (v6 != self)
      {
        [(UIView *)self bounds];
        [v3 setFrame:?];
        [(UIView *)self addSubview:v3];
        if (([v7 useLayoutToLayoutNavigationTransitions] & 1) == 0)
        {
          [v7 _updateCollectionViewLayoutAndDelegate:v3];
        }
      }
    }
  }
}

- (id)preferredFocusedView
{
  v2 = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  v3 = [v2 collectionView];

  return v3;
}

- (id)_deepestActionResponder
{
  v2 = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  v3 = [v2 collectionView];

  return v3;
}

@end