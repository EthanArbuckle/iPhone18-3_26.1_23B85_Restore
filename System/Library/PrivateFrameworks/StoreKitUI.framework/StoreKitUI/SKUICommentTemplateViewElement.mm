@interface SKUICommentTemplateViewElement
- (SKUICommentTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUICommentTemplateViewElement

- (SKUICommentTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICommentTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v28.receiver = self;
  v28.super_class = SKUICommentTemplateViewElement;
  v11 = [(SKUIViewElement *)&v28 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"postPlaceholderText"];
    if (v12)
    {
      objc_storeStrong(&v11->_postPlaceholderText, v12);
    }

    v13 = [elementCopy getAttribute:{@"postButtonText", v12}];
    if (v13)
    {
      objc_storeStrong(&v11->_postButtonText, v13);
    }

    v14 = [elementCopy getAttribute:@"scrollNewCommentToView"];
    v15 = v14;
    if (v14)
    {
      lowercaseString = [v14 lowercaseString];
      v11->_scrollNewCommentToView = [lowercaseString isEqualToString:@"true"];
    }

    v17 = [elementCopy getAttribute:@"showKeyboard"];
    v18 = v17;
    if (v17)
    {
      lowercaseString2 = [v17 lowercaseString];
      v11->_showKeyboard = [lowercaseString2 isEqualToString:@"true"];
    }

    v20 = [elementCopy getAttribute:@"asText"];
    if (v20)
    {
      objc_storeStrong(&v11->_asText, v20);
    }

    v27 = factoryCopy;
    v21 = [elementCopy getAttribute:@"asFormat"];
    if (v21)
    {
      objc_storeStrong(&v11->_asFormat, v21);
    }

    v22 = parentCopy;
    v23 = [elementCopy getAttribute:@"commentAsText"];
    if (v23)
    {
      objc_storeStrong(&v11->_commentAsText, v23);
    }

    v24 = [elementCopy getAttribute:@"myselfText"];
    if (v24)
    {
      objc_storeStrong(&v11->_myselfText, v24);
    }

    parentCopy = v22;
    factoryCopy = v27;
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICommentTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end