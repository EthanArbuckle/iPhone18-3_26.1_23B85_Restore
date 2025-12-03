@interface VUIShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
@end

@implementation VUIShelfView

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v7 = viewCopy;
    if (headerView)
    {
      [(UIView *)headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerView, view);
    if (self->_headerView)
    {
      [(VUIShelfView *)self addSubview:?];
    }

    [(VUIShelfView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = VUIShelfView;
  [(VUIShelfView *)&v21 layoutSubviews];
  v3 = MEMORY[0x1E69DD2E8];
  [(VUIShelfView *)self bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v22)];
  headerView = self->_headerView;
  if (headerView)
  {
    v7 = v4;
    v8 = v5;
    [(VUIShelfView *)self bounds];
    [(UIView *)headerView sizeThatFits:v9 - (v7 + v8), 1.79769313e308];
    v11 = v10;
    v13 = v12;
    headerView = [(VUIShelfView *)self headerView];
    [headerView setFrame:{v7, 0.0, v11, v13}];

    collectionView = [(VUIShelfView *)self collectionView];
    headerView2 = [(VUIShelfView *)self headerView];
    [headerView2 frame];
    MaxY = CGRectGetMaxY(v23);
    [(VUIShelfView *)self bounds];
    v19 = v18;
    [(VUIShelfView *)self bounds];
    [collectionView setFrame:{0.0, MaxY, v19, v20 - v13}];
  }

  else
  {
    collectionView = [(VUIShelfView *)self collectionView];
    [(VUIShelfView *)self bounds];
    [collectionView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = MEMORY[0x1E69DD2E8];
  [(VUIShelfView *)self bounds:fits.width];
  [v5 vui_paddingForWindowWidth:CGRectGetWidth(v18)];
  headerView = self->_headerView;
  if (headerView)
  {
    [(UIView *)headerView sizeThatFits:width - (v6 + v7), 1.79769313e308];
    v10 = v9 + 0.0;
  }

  else
  {
    v10 = 0.0;
  }

  collectionView = [(VUIShelfView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [collectionViewLayout computedContentHeight];
  v14 = v10 + v13;

  v15 = width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end