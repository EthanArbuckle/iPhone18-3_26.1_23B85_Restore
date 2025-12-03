@interface SKUICarouselPageComponent
- (SKUICarouselPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (SKUICarouselPageComponent)initWithViewElement:(id)element;
- (id)valueForMetricsField:(id)field;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)index usingBlock:(id)block;
- (void)updateWithMissingItems:(id)items;
@end

@implementation SKUICarouselPageComponent

- (SKUICarouselPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselPageComponent initWithFeaturedContentContext:kind:];
  }

  v32.receiver = self;
  v32.super_class = SKUICarouselPageComponent;
  v27 = [(SKUIPageComponent *)&v32 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v27)
  {
    componentDictionary = [contextCopy componentDictionary];
    v8 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = componentDictionary;
      v9 = [contextCopy copy];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = v8;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setComponentDictionary:v16];
              v17 = [[SKUICarouselItem alloc] initWithComponentContext:v9];
              link = [(SKUICarouselItem *)v17 link];
              if ([link isActionable])
              {
                [v10 addObject:v17];
              }

              else
              {
                itemIdentifier = [link itemIdentifier];
                if (itemIdentifier && ([contextCopy isUnavailableItemIdentifier:itemIdentifier] & 1) == 0)
                {
                  ++v27->_missingItemCount;
                  [v10 addObject:v17];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v13);
      }

      if ([contextCopy layoutStyle] == 1 && objc_msgSend(v10, "count") >= 3)
      {
        v20 = [v10 objectAtIndex:1];
        [v10 removeObjectAtIndex:1];
        [v10 addObject:v20];
      }

      v21 = [v10 copy];
      carouselItems = v27->_carouselItems;
      v27->_carouselItems = v21;

      v8 = v25;
      componentDictionary = v26;
    }

    v27->_cycleInterval = 5.0;
  }

  return v27;
}

- (SKUICarouselPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselPageComponent initWithViewElement:];
  }

  v8.receiver = self;
  v8.super_class = SKUICarouselPageComponent;
  v5 = [(SKUIPageComponent *)&v8 initWithViewElement:elementCopy];
  if (v5)
  {
    [elementCopy displayInterval];
    if (v6 < 0.0)
    {
      v6 = 5.0;
    }

    v5->_cycleInterval = v6;
  }

  return v5;
}

- (void)updateWithMissingItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_carouselItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        link = [v10 link];
        itemIdentifier = [link itemIdentifier];
        if (itemIdentifier && ([link isActionable] & 1) == 0)
        {
          v13 = [itemsCopy objectForKey:itemIdentifier];
          if (v13)
          {
            [v10 _setLinkItem:v13];
            --self->_missingItemCount;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)index usingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_carouselItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        link = [*(*(&v14 + 1) + 8 * v12) link];
        [v7 addObject:link];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(SKUIPageComponent *)self _enumerateMissingItemIdentifiersFromLinks:v7 startIndex:index usingBlock:blockCopy];
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A498]])
  {
    v5 = &unk_2828D2ED0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUICarouselPageComponent;
    v5 = [(SKUIPageComponent *)&v7 valueForMetricsField:fieldCopy];
  }

  return v5;
}

- (void)initWithFeaturedContentContext:kind:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICarouselPageComponent initWithFeaturedContentContext:kind:]";
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICarouselPageComponent initWithViewElement:]";
}

@end