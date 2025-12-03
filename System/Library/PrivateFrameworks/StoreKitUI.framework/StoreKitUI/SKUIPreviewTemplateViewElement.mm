@interface SKUIPreviewTemplateViewElement
- (SKUIPreviewTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIPreviewTemplateViewElement

- (SKUIPreviewTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIPreviewTemplateViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"data-content-id"];
    if ([v12 length])
    {
      v11->_itemIdentifier = [v12 longLongValue];
    }

    v13 = [elementCopy getAttribute:@"preview-url"];
    previewURLString = v11->_previewURLString;
    v11->_previewURLString = v13;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIPreviewTemplateViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_itemIdentifier = [(SKUIPreviewTemplateViewElement *)elementCopy itemIdentifier];
    previewURLString = [(SKUIPreviewTemplateViewElement *)elementCopy previewURLString];
    previewURLString = self->_previewURLString;
    self->_previewURLString = previewURLString;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPreviewTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end