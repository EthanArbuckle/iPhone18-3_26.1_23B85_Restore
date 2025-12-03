@interface SUStorePageView
- (UIEdgeInsets)contentViewInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackdropView:(id)view;
- (void)setContentView:(id)view;
- (void)setContentViewInsets:(UIEdgeInsets)insets;
- (void)setHeaderView:(id)view;
- (void)setPreviewOverlayView:(id)view;
@end

@implementation SUStorePageView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStorePageView;
  [(SUStorePageView *)&v3 dealloc];
}

- (void)setBackdropView:(id)view
{
  backdropView = self->_backdropView;
  if (backdropView != view)
  {
    [(UIView *)backdropView removeFromSuperview];

    viewCopy = view;
    self->_backdropView = viewCopy;
    if (viewCopy)
    {

      [(SUStorePageView *)self insertSubview:viewCopy atIndex:0];
    }
  }
}

- (void)setContentView:(id)view
{
  contentView = self->_contentView;
  if (contentView != view)
  {
    [(UIView *)contentView removeFromSuperview];

    viewCopy = view;
    self->_contentView = viewCopy;
    if (viewCopy)
    {
      if (self->_headerScrollView || self->_previewOverlayView)
      {

        [(SUStorePageView *)self insertSubview:viewCopy belowSubview:?];
      }

      else
      {

        [(SUStorePageView *)self addSubview:viewCopy];
      }
    }
  }
}

- (void)setHeaderView:(id)view
{
  headerView = self->_headerView;
  if (headerView != view)
  {
    [(UIView *)headerView removeFromSuperview];

    viewCopy = view;
    self->_headerView = viewCopy;
    headerScrollView = self->_headerScrollView;
    if (viewCopy)
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

- (void)setPreviewOverlayView:(id)view
{
  previewOverlayView = self->_previewOverlayView;
  if (previewOverlayView != view)
  {
    if ([(UIView *)previewOverlayView superview]== self)
    {
      [(UIView *)self->_previewOverlayView removeFromSuperview];
    }

    viewCopy = view;
    self->_previewOverlayView = viewCopy;
    if (viewCopy)
    {

      [(SUStorePageView *)self addSubview:viewCopy];
    }
  }
}

- (void)setContentViewInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentViewInsets.top, v3), vceqq_f64(*&self->_contentViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentViewInsets = insets;
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