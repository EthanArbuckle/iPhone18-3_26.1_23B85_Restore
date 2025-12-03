@interface SKUIAbstractEntityProviderViewElement
- (SKUIAbstractEntityProviderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIAbstractEntityProviderViewElement

- (SKUIAbstractEntityProviderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAbstractEntityProviderViewElement initWithDOMElement:parent:elementFactory:];
  }

  v21.receiver = self;
  v21.super_class = SKUIAbstractEntityProviderViewElement;
  v11 = [(SKUIViewElement *)&v21 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"entityType"];
    if ([v12 length])
    {
      v13 = [v12 copy];
      entityTypeString = v11->_entityTypeString;
      v11->_entityTypeString = v13;
    }

    v15 = [elementCopy getAttribute:@"prefetchedProperties"];
    v16 = [v15 mutableCopy];

    [v16 replaceOccurrencesOfString:@" " withString:&stru_2827FFAC8 options:1 range:{0, objc_msgSend(v16, "length")}];
    if ([v16 length])
    {
      v17 = [v16 componentsSeparatedByString:{@", "}];
    }

    else
    {
      v17 = 0;
    }

    if ([v17 count])
    {
      v18 = [v17 copy];
      prefetchedProperties = v11->_prefetchedProperties;
      v11->_prefetchedProperties = v18;
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SKUIAbstractEntityProviderViewElement;
  v5 = [(SKUIViewElement *)&v14 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    entityTypeString = [(SKUIAbstractEntityProviderViewElement *)elementCopy entityTypeString];
    v8 = [entityTypeString copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;

    prefetchedProperties = [(SKUIAbstractEntityProviderViewElement *)elementCopy prefetchedProperties];
    v11 = [prefetchedProperties copy];
    prefetchedProperties = self->_prefetchedProperties;
    self->_prefetchedProperties = v11;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAbstractEntityProviderViewElement initWithDOMElement:parent:elementFactory:]";
}

@end