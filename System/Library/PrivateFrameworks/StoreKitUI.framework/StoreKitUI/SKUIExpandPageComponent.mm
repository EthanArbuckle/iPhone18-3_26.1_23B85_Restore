@interface SKUIExpandPageComponent
- (SKUIExpandPageComponent)initWithViewElement:(id)element;
@end

@implementation SKUIExpandPageComponent

- (SKUIExpandPageComponent)initWithViewElement:(id)element
{
  v24 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v22.receiver = self;
  v22.super_class = SKUIExpandPageComponent;
  v6 = [(SKUIPageComponent *)&v22 initWithViewElement:elementCopy];
  if (v6)
  {
    if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [SKUIExpandPageComponent initWithViewElement:];
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childComponents = v6->_childComponents;
    v6->_childComponents = v7;

    objc_storeStrong(&v6->_viewElement, element);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    flattenedChildren = [elementCopy flattenedChildren];
    v10 = [flattenedChildren countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(flattenedChildren);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = SKUIPageComponentClassForComponentType([v14 pageComponentType]);
          if (v15)
          {
            v16 = [[v15 alloc] initWithViewElement:v14];
            if (v16)
            {
              [(NSMutableArray *)v6->_childComponents addObject:v16];
            }
          }
        }

        v11 = [flattenedChildren countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIExpandPageComponent initWithViewElement:]";
}

@end