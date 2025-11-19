@interface SKUIQuicklinksPageComponent
- (SKUIQuicklinksPageComponent)initWithCustomPageContext:(id)a3;
- (SKUIQuicklinksPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (id)valueForMetricsField:(id)a3;
- (void)_setLinksWithLinksArray:(id)a3 context:(id)a4;
@end

@implementation SKUIQuicklinksPageComponent

- (SKUIQuicklinksPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIQuicklinksPageComponent initWithCustomPageContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIQuicklinksPageComponent;
  v5 = [(SKUIPageComponent *)&v12 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      title = v5->_title;
      v5->_title = v8;
    }

    v10 = [v6 objectForKey:@"children"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIQuicklinksPageComponent *)v5 _setLinksWithLinksArray:v10 context:v4];
    }
  }

  return v5;
}

- (SKUIQuicklinksPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIQuicklinksPageComponent initWithFeaturedContentContext:kind:];
  }

  v17.receiver = self;
  v17.super_class = SKUIQuicklinksPageComponent;
  v7 = [(SKUIPageComponent *)&v17 initWithFeaturedContentContext:v6 kind:a4];
  if (v7)
  {
    v8 = [v6 componentDictionary];
    v9 = [v8 objectForKey:@"children"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;

        v8 = v11;
      }
    }

    v12 = [v8 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      title = v7->_title;
      v7->_title = v13;
    }

    v15 = [v8 objectForKey:@"links"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIQuicklinksPageComponent *)v7 _setLinksWithLinksArray:v15 context:v6];
    }
  }

  return v7;
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    v5 = [(SKUIQuicklinksPageComponent *)self title];
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D6A498]])
  {
    v5 = &unk_2828D2EB8;
    goto LABEL_8;
  }

  v7.receiver = self;
  v7.super_class = SKUIQuicklinksPageComponent;
  v5 = [(SKUIPageComponent *)&v7 valueForMetricsField:v4];
LABEL_8:

  return v5;
}

- (void)_setLinksWithLinksArray:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v6 copy];
          [v14 setComponentDictionary:v13];
          v15 = [[SKUILink alloc] initWithComponentContext:v14];
          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  links = self->_links;
  self->_links = v16;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIQuicklinksPageComponent initWithCustomPageContext:]";
}

- (void)initWithFeaturedContentContext:kind:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIQuicklinksPageComponent initWithFeaturedContentContext:kind:]";
}

@end