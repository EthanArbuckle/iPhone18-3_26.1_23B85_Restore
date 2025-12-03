@interface SKUIItemViewElement
- (SKUIItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIItemViewElement

- (SKUIItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIItemViewElement initWithDOMElement:parent:elementFactory:];
  }

  v24.receiver = self;
  v24.super_class = SKUIItemViewElement;
  v11 = [(SKUIViewElement *)&v24 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      parent = [parentCopy parent];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
      }

      else
      {
        parent2 = [parentCopy parent];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    v14 = SKUIBrowseItemViewElement;
    goto LABEL_17;
  }

LABEL_7:
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = SKUIStackItemViewElement;
LABEL_17:
      v18 = [[v14 alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
      goto LABEL_18;
    }
  }

  v15 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
  itemText = v11->_itemText;
  v11->_itemText = v15;

  v17 = [elementCopy getAttribute:@"selected"];
  v11->_selected = [v17 BOOLValue];

LABEL_11:
  v18 = v11;
LABEL_18:
  v20 = v18;

  return v20;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIItemViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    itemText = [(SKUIItemViewElement *)elementCopy itemText];
    itemText = self->_itemText;
    self->_itemText = itemText;

    self->_selected = [(SKUIItemViewElement *)elementCopy isSelected];
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemViewElement initWithDOMElement:parent:elementFactory:]";
}

@end