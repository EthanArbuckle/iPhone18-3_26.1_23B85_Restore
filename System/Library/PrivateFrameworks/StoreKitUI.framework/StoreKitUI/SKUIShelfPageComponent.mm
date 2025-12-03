@interface SKUIShelfPageComponent
- (SKUIShelfPageComponent)initWithViewElement:(id)element;
@end

@implementation SKUIShelfPageComponent

- (SKUIShelfPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIShelfPageComponent initWithViewElement:];
  }

  v7.receiver = self;
  v7.super_class = SKUIShelfPageComponent;
  v5 = [(SKUIPageComponent *)&v7 initWithViewElement:elementCopy];

  return v5;
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfPageComponent initWithViewElement:]";
}

@end