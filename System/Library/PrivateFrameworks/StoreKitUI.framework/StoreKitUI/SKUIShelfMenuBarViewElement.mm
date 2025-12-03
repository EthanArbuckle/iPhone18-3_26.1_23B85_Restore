@interface SKUIShelfMenuBarViewElement
+ (id)supportedFeatures;
- (SKUIShelfMenuBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)_menuBarViewElementConfigurationRequestsReload:(id)reload;
- (void)_reloadMenuItems;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUIShelfMenuBarViewElement

- (SKUIShelfMenuBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIShelfMenuBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v16 = [elementCopy getAttribute:@"entityProviderID"];
    v17 = [v16 length];

    if (v17)
    {
      v13 = [(SKUIShelfMenuBarViewElement *)[SKUIDynamicShelfMenuBarViewElement alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
      goto LABEL_10;
    }
  }

  v19.receiver = self;
  v19.super_class = SKUIShelfMenuBarViewElement;
  v12 = [(SKUIShelfViewElement *)&v19 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  v13 = v12;
  if (v12)
  {
    self = [(SKUIViewElement *)v12 featureWithName:*MEMORY[0x277D1AF10]];
    v14 = [[SKUIMenuBarViewElementConfiguration alloc] _initWithMenuBarDocument:self];
    configuration = v13->super._configuration;
    v13->super._configuration = v14;

    [(SKUIMenuBarViewElementConfiguration *)v13->super._configuration _setReloadDelegate:v13];
LABEL_10:
  }

  return &v13->super;
}

+ (id)supportedFeatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D1AF10];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SKUIShelfMenuBarViewElement;
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

- (id)applyUpdatesWithElement:(id)element
{
  v7.receiver = self;
  v7.super_class = SKUIShelfMenuBarViewElement;
  elementCopy = element;
  v5 = [(SKUIShelfViewElement *)&v7 applyUpdatesWithElement:elementCopy];

  if (elementCopy != self || [v5 updateType])
  {
    [(SKUIMenuBarViewElementConfiguration *)self->_configuration _setNeedsReload:1, v7.receiver, v7.super_class];
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  children = [(SKUIShelfMenuBarViewElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SKUIShelfMenuBarViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FBFE8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [children enumerateObjectsUsingBlock:v7];
}

void __59__SKUIShelfMenuBarViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 elementType] == 72)
  {
    v3 = [*(a1 + 32) shelfItemViewElementValidator];
    v4 = v3;
    if (!v3 || (*(v3 + 16))(v3, v5))
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_menuBarViewElementConfigurationRequestsReload:(id)reload
{
  if (self->_configuration == reload)
  {
    [(SKUIShelfMenuBarViewElement *)self _reloadMenuItems];
  }
}

- (void)_reloadMenuItems
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  style = [(SKUIShelfMenuBarViewElement *)self style];
  v4 = [style valueForStyle:@"itml-shelf-layout"];
  v5 = [v4 isEqualToString:@"zooming"];

  if (v5)
  {
    v28 = v5;
    v29 = selfCopy;
    [(SKUIShelfMenuBarViewElement *)selfCopy children];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v31 = 0;
          v32 = 0;
          v33 = 0;
          SKUIZoomingShelfMenuBarGetValidationInfoForViewElement(v13, &v31);
          if (v31 == 1)
          {
            v14 = v13;
            children = [v14 children];
            v16 = [children objectAtIndex:v32];
            v17 = [children objectAtIndex:v33];
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v10 addObject:v14];
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v9 addObject:v16];
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v17];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v18 = 2;
    selfCopy = v29;
    v5 = v28;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v18 = 0;
  }

  v19 = [v9 copy];
  focusedViewElements = selfCopy->_focusedViewElements;
  selfCopy->_focusedViewElements = v19;

  v21 = [v8 copy];
  regularViewElements = selfCopy->_regularViewElements;
  selfCopy->_regularViewElements = v21;

  if (v5)
  {
    v23 = &__block_literal_global_14;
    v24 = selfCopy;
  }

  else
  {
    v24 = selfCopy;
    v23 = 0;
  }

  [(SKUIShelfViewElement *)v24 setShelfItemViewElementValidator:v23];
  style2 = [(SKUIShelfMenuBarViewElement *)selfCopy style];
  v26 = [style2 valueForStyle:@"itml-scroll-enabled"];
  bOOLValue = [v26 BOOLValue];

  [(SKUIMenuBarViewElementConfiguration *)selfCopy->_configuration _reloadWithMenuBarStyle:v18 menuItemViewElements:v10 scrollEnabled:bOOLValue];
}

uint64_t __47__SKUIShelfMenuBarViewElement__reloadMenuItems__block_invoke(uint64_t a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  SKUIZoomingShelfMenuBarGetValidationInfoForViewElement(a2, v3);
  return LOBYTE(v3[0]);
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfMenuBarViewElement initWithDOMElement:parent:elementFactory:]";
}

@end