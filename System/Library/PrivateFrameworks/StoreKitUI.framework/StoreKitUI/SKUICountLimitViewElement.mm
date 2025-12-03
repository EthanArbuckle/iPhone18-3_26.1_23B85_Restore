@interface SKUICountLimitViewElement
- (SKUICountLimitViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUICountLimitViewElement

- (SKUICountLimitViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountLimitViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUICountLimitViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"value"];
    v11->_limitValue = [v12 integerValue];

    v13 = [elementCopy getAttribute:@"entityType"];
    if ([v13 length])
    {
      v14 = [v13 copy];
      entityTypeString = v11->_entityTypeString;
      v11->_entityTypeString = v14;
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SKUICountLimitViewElement;
  v5 = [(SKUIViewElement *)&v11 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_limitValue = [(SKUICountLimitViewElement *)elementCopy limitValue];
    entityTypeString = [(SKUICountLimitViewElement *)elementCopy entityTypeString];
    v8 = [entityTypeString copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountLimitViewElement initWithDOMElement:parent:elementFactory:]";
}

@end