@interface SKUIIndexBarEntryListViewElement
- (NSArray)childIndexBarEntryElements;
- (SKUIIndexBarEntryListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIIndexBarEntryListViewElement

- (SKUIIndexBarEntryListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarEntryListViewElement initWithDOMElement:parent:elementFactory:];
  }

  v19.receiver = self;
  v19.super_class = SKUIIndexBarEntryListViewElement;
  v11 = [(SKUIViewElement *)&v19 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"targetIndexBarEntryID"];
    if ([v12 length])
    {
      objc_storeStrong(&v11->_targetIndexBarEntryID, v12);
    }

    v13 = [v8 getAttribute:@"type"];
    if ([v13 isEqualToString:@"dynamicElement"])
    {
      v14 = 1;
    }

    else
    {
      v15 = [v13 isEqualToString:@"localeStandard"];
      v14 = 2;
      if (!v15)
      {
        v14 = 0;
      }
    }

    v11->_entryListElementType = v14;

    v16 = [v8 getAttribute:@"indexBarHiddenWhenEmpty"];
    v11->_indexBarHiddenWhenEmpty = [v16 BOOLValue];

    v17 = [v8 getAttribute:@"minimumEntityCount"];
    v11->_minimumEntityCount = [v17 integerValue];
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKUIIndexBarEntryListViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_entryListElementType = [(SKUIIndexBarEntryListViewElement *)v4 entryListElementType];
    self->_indexBarHiddenWhenEmpty = [(SKUIIndexBarEntryListViewElement *)v4 isIndexBarHiddenWhenEmpty];
    self->_minimumEntityCount = [(SKUIIndexBarEntryListViewElement *)v4 minimumEntityCount];
    v7 = [(SKUIIndexBarEntryListViewElement *)v4 targetIndexBarEntryID];
    targetIndexBarEntryID = self->_targetIndexBarEntryID;
    self->_targetIndexBarEntryID = v7;
  }

  return v6;
}

- (NSArray)childIndexBarEntryElements
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22;
  v9 = __Block_byref_object_dispose__22;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SKUIIndexBarEntryListViewElement_childIndexBarEntryElements__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __62__SKUIIndexBarEntryListViewElement_childIndexBarEntryElements__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 elementType] == 54)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarEntryListViewElement initWithDOMElement:parent:elementFactory:]";
}

@end