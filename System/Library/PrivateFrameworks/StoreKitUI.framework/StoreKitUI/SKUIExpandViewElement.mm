@interface SKUIExpandViewElement
- (SKUIExpandViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIExpandViewElement

- (SKUIExpandViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIExpandViewElement initWithDOMElement:parent:elementFactory:];
  }

  v14.receiver = self;
  v14.super_class = SKUIExpandViewElement;
  v11 = [(SKUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"open"];
    v11->_open = [v12 BOOLValue];

    v11->_previousIsOpen = v11->_open;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUIExpandViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_previousIsOpen = self->_open;
    self->_open = [(SKUIExpandViewElement *)elementCopy isOpen];
  }

  [v6 setPreviousIsOpen:self->_previousIsOpen];

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIExpandViewElement initWithDOMElement:parent:elementFactory:]";
}

@end