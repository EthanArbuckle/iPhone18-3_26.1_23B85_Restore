@interface SKUIAbstractEntityProviderViewElement
- (SKUIAbstractEntityProviderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIAbstractEntityProviderViewElement

- (SKUIAbstractEntityProviderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAbstractEntityProviderViewElement initWithDOMElement:parent:elementFactory:];
  }

  v21.receiver = self;
  v21.super_class = SKUIAbstractEntityProviderViewElement;
  v11 = [(SKUIViewElement *)&v21 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"entityType"];
    if ([v12 length])
    {
      v13 = [v12 copy];
      entityTypeString = v11->_entityTypeString;
      v11->_entityTypeString = v13;
    }

    v15 = [v8 getAttribute:@"prefetchedProperties"];
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

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SKUIAbstractEntityProviderViewElement;
  v5 = [(SKUIViewElement *)&v14 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    v7 = [(SKUIAbstractEntityProviderViewElement *)v4 entityTypeString];
    v8 = [v7 copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;

    v10 = [(SKUIAbstractEntityProviderViewElement *)v4 prefetchedProperties];
    v11 = [v10 copy];
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