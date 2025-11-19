@interface OKMediaManager
+ (id)defaultManager;
- (Class)mediaItemClassForURL:(id)a3;
- (OKMediaManager)init;
- (id)mediaItemForURL:(id)a3;
- (id)mediaItemsForURLs:(id)a3;
- (id)mediaURLForMediaObject:(id)a3;
- (id)mediaURLsForMediaObjects:(id)a3;
- (void)addMediaItemClass:(Class)a3;
- (void)dealloc;
- (void)removeMediaItemClass:(Class)a3;
@end

@implementation OKMediaManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_2 != -1)
  {
    +[OKMediaManager defaultManager];
  }

  return defaultManager_defaultManager_2;
}

OKMediaManager *__32__OKMediaManager_defaultManager__block_invoke()
{
  result = objc_alloc_init(OKMediaManager);
  defaultManager_defaultManager_2 = result;
  return result;
}

- (OKMediaManager)init
{
  v5.receiver = self;
  v5.super_class = OKMediaManager;
  v2 = [(OKMediaManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    v3->_mediaSourcesByScheme = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(OKMediaManager *)v3 addMediaItemClass:objc_opt_class()];
    [(OKMediaManager *)v3 addMediaItemClass:objc_opt_class()];
    [(OKMediaManager *)v3 addMediaItemClass:objc_opt_class()];
    [(OKMediaManager *)v3 addMediaItemClass:objc_opt_class()];
    [(OKMediaManager *)v3 addMediaItemClass:objc_opt_class()];
  }

  return v3;
}

- (void)dealloc
{
  mediaSourcesByScheme = self->_mediaSourcesByScheme;
  if (mediaSourcesByScheme)
  {

    self->_mediaSourcesByScheme = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = OKMediaManager;
  [(OKMediaManager *)&v4 dealloc];
}

- (void)addMediaItemClass:(Class)a3
{
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    mediaSourcesByScheme = self->_mediaSourcesByScheme;
    objc_sync_enter(mediaSourcesByScheme);
    [(NSMutableDictionary *)self->_mediaSourcesByScheme setObject:a3 forKey:[(objc_class *)a3 scheme]];

    objc_sync_exit(mediaSourcesByScheme);
  }
}

- (void)removeMediaItemClass:(Class)a3
{
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    mediaSourcesByScheme = self->_mediaSourcesByScheme;
    objc_sync_enter(mediaSourcesByScheme);
    [(NSMutableDictionary *)self->_mediaSourcesByScheme removeObjectForKey:[(objc_class *)a3 scheme]];

    objc_sync_exit(mediaSourcesByScheme);
  }
}

- (Class)mediaItemClassForURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  mediaSourcesByScheme = self->_mediaSourcesByScheme;
  objc_sync_enter(mediaSourcesByScheme);
  v6 = -[NSMutableDictionary objectForKey:](self->_mediaSourcesByScheme, "objectForKey:", [a3 scheme]);
  if (v6 && ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    objc_sync_exit(mediaSourcesByScheme);
    return v6;
  }

  objc_sync_exit(mediaSourcesByScheme);
  if (![(OKMediaManager *)self delegate])
  {
    return 0;
  }

  [(OKMediaManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [(OKMediaManager *)self delegate];

  return [(OKMediaManagerDelegate *)v7 mediaManager:self mediaItemClassForURL:a3];
}

- (id)mediaItemForURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(OKMediaManager *)self mediaItemClassForURL:?];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (![(objc_class *)v4 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = [[v5 alloc] initWithUniqueURL:a3];

  return v6;
}

- (id)mediaItemsForURLs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(OKMediaManager *)self mediaItemForURL:*(*(&v12 + 1) + 8 * v9)];
        if (([v5 containsObject:v10] & 1) == 0)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)mediaURLForMediaObject:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  mediaSourcesByScheme = self->_mediaSourcesByScheme;
  objc_sync_enter(mediaSourcesByScheme);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_mediaSourcesByScheme allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) performSelector:sel_urlForMediaObject_ withObject:a3];
        if (v10)
        {
          objc_sync_exit(mediaSourcesByScheme);
          return v10;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  objc_sync_exit(mediaSourcesByScheme);
  if (![(OKMediaManager *)self delegate]|| ([(OKMediaManager *)self delegate], (objc_opt_respondsToSelector() & 1) == 0) || (v10 = [(OKMediaManagerDelegate *)[(OKMediaManager *)self delegate] mediaManager:self mediaURLforObject:a3]) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

- (id)mediaURLsForMediaObjects:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(OKMediaManager *)self mediaURLForMediaObject:*(*(&v12 + 1) + 8 * v9)];
        if (([v5 containsObject:v10] & 1) == 0)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end