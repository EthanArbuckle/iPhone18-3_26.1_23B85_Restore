@interface SKUIScreenshot
- (CGSize)sizeForVariant:(id)a3;
- (NSMutableDictionary)cacheRepresentation;
- (SKUIScreenshot)initWithCacheRepresentation:(id)a3;
- (SKUIScreenshot)initWithScreenshotDictionary:(id)a3;
- (id)URLForVariant:(id)a3;
- (id)_firstVariant;
- (id)_initSKUIScreenshot;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addURLsFromDictionary:(id)a3 withRemoteLocalKeysMap:(id)a4;
- (void)setArtwork:(id)a3 forVariant:(id)a4;
@end

@implementation SKUIScreenshot

- (id)_initSKUIScreenshot
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIScreenshot *)v3 _initSKUIScreenshot:v4];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = SKUIScreenshot;
  result = [(SKUIScreenshot *)&v12 init];
  if (result)
  {
    *(result + 2) = atomic_fetch_add_explicit(&_initSKUIScreenshot_sUniqueID, 1uLL, memory_order_relaxed) + 1;
  }

  return result;
}

- (SKUIScreenshot)initWithScreenshotDictionary:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIScreenshot *)v5 initWithScreenshotDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIScreenshot *)self _initSKUIScreenshot];
  if (v13)
  {
    v14 = [v4 objectForKey:@"orientation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      orientation = v13->_orientation;
      v13->_orientation = v15;
    }

    v43 = v14;
    v46 = @"low-dpi";
    v47[0] = @"high-dpi";
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    urls = v13->_urls;
    v13->_urls = v17;

    v19 = &v46;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *v19;
      v23 = [v4 objectForKey:{*v19, v43}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 objectForKey:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v24];
          if (v25)
          {
            [(NSMutableDictionary *)v13->_urls setObject:v25 forKey:v22];
          }
        }
      }

      v20 = 0;
      v19 = v47;
    }

    while ((v21 & 1) != 0);
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sizes = v13->_sizes;
    v13->_sizes = v26;

    v28 = [v4 objectForKey:@"width"];

    v29 = [v4 objectForKey:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v28 intValue];
        v31 = [v29 intValue];
        v32 = v13->_sizes;
        v33 = [MEMORY[0x277CCAE60] valueWithCGSize:{v30, v31}];
        [(NSMutableDictionary *)v32 setObject:v33 forKey:@"low-dpi"];
      }
    }

    v34 = [v4 objectForKey:@"width2x"];

    v35 = [v4 objectForKey:@"height2x"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [v34 intValue];
        v37 = [v35 intValue];
        v38 = v13->_sizes;
        v39 = [MEMORY[0x277CCAE60] valueWithCGSize:{v36, v37}];
        [(NSMutableDictionary *)v38 setObject:v39 forKey:@"high-dpi"];
      }
    }

    v44[0] = @"url";
    v44[1] = @"url2x";
    v45[0] = @"low-dpi";
    v45[1] = @"high-dpi";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [(SKUIScreenshot *)v13 _addURLsFromDictionary:v4 withRemoteLocalKeysMap:v40];

    for (i = 1; i != -1; --i)
    {
    }
  }

  return v13;
}

- (void)setArtwork:(id)a3 forVariant:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 width];
  v8 = [v19 height];
  if (![(SKUIScreenshot *)self numberOfVariants])
  {
    v9 = @"portrait";
    orientation = self->_orientation;
    if (v7 > v8)
    {
      v9 = @"landscape";
    }

    self->_orientation = &v9->isa;
  }

  sizes = self->_sizes;
  if (!sizes)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = self->_sizes;
    self->_sizes = v12;

    sizes = self->_sizes;
  }

  v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{v7, v8}];
  [(NSMutableDictionary *)sizes setObject:v14 forKey:v6];

  urls = self->_urls;
  if (!urls)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->_urls;
    self->_urls = v16;

    urls = self->_urls;
  }

  v18 = [v19 URL];
  [(NSMutableDictionary *)urls setObject:v18 forKey:v6];
}

- (CGSize)sizeForVariant:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_sizes objectForKey:a3];
  if (v4)
  {
    v5 = v4;
  }

  else if (![(NSMutableDictionary *)self->_sizes count]|| (sizes = self->_sizes, [(SKUIScreenshot *)self _firstVariant], v11 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)sizes objectForKey:v11], v5 = objc_claimAutoreleasedReturnValue(), v11, !v5))
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_7;
  }

  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

LABEL_7:
  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)URLForVariant:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_urls objectForKey:a3];
  if (!v4)
  {
    if ([(NSMutableDictionary *)self->_urls count])
    {
      urls = self->_urls;
      v6 = [(SKUIScreenshot *)self _firstVariant];
      v4 = [(NSMutableDictionary *)urls objectForKey:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_orientation copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSMutableDictionary *)self->_sizes mutableCopyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSMutableDictionary *)self->_urls mutableCopyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (SKUIScreenshot)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIScreenshot *)v5 initWithCacheRepresentation:v6, v7, v8, v9, v10, v11, v12];
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

  v13 = [(SKUIScreenshot *)self _initSKUIScreenshot];
  if (v13)
  {
    v14 = [v4 objectForKey:@"orient"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_orientation, v14);
    }

    self = [v4 objectForKey:@"urls"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      urls = v13->_urls;
      v13->_urls = v15;

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__SKUIScreenshot_initWithCacheRepresentation___block_invoke;
      v18[3] = &unk_2781FD230;
      v13 = v13;
      v19 = v13;
      [(SKUIScreenshot *)self enumerateKeysAndObjectsUsingBlock:v18];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

void __46__SKUIScreenshot_initWithCacheRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      if (v6)
      {
        [*(*(a1 + 32) + 24) setObject:v6 forKey:v7];
      }
    }
  }
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  orientation = self->_orientation;
  if (orientation)
  {
    [v3 setObject:orientation forKey:@"orient"];
  }

  if (self->_urls)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    urls = self->_urls;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SKUIScreenshot_cacheRepresentation__block_invoke;
    v10[3] = &unk_2781FD258;
    v11 = v6;
    v8 = v6;
    [(NSMutableDictionary *)urls enumerateKeysAndObjectsUsingBlock:v10];
    [v4 setObject:v8 forKey:@"urls"];
  }

  return v4;
}

void __37__SKUIScreenshot_cacheRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 absoluteString];
  [v4 setObject:v6 forKey:v5];
}

- (void)_addURLsFromDictionary:(id)a3 withRemoteLocalKeysMap:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SKUIScreenshot__addURLsFromDictionary_withRemoteLocalKeysMap___block_invoke;
  v8[3] = &unk_2781FD280;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a4 enumerateKeysAndObjectsUsingBlock:v8];
}

void __64__SKUIScreenshot__addURLsFromDictionary_withRemoteLocalKeysMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    if (v6)
    {
      [*(*(a1 + 40) + 24) setObject:v6 forKey:v7];
    }
  }
}

- (id)_firstVariant
{
  v2 = [(NSMutableDictionary *)self->_urls keysSortedByValueUsingComparator:&__block_literal_global_27];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end