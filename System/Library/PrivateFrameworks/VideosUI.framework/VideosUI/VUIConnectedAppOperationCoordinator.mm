@interface VUIConnectedAppOperationCoordinator
- (BOOL)isCurrentlyPrompting;
- (BOOL)isReloadingForID:(id)d;
- (VUIConnectedAppOperationCoordinator)init;
- (id)specifierToggleValueForID:(id)d;
- (void)clearOperationForID:(id)d;
- (void)setOperationForID:(id)d operationType:(int64_t)type;
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

- (void)setOperationForID:(id)d operationType:(int64_t)type
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)selfCopy->_activeOperations setObject:v7 forKeyedSubscript:dCopy];

  objc_sync_exit(selfCopy);
}

- (void)clearOperationForID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_activeOperations removeObjectForKey:dCopy];
  objc_sync_exit(selfCopy);
}

- (id)specifierToggleValueForID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_activeOperations objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
    v9 = &unk_1F5E5DB78;
    if ((integerValue & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v9 = 0;
    }

    if ((integerValue & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v9 = &unk_1F5E5DB60;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)isReloadingForID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_activeOperations objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue] == 4;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)isCurrentlyPrompting
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_activeOperations allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v8 + 1) + 8 * i) integerValue] <= 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  return v4;
}

@end