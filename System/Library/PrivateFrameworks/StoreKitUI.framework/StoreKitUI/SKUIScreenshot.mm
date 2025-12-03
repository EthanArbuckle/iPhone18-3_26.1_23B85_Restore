@interface SKUIScreenshot
- (CGSize)sizeForVariant:(id)variant;
- (NSMutableDictionary)cacheRepresentation;
- (SKUIScreenshot)initWithCacheRepresentation:(id)representation;
- (SKUIScreenshot)initWithScreenshotDictionary:(id)dictionary;
- (id)URLForVariant:(id)variant;
- (id)_firstVariant;
- (id)_initSKUIScreenshot;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addURLsFromDictionary:(id)dictionary withRemoteLocalKeysMap:(id)map;
- (void)setArtwork:(id)artwork forVariant:(id)variant;
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

- (SKUIScreenshot)initWithScreenshotDictionary:(id)dictionary
{
  v47[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
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

  _initSKUIScreenshot = [(SKUIScreenshot *)self _initSKUIScreenshot];
  if (_initSKUIScreenshot)
  {
    v14 = [dictionaryCopy objectForKey:@"orientation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      orientation = _initSKUIScreenshot->_orientation;
      _initSKUIScreenshot->_orientation = v15;
    }

    v43 = v14;
    v46 = @"low-dpi";
    v47[0] = @"high-dpi";
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    urls = _initSKUIScreenshot->_urls;
    _initSKUIScreenshot->_urls = v17;

    v19 = &v46;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *v19;
      v23 = [dictionaryCopy objectForKey:{*v19, v43}];
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
            [(NSMutableDictionary *)_initSKUIScreenshot->_urls setObject:v25 forKey:v22];
          }
        }
      }

      v20 = 0;
      v19 = v47;
    }

    while ((v21 & 1) != 0);
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sizes = _initSKUIScreenshot->_sizes;
    _initSKUIScreenshot->_sizes = v26;

    v28 = [dictionaryCopy objectForKey:@"width"];

    v29 = [dictionaryCopy objectForKey:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v28 intValue];
        intValue2 = [v29 intValue];
        v32 = _initSKUIScreenshot->_sizes;
        v33 = [MEMORY[0x277CCAE60] valueWithCGSize:{intValue, intValue2}];
        [(NSMutableDictionary *)v32 setObject:v33 forKey:@"low-dpi"];
      }
    }

    v34 = [dictionaryCopy objectForKey:@"width2x"];

    v35 = [dictionaryCopy objectForKey:@"height2x"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue3 = [v34 intValue];
        intValue4 = [v35 intValue];
        v38 = _initSKUIScreenshot->_sizes;
        v39 = [MEMORY[0x277CCAE60] valueWithCGSize:{intValue3, intValue4}];
        [(NSMutableDictionary *)v38 setObject:v39 forKey:@"high-dpi"];
      }
    }

    v44[0] = @"url";
    v44[1] = @"url2x";
    v45[0] = @"low-dpi";
    v45[1] = @"high-dpi";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [(SKUIScreenshot *)_initSKUIScreenshot _addURLsFromDictionary:dictionaryCopy withRemoteLocalKeysMap:v40];

    for (i = 1; i != -1; --i)
    {
    }
  }

  return _initSKUIScreenshot;
}

- (void)setArtwork:(id)artwork forVariant:(id)variant
{
  artworkCopy = artwork;
  variantCopy = variant;
  width = [artworkCopy width];
  height = [artworkCopy height];
  if (![(SKUIScreenshot *)self numberOfVariants])
  {
    v9 = @"portrait";
    orientation = self->_orientation;
    if (width > height)
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

  v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [(NSMutableDictionary *)sizes setObject:v14 forKey:variantCopy];

  urls = self->_urls;
  if (!urls)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->_urls;
    self->_urls = v16;

    urls = self->_urls;
  }

  v18 = [artworkCopy URL];
  [(NSMutableDictionary *)urls setObject:v18 forKey:variantCopy];
}

- (CGSize)sizeForVariant:(id)variant
{
  v4 = [(NSMutableDictionary *)self->_sizes objectForKey:variant];
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

- (id)URLForVariant:(id)variant
{
  v4 = [(NSMutableDictionary *)self->_urls objectForKey:variant];
  if (!v4)
  {
    if ([(NSMutableDictionary *)self->_urls count])
    {
      urls = self->_urls;
      _firstVariant = [(SKUIScreenshot *)self _firstVariant];
      v4 = [(NSMutableDictionary *)urls objectForKey:_firstVariant];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_orientation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSMutableDictionary *)self->_sizes mutableCopyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSMutableDictionary *)self->_urls mutableCopyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (SKUIScreenshot)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
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
    _initSKUIScreenshot = 0;
LABEL_12:

    goto LABEL_13;
  }

  _initSKUIScreenshot = [(SKUIScreenshot *)self _initSKUIScreenshot];
  if (_initSKUIScreenshot)
  {
    v14 = [representationCopy objectForKey:@"orient"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&_initSKUIScreenshot->_orientation, v14);
    }

    self = [representationCopy objectForKey:@"urls"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      urls = _initSKUIScreenshot->_urls;
      _initSKUIScreenshot->_urls = v15;

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__SKUIScreenshot_initWithCacheRepresentation___block_invoke;
      v18[3] = &unk_2781FD230;
      _initSKUIScreenshot = _initSKUIScreenshot;
      v19 = _initSKUIScreenshot;
      [(SKUIScreenshot *)self enumerateKeysAndObjectsUsingBlock:v18];
    }

    goto LABEL_12;
  }

LABEL_13:

  return _initSKUIScreenshot;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  orientation = self->_orientation;
  if (orientation)
  {
    [dictionary setObject:orientation forKey:@"orient"];
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

- (void)_addURLsFromDictionary:(id)dictionary withRemoteLocalKeysMap:(id)map
{
  dictionaryCopy = dictionary;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SKUIScreenshot__addURLsFromDictionary_withRemoteLocalKeysMap___block_invoke;
  v8[3] = &unk_2781FD280;
  v9 = dictionaryCopy;
  selfCopy = self;
  v7 = dictionaryCopy;
  [map enumerateKeysAndObjectsUsingBlock:v8];
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