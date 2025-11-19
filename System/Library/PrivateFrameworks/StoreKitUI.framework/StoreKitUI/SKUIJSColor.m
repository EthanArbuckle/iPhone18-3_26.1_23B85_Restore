@interface SKUIJSColor
- (SKUIJSColor)initWithAppContext:(id)a3 color:(id)a4;
@end

@implementation SKUIJSColor

- (SKUIJSColor)initWithAppContext:(id)a3 color:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSColor initWithAppContext:color:];
  }

  v14.receiver = self;
  v14.super_class = SKUIJSColor;
  v8 = [(IKJSObject *)&v14 initWithAppContext:v6];
  v9 = v8;
  if (v7 && v8)
  {
    v12 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    [v7 getRed:&v13 green:&v12 blue:&v11 alpha:&v8->_alpha];
    v9->_red = (v13 * 255.0);
    v9->_green = (v12 * 255.0);
    v9->_blue = (v11 * 255.0);
  }

  return v9;
}

- (void)initWithAppContext:color:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSColor initWithAppContext:color:]";
}

@end