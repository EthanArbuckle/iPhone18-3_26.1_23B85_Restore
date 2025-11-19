@interface SKUITabBarBackgroundView
- (SKUITabBarBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)a3;
- (void)setBackdropStyle:(int64_t)a3;
@end

@implementation SKUITabBarBackgroundView

- (SKUITabBarBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITabBarBackgroundView initWithFrame:];
  }

  v17.receiver = self;
  v17.super_class = SKUITabBarBackgroundView;
  v8 = [(SKUITabBarBackgroundView *)&v17 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUITabBarBackgroundView *)v8 setAutoresizingMask:18];
    [(SKUITabBarBackgroundView *)v9 setUserInteractionEnabled:0];
    v10 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    backdropView = v9->_backdropView;
    v9->_backdropView = v10;

    [(SKUITabBarBackgroundView *)v9 addSubview:v9->_backdropView];
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v9->_borderView;
    v9->_borderView = v12;

    v14 = v9->_borderView;
    v15 = [MEMORY[0x277D75348] _barHairlineShadowColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(SKUITabBarBackgroundView *)v9 addSubview:v9->_borderView];
  }

  return v9;
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = a3;
  v4 = [(SKUITabBarBackgroundView *)self backdropGroupName];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(_UIBackdropView *)self->_backdropView setGroupName:v5];
  }
}

- (void)setBackdropStyle:(int64_t)a3
{
  borderView = self->_borderView;
  if (a3 == 11050)
  {
    [MEMORY[0x277D75348] _barStyleBlackHairlineShadowColor];
  }

  else
  {
    [MEMORY[0x277D75348] _barHairlineShadowColor];
  }
  v6 = ;
  [(UIView *)borderView setBackgroundColor:v6];

  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView transitionToPrivateStyle:a3];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SKUITabBarBackgroundView;
  [(SKUITabBarBackgroundView *)&v8 layoutSubviews];
  [(SKUITabBarBackgroundView *)self bounds];
  v4 = v3;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  [(UIView *)self->_borderView setFrame:0.0, 0.0, v4, v7];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITabBarBackgroundView initWithFrame:]";
}

@end