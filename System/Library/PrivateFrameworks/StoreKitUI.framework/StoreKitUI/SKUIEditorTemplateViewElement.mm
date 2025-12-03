@interface SKUIEditorTemplateViewElement
- (SKUIEditorTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIEditorTemplateViewElement

- (SKUIEditorTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUIEditorTemplateViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"contentId"];
    v13 = v12;
    if (v12)
    {
      longLongValue = [v12 longLongValue];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
      contentId = v11->_contentId;
      v11->_contentId = v15;
    }
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end