@interface SKUIStackTemplateElement
- (NSArray)collectionElements;
- (SKUIStackTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SKUIViewElement)collectionHeaderViewElement;
- (id)applyUpdatesWithElement:(id)a3;
- (int64_t)numberOfSplits;
@end

@implementation SKUIStackTemplateElement

- (SKUIStackTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStackTemplateElement initWithDOMElement:parent:elementFactory:];
  }

  v14.receiver = self;
  v14.super_class = SKUIStackTemplateElement;
  v11 = [(SKUIViewElement *)&v14 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"resetState"];
    v11->_needsStateReset = [v12 BOOLValue];
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SKUIStackTemplateElement;
  v4 = a3;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:v4];

  if (v4 != self || [v5 updateType])
  {
    collectionElements = self->_collectionElements;
    self->_collectionElements = 0;
  }

  return v5;
}

- (NSArray)collectionElements
{
  collectionElements = self->_collectionElements;
  if (!collectionElements)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v5 = self->_collectionElements;
    self->_collectionElements = v4;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SKUIStackTemplateElement_collectionElements__block_invoke;
    v7[3] = &unk_2781F9640;
    v7[4] = self;
    [(SKUIViewElement *)self enumerateChildrenUsingBlock:v7];
    collectionElements = self->_collectionElements;
  }

  return collectionElements;
}

void __46__SKUIStackTemplateElement_collectionElements__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 elementType];
  v7 = *(*(a1 + 32) + 280);
  if (v6 == 20)
  {
    [v7 removeAllObjects];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SKUIStackTemplateElement_collectionElements__block_invoke_2;
    v8[3] = &unk_2781F9640;
    v8[4] = *(a1 + 32);
    [v5 enumerateChildrenUsingBlock:v8];
    *a3 = 1;
  }

  else
  {
    [v7 addObject:v5];
  }
}

- (SKUIViewElement)collectionHeaderViewElement
{
  collectionHeaderViewElement = self->_collectionHeaderViewElement;
  if (!collectionHeaderViewElement)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SKUIStackTemplateElement_collectionHeaderViewElement__block_invoke;
    v5[3] = &unk_2781F9640;
    v5[4] = self;
    [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
    collectionHeaderViewElement = self->_collectionHeaderViewElement;
  }

  return collectionHeaderViewElement;
}

void __55__SKUIStackTemplateElement_collectionHeaderViewElement__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 elementType] == 107)
  {
    objc_storeStrong((*(a1 + 32) + 288), a2);
  }
}

- (int64_t)numberOfSplits
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SKUIStackTemplateElement_numberOfSplits__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __42__SKUIStackTemplateElement_numberOfSplits__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 elementType];
  if (result == 128)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackTemplateElement initWithDOMElement:parent:elementFactory:]";
}

@end