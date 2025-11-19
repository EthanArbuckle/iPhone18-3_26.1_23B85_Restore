@interface PXFeedbackStore
- (BOOL)_loadStore;
- (BOOL)_saveStore;
- (PXFeedbackStore)init;
- (id)_storePath;
- (id)longDescription;
- (unint64_t)sentFeedbackCount;
- (unint64_t)unsentFeedbackCount;
- (void)_cleanupStore;
- (void)addFeedbackEntry:(id)a3;
- (void)removeFeedbackEntry:(id)a3;
@end

@implementation PXFeedbackStore

- (id)longDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>]\n", v5, self];

  v7 = [v6 stringByAppendingFormat:@"   - sent feedback count    : %ld\n", -[PXFeedbackStore sentFeedbackCount](self, "sentFeedbackCount")];

  v8 = [v7 stringByAppendingFormat:@"   - unsent feedback count  : %ld\n", -[PXFeedbackStore unsentFeedbackCount](self, "unsentFeedbackCount")];

  v9 = [v8 stringByAppendingFormat:@"   - stored feedback entries:\n"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(PXFeedbackStore *)self store];
  v11 = [v10 allKeys];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      v16 = v9;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v9 = [v16 stringByAppendingFormat:@"      - key: %@\n", *(*(&v18 + 1) + 8 * v15)];

        ++v15;
        v16 = v9;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v9;
}

- (BOOL)_loadStore
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PXFeedbackStore *)self _storePath];
  v5 = [v3 dataWithContentsOfFile:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v18 = 0;
    v11 = [v6 unarchivedObjectOfClasses:v10 fromData:v5 error:&v18];
    v12 = v18;

    if (v11)
    {
      v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
      store = self->_store;
      self->_store = v13;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to unarchive savedStore, error: %@", buf, 0xCu);
    }
  }

  v15 = [(PXFeedbackStore *)self store];
  v16 = v15 != 0;

  return v16;
}

- (BOOL)_saveStore
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PXFeedbackStore *)self _storePath];
  v4 = MEMORY[0x1E696ACC8];
  v5 = [(PXFeedbackStore *)self store];
  v10 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  v7 = v10;

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to archive savedStore, error: %@", buf, 0xCu);
  }

  v8 = [v6 writeToFile:v3 atomically:1];

  return v8;
}

- (void)_cleanupStore
{
  v3 = [MEMORY[0x1E695DF70] array];
  store = self->_store;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PXFeedbackStore__cleanupStore__block_invoke;
  v6[3] = &unk_1E7744710;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)store enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)self->_store removeObjectsForKeys:v5];
}

void __32__PXFeedbackStore__cleanupStore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 alreadyCollected])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_storePath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"PGFeedbackStore"];

  return v3;
}

- (unint64_t)unsentFeedbackCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PXFeedbackStore *)self store];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) alreadyCollected] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)sentFeedbackCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PXFeedbackStore *)self store];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) alreadyCollected];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeFeedbackEntry:(id)a3
{
  store = self->_store;
  v5 = [a3 uniqueID];
  [(NSMutableDictionary *)store removeObjectForKey:v5];

  [(PXFeedbackStore *)self _saveStore];
}

- (void)addFeedbackEntry:(id)a3
{
  v4 = a3;
  [v4 setAlreadyCollected:0];
  v5 = [(PXFeedbackStore *)self store];
  v6 = [v4 uniqueID];
  [v5 setValue:v4 forKey:v6];

  [(PXFeedbackStore *)self _saveStore];
}

- (PXFeedbackStore)init
{
  v7.receiver = self;
  v7.super_class = PXFeedbackStore;
  v2 = [(PXFeedbackStore *)&v7 init];
  v3 = v2;
  if (v2 && ![(PXFeedbackStore *)v2 _loadStore])
  {
    v4 = objc_opt_new();
    store = v3->_store;
    v3->_store = v4;
  }

  return v3;
}

@end