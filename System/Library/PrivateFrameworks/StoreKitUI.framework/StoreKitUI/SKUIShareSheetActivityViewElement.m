@interface SKUIShareSheetActivityViewElement
- (SKUILabelViewElement)message;
- (SKUILabelViewElement)title;
- (SKUIShareSheetActivityViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIShareSheetActivityViewElement

- (SKUIShareSheetActivityViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIShareSheetActivityViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUIShareSheetActivityViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"type"];
    activityType = v11->_activityType;
    v11->_activityType = v12;

    v14 = [v8 getAttribute:@"src"];
    if ([v14 length])
    {
      v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
      contentSourceURL = v11->_contentSourceURL;
      v11->_contentSourceURL = v15;
    }
  }

  return v11;
}

- (SKUILabelViewElement)message
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__61;
  v9 = __Block_byref_object_dispose__61;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SKUIShareSheetActivityViewElement_message__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__SKUIShareSheetActivityViewElement_message__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") != 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SKUILabelViewElement)title
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__61;
  v9 = __Block_byref_object_dispose__61;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SKUIShareSheetActivityViewElement_title__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SKUIShareSheetActivityViewElement_title__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SKUIShareSheetActivityViewElement;
  v5 = [(SKUIViewElement *)&v12 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SKUIShareSheetActivityViewElement *)v4 activityType];
    activityType = self->_activityType;
    self->_activityType = v7;

    v9 = [(SKUIShareSheetActivityViewElement *)v4 contentSourceURL];
    contentSourceURL = self->_contentSourceURL;
    self->_contentSourceURL = v9;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShareSheetActivityViewElement initWithDOMElement:parent:elementFactory:]";
}

@end