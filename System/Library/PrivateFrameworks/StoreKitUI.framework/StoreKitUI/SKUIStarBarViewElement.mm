@interface SKUIStarBarViewElement
- (SKUIStarBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIStarBarViewElement

- (SKUIStarBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStarBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUIStarBarViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"count"];
    v11->_numberOfRatings = [v12 integerValue];

    v13 = [elementCopy getAttribute:@"numStars"];
    v11->_numberOfStars = [v13 integerValue];

    v14 = [elementCopy getAttribute:@"value"];
    [v14 floatValue];
    v11->_value = v15;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SKUIStarBarViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_numberOfRatings = [(SKUIStarBarViewElement *)elementCopy numberOfRatings];
    self->_numberOfStars = [(SKUIStarBarViewElement *)elementCopy numberOfStars];
    [(SKUIStarBarViewElement *)elementCopy value];
    self->_value = v7;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarBarViewElement initWithDOMElement:parent:elementFactory:]";
}

@end