@interface SKUIEntityProviderListViewElement
- (SKUIEntityProviderListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIEntityProviderListViewElement

- (SKUIEntityProviderListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEntityProviderListViewElement initWithDOMElement:parent:elementFactory:];
  }

  v29.receiver = self;
  v29.super_class = SKUIEntityProviderListViewElement;
  v11 = [(SKUIViewElement *)&v29 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v23 = v9;
    v24 = v8;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(SKUIEntityProviderListViewElement *)v11 children];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [v18 elementID];
          if ([v19 length] && objc_msgSend(v18, "conformsToProtocol:", &unk_2829AED98))
          {
            [v12 setObject:v18 forKey:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v15);
    }

    v20 = [v12 copy];
    entityProviders = v11->_entityProviders;
    v11->_entityProviders = v20;

    v9 = v23;
    v8 = v24;
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEntityProviderListViewElement initWithDOMElement:parent:elementFactory:]";
}

@end