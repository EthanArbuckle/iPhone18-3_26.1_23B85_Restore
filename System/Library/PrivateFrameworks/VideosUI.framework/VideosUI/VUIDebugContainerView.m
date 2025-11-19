@interface VUIDebugContainerView
- (void)layoutSubviews;
- (void)setCollectionView:(id)a3;
@end

@implementation VUIDebugContainerView

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  v7 = v5;
  if (collectionView != v5)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
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