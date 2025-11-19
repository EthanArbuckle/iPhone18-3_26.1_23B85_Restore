@interface VUIFavoriteBannerCollectionViewCell
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIFavoriteBannerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBannerView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation VUIFavoriteBannerCollectionViewCell

- (VUIFavoriteBannerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = VUIFavoriteBannerCollectionViewCell;
  v3 = [(VUIFocusableCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setBannerView:(id)a3
{
  v5 = a3;
  bannerView = self->_bannerView;
  if (bannerView != v5)
  {
    v15 = v5;
    [(VUIFavoriteBannerView *)bannerView removeFromSuperview];
    objc_storeStrong(&self->_bannerView, a3);
    [(VUIFavoriteBannerView *)self->_bannerView setContentMode:3];
    [(VUIFavoriteBannerView *)self->_bannerView setAutoresizingMask:18];
    v7 = self->_bannerView;
    v8 = [(VUIFavoriteBannerLayout *)self->_bannerLayout backgroundColor];
    [(VUIFavoriteBannerView *)v7 setBackgroundColor:v8];

    v9 = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    [v9 addSubview:self->_bannerView];

    v10 = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    v11 = [v10 layer];
    v12 = MEMORY[0x1E69DF6D0];
    [(VUIFavoriteBannerLayout *)self->_bannerLayout borderRadii];
    [v12 radiusFromCornerRadii:?];
    [v11 setCornerRadius:?];

    v13 = [(VUIFavoriteBannerCollectionViewCell *)self contentView];
    v14 = [v13 layer];
    [v14 setMasksToBounds:1];

    [(VUIFavoriteBannerCollectionViewCell *)self setNeedsLayout];
    v5 = v15;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    a3.width = self->_width;
  }

  [(VUIFavoriteBannerView *)self->_bannerView sizeThatFits:a3.width, 0.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    bannerView = self->_bannerView;

    [(VUIFavoriteBannerView *)bannerView setHighlighted:v3];
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