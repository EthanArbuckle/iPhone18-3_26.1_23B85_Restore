@interface UICollectionViewControllerWrapperView
- (id)_deepestActionResponder;
- (id)preferredFocusedView;
- (void)didMoveToSuperview;
@end

@implementation UICollectionViewControllerWrapperView

- (void)didMoveToSuperview
{
  _collectionViewController = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];
  if (collectionView)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      v5 = superview;
      superview2 = [collectionView superview];

      if (superview2 != self)
      {
        [(UIView *)self bounds];
        [collectionView setFrame:?];
        [(UIView *)self addSubview:collectionView];
        if (([_collectionViewController useLayoutToLayoutNavigationTransitions] & 1) == 0)
        {
          [_collectionViewController _updateCollectionViewLayoutAndDelegate:collectionView];
        }
      }
    }
  }
}

- (id)preferredFocusedView
{
  _collectionViewController = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];

  return collectionView;
}

- (id)_deepestActionResponder
{
  _collectionViewController = [(UICollectionViewControllerWrapperView *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];

  return collectionView;
}

@end