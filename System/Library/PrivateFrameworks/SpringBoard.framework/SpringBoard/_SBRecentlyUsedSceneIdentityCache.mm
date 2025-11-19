@interface _SBRecentlyUsedSceneIdentityCache
- (BOOL)isEqual:(id)a3;
- (BOOL)promoteContainedSceneIdentityToken:(id)a3 forPID:(int)a4;
- (_SBRecentlyUsedSceneIdentityCache)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:(uint64_t)a1;
- (id)mostRecentFocusTargetForPID:(void *)a3 excludingSceneIdentityTokens:;
- (void)addSceneIdentityToken:(id)a3 forPID:(int)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)removeSceneIdentityToken:(id)a3 forPID:(int)a4;
@end

@implementation _SBRecentlyUsedSceneIdentityCache

- (_SBRecentlyUsedSceneIdentityCache)init
{
  v8.receiver = self;
  v8.super_class = _SBRecentlyUsedSceneIdentityCache;
  v2 = [(_SBRecentlyUsedSceneIdentityCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recentSceneIdentityTokensByPID = v2->_recentSceneIdentityTokensByPID;
    v2->_recentSceneIdentityTokensByPID = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    recentPIDs = v2->_recentPIDs;
    v2->_recentPIDs = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_SBRecentlyUsedSceneIdentityCache);
  v5 = [(NSMutableOrderedSet *)self->_recentPIDs mutableCopy];
  recentPIDs = v4->_recentPIDs;
  v4->_recentPIDs = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  recentSceneIdentityTokensByPID = v4->_recentSceneIdentityTokensByPID;
  v4->_recentSceneIdentityTokensByPID = v7;

  v9 = self->_recentSceneIdentityTokensByPID;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50___SBRecentlyUsedSceneIdentityCache_copyWithZone___block_invoke;
  v12[3] = &unk_2783BD490;
  v10 = v4;
  v13 = v10;
  [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___SBRecentlyUsedSceneIdentityCache_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

- (BOOL)promoteContainedSceneIdentityToken:(id)a3 forPID:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v8 = [(NSMutableDictionary *)self->_recentSceneIdentityTokensByPID objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8 && [v8 containsObject:v6])
  {
    [v9 removeObject:v6];
    [v9 addObject:v6];
    [(NSMutableOrderedSet *)self->_recentPIDs removeObject:v7];
    [(NSMutableOrderedSet *)self->_recentPIDs addObject:v7];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addSceneIdentityToken:(id)a3 forPID:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v10 = [v6 numberWithInt:v4];
  v8 = [(NSMutableDictionary *)self->_recentSceneIdentityTokensByPID objectForKeyedSubscript:?];
  if (v8)
  {
    v9 = v8;
    [v8 removeObject:v7];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMutableDictionary *)self->_recentSceneIdentityTokensByPID setObject:v9 forKeyedSubscript:v10];
  }

  [v9 addObject:v7];

  [(NSMutableOrderedSet *)self->_recentPIDs removeObject:v10];
  [(NSMutableOrderedSet *)self->_recentPIDs addObject:v10];
}

- (void)removeSceneIdentityToken:(id)a3 forPID:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithInt:v4];
  v8 = [(NSMutableDictionary *)self->_recentSceneIdentityTokensByPID objectForKeyedSubscript:?];
  [v8 removeObject:v7];

  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_recentSceneIdentityTokensByPID removeObjectForKey:v9];

    [(NSMutableOrderedSet *)self->_recentPIDs removeObject:v9];
    v8 = 0;
  }
}

- (id)mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [*(a1 + 16) reverseObjectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      v20 = v4;
      v18 = *v26;
LABEL_4:
      v8 = 0;
      v19 = v6;
      while (1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (!v9)
        {
          break;
        }

        v10 = [*(a1 + 8) objectForKey:*(*(&v25 + 1) + 8 * v8)];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v10 reverseObjectEnumerator];
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              if (v16 && (!v3 || ![v3 containsObject:*(*(&v21 + 1) + 8 * i)]))
              {
                v9 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", v16, [v9 intValue]);

                v4 = v20;
                goto LABEL_23;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        ++v8;
        v4 = v20;
        v7 = v18;
        if (v8 == v19)
        {
          v6 = [v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
          v9 = 0;
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_23:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mostRecentFocusTargetForPID:(void *)a3 excludingSceneIdentityTokens:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    v7 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v8 = [v6 objectForKeyedSubscript:v7];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (v14 && (!v5 || ![v5 containsObject:*(*(&v17 + 1) + 8 * i)]))
          {
            v15 = [SBKeyboardFocusTarget targetForSceneIdentityToken:v14 pid:a2];
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end