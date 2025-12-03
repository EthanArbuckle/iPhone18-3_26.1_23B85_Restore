@interface SKUIDividerViewElement
- (SKUIDividerViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (int64_t)dividerType;
@end

@implementation SKUIDividerViewElement

- (SKUIDividerViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIDividerViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    string = [v12 string];
    v14 = [string length];

    if (v14)
    {
      objc_storeStrong(&v11->_text, v12);
    }
  }

  return v11;
}

- (int64_t)dividerType
{
  if (!self->_dividerTypeWasInitialized)
  {
    style = [(SKUIDividerViewElement *)self style];
    dividerType = [style dividerType];

    if (dividerType)
    {
      if ([@"full" isEqualToString:dividerType])
      {
        v5 = 1;
LABEL_10:
        self->_dividerType = v5;
        self->_dividerTypeWasInitialized = 1;

        return self->_dividerType;
      }

      if ([@"inset" isEqualToString:dividerType])
      {
        v5 = 2;
        goto LABEL_10;
      }

      if ([@"borderless" isEqualToString:dividerType])
      {
        v5 = 3;
        goto LABEL_10;
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

  return self->_dividerType;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerViewElement initWithDOMElement:parent:elementFactory:]";
}

@end