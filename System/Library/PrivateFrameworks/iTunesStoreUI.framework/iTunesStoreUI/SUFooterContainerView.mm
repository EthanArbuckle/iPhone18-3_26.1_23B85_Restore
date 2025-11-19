@interface SUFooterContainerView
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setFooterVisible:(BOOL)a3;
@end

@implementation SUFooterContainerView

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  v7 = v5;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    if (self->_contentView)
    {
      [(SUFooterContainerView *)self addSubview:?];
    }
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  v7 = v5;
  if (footerView != v5)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    if (self->_footerView)
    {
      [(SUFooterContainerView *)self addSubview:?];
    }
  }
}

- (void)setFooterVisible:(BOOL)a3
{
  if (self->_footerVisible != a3)
  {
    self->_footerVisible = a3;
    [(SUFooterContainerView *)self layoutSubviews];
  }
}

- (void)layoutSubviews
{
  [(SUFooterContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  MinY = v9;
  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    v13 = v12;
    footerVisible = self->_footerVisible;
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = MinY;
    MaxY = CGRectGetMaxY(v19);
    if (footerVisible)
    {
      v16 = MaxY - v13;
    }

    else
    {
      v16 = MaxY;
    }

    [(UIView *)self->_footerView setFrame:0.0, v16, v8, v13];
    v20.origin.x = 0.0;
    v20.origin.y = v16;
    v20.size.width = v8;
    v20.size.height = v13;
    MinY = CGRectGetMinY(v20);
  }

  contentView = self->_contentView;
  if (contentView)
  {

    [(UIView *)contentView setFrame:v4, v6, v8, MinY];
  }
}

@end