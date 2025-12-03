@interface VUIFavoriteBannerCollectionViewCell
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIFavoriteBannerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBannerView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation VUIFavoriteBannerCollectionViewCell

- (VUIFavoriteBannerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = VUIFavoriteBannerCollectionViewCell;
  v3 = [(VUIFocusableCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    bannerView = v3->_bannerView;
    v3->_bannerView = 0;

    bannerLayout = v4->_bannerLayout;
    v4->_bannerLayout = 0;

    [(VUIFavoriteBannerCollectionViewCell *)v4 setAutoresizingMask:1];
    [(VUIFocusableCollectionViewCell *)v4 setAllowsFocus:1];
  }

  return v4;
}

- (void)setBannerView:(id)view
{
  viewCopy = view;
  bannerView = self->_bannerView;
  if (bannerView != viewCopy)
  {
    v15 = viewCopy;
    [(VUIFavoriteBannerView *)bannerView removeFromSuperview];
    objc_storeStrong(&self->_bannerView, view);
    [(VUIFavoriteBannerView *)self->_bannerView setContentMode:3];
    [(VUIFavoriteBannerView *)self->_bannerView setAutoresizingMask:18];
    v7 = self->_bannerView;
    backgroundColor = [(VUIFavoriteBannerLayout *)self->_bannerLayout backgroundColor];
    [(VUIFavoriteBannerView *)v7 setBackgroundColor:backgroundColor];

    contentView = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    [contentView addSubview:self->_bannerView];

    contentView2 = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    layer = [contentView2 layer];
    v12 = MEMORY[0x1E69DF6D0];
    [(VUIFavoriteBannerLayout *)self->_bannerLayout borderRadii];
    [v12 radiusFromCornerRadii:?];
    [layer setCornerRadius:?];

    contentView3 = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    layer2 = [contentView3 layer];
    [layer2 setMasksToBounds:1];

    [(VUIFavoriteBannerCollectionViewCell *)self setNeedsLayout];
    viewCopy = v15;
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = VUIFavoriteBannerCollectionViewCell;
  [(VUIFavoriteBannerCollectionViewCell *)&v11 layoutSubviews];
  [(VUIFavoriteBannerCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUIFavoriteBannerView *)self->_bannerView setFrame:?];
  [(VUIFavoriteBannerView *)self->_bannerView setFrame:v4, v6, v8, v10];
}

- (CGSize)intrinsicContentSize
{
  [(VUIFavoriteBannerCollectionViewCell *)self sizeThatFits:self->_width, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.width <= 0.0)
  {
    fits.width = self->_width;
  }

  [(VUIFavoriteBannerView *)self->_bannerView sizeThatFits:fits.width, 0.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (objc_opt_respondsToSelector())
  {
    bannerView = self->_bannerView;

    [(VUIFavoriteBannerView *)bannerView setHighlighted:highlightedCopy];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VUIFavoriteBannerCollectionViewCell;
  [(VUIFocusableCollectionViewCell *)&v4 prepareForReuse];
  bannerLayout = self->_bannerLayout;
  self->_bannerLayout = 0;

  [(VUIFavoriteBannerView *)self->_bannerView prepareForCellReuse];
}

@end