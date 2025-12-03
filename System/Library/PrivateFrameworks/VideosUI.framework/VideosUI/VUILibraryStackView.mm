@interface VUILibraryStackView
- (VUILibraryStackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCollectionView:(id)view;
@end

@implementation VUILibraryStackView

- (VUILibraryStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUILibraryStackView;
  v3 = [(VUILibraryStackView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILibraryStackView *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];
  }

  return v3;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  if (collectionView != viewCopy)
  {
    v7 = viewCopy;
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    if (self->_collectionView)
    {
      [(VUILibraryStackView *)self addSubview:?];
    }

    [(VUILibraryStackView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  [(VUILibraryStackView *)self bounds];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setFrame:?];
}

@end