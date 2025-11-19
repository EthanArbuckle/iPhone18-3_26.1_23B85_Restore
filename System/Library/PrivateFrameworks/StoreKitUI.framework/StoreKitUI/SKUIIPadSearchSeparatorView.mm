@interface SKUIIPadSearchSeparatorView
- (SKUIIPadSearchSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation SKUIIPadSearchSeparatorView

- (SKUIIPadSearchSeparatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPadSearchSeparatorView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIIPadSearchSeparatorView;
  v8 = [(SKUIIPadSearchSeparatorView *)&v11 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    [(SKUIIPadSearchSeparatorView *)v8 setBackgroundColor:v9];
  }

  return v8;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPadSearchSeparatorView initWithFrame:]";
}

@end