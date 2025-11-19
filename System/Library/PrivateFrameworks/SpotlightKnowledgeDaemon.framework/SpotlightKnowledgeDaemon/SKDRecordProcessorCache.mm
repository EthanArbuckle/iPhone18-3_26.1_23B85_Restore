@interface SKDRecordProcessorCache
+ (id)sharedCache;
- (SKDRecordProcessorCache)init;
- (id)processorWithName:(id)a3;
- (id)processorsWithNames:(id)a3;
@end

@implementation SKDRecordProcessorCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[SKDRecordProcessorCache sharedCache];
  }

  v3 = sharedCache_sRecordProcessorCache;

  return v3;
}

void __38__SKDRecordProcessorCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(SKDRecordProcessorCache);
  v1 = sharedCache_sRecordProcessorCache;
  sharedCache_sRecordProcessorCache = v0;
}

- (SKDRecordProcessorCache)init
{
  v6.receiver = self;
  v6.super_class = SKDRecordProcessorCache;
  v2 = [(SKDRecordProcessorCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)processorWithName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v4];
  if (!v5)
  {
    if ([v4 hasSuffix:@"TEST_PROCESSOR"])
    {
      v6 = [[SKDTestProcessor alloc] initWithName:v4];
    }

    else
    {
      if ([v4 isEqualToString:@"language"])
      {
        v7 = SKDLanguageProcessor;
      }

      else if ([v4 isEqualToString:@"breadcrumb"])
      {
        v7 = SKDBreadcrumbProcessor;
      }

      else if ([v4 isEqualToString:@"location"])
      {
        v7 = SKDLocationProcessor;
      }

      else
      {
        if (![v4 isEqualToString:@"embedding"])
        {
          v5 = 0;
          goto LABEL_15;
        }

        v7 = SKDEmbeddingProcessor;
      }

      v6 = objc_alloc_init(v7);
    }

    v5 = v6;
    if (v6)
    {
      [(NSMutableDictionary *)self->_cache setObject:v6 forKey:v4];
      [v5 load];
    }
  }

LABEL_15:
  v8 = v5;

  return v8;
}

- (id)processorsWithNames:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SKDRecordProcessorCache *)self processorWithName:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end