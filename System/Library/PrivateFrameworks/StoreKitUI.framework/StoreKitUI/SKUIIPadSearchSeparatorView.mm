@interface SKUIIPadSearchSeparatorView
- (SKUIIPadSearchSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SKUIIPadSearchSeparatorView

- (SKUIIPadSearchSeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPadSearchSeparatorView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIIPadSearchSeparatorView;
  height = [(SKUIIPadSearchSeparatorView *)&v11 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    [(SKUIIPadSearchSeparatorView *)height setBackgroundColor:v9];
  }

  return height;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPadSearchSeparatorView initWithFrame:]";
}

@end