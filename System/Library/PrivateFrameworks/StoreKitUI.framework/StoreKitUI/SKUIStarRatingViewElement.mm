@interface SKUIStarRatingViewElement
- (SKUIStarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SKUIViewElementText)text;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIStarRatingViewElement

- (SKUIStarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStarRatingViewElement initWithDOMElement:parent:elementFactory:];
  }

  v25.receiver = self;
  v25.super_class = SKUIStarRatingViewElement;
  v11 = [(SKUIViewElement *)&v25 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"value"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      *&v14 = v14 / 5.0;
      v11->_ratingValue = *&v14;
    }

    v15 = [elementCopy getAttribute:@"type"];
    if (v15)
    {
      if ([@"large" isEqualToString:v15])
      {
        v16 = 2;
LABEL_13:
        v11->_starType = v16;
        goto LABEL_14;
      }

      if (![@"large" isEqualToString:v15])
      {
LABEL_14:
        v17 = [elementCopy getAttribute:@"disabled"];
        if (v17)
        {
          if ([@"yes" isEqualToString:v17])
          {
            LOBYTE(v18) = 0;
          }

          else
          {
            v18 = [@"true" isEqualToString:v17] ^ 1;
          }

          v11->_enabled = v18;
        }

        v19 = [(SKUIViewElement *)v11 firstChildForElementType:138];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = parentCopy;
          v20 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
          string = [v20 string];
          v22 = [string length];

          if (v22)
          {
            objc_storeStrong(&v11->_text, v20);
          }

          parentCopy = v24;
        }

        goto LABEL_24;
      }
    }

    v16 = 1;
    goto LABEL_13;
  }

LABEL_24:

  return v11;
}

- (SKUIViewElementText)text
{
  text = self->_text;
  if (text)
  {
    text = text;
  }

  else
  {
    v4 = [(SKUIViewElement *)self firstChildForElementType:138];
    text = [v4 text];
  }

  return text;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SKUIStarRatingViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SKUIStarRatingViewElement *)elementCopy ratingValue];
    self->_ratingValue = v7;
    objc_storeStrong(&self->_text, elementCopy->_text);
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarRatingViewElement initWithDOMElement:parent:elementFactory:]";
}

@end