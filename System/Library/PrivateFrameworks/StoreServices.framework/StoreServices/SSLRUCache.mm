@interface SSLRUCache
- (SSLRUCache)initWithMaxSize:(unint64_t)size;
- (id)allObjectsAndKeys;
- (id)description;
- (id)objectForKey:(id)key;
- (unint64_t)_count;
- (unint64_t)count;
- (void)_addObject:(id)object forKey:(id)key;
- (void)_removeObjectForKey:(id)key;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SSLRUCache

- (unint64_t)_count
{
  backingDictionary = [(SSLRUCache *)self backingDictionary];
  v3 = [backingDictionary count];

  return v3;
}

- (SSLRUCache)initWithMaxSize:(unint64_t)size
{
  v16.receiver = self;
  v16.super_class = SSLRUCache;
  v4 = [(SSLRUCache *)&v16 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.StoreServices.SSLRUCache.accessQueue.%p", v4];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backingDictionary = v4->_backingDictionary;
    v4->_backingDictionary = v8;

    v10 = objc_alloc_init(SSDoubleLinkedList);
    backingList = v4->_backingList;
    v4->_backingList = v10;

    v4->_maxSize = size;
    v12 = objc_alloc_init(SSMutableLogConfig);
    [(SSLogConfig *)v12 setCategory:@"SSLRUCache"];
    [(SSLogConfig *)v12 setSubsystem:@"com.apple.StoreServices"];
    [(SSLogConfig *)v12 setWriteToDisk:0];
    v13 = [(SSMutableLogConfig *)v12 copy];
    logConfig = v4->_logConfig;
    v4->_logConfig = v13;
  }

  return v4;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = [(SSLRUCache *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __19__SSLRUCache_count__block_invoke;
  v6[3] = &unk_1E84ABF40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __19__SSLRUCache_count__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)allObjectsAndKeys
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  accessQueue = [(SSLRUCache *)self accessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__SSLRUCache_allObjectsAndKeys__block_invoke;
  v9[3] = &unk_1E84AC028;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(accessQueue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __31__SSLRUCache_allObjectsAndKeys__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backingDictionary];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SSLRUCache_allObjectsAndKeys__block_invoke_2;
  v3[3] = &unk_1E84B1BE0;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __31__SSLRUCache_allObjectsAndKeys__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 object];

  if (v7)
  {
    v8 = [v5 object];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)objectForKey:(id)key
{
  v39 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__50;
  v33 = __Block_byref_object_dispose__50;
  v34 = 0;
  accessQueue = [(SSLRUCache *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SSLRUCache_objectForKey___block_invoke;
  block[3] = &unk_1E84ABF90;
  v28 = &v29;
  block[4] = self;
  v6 = keyCopy;
  v27 = v6;
  dispatch_sync(accessQueue, block);

  object = [v30[5] object];
  if (!object)
  {
    logConfig = [(SSLRUCache *)self logConfig];
    if (!logConfig)
    {
      logConfig = +[SSLogConfig sharedConfig];
    }

    shouldLog = [logConfig shouldLog];
    shouldLogToDisk = [logConfig shouldLogToDisk];
    oSLogObject = [logConfig OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v13 = objc_opt_class();
      v35 = 138412546;
      v36 = v13;
      v37 = 2112;
      v38 = v6;
      v14 = v13;
      LODWORD(v25) = 22;
      v24 = &v35;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v35, v25}];
      free(v15);
      SSFileLog(logConfig, @"%@", v16, v17, v18, v19, v20, v21, v12);
    }

    goto LABEL_12;
  }

LABEL_13:
  v7Object = [object object];

  _Block_object_dispose(&v29, 8);

  return v7Object;
}

void __27__SSLRUCache_objectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backingDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) backingList];
    [v6 removeNode:*(*(*(a1 + 48) + 8) + 40)];

    v7 = [*(a1 + 32) backingList];
    [v7 insertNode:*(*(*(a1 + 48) + 8) + 40)];
  }
}

- (void)removeAllObjects
{
  objc_initWeak(&location, self);
  accessQueue = [(SSLRUCache *)self accessQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__SSLRUCache_removeAllObjects__block_invoke;
  v4[3] = &unk_1E84AD820;
  objc_copyWeak(&v5, &location);
  dispatch_async(accessQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__SSLRUCache_removeAllObjects__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained backingDictionary];
  [v1 removeAllObjects];

  v2 = [WeakRetained backingList];
  [v2 removeAllNodes];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  objc_initWeak(&location, self);
  accessQueue = [(SSLRUCache *)self accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __31__SSLRUCache_setObject_forKey___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_async(accessQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __31__SSLRUCache_setObject_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _addObject:v3 forKey:v4];
  }

  else
  {
    [WeakRetained _removeObjectForKey:v4];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16.receiver = self;
  v16.super_class = SSLRUCache;
  v4 = [(SSLRUCache *)&v16 description];
  [v3 appendString:v4];

  [v3 appendString:@" {"];
  accessQueue = [(SSLRUCache *)self accessQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __25__SSLRUCache_description__block_invoke;
  v13 = &unk_1E84AC028;
  selfCopy = self;
  v6 = v3;
  v15 = v6;
  dispatch_sync(accessQueue, &v10);

  [v6 appendString:{@"\n}", v10, v11, v12, v13, selfCopy}];
  v7 = v15;
  v8 = v6;

  return v6;
}

void __25__SSLRUCache_description__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) backingList];
  v3 = [v2 allNodes];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) object];
        v9 = v8;
        if (v8)
        {
          v10 = *(a1 + 40);
          v11 = [v8 key];
          v12 = [v9 object];
          [v10 appendFormat:@"\n%@: %@, ", v11, v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_addObject:(id)object forKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    objectCopy = object;
    backingDictionary = [(SSLRUCache *)self backingDictionary];
    v9 = [backingDictionary objectForKey:keyCopy];

    if (v9)
    {
      backingList = [(SSLRUCache *)self backingList];
      [backingList removeNode:v9];
    }

    v11 = [[SSLRUCacheItem alloc] initWithKey:keyCopy object:objectCopy];

    backingList2 = [(SSLRUCache *)self backingList];
    v13 = [backingList2 insertObject:v11];

    backingDictionary2 = [(SSLRUCache *)self backingDictionary];
    [backingDictionary2 setObject:v13 forKey:keyCopy];

    _count = [(SSLRUCache *)self _count];
    if (_count <= [(SSLRUCache *)self maxSize])
    {
      goto LABEL_17;
    }

    logConfig = [(SSLRUCache *)self logConfig];
    if (!logConfig)
    {
      logConfig = +[SSLogConfig sharedConfig];
    }

    shouldLog = [logConfig shouldLog];
    if ([logConfig shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [logConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(v33) = 138412290;
      *(&v33 + 4) = objc_opt_class();
      v20 = *(&v33 + 4);
      LODWORD(v32) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_16:

        backingList3 = [(SSLRUCache *)self backingList];
        tail = [backingList3 tail];

        object = [tail object];
        v31 = [object key];
        [(SSLRUCache *)self _removeObjectForKey:v31];

LABEL_17:
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v33, v32, v33}];
      free(v21);
      SSFileLog(logConfig, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)_removeObjectForKey:(id)key
{
  keyCopy = key;
  backingDictionary = [(SSLRUCache *)self backingDictionary];
  v5 = [backingDictionary objectForKey:keyCopy];

  if (v5)
  {
    backingList = [(SSLRUCache *)self backingList];
    [backingList removeNode:v5];

    backingDictionary2 = [(SSLRUCache *)self backingDictionary];
    [backingDictionary2 removeObjectForKey:keyCopy];
  }
}

@end