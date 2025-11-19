@interface SKUIStarBarViewElement
- (SKUIStarBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIStarBarViewElement

- (SKUIStarBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStarBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUIStarBarViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"count"];
    v11->_numberOfRatings = [v12 integerValue];

    v13 = [v8 getAttribute:@"numStars"];
    v11->_numberOfStars = [v13 integerValue];

    v14 = [v8 getAttribute:@"value"];
    [v14 floatValue];
    v11->_value = v15;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIStarBarViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_numberOfRatings = [(SKUIStarBarViewElement *)v4 numberOfRatings];
    self->_numberOfStars = [(SKUIStarBarViewElement *)v4 numberOfStars];
    [(SKUIStarBarViewElement *)v4 value];
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