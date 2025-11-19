@interface SKUICheckboxInputViewElement
- (SKUICheckboxInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUICheckboxInputViewElement

- (SKUICheckboxInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICheckboxInputViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUICheckboxInputViewElement;
  v11 = [(SKUIInputViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue];
    }

    else
    {
      v13 = -1;
    }

    v11->_disabled = v13;
    v14 = [v8 getAttribute:@"selected"];

    if ([v14 length])
    {
      v11->_selected = [v14 BOOLValue];
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKUICheckboxInputViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_disabled = v4->_disabled;
    self->_selected = [(SKUICheckboxInputViewElement *)v4 isSelected];
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