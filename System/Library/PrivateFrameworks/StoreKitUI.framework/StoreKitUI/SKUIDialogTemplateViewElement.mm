@interface SKUIDialogTemplateViewElement
- (NSArray)buttons;
- (SKUIDialogTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SKUILabelViewElement)message;
- (SKUILabelViewElement)title;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIDialogTemplateViewElement

- (SKUIDialogTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDialogTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUIDialogTemplateViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"type"];
    if ([v12 isEqualToString:@"actionSheet"])
    {
      v13 = 1;
    }

    else if ([v12 isEqualToString:@"error"])
    {
      v13 = 3;
    }

    else if ([v12 isEqualToString:@"itemActionSheet"])
    {
      v13 = 2;
    }

    else
    {
      if (![v12 isEqualToString:@"toast"])
      {
        v11->_dialogType = 0;
        goto LABEL_15;
      }

      v13 = 4;
    }

    v11->_dialogType = v13;
LABEL_15:
  }

  return v11;
}

- (NSArray)buttons
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SKUIDialogTemplateViewElement_buttons__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __40__SKUIDialogTemplateViewElement_buttons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 12)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SKUILabelViewElement)message
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SKUIDialogTemplateViewElement_message__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SKUIDialogTemplateViewElement_message__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SKUIDialogTemplateViewElement_title__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __38__SKUIDialogTemplateViewElement_title__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUIDialogTemplateViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_dialogType = [(SKUIDialogTemplateViewElement *)elementCopy dialogType];
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDialogTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end