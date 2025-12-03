@interface SKUIPullToRefreshViewElement
- (SKUIPullToRefreshViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIPullToRefreshViewElement

- (SKUIPullToRefreshViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPullToRefreshViewElement initWithDOMElement:parent:elementFactory:];
  }

  v13.receiver = self;
  v13.super_class = SKUIPullToRefreshViewElement;
  v11 = [(SKUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPullToRefreshViewElement initWithDOMElement:parent:elementFactory:]";
}

@end