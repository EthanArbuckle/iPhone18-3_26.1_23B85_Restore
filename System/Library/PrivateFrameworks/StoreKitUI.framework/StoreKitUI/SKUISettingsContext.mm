@interface SKUISettingsContext
- (SKUIClientContext)clientContext;
- (SKUISettingsContext)initWithClientContext:(id)context;
- (id)_dequeueReusableSettingDescriptionWithReuseIdentifier:(id)identifier forViewElement:(id)element parent:(id)parent;
- (id)dequeueReusableSettingDescriptionForViewElement:(id)element parent:(id)parent;
- (void)_registerReuseClasses;
- (void)recycleSettingDescriptions:(id)descriptions;
@end

@implementation SKUISettingsContext

- (SKUISettingsContext)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsContext initWithClientContext:];
  }

  v14.receiver = self;
  v14.super_class = SKUISettingsContext;
  v5 = [(SKUISettingsContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_clientContext, contextCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    elementTypeClass = v6->_elementTypeClass;
    v6->_elementTypeClass = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    descriptionReusePool = v6->_descriptionReusePool;
    v6->_descriptionReusePool = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewReusePool = v6->_viewReusePool;
    v6->_viewReusePool = v11;

    [(SKUISettingsContext *)v6 _registerReuseClasses];
  }

  return v6;
}

- (id)dequeueReusableSettingDescriptionForViewElement:(id)element parent:(id)parent
{
  elementCopy = element;
  parentCopy = parent;
  elementType = [elementCopy elementType];
  v9 = 0;
  if (elementType <= 111)
  {
    if (elementType == 66)
    {
      v10 = @"default";
    }

    else
    {
      if (elementType != 111)
      {
        goto LABEL_13;
      }

      v10 = @"editProfile";
    }
  }

  else
  {
    switch(elementType)
    {
      case 'p':
        v10 = @"family";
        break;
      case 'q':
        v10 = @"field";
        break;
      case 'r':
        v10 = @"profile";
        break;
      default:
        goto LABEL_13;
    }
  }

  v9 = [(SKUISettingsContext *)self _dequeueReusableSettingDescriptionWithReuseIdentifier:v10 forViewElement:elementCopy parent:parentCopy];
LABEL_13:

  return v9;
}

- (void)recycleSettingDescriptions:(id)descriptions
{
  v14 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(descriptionsCopy);
        }

        [(NSMutableArray *)self->_descriptionReusePool addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [descriptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_dequeueReusableSettingDescriptionWithReuseIdentifier:(id)identifier forViewElement:(id)element parent:(id)parent
{
  identifierCopy = identifier;
  descriptionReusePool = self->_descriptionReusePool;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__SKUISettingsContext__dequeueReusableSettingDescriptionWithReuseIdentifier_forViewElement_parent___block_invoke;
  v17[3] = &unk_2781FD6B8;
  v18 = identifierCopy;
  v10 = identifierCopy;
  parentCopy = parent;
  elementCopy = element;
  v13 = [(NSMutableArray *)descriptionReusePool indexOfObjectPassingTest:v17];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [objc_alloc(-[NSMutableDictionary objectForKey:](self->_elementTypeClass objectForKey:{v10)), "initWithViewElement:parent:", elementCopy, parentCopy}];

    objc_setAssociatedObject(v14, "com.apple.StoreKitUI.SKUISettingsContext.reuseIdentifier", v10, 1);
  }

  else
  {
    v15 = v13;
    v14 = [(NSMutableArray *)self->_descriptionReusePool objectAtIndex:v13];
    [(NSMutableArray *)self->_descriptionReusePool removeObjectAtIndex:v15];
    [v14 reloadWithViewElement:elementCopy parent:parentCopy];
  }

  return v14;
}

uint64_t __99__SKUISettingsContext__dequeueReusableSettingDescriptionWithReuseIdentifier_forViewElement_parent___block_invoke(uint64_t a1, id object)
{
  v3 = objc_getAssociatedObject(object, "com.apple.StoreKitUI.SKUISettingsContext.reuseIdentifier");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_registerReuseClasses
{
  [(SKUISettingsContext *)self _registerClass:objc_opt_class() forReuseIdentifier:@"default"];
  [(SKUISettingsContext *)self _registerClass:objc_opt_class() forReuseIdentifier:@"editProfile"];
  [(SKUISettingsContext *)self _registerClass:objc_opt_class() forReuseIdentifier:@"family"];
  [(SKUISettingsContext *)self _registerClass:objc_opt_class() forReuseIdentifier:@"field"];
  v3 = objc_opt_class();

  [(SKUISettingsContext *)self _registerClass:v3 forReuseIdentifier:@"profile"];
}

- (SKUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_clientContext);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsContext initWithClientContext:]";
}

@end