@interface SKUIPreviewControlViewElement
- (BOOL)isEnabled;
- (SKUIPreviewControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIPreviewControlViewElement

- (SKUIPreviewControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewControlViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUIPreviewControlViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue] ^ 1;
    }

    else
    {
      v13 = -1;
    }

    v11->_enabled = v13;
    v14 = [elementCopy getAttribute:@"data-content-id"];
    if ([v14 length])
    {
      v11->_itemIdentifier = [v14 longLongValue];
    }

    v15 = [elementCopy getAttribute:@"preview-url"];
    mediaURLString = v11->_mediaURLString;
    v11->_mediaURLString = v15;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIPreviewControlViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_itemIdentifier = [(SKUIPreviewControlViewElement *)elementCopy itemIdentifier];
    mediaURLString = [(SKUIPreviewControlViewElement *)elementCopy mediaURLString];
    mediaURLString = self->_mediaURLString;
    self->_mediaURLString = mediaURLString;
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SKUIPreviewControlViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPreviewControlViewElement initWithDOMElement:parent:elementFactory:]";
}

@end