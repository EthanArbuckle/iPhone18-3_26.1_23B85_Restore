@interface SKUICommentTemplateViewElement
- (SKUICommentTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUICommentTemplateViewElement

- (SKUICommentTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICommentTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v28.receiver = self;
  v28.super_class = SKUICommentTemplateViewElement;
  v11 = [(SKUIViewElement *)&v28 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"postPlaceholderText"];
    if (v12)
    {
      objc_storeStrong(&v11->_postPlaceholderText, v12);
    }

    v13 = [v8 getAttribute:{@"postButtonText", v12}];
    if (v13)
    {
      objc_storeStrong(&v11->_postButtonText, v13);
    }

    v14 = [v8 getAttribute:@"scrollNewCommentToView"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 lowercaseString];
      v11->_scrollNewCommentToView = [v16 isEqualToString:@"true"];
    }

    v17 = [v8 getAttribute:@"showKeyboard"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 lowercaseString];
      v11->_showKeyboard = [v19 isEqualToString:@"true"];
    }

    v20 = [v8 getAttribute:@"asText"];
    if (v20)
    {
      objc_storeStrong(&v11->_asText, v20);
    }

    v27 = v10;
    v21 = [v8 getAttribute:@"asFormat"];
    if (v21)
    {
      objc_storeStrong(&v11->_asFormat, v21);
    }

    v22 = v9;
    v23 = [v8 getAttribute:@"commentAsText"];
    if (v23)
    {
      objc_storeStrong(&v11->_commentAsText, v23);
    }

    v24 = [v8 getAttribute:@"myselfText"];
    if (v24)
    {
      objc_storeStrong(&v11->_myselfText, v24);
    }

    v9 = v22;
    v10 = v27;
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