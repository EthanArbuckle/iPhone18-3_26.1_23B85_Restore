@interface SKUICheckboxInputViewElement
- (SKUICheckboxInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUICheckboxInputViewElement

- (SKUICheckboxInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICheckboxInputViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUICheckboxInputViewElement;
  v11 = [(SKUIInputViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"disabled"];
    if ([v12 length])
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      bOOLValue = -1;
    }

    v11->_disabled = bOOLValue;
    v14 = [elementCopy getAttribute:@"selected"];

    if ([v14 length])
    {
      v11->_selected = [v14 BOOLValue];
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUICheckboxInputViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_disabled = elementCopy->_disabled;
    self->_selected = [(SKUICheckboxInputViewElement *)elementCopy isSelected];
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICheckboxInputViewElement initWithDOMElement:parent:elementFactory:]";
}

@end