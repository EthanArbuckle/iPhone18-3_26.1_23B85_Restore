@interface SKUICompletionList
- (NSMutableDictionary)cacheRepresentation;
- (SKUICompletionList)initWithCacheRepresentation:(id)a3;
- (SKUICompletionList)initWithCompletionListDictionary:(id)a3;
@end

@implementation SKUICompletionList

- (SKUICompletionList)initWithCompletionListDictionary:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICompletionList *)v5 initWithCompletionListDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = SKUICompletionList;
  v13 = [(SKUICompletionList *)&v31 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"item"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_title, v14);
    }

    v15 = [v4 objectForKey:@"hints"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v4;
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          v21 = 0;
          do
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v27 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[SKUICompletion alloc] initWithCompletionDictionary:v22];
              [(NSArray *)v16 addObject:v23];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v19);
      }

      completions = v13->_completions;
      v13->_completions = v16;

      v4 = v26;
    }
  }

  return v13;
}

- (SKUICompletionList)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICompletionList *)v5 initWithCacheRepresentation:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v21.receiver = self;
  v21.super_class = SKUICompletionList;
  v13 = [(SKUICompletionList *)&v21 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      title = v13->_title;
      v13->_title = v15;
    }

    self = [v4 objectForKey:@"completions"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_opt_class();
      v18 = SKUICacheCodingDecodeArray(self, v17);
      completions = v13->_completions;
      v13->_completions = v18;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  completions = self->_completions;
  if (completions)
  {
    v5 = SKUICacheCodingEncodeArray(completions);
    [v3 setObject:v5 forKey:@"completions"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  return v3;
}

@end