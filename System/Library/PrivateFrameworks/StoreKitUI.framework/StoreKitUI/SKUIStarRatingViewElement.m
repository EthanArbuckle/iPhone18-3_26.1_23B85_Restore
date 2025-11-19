@interface SKUIStarRatingViewElement
- (SKUIStarRatingViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SKUIViewElementText)text;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIStarRatingViewElement

- (SKUIStarRatingViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStarRatingViewElement initWithDOMElement:parent:elementFactory:];
  }

  v25.receiver = self;
  v25.super_class = SKUIStarRatingViewElement;
  v11 = [(SKUIViewElement *)&v25 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"value"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      *&v14 = v14 / 5.0;
      v11->_ratingValue = *&v14;
    }

    v15 = [v8 getAttribute:@"type"];
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
        v17 = [v8 getAttribute:@"disabled"];
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
          v24 = v9;
          v20 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:v8 usingParseBlock:0];
          v21 = [v20 string];
          v22 = [v21 length];

          if (v22)
          {
            objc_storeStrong(&v11->_text, v20);
          }

          v9 = v24;
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
    v3 = text;
  }

  else
  {
    v4 = [(SKUIViewElement *)self firstChildForElementType:138];
    v3 = [v4 text];
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIStarRatingViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    [(SKUIStarRatingViewElement *)v4 ratingValue];
    self->_ratingValue = v7;
    objc_storeStrong(&self->_text, v4->_text);
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