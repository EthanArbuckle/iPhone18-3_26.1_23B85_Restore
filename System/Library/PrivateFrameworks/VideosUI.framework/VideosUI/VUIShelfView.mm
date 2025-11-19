@interface VUIShelfView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setHeaderView:(id)a3;
@end

@implementation VUIShelfView

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v7 = v5;
    if (headerView)
    {
      [(UIView *)headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerView, a3);
    if (self->_headerView)
    {
      [(VUIShelfView *)self addSubview:?];
    }

    [(VUIShelfView *)self setNeedsLayout];
    v5 = v7;
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
    v14 = [(VUIShelfView *)self headerView];
    [v14 setFrame:{v7, 0.0, v11, v13}];

    v15 = [(VUIShelfView *)self collectionView];
    v16 = [(VUIShelfView *)self headerView];
    [v16 frame];
    MaxY = CGRectGetMaxY(v23);
    [(VUIShelfView *)self bounds];
    v19 = v18;
    [(VUIShelfView *)self bounds];
    [v15 setFrame:{0.0, MaxY, v19, v20 - v13}];
  }

  else
  {
    v15 = [(VUIShelfView *)self collectionView];
    [(VUIShelfView *)self bounds];
    [v15 setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = MEMORY[0x1E69DD2E8];
  [(VUIShelfView *)self bounds:a3.width];
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

  v11 = [(VUIShelfView *)self collectionView];
  v12 = [v11 collectionViewLayout];

  [v12 computedContentHeight];
  v14 = v10 + v13;

  v15 = width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end