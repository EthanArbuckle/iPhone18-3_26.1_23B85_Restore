@interface SKUIFloatingOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIFloatingOverlayView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentView:(id)a3;
@end

@implementation SKUIFloatingOverlayView

- (SKUIFloatingOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFloatingOverlayView initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIFloatingOverlayView;
  v8 = [(SKUIFloatingOverlayView *)&v16 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] clearColor];
    [(SKUIFloatingOverlayView *)v8 setBackgroundColor:v9];

    [(SKUIFloatingOverlayView *)v8 setClipsToBounds:1];
    v10 = [(SKUIFloatingOverlayView *)v8 layer];
    [v10 setCornerRadius:10.0];

    v11 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    v12 = [v11 inputSettings];
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    v14 = [v13 colorWithAlphaComponent:0.6];
    [v12 setColorTint:v14];

    [v11 setAutoresizingMask:18];
    [(SKUIFloatingOverlayView *)v8 bounds];
    [v11 setFrame:?];
    [(SKUIFloatingOverlayView *)v8 addSubview:v11];
  }

  return v8;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIFloatingOverlayView *)self setNeedsLayout];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  v9 = v5;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = self->_contentView;
    if (v7)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v7 setBackgroundColor:v8];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
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