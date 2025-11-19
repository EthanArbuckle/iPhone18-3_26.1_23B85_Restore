@interface SUStorePageView
- (UIEdgeInsets)contentViewInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackdropView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setContentViewInsets:(UIEdgeInsets)a3;
- (void)setHeaderView:(id)a3;
- (void)setPreviewOverlayView:(id)a3;
@end

@implementation SUStorePageView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStorePageView;
  [(SUStorePageView *)&v3 dealloc];
}

- (void)setBackdropView:(id)a3
{
  backdropView = self->_backdropView;
  if (backdropView != a3)
  {
    [(UIView *)backdropView removeFromSuperview];

    v6 = a3;
    self->_backdropView = v6;
    if (v6)
    {

      [(SUStorePageView *)self insertSubview:v6 atIndex:0];
    }
  }
}

- (void)setContentView:(id)a3
{
  contentView = self->_contentView;
  if (contentView != a3)
  {
    [(UIView *)contentView removeFromSuperview];

    v6 = a3;
    self->_contentView = v6;
    if (v6)
    {
      if (self->_headerScrollView || self->_previewOverlayView)
      {

        [(SUStorePageView *)self insertSubview:v6 belowSubview:?];
      }

      else
      {

        [(SUStorePageView *)self addSubview:v6];
      }
    }
  }
}

- (void)setHeaderView:(id)a3
{
  headerView = self->_headerView;
  if (headerView != a3)
  {
    [(UIView *)headerView removeFromSuperview];

    v6 = a3;
    self->_headerView = v6;
    headerScrollView = self->_headerScrollView;
    if (v6)
    {
      if (!headerScrollView)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
        self->_headerScrollView = v8;
        [(UIScrollView *)v8 setScrollEnabled:0];
        v9 = self->_headerScrollView;
        if (self->_previewOverlayView)
        {
          [(SUStorePageView *)self insertSubview:v9 belowSubview:?];
        }

        else
        {
          [(SUStorePageView *)self addSubview:v9];
        }
      }

      [(UIScrollView *)self->_headerScrollView addSubview:self->_headerView];
    }

    else
    {
      [(UIScrollView *)headerScrollView removeFromSuperview];

      self->_headerScrollView = 0;
    }

    [(SUStorePageView *)self setNeedsLayout];
  }
}

- (void)setPreviewOverlayView:(id)a3
{
  previewOverlayView = self->_previewOverlayView;
  if (previewOverlayView != a3)
  {
    if ([(UIView *)previewOverlayView superview]== self)
    {
      [(UIView *)self->_previewOverlayView removeFromSuperview];
    }

    v6 = a3;
    self->_previewOverlayView = v6;
    if (v6)
    {

      [(SUStorePageView *)self addSubview:v6];
    }
  }
}

- (void)setContentViewInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentViewInsets.top, v3), vceqq_f64(*&self->_contentViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentViewInsets = a3;
    [(SUStorePageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUStorePageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  previewOverlayView = self->_previewOverlayView;
  if (previewOverlayView)
  {
    [(UIView *)previewOverlayView frame];
    v13 = v12;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    [(UIView *)self->_previewOverlayView setFrame:v4, v6, CGRectGetWidth(v23), v13];
  }

  if (self->_headerScrollView)
  {
    top = self->_contentViewInsets.top;
    [(UIView *)self->_headerView frame];
    v16 = top - v15;
    [(UIView *)self->_headerView frame];
    v18 = v17;
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Width = CGRectGetWidth(v24);
    [(UIScrollView *)self->_headerScrollView setFrame:v4, v16, Width, v18];
    [(UIScrollView *)self->_headerScrollView setContentSize:Width, v18];
    headerView = self->_headerView;
    [(UIScrollView *)self->_headerScrollView bounds];
    [(UIView *)headerView setFrame:?];
  }

  contentView = self->_contentView;

  [(UIView *)contentView setFrame:v4, v6, v8, v10];
}

- (UIEdgeInsets)contentViewInsets
{
  top = self->_contentViewInsets.top;
  left = self->_contentViewInsets.left;
  bottom = self->_contentViewInsets.bottom;
  right = self->_contentViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end