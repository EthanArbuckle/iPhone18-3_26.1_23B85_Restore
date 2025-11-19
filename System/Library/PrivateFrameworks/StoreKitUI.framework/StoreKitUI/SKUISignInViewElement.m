@interface SKUISignInViewElement
- (SKUISignInViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUISignInViewElement

- (SKUISignInViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISignInViewElement initWithDOMElement:parent:elementFactory:];
  }

  v13.receiver = self;
  v13.super_class = SKUISignInViewElement;
  v11 = [(SKUIViewElement *)&v13 initWithDOMElement:v8 parent:v9 elementFactory:v10];

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISignInViewElement initWithDOMElement:parent:elementFactory:]";
}

@end