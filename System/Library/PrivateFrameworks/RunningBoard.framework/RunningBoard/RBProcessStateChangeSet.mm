@interface RBProcessStateChangeSet
- (RBProcessStateChangeSet)initWithChanges:(id)changes;
- (RBProcessStateChangeSet)initWithOriginalStatesByIdentity:(id)identity updatedStatesByIdentity:(id)byIdentity;
- (id)processIdentities;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_diffOriginalStatesByIdentity:(void *)identity withUpdatedStatesByIdentity:;
- (void)applyChanges:(id)changes;
@end

@implementation RBProcessStateChangeSet

- (id)processIdentities
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_stateChangesByIdentity allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (RBProcessStateChangeSet)initWithChanges:(id)changes
{
  v24 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v22.receiver = self;
  v22.super_class = RBProcessStateChangeSet;
  v5 = [(RBProcessStateChangeSet *)&v22 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stateChangesByIdentity = v5->_stateChangesByIdentity;
    v5->_stateChangesByIdentity = dictionary;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = changesCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = v5->_stateChangesByIdentity;
          identity = [v13 identity];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:identity];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RBProcessStateChangeSet)initWithOriginalStatesByIdentity:(id)identity updatedStatesByIdentity:(id)byIdentity
{
  identityCopy = identity;
  byIdentityCopy = byIdentity;
  v12.receiver = self;
  v12.super_class = RBProcessStateChangeSet;
  v8 = [(RBProcessStateChangeSet *)&v12 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stateChangesByIdentity = v8->_stateChangesByIdentity;
    v8->_stateChangesByIdentity = dictionary;

    [(RBProcessStateChangeSet *)v8 _diffOriginalStatesByIdentity:identityCopy withUpdatedStatesByIdentity:byIdentityCopy];
  }

  return v8;
}

- (void)applyChanges:(id)changes
{
  v23 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        stateChangesByIdentity = self->_stateChangesByIdentity;
        identity = [v9 identity];
        v12 = [(NSMutableDictionary *)stateChangesByIdentity objectForKey:identity];

        if (v12)
        {
          identity3 = [v12 changeByApplyingChange:v9];
          v14 = self->_stateChangesByIdentity;
          identity2 = [v9 identity];
          if (identity3)
          {
            [(NSMutableDictionary *)v14 setObject:identity3 forKey:identity2];
          }

          else
          {
            [(NSMutableDictionary *)v14 removeObjectForKey:identity2];
          }
        }

        else
        {
          v16 = self->_stateChangesByIdentity;
          identity3 = [v9 identity];
          [(NSMutableDictionary *)v16 setObject:v9 forKey:identity3];
        }
      }

      v6 = [changesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  allValues = [(NSMutableDictionary *)self->_stateChangesByIdentity allValues];
  v9 = [allValues countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

void __85__RBProcessStateChangeSet__diffOriginalStatesByIdentity_withUpdatedStatesByIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  [*(a1 + 32) removeObjectForKey:v8];
  if (!v6 || ([v6 isEqual:v5] & 1) == 0)
  {
    v7 = [[RBProcessStateChange alloc] initWithIdentity:v8 originalState:v5 updatedState:v6];
    [*(*(a1 + 40) + 8) setObject:v7 forKeyedSubscript:v8];
  }
}

void __85__RBProcessStateChangeSet__diffOriginalStatesByIdentity_withUpdatedStatesByIdentity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v6)
  {
    v7 = [[RBProcessStateChange alloc] initWithIdentity:v8 originalState:0 updatedState:v5];
    [*(*(a1 + 40) + 8) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)_diffOriginalStatesByIdentity:(void *)identity withUpdatedStatesByIdentity:
{
  v5 = a2;
  if (self)
  {
    v6 = [identity mutableCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__RBProcessStateChangeSet__diffOriginalStatesByIdentity_withUpdatedStatesByIdentity___block_invoke;
    v11[3] = &unk_279B336E0;
    v12 = v6;
    selfCopy = self;
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__RBProcessStateChangeSet__diffOriginalStatesByIdentity_withUpdatedStatesByIdentity___block_invoke_2;
    v8[3] = &unk_279B336E0;
    v9 = v5;
    selfCopy2 = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

@end