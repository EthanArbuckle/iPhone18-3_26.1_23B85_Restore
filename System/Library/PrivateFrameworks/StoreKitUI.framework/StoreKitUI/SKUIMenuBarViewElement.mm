@interface SKUIMenuBarViewElement
+ (id)supportedFeatures;
- (SKUIMenuBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
- (void)_menuBarViewElementConfigurationRequestsReload:(id)a3;
- (void)_reloadMenuItems;
@end

@implementation SKUIMenuBarViewElement

- (SKUIMenuBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v20 = [v8 getAttribute:@"entityProviderID"];
    v21 = [v20 length];

    if (v21)
    {
      v15 = SKUIDynamicMenuBarViewElement;
      goto LABEL_13;
    }
  }

  v12 = objc_opt_class();
  if (v12 == [objc_opt_class() _titlesMenuBarViewElementClass])
  {
    v13 = [v8 getAttribute:@"type"];
    v14 = [v13 isEqualToString:@"shelf"];

    if (v14)
    {
      v15 = [objc_opt_class() _shelfMenuBarViewElementClass];
LABEL_13:
      v17 = [[v15 alloc] initWithDOMElement:v8 parent:v9 elementFactory:v10];
      goto LABEL_14;
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIMenuBarViewElement;
  v16 = [(SKUIViewElement *)&v23 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  v17 = v16;
  if (v16)
  {
    self = [(SKUIViewElement *)v16 featureWithName:*MEMORY[0x277D1AF10]];
    v18 = [[SKUIMenuBarViewElementConfiguration alloc] _initWithMenuBarDocument:self];
    configuration = v17->_configuration;
    v17->_configuration = v18;

    [(SKUIMenuBarViewElementConfiguration *)v17->_configuration _setReloadDelegate:v17];
LABEL_14:
  }

  return v17;
}

+ (id)supportedFeatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D1AF10];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SKUIMenuBarViewElement;
  v4 = objc_msgSendSuper2(&v8, sel_supportedFeatures);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v7.receiver = self;
  v7.super_class = SKUIMenuBarViewElement;
  v4 = a3;
  v5 = [(SKUIViewElement *)&v7 applyUpdatesWithElement:v4];

  if (v4 != self || [v5 updateType])
  {
    [(SKUIMenuBarViewElementConfiguration *)self->_configuration _setNeedsReload:1, v7.receiver, v7.super_class];
  }

  return v5;
}

- (void)_menuBarViewElementConfigurationRequestsReload:(id)a3
{
  if (self->_configuration == a3)
  {
    [(SKUIMenuBarViewElement *)self _reloadMenuItems];
  }
}

- (void)_reloadMenuItems
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIMenuBarViewElement *)self children];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 elementType] == 72)
        {
          v11 = v10;
          v12 = [v11 firstChildForElementType:138];
          if (v12)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v6 addObject:v12];
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v7 addObject:v11];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  objc_storeStrong(&self->_titleViewElements, v6);
  if (v7 && [v7 count])
  {
    v13 = 1;
  }

  else
  {
    v14 = [(SKUIViewElement *)self firstChildForElementType:4];

    if (v14)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = [(SKUIMenuBarViewElement *)self style];
  v16 = [v15 valueForStyle:@"itml-scroll-enabled"];
  v17 = [v16 BOOLValue];

  [(SKUIMenuBarViewElementConfiguration *)self->_configuration _reloadWithMenuBarStyle:v13 menuItemViewElements:v7 scrollEnabled:v17];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarViewElement initWithDOMElement:parent:elementFactory:]";
}

@end