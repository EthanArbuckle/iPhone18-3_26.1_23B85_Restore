@interface SKUIBadgeViewElement
- (CGSize)size;
- (NSAttributedString)attributedString;
- (SKUIBadgeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (UIImage)fallbackImage;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)a3;
- (int64_t)badgeType;
@end

@implementation SKUIBadgeViewElement

- (SKUIBadgeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIBadgeViewElement initWithDOMElement:parent:elementFactory:];
  }

  v27.receiver = self;
  v27.super_class = SKUIBadgeViewElement;
  v11 = [(SKUIViewElement *)&v27 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"src"];
    if ([v12 length])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      v14 = [v13 scheme];
      v15 = [v14 isEqualToString:@"resource"];

      if (v15)
      {
        v16 = [v13 host];
        resourceName = v11->_resourceName;
        v11->_resourceName = v16;
      }

      else
      {
        v18 = v13;
        resourceName = v11->_url;
        v11->_url = v18;
      }
    }

    if (!v11->_resourceName && !v11->_url)
    {
      v19 = [v8 getAttribute:@"content"];
      if (![v19 length])
      {
        v20 = [v8 getAttribute:@"text"];

        v19 = v20;
      }

      if ([v19 length])
      {
        objc_storeStrong(&v11->_text, v19);
      }
    }

    v21 = [v8 getAttribute:@"height"];
    v22 = [v8 getAttribute:@"width"];
    if ([v21 length] && objc_msgSend(v22, "length"))
    {
      [v22 floatValue];
      v24 = v23;
      [v21 floatValue];
      v11->_size.width = v24;
      v11->_size.height = v25;
    }
  }

  return v11;
}

- (NSAttributedString)attributedString
{
  if (self->_text)
  {
    v3 = [(SKUIBadgeViewElement *)self style];
    v4 = SKUIViewElementFontWithStyle(v3);
    if (!v4)
    {
      v4 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    v5 = [v3 ikColor];
    v6 = [v5 color];

    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
    }

    v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    [v8 setLineBreakMode:4];
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [v9 initWithObjectsAndKeys:{v4, *MEMORY[0x277D740A8], v8, *MEMORY[0x277D74118], v6, *MEMORY[0x277D740C0], 0}];
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_text attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)badgeType
{
  v3 = [(SKUIBadgeViewElement *)self fallbackImage];
  if (!v3 && !self->_resourceName)
  {
    return self->_url == 0;
  }

  return 0;
}

- (id)accessibilityText
{
  v6.receiver = self;
  v6.super_class = SKUIBadgeViewElement;
  v3 = [(SKUIBadgeViewElement *)&v6 accessibilityText];
  if (![v3 length])
  {
    v4 = self->_text;

    v3 = v4;
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SKUIBadgeViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (v4->_hasValidFallbackImage)
    {
      v8 = [(SKUIBadgeViewElement *)v4 fallbackImage];
      fallbackImage = self->_fallbackImage;
      self->_fallbackImage = v8;

      self->_hasValidFallbackImage = 1;
    }

    else
    {
      self->_hasValidFallbackImage = 0;
      v10 = self->_fallbackImage;
      self->_fallbackImage = 0;
    }

    v11 = [(SKUIBadgeViewElement *)v4 resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = v11;

    [(SKUIBadgeViewElement *)v4 size];
    self->_size.width = v13;
    self->_size.height = v14;
    objc_storeStrong(&self->_text, v4->_text);
    v15 = [(SKUIBadgeViewElement *)v4 URL];
    url = self->_url;
    self->_url = v15;

    goto LABEL_10;
  }

  v7 = [v5 updateType];
  if (v4 && v7)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v6;
}

- (UIImage)fallbackImage
{
  if (!self->_hasValidFallbackImage)
  {
    self->_hasValidFallbackImage = 1;
    v3 = [(SKUIBadgeViewElement *)self style];
    v4 = [v3 badgeTreatment];
    v5 = [v4 isEqualToString:@"rect"];

    if (v5)
    {
      v6 = self->_text;
      v7 = [v3 ikColor];
      v8 = [v7 color];

      if (v8)
      {
        v9 = SKUIBadgeImageFromText(v6, v8, 1);
        fallbackImage = self->_fallbackImage;
        self->_fallbackImage = v9;
      }

      else
      {
        v11 = [MEMORY[0x277D75348] colorWithWhite:0.62745098 alpha:1.0];
        v12 = SKUIBadgeImageFromText(v6, v11, 1);
        v13 = self->_fallbackImage;
        self->_fallbackImage = v12;

        fallbackImage = v6;
        v6 = v11;
      }
    }
  }

  v14 = self->_fallbackImage;

  return v14;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBadgeViewElement initWithDOMElement:parent:elementFactory:]";
}

@end