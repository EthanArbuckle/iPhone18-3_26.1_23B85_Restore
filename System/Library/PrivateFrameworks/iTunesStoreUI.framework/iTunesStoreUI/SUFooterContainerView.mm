@interface SUFooterContainerView
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setFooterView:(id)view;
- (void)setFooterVisible:(BOOL)visible;
@end

@implementation SUFooterContainerView

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  v7 = viewCopy;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      [(SUFooterContainerView *)self addSubview:?];
    }
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  v7 = viewCopy;
  if (footerView != viewCopy)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    if (self->_footerView)
    {
      [(SUFooterContainerView *)self addSubview:?];
    }
  }
}

- (void)setFooterVisible:(BOOL)visible
{
  if (self->_footerVisible != visible)
  {
    self->_footerVisible = visible;
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