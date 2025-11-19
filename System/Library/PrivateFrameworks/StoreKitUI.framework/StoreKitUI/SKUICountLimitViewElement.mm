@interface SKUICountLimitViewElement
- (SKUICountLimitViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUICountLimitViewElement

- (SKUICountLimitViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountLimitViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUICountLimitViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"value"];
    v11->_limitValue = [v12 integerValue];

    v13 = [v8 getAttribute:@"entityType"];
    if ([v13 length])
    {
      v14 = [v13 copy];
      entityTypeString = v11->_entityTypeString;
      v11->_entityTypeString = v14;
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKUICountLimitViewElement;
  v5 = [(SKUIViewElement *)&v11 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_limitValue = [(SKUICountLimitViewElement *)v4 limitValue];
    v7 = [(SKUICountLimitViewElement *)v4 entityTypeString];
    v8 = [v7 copy];
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