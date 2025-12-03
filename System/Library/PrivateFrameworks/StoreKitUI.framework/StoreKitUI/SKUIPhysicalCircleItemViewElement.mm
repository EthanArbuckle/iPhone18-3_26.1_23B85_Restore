@interface SKUIPhysicalCircleItemViewElement
- (SKUIPhysicalCircleItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIPhysicalCircleItemViewElement

- (SKUIPhysicalCircleItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPhysicalCircleItemViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIPhysicalCircleItemViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"size"];
    v11->_circleSize = [v12 integerValue];

    v13 = [elementCopy getAttribute:@"data-content-id"];
    itemIdentifier = v11->_itemIdentifier;
    v11->_itemIdentifier = v13;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIPhysicalCircleItemViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_circleSize = [(SKUIPhysicalCircleItemViewElement *)elementCopy circleSize];
    itemIdentifier = [(SKUIPhysicalCircleItemViewElement *)elementCopy itemIdentifier];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = itemIdentifier;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPhysicalCircleItemViewElement initWithDOMElement:parent:elementFactory:]";
}

@end