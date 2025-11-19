@interface SKUINearMeViewElement
- (SKUINearMeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (void)_itemsDidChange:(id)a3;
- (void)dealloc;
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SKUINearMeViewElement

- (SKUINearMeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINearMeViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUINearMeViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  v12 = v11;
  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SKUINearMeViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
    block[3] = &unk_2781F80F0;
    v15 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v12;
}

void __66__SKUINearMeViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1)
{
  v3 = +[SKUINearMeController sharedController];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__itemsDidChange_ name:@"SKUINearMeItemsDidChangeNotification" object:v3];

  if ([v3 status])
  {
    [*(a1 + 32) _itemsDidChange:0];
  }

  else
  {
    [v3 getItems];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SKUINearMeViewElement;
  [(SKUIViewElement *)&v4 dealloc];
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  v5 = SKUICoreLocationFramework();
  v6 = [SKUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa v5)];
  if (SKUINearMeIsEnabledForAuthorizationStatus(v6))
  {
    v7.receiver = self;
    v7.super_class = SKUINearMeViewElement;
    [(SKUIViewElement *)&v7 enumerateChildrenUsingBlock:v4];
  }
}

- (void)_itemsDidChange:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = +[SKUINearMeController sharedController];
  v5 = [v4 items];

  v6 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v20 + 1) + 8 * v11), "itemIdentifier")}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = +[SKUINearMeController sharedController];
  v14 = [v13 responseDictionary];

  if (v14)
  {
    v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:0 error:0];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__SKUINearMeViewElement__itemsDidChange___block_invoke;
    v18[3] = &unk_2781F80C8;
    v18[4] = self;
    v19 = v16;
    v17 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }
}

void __41__SKUINearMeViewElement__itemsDidChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = @"nearMe";
  v5[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 dispatchEventOfType:13 canBubble:0 isCancelable:1 extraInfo:v3 completionBlock:0];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINearMeViewElement initWithDOMElement:parent:elementFactory:]";
}

@end