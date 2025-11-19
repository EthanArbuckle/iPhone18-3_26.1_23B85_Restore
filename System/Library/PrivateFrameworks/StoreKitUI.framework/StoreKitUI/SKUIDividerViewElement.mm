@interface SKUIDividerViewElement
- (SKUIDividerViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (int64_t)dividerType;
@end

@implementation SKUIDividerViewElement

- (SKUIDividerViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIDividerViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:v8 usingParseBlock:0];
    v13 = [v12 string];
    v14 = [v13 length];

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
    v3 = [(SKUIDividerViewElement *)self style];
    v4 = [v3 dividerType];

    if (v4)
    {
      if ([@"full" isEqualToString:v4])
      {
        v5 = 1;
LABEL_10:
        self->_dividerType = v5;
        self->_dividerTypeWasInitialized = 1;

        return self->_dividerType;
      }

      if ([@"inset" isEqualToString:v4])
      {
        v5 = 2;
        goto LABEL_10;
      }

      if ([@"borderless" isEqualToString:v4])
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