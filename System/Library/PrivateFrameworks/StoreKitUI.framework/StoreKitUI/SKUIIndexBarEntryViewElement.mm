@interface SKUIIndexBarEntryViewElement
- (SKUIIndexBarEntryViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SKUIViewElement)childElement;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIIndexBarEntryViewElement

- (SKUIIndexBarEntryViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarEntryViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUIIndexBarEntryViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"targetIndexBarEntryID"];
    if ([v12 length])
    {
      objc_storeStrong(&v11->_targetIndexBarEntryID, v12);
    }

    v13 = [elementCopy getAttribute:@"visibility"];
    if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [SKUIIndexBarEntryViewElement initWithDOMElement:parent:elementFactory:];
    }

    v14 = [v13 isEqualToString:@"required"];
    v15 = 1000;
    if (!v14)
    {
      v15 = 0;
    }

    v11->_visibilityPriority = v15;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIIndexBarEntryViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    targetIndexBarEntryID = [(SKUIIndexBarEntryViewElement *)elementCopy targetIndexBarEntryID];
    targetIndexBarEntryID = self->_targetIndexBarEntryID;
    self->_targetIndexBarEntryID = targetIndexBarEntryID;

    self->_visibilityPriority = [(SKUIIndexBarEntryViewElement *)elementCopy visibilityPriority];
  }

  return v6;
}

- (SKUIViewElement)childElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__52;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SKUIIndexBarEntryViewElement_childElement__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarEntryViewElement initWithDOMElement:parent:elementFactory:]";
}

- (void)initWithDOMElement:parent:elementFactory:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "_SKUIIndexBarEntryVisibilityPriorityFromString";
}

@end