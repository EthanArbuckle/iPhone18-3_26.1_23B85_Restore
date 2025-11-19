@interface SKUIScreenshotsView
- (SKUIScreenshotsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setPrimaryView:(id)a3;
@end

@implementation SKUIScreenshotsView

- (SKUIScreenshotsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScreenshotsView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIScreenshotsView;
  v8 = [(SKUIScreenshotsView *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v8->_separatorView;
    v8->_separatorView = v9;

    v11 = v8->_separatorView;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SKUIScreenshotsView *)v8 addSubview:v8->_separatorView];
  }

  return v8;
}

- (void)setPrimaryView:(id)a3
{
  v5 = a3;
  primaryView = self->_primaryView;
  if (primaryView != v5)
  {
    v7 = v5;
    [(UIView *)primaryView removeFromSuperview];
    objc_storeStrong(&self->_primaryView, a3);
    [(SKUIScreenshotsView *)self addSubview:self->_primaryView];
    primaryView = [(SKUIScreenshotsView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](primaryView, v5);
}

- (void)layoutSubviews
{
  [(SKUIScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  primaryView = self->_primaryView;
  if (primaryView)
  {
    [(UIView *)primaryView setFrame:?];
  }

  if (self->_separatorView)
  {
    [(SKUIScreenshotsView *)self bringSubviewToFront:?];
    separatorView = self->_separatorView;
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    v10 = v6 - 1.0 / v9;
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    [(UIView *)separatorView setFrame:15.0, v10, v4 + -15.0, 1.0 / v12];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScreenshotsView initWithFrame:]";
}

@end