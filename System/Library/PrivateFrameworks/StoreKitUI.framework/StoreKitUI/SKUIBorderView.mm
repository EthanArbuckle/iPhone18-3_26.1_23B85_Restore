@interface SKUIBorderView
- (UIColor)color;
- (void)setBackgroundColor:(id)color;
- (void)setColor:(id)color;
@end

@implementation SKUIBorderView

- (void)setColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBorderView *)v5 setColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIBorderView;
  [(SKUIBorderView *)&v13 setBackgroundColor:colorCopy];
}

- (UIColor)color
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIBorderView *)v3 color:v4];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIBorderView;
  backgroundColor = [(SKUIBorderView *)&v13 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUIBorderView *)v3 setBackgroundColor:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

@end