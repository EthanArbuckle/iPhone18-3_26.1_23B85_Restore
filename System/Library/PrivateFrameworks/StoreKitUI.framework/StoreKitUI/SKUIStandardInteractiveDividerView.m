@interface SKUIStandardInteractiveDividerView
- (SKUIStandardInteractiveDividerView)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIStandardInteractiveDividerView

- (SKUIStandardInteractiveDividerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStandardInteractiveDividerView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIStandardInteractiveDividerView;
  v8 = [(SKUIStandardInteractiveDividerView *)&v12 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUIStandardInteractiveDividerView *)v8 tintColor];
    [(SKUIStandardInteractiveDividerView *)v9 setBackgroundColor:v10];
  }

  return v9;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SKUIStandardInteractiveDividerView;
  [(SKUIStandardInteractiveDividerView *)&v4 tintColorDidChange];
  v3 = [(SKUIStandardInteractiveDividerView *)self tintColor];
  [(SKUIStandardInteractiveDividerView *)self setBackgroundColor:v3];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStandardInteractiveDividerView initWithFrame:]";
}

@end