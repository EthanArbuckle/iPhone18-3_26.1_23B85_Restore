@interface SKUIBadgeViewElement
- (CGSize)size;
- (NSAttributedString)attributedString;
- (SKUIBadgeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (UIImage)fallbackImage;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)badgeType;
@end

@implementation SKUIBadgeViewElement

- (SKUIBadgeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIBadgeViewElement initWithDOMElement:parent:elementFactory:];
  }

  v27.receiver = self;
  v27.super_class = SKUIBadgeViewElement;
  v11 = [(SKUIViewElement *)&v27 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"src"];
    if ([v12 length])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      scheme = [v13 scheme];
      v15 = [scheme isEqualToString:@"resource"];

      if (v15)
      {
        host = [v13 host];
        resourceName = v11->_resourceName;
        v11->_resourceName = host;
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
      v19 = [elementCopy getAttribute:@"content"];
      if (![v19 length])
      {
        v20 = [elementCopy getAttribute:@"text"];

        v19 = v20;
      }

      if ([v19 length])
      {
        objc_storeStrong(&v11->_text, v19);
      }
    }

    v21 = [elementCopy getAttribute:@"height"];
    v22 = [elementCopy getAttribute:@"width"];
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
    style = [(SKUIBadgeViewElement *)self style];
    v4 = SKUIViewElementFontWithStyle(style);
    if (!v4)
    {
      v4 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    ikColor = [style ikColor];
    color = [ikColor color];

    if (!color)
    {
      color = [MEMORY[0x277D75348] whiteColor];
    }

    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

    [v8 setLineBreakMode:4];
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [v9 initWithObjectsAndKeys:{v4, *MEMORY[0x277D740A8], v8, *MEMORY[0x277D74118], color, *MEMORY[0x277D740C0], 0}];
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
  fallbackImage = [(SKUIBadgeViewElement *)self fallbackImage];
  if (!fallbackImage && !self->_resourceName)
  {
    return self->_url == 0;
  }

  return 0;
}

- (id)accessibilityText
{
  v6.receiver = self;
  v6.super_class = SKUIBadgeViewElement;
  accessibilityText = [(SKUIBadgeViewElement *)&v6 accessibilityText];
  if (![accessibilityText length])
  {
    v4 = self->_text;

    accessibilityText = v4;
  }

  return accessibilityText;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SKUIBadgeViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self)
  {
    if (!elementCopy)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (elementCopy->_hasValidFallbackImage)
    {
      fallbackImage = [(SKUIBadgeViewElement *)elementCopy fallbackImage];
      fallbackImage = self->_fallbackImage;
      self->_fallbackImage = fallbackImage;

      self->_hasValidFallbackImage = 1;
    }

    else
    {
      self->_hasValidFallbackImage = 0;
      v10 = self->_fallbackImage;
      self->_fallbackImage = 0;
    }

    resourceName = [(SKUIBadgeViewElement *)elementCopy resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = resourceName;

    [(SKUIBadgeViewElement *)elementCopy size];
    self->_size.width = v13;
    self->_size.height = v14;
    objc_storeStrong(&self->_text, elementCopy->_text);
    v15 = [(SKUIBadgeViewElement *)elementCopy URL];
    url = self->_url;
    self->_url = v15;

    goto LABEL_10;
  }

  updateType = [v5 updateType];
  if (elementCopy && updateType)
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
    style = [(SKUIBadgeViewElement *)self style];
    badgeTreatment = [style badgeTreatment];
    v5 = [badgeTreatment isEqualToString:@"rect"];

    if (v5)
    {
      v6 = self->_text;
      ikColor = [style ikColor];
      color = [ikColor color];

      if (color)
      {
        v9 = SKUIBadgeImageFromText(v6, color, 1);
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