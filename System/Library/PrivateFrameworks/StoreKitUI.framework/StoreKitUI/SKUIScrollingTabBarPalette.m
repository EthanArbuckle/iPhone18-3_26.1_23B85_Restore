@interface SKUIScrollingTabBarPalette
- (SKUIScrollingTabBarPalette)initWithFrame:(CGRect)a3;
- (SKUIScrollingTabBarPaletteDelegate)_delegate;
- (void)layoutSubviews;
- (void)setTabBarBackgroundExtendsBehindPalette:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SKUIScrollingTabBarPalette

- (SKUIScrollingTabBarPalette)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingTabBarPalette initWithFrame:];
  }

  v22.receiver = self;
  v22.super_class = SKUIScrollingTabBarPalette;
  v8 = [(SKUIScrollingTabBarPalette *)&v22 initWithFrame:x, y, width, height];
  if (v8)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v8->_paletteHeight = CGRectGetHeight(v23);
    [(SKUIScrollingTabBarPalette *)v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [[SKUIScrollingTabBarBackgroundView alloc] initWithFrame:v9, v11, v13, v15];
    backgroundView = v8->_backgroundView;
    v8->_backgroundView = v17;

    [(SKUIScrollingTabBarPalette *)v8 addSubview:v8->_backgroundView];
    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v12, v14, v16}];
    contentView = v8->_contentView;
    v8->_contentView = v19;

    [(SKUIScrollingTabBarPalette *)v8 addSubview:v8->_contentView];
    v8->_tabBarBackgroundExtendsBehindPalette = 1;
  }

  return v8;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SKUIScrollingTabBarPalette;
  [(SKUIScrollingTabBarPalette *)&v16 layoutSubviews];
  [(SKUIScrollingTabBarPalette *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SKUIScrollingTabBarPalette *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 < 0.00000011920929)
  {
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    v13 = v15;
  }

  [(SKUIScrollingTabBarBackgroundView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10 + -1.0 / v13];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SKUIScrollingTabBarPalette;
  v4 = a3;
  [(SKUIScrollingTabBarPalette *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(SKUIScrollingTabBarPalette *)self traitCollection];
  [v7 displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    [(SKUIScrollingTabBarPalette *)self setNeedsLayout];
  }
}

- (void)setTabBarBackgroundExtendsBehindPalette:(BOOL)a3
{
  if (self->_tabBarBackgroundExtendsBehindPalette != a3)
  {
    self->_tabBarBackgroundExtendsBehindPalette = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:self];
    }
  }
}

- (SKUIScrollingTabBarPaletteDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarPalette initWithFrame:]";
}

@end