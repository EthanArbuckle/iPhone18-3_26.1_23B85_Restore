@interface SUPreviewOverlayView
- (SUPreviewOverlayView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setStorePageView:(id)view;
@end

@implementation SUPreviewOverlayView

- (SUPreviewOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUPreviewOverlayView;
  v3 = [(SUPreviewOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    -[SUPreviewOverlayView setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    [(SUPreviewOverlayView *)v3 setOpaque:0];
    if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v3->_borderView = v4;
      -[UIView setBackgroundColor:](v4, "setBackgroundColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3]);
      [(SUPreviewOverlayView *)v3 addSubview:v3->_borderView];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPreviewOverlayView;
  [(SUPreviewOverlayView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(SUPreviewOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  borderView = self->_borderView;
  if (borderView)
  {
    [(UIView *)borderView frame];
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v13 = 1.0 / v12;
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    [(UIView *)self->_borderView setFrame:v4, CGRectGetMaxY(v16) - v13, v8, v13];
  }

  storePageView = self->_storePageView;
  if (storePageView)
  {

    [(UIView *)storePageView setFrame:v4, v6, v8, v10];
  }
}

- (void)setStorePageView:(id)view
{
  storePageView = self->_storePageView;
  if (storePageView != view)
  {
    [(UIView *)storePageView removeFromSuperview];

    viewCopy = view;
    self->_storePageView = viewCopy;
    [(SUPreviewOverlayView *)self insertSubview:viewCopy atIndex:0];

    [(SUPreviewOverlayView *)self setNeedsLayout];
  }
}

@end