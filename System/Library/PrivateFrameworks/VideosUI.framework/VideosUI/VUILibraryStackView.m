@interface VUILibraryStackView
- (VUILibraryStackView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCollectionView:(id)a3;
@end

@implementation VUILibraryStackView

- (VUILibraryStackView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUILibraryStackView;
  v3 = [(VUILibraryStackView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILibraryStackView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  if (collectionView != v5)
  {
    v7 = v5;
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
    if (self->_collectionView)
    {
      [(VUILibraryStackView *)self addSubview:?];
    }

    [(VUILibraryStackView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  [(VUILibraryStackView *)self bounds];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setFrame:?];
}

@end