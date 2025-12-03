@interface SKUIRowComponent
- (BOOL)_isChildMissingItemData:(id)data;
- (SKUIRowComponent)initWithCustomPageContext:(id)context;
- (SKUIRowComponent)initWithViewElement:(id)element;
- (id)_childComponentWithContext:(id)context;
- (id)_updateWithMissingItems:(id)items;
- (id)description;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)index usingBlock:(id)block;
@end

@implementation SKUIRowComponent

- (SKUIRowComponent)initWithCustomPageContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRowComponent initWithCustomPageContext:];
  }

  v38.receiver = self;
  v38.super_class = SKUIRowComponent;
  v5 = [(SKUIPageComponent *)&v38 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"columns"];
    if (objc_opt_respondsToSelector())
    {
      v5->_numberOfColumns = [v7 integerValue];
    }

    v8 = [componentDictionary objectForKey:@"backgroundColor"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = SKUIColorWithHTMLCode(v8);
      backgroundColor = v5->_backgroundColor;
      v5->_backgroundColor = v9;
    }

    v11 = [componentDictionary objectForKey:@"shouldAutoFlow"];

    if (objc_opt_respondsToSelector())
    {
      v5->_shouldAutoFlow = [v11 BOOLValue];
    }

    else
    {
      v5->_shouldAutoFlow = 1;
    }

    v12 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v11;
      v32 = contextCopy;
      v13 = [contextCopy copy];
      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v30 = v12;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 setComponentDictionary:v20];
              v21 = [(SKUIRowComponent *)v5 _childComponentWithContext:v13];
              if (v21)
              {
                v22 = [v20 objectForKey:@"colspan"];
                if (objc_opt_respondsToSelector())
                {
                  v23 = v33;
                  v24 = v22;
                }

                else
                {
                  v23 = v33;
                  v24 = &unk_2828D2B40;
                }

                [v23 addObject:{v24, v30}];
                if ([(SKUIRowComponent *)v5 _isChildMissingItemData:v21])
                {
                  ++v5->_missingItemCount;
                }

                [v14 addObject:v21];
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v17);
      }

      v25 = [v14 copy];
      childComponents = v5->_childComponents;
      v5->_childComponents = v25;

      v27 = [v33 copy];
      columnWidths = v5->_columnWidths;
      v5->_columnWidths = v27;

      contextCopy = v32;
      v12 = v30;
      v11 = v31;
    }
  }

  return v5;
}

- (SKUIRowComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIRowComponent initWithViewElement:];
  }

  v7.receiver = self;
  v7.super_class = SKUIRowComponent;
  v5 = [(SKUIPageComponent *)&v7 initWithViewElement:elementCopy];

  return v5;
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)index usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(NSArray *)self->_childComponents count];
  if (v7 > index)
  {
    v8 = v7 - 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v17 = 0;
      v10 = [(NSArray *)self->_childComponents objectAtIndex:index];
      if ([v10 componentType] == 9)
      {
        itemIdentifier = [v10 itemIdentifier];
        if (itemIdentifier)
        {
          v12 = itemIdentifier;
          item = [v10 item];

          if (!item)
          {
            v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v12];
            blockCopy[2](blockCopy, v14, index, &v17);
          }
        }
      }

      v15 = v17;

      objc_autoreleasePoolPop(v9);
      if (v15)
      {
        break;
      }
    }

    while (v8 != index++);
  }
}

- (id)_updateWithMissingItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKUIRowComponent__updateWithMissingItems___block_invoke;
  v8[3] = &unk_2781FB648;
  v9 = itemsCopy;
  selfCopy = self;
  v6 = itemsCopy;
  [(SKUIRowComponent *)self enumerateMissingItemIdentifiersFromIndex:0 usingBlock:v8];

  return v5;
}

void __44__SKUIRowComponent__updateWithMissingItems___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    v7 = v5;
    v6 = [*(*(a1 + 40) + 32) objectAtIndex:a3];
    [v6 _setItem:v7];
    --*(*(a1 + 40) + 48);

    v5 = v7;
  }
}

- (id)_childComponentWithContext:(id)context
{
  contextCopy = context;
  componentDictionary = [contextCopy componentDictionary];
  v5 = [componentDictionary objectForKey:@"type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((v6 = SKUIPageComponentTypeForBlockType(v5), v6 <= 0xE) ? (v7 = ((1 << v6) & 0x46A4) == 0) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(SKUIPageComponentClassForComponentType(v6)) initWithCustomPageContext:contextCopy];
  }

  return v8;
}

- (BOOL)_isChildMissingItemData:(id)data
{
  dataCopy = data;
  if ([dataCopy componentType] == 9)
  {
    v4 = dataCopy;
    item = [v4 item];
    if (item)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 itemIdentifier] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIRowComponent;
  v4 = [(SKUIRowComponent *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %ld columns %@", v4, self->_numberOfColumns, self->_childComponents];;

  return v5;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRowComponent initWithCustomPageContext:]";
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRowComponent initWithViewElement:]";
}

@end