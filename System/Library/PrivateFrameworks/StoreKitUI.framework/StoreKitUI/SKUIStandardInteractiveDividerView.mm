@interface SKUIStandardInteractiveDividerView
- (SKUIStandardInteractiveDividerView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation SKUIStandardInteractiveDividerView

- (SKUIStandardInteractiveDividerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStandardInteractiveDividerView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIStandardInteractiveDividerView;
  height = [(SKUIStandardInteractiveDividerView *)&v12 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    tintColor = [(SKUIStandardInteractiveDividerView *)height tintColor];
    [(SKUIStandardInteractiveDividerView *)v9 setBackgroundColor:tintColor];
  }

  return v9;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SKUIStandardInteractiveDividerView;
  [(SKUIStandardInteractiveDividerView *)&v4 tintColorDidChange];
  tintColor = [(SKUIStandardInteractiveDividerView *)self tintColor];
  [(SKUIStandardInteractiveDividerView *)self setBackgroundColor:tintColor];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStandardInteractiveDividerView initWithFrame:]";
}

@end