@interface VUIDebugContainerView
- (void)layoutSubviews;
- (void)setCollectionView:(id)view;
@end

@implementation VUIDebugContainerView

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  v7 = viewCopy;
  if (collectionView != viewCopy)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    if (self->_collectionView)
    {
      [(VUIDebugContainerView *)self addSubview:?];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIDebugContainerView;
  [(VUIDebugContainerView *)&v3 layoutSubviews];
  [(VUIDebugContainerView *)self bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];
}

@end