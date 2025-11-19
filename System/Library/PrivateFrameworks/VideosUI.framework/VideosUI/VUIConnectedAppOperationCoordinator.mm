@interface VUIConnectedAppOperationCoordinator
- (BOOL)isCurrentlyPrompting;
- (BOOL)isReloadingForID:(id)a3;
- (VUIConnectedAppOperationCoordinator)init;
- (id)specifierToggleValueForID:(id)a3;
- (void)clearOperationForID:(id)a3;
- (void)setOperationForID:(id)a3 operationType:(int64_t)a4;
@end

@implementation VUIConnectedAppOperationCoordinator

- (VUIConnectedAppOperationCoordinator)init
{
  v6.receiver = self;
  v6.super_class = VUIConnectedAppOperationCoordinator;
  v2 = [(VUIConnectedAppOperationCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeOperations = v2->_activeOperations;
    v2->_activeOperations = v3;
  }

  return v2;
}

- (void)setOperationForID:(id)a3 operationType:(int64_t)a4
{
  v8 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)v6->_activeOperations setObject:v7 forKeyedSubscript:v8];

  objc_sync_exit(v6);
}

- (void)clearOperationForID:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_activeOperations removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (id)specifierToggleValueForID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_activeOperations objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
    v9 = &unk_1F5E5DB78;
    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v9 = 0;
    }

    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v9 = &unk_1F5E5DB60;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v5);

  return v10;
}

- (BOOL)isReloadingForID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_activeOperations objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue] == 4;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)isCurrentlyPrompting
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)v2->_activeOperations allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) integerValue] <= 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v2);
  return v4;
}

@end