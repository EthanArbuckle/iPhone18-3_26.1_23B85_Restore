@interface SKUICountdownComponent
- (SKUICountdownComponent)initWithCustomPageContext:(id)a3;
@end

@implementation SKUICountdownComponent

- (SKUICountdownComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountdownComponent initWithCustomPageContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUICountdownComponent;
  v5 = [(SKUIPageComponent *)&v11 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [SKUICountdown alloc];
    v7 = [v4 componentDictionary];
    v8 = [(SKUICountdown *)v6 initWithCountdownDictionary:v7];
    countdown = v5->_countdown;
    v5->_countdown = v8;
  }

  return v5;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountdownComponent initWithCustomPageContext:]";
}

@end