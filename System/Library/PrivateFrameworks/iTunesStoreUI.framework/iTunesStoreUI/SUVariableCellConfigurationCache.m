@interface SUVariableCellConfigurationCache
- (SUVariableCellConfigurationCache)initWithTableHeight:(double)a3;
- (id)cacheForClass:(Class)a3;
- (void)dealloc;
- (void)reset;
- (void)resetLayoutCaches;
@end

@implementation SUVariableCellConfigurationCache

- (SUVariableCellConfigurationCache)initWithTableHeight:(double)a3
{
  result = [(SUVariableCellConfigurationCache *)self init];
  if (result)
  {
    result->_tableHeight = a3;
  }

  return result;
}

- (void)dealloc
{
  self->_caches = 0;

  self->_cellContext = 0;
  v3.receiver = self;
  v3.super_class = SUVariableCellConfigurationCache;
  [(SUVariableCellConfigurationCache *)&v3 dealloc];
}

- (id)cacheForClass:(Class)a3
{
  caches = self->_caches;
  if (caches)
  {
    if (a3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  caches = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_caches = caches;
  if (!a3)
  {
    return 0;
  }

LABEL_3:
  v6 = [(NSMutableDictionary *)caches objectForKey:a3];
  if (!v6)
  {
    v6 = [[SUCellConfigurationCache alloc] initWithClass:a3 tableHeight:self->_tableHeight];
    [(NSMutableDictionary *)self->_caches setObject:v6 forKey:a3];
  }

  return v6;
}

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  caches = self->_caches;
  v4 = [(NSMutableDictionary *)caches countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(caches);
        }

        [-[NSMutableDictionary objectForKey:](self->_caches objectForKey:{*(*(&v8 + 1) + 8 * i)), "reset"}];
      }

      v5 = [(NSMutableDictionary *)caches countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)resetLayoutCaches
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  caches = self->_caches;
  v4 = [(NSMutableDictionary *)caches countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(caches);
        }

        [-[NSMutableDictionary objectForKey:](self->_caches objectForKey:{*(*(&v8 + 1) + 8 * i)), "resetLayoutCaches"}];
      }

      v5 = [(NSMutableDictionary *)caches countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [-[SUVariableCellConfigurationCache cellContext](self "cellContext")];
}

@end