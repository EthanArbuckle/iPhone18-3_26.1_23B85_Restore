@interface WFContentItemCache
- (WFContentItemCache)init;
- (WFContentItemCache)initWithCache:(id)a3;
- (WFContentItemCache)initWithCoder:(id)a3;
- (id)contentItemForUUID:(id)a3;
- (void)addContentCollection:(id)a3;
- (void)clear;
- (void)deleteContentCollection:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContentItemCache

- (WFContentItemCache)init
{
  v3 = [MEMORY[0x1E696AD18] mapTableWithStrongToStrongObjects];
  v4 = [(WFContentItemCache *)self initWithCache:v3];

  return v4;
}

- (void)clear
{
  v3 = [(WFContentItemCache *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__WFContentItemCache_clear__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __27__WFContentItemCache_clear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cache];
  [v1 removeAllObjects];
}

- (WFContentItemCache)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"cache"];

  if (v9)
  {
    self = [(WFContentItemCache *)self initWithCache:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemCache *)self cache];
  [v4 encodeObject:v5 forKey:@"cache"];
}

- (id)contentItemForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__58148;
  v16 = __Block_byref_object_dispose__58149;
  v17 = 0;
  v5 = [(WFContentItemCache *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WFContentItemCache_contentItemForUUID___block_invoke;
  block[3] = &unk_1E837C4B0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__WFContentItemCache_contentItemForUUID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cache];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)deleteContentCollection:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemCache *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WFContentItemCache_deleteContentCollection___block_invoke;
  v7[3] = &unk_1E837F870;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __46__WFContentItemCache_deleteContentCollection___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) items];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) cache];
        v9 = [v7 cachingIdentifier];
        [v8 removeObjectForKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addContentCollection:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemCache *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__WFContentItemCache_addContentCollection___block_invoke;
  v7[3] = &unk_1E837F870;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __43__WFContentItemCache_addContentCollection___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) items];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) cache];
        v9 = [v7 cachingIdentifier];
        [v8 setObject:v7 forKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (WFContentItemCache)initWithCache:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFContentItemCache;
  v6 = [(WFContentItemCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.Shortcuts.ContentItemCacheQueue", v8);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v9;

    v11 = v7;
  }

  return v7;
}

@end