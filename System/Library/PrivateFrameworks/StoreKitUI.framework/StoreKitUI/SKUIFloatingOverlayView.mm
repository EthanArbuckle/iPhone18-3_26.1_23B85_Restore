@interface SKUIFloatingOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIFloatingOverlayView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentView:(id)view;
@end

@implementation SKUIFloatingOverlayView

- (SKUIFloatingOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFloatingOverlayView initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIFloatingOverlayView;
  height = [(SKUIFloatingOverlayView *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIFloatingOverlayView *)height setBackgroundColor:clearColor];

    [(SKUIFloatingOverlayView *)height setClipsToBounds:1];
    layer = [(SKUIFloatingOverlayView *)height layer];
    [layer setCornerRadius:10.0];

    v11 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    inputSettings = [v11 inputSettings];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v14 = [systemBackgroundColor colorWithAlphaComponent:0.6];
    [inputSettings setColorTint:v14];

    [v11 setAutoresizingMask:18];
    [(SKUIFloatingOverlayView *)height bounds];
    [v11 setFrame:?];
    [(SKUIFloatingOverlayView *)height addSubview:v11];
  }

  return height;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIFloatingOverlayView *)self setNeedsLayout];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  v9 = viewCopy;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    v7 = self->_contentView;
    if (v7)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v7 setBackgroundColor:clearColor];

      [(SKUIFloatingOverlayView *)self addSubview:self->_contentView];
    }
  }
}

- (void)layoutSubviews
{
  contentView = self->_contentView;
  [(SKUIFloatingOverlayView *)self bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentInset.right);
  v13 = v12 - (top + self->_contentInset.bottom);

  [(UIView *)contentView setFrame:v7, v9, v11, v13];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self->_contentView sizeThatFits:fits.width, fits.height];
  v6 = v5 + self->_contentInset.top + self->_contentInset.bottom;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFloatingOverlayView initWithFrame:]";
}

@end