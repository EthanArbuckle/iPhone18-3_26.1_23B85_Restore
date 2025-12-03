@interface SKUIMenuPageComponent
- (NSArray)allTitles;
- (SKUIMenuPageComponent)initWithCustomPageContext:(id)context;
- (SKUIMenuPageComponent)initWithRoomSortData:(id)data;
- (SKUIMenuPageComponent)initWithViewElement:(id)element;
- (id)_componentWithContext:(id)context;
- (id)childComponentsForIndex:(int64_t)index;
- (id)sortURLForIndex:(int64_t)index;
@end

@implementation SKUIMenuPageComponent

- (SKUIMenuPageComponent)initWithCustomPageContext:(id)context
{
  v72 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMenuPageComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v69.receiver = self;
  v69.super_class = SKUIMenuPageComponent;
  v60 = [(SKUIPageComponent *)&v69 initWithCustomPageContext:contextCopy];
  if (v60)
  {
    componentDictionary = [contextCopy componentDictionary];
    v14 = [componentDictionary objectForKey:@"type"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:@"popup"])
    {
      v60->_menuStyle = 1;
    }

    v15 = [componentDictionary objectForKey:@"moreTitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      titleForMoreItem = v60->_titleForMoreItem;
      v60->_titleForMoreItem = v16;
    }

    v18 = [componentDictionary objectForKey:@"title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      menuTitle = v60->_menuTitle;
      v60->_menuTitle = v19;

      v21 = [componentDictionary objectForKey:@"titleSize"];

      if (objc_opt_respondsToSelector())
      {
        [v21 floatValue];
        v60->_menuTitleFontSize = v22;
      }

      v18 = [componentDictionary objectForKey:@"titleWeight"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60->_menuTitleFontWeight = SKUIPageComponentFontWeightForString(v18);
      }
    }

    v23 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = componentDictionary;
      v58 = objc_alloc_init(MEMORY[0x277CCA940]);
      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
      childrenComponents = v60->_childrenComponents;
      v60->_childrenComponents = v24;

      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      titles = v60->_titles;
      v60->_titles = v26;

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v50 = v23;
      v28 = v23;
      v56 = [v28 countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v56)
      {
        v29 = *v66;
        v54 = contextCopy;
        v52 = *v66;
        v53 = v28;
        do
        {
          v30 = 0;
          do
          {
            if (*v66 != v29)
            {
              objc_enumerationMutation(v28);
            }

            v57 = v30;
            v31 = *(*(&v65 + 1) + 8 * v30);
            v32 = [v31 objectForKey:@"content"];
            v33 = v31;
            v34 = v32;
            v35 = [v33 objectForKey:@"title"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = [contextCopy copy];
                v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v38 = v34;
                v39 = v37;
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v55 = v38;
                v40 = v38;
                v41 = [v40 countByEnumeratingWithState:&v61 objects:v70 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v62;
                  do
                  {
                    v44 = 0;
                    v59 = v42;
                    do
                    {
                      if (*v62 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v61 + 1) + 8 * v44);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v36 setComponentDictionary:v45];
                        v46 = [(SKUIMenuPageComponent *)v60 _componentWithContext:v36];
                        v47 = v46;
                        if (v46)
                        {
                          metricsElementName = [v46 metricsElementName];
                          if (metricsElementName)
                          {
                            [v47 _setMetricsLocationPosition:{objc_msgSend(v58, "countForObject:", metricsElementName)}];
                            v42 = v59;
                            [v58 addObject:metricsElementName];
                          }

                          [v39 addObject:v47];
                        }
                      }

                      ++v44;
                    }

                    while (v42 != v44);
                    v42 = [v40 countByEnumeratingWithState:&v61 objects:v70 count:16];
                  }

                  while (v42);
                }

                if ([v39 count])
                {
                  [(NSMutableArray *)v60->_childrenComponents addObject:v39];
                  [(NSMutableArray *)v60->_titles addObject:v35];
                }

                contextCopy = v54;
                v29 = v52;
                v28 = v53;
                v34 = v55;
              }
            }

            v30 = v57 + 1;
          }

          while (v57 + 1 != v56);
          v56 = [v28 countByEnumeratingWithState:&v65 objects:v71 count:16];
        }

        while (v56);
      }

      componentDictionary = v51;
      v23 = v50;
    }
  }

  return v60;
}

- (SKUIMenuPageComponent)initWithRoomSortData:(id)data
{
  dataCopy = data;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMenuPageComponent *)v5 initWithRoomSortData:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = SKUIMenuPageComponent;
  v13 = [(SKUIMenuPageComponent *)&v31 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childrenComponents = v13->_childrenComponents;
    v13->_childrenComponents = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortURLStrings = v13->_sortURLStrings;
    v13->_sortURLStrings = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    titles = v13->_titles;
    v13->_titles = v18;

    v20 = [dataCopy objectForKey:@"defaultSort"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 objectForKey:@"id"];
    }

    else
    {
      v21 = 0;
    }

    v22 = [dataCopy objectForKey:@"sorts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __46__SKUIMenuPageComponent_initWithRoomSortData___block_invoke;
      v28 = &unk_2782007D8;
      v29 = v13;
      v30 = v21;
      [v22 enumerateObjectsUsingBlock:&v25];
    }

    v23 = [(NSMutableArray *)v13->_sortURLStrings count:v25];
    if (v23 != [(NSMutableArray *)v13->_titles count]|| ![(NSMutableArray *)v13->_sortURLStrings count]|| ![(NSMutableArray *)v13->_titles count])
    {

      v13 = 0;
    }
  }

  return v13;
}

uint64_t __46__SKUIMenuPageComponent_initWithRoomSortData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v13;
  if (isKindOfClass)
  {
    v7 = [v13 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 88) addObject:v7];
    }

    v8 = [v13 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 72) addObject:v8];
    }

    v9 = [v13 objectForKey:@"id"];

    if ([v9 isEqual:*(a1 + 40)])
    {
      *(*(a1 + 32) + 32) = a3;
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = [MEMORY[0x277CBEB68] null];
    [v10 addObject:v11];

    v6 = v13;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v6);
}

- (SKUIMenuPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMenuPageComponent *)v5 initWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUIMenuPageComponent;
  v13 = [(SKUIPageComponent *)&v18 initWithViewElement:elementCopy];
  if (v13)
  {
    v13->_defaultSelectedIndex = [elementCopy initialSelectedItemIndex];
    segmentItemTitles = [elementCopy segmentItemTitles];
    v15 = [segmentItemTitles mutableCopy];
    titles = v13->_titles;
    v13->_titles = v15;
  }

  return v13;
}

- (NSArray)allTitles
{
  v2 = [(NSMutableArray *)self->_titles copy];

  return v2;
}

- (id)childComponentsForIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->_childrenComponents objectAtIndex:index];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)sortURLForIndex:(int64_t)index
{
  sortURLStrings = self->_sortURLStrings;
  if (sortURLStrings)
  {
    v4 = [(NSMutableArray *)sortURLStrings objectAtIndex:index];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_componentWithContext:(id)context
{
  contextCopy = context;
  componentDictionary = [contextCopy componentDictionary];
  v5 = [componentDictionary objectForKey:@"type"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = SKUIPageComponentTypeForBlockType(v5), (v7 = SKUIPageComponentClassForComponentType(v6)) != 0))
  {
    v8 = [[v7 alloc] initWithCustomPageContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end