@interface SKUIProgressIndicatorViewElement
- (SKUIProgressIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIProgressIndicatorViewElement

- (SKUIProgressIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProgressIndicatorViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUIProgressIndicatorViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"value"];
    [v12 floatValue];
    v11->_value = v13;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SKUIProgressIndicatorViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    [(SKUIProgressIndicatorViewElement *)elementCopy value];
    self->_value = v7;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProgressIndicatorViewElement initWithDOMElement:parent:elementFactory:]";
}

@end