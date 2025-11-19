@interface ATXUIFeedbackPriorContext
- (ATXUIFeedbackPriorContext)init;
- (ATXUIFeedbackPriorContext)initWithCacheUpdateOrdering:(id)a3 blendingModelCacheUpdates:(id)a4 clientModelCacheUpdates:(id)a5 context:(id)a6 pinnedBlendingModelUICacheUpdateUUID:(id)a7;
- (ATXUIFeedbackPriorContext)initWithCoder:(id)a3;
- (ATXUIFeedbackPriorContext)initWithProto:(id)a3;
- (ATXUIFeedbackPriorContext)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIFeedbackPriorContext:(id)a3;
- (id)_referencedClientModelCaches;
- (id)blendingModelUICacheUpdateForUUID:(id)a3;
- (id)clientModelCacheUpdatesForUICacheUpdateUUID:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (id)validContextClassNames;
- (unint64_t)hash;
- (void)_pruneBlendingModelCachesOlderThanUUID:(id)a3;
- (void)_validateCacheUpdateOrderingAndCacheDictMapping;
- (void)addBlendingModelUICacheUpdate:(id)a3;
- (void)addClientModelCacheUpdate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)pruneBlendingModelCachesOverMaxNum;
- (void)pruneContextStateOlderThanBlendingUUID:(id)a3;
- (void)pruneUnreferencedClientModelCachesIfPossible;
- (void)updatePinnedBlendingModelUICacheUpdateUUID:(id)a3;
@end

@implementation ATXUIFeedbackPriorContext

- (ATXUIFeedbackPriorContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXUIFeedbackPriorContext *)self initWithCacheUpdateOrdering:v3 blendingModelCacheUpdates:v4 clientModelCacheUpdates:v5 context:0 pinnedBlendingModelUICacheUpdateUUID:0];

  return v6;
}

- (ATXUIFeedbackPriorContext)initWithCacheUpdateOrdering:(id)a3 blendingModelCacheUpdates:(id)a4 clientModelCacheUpdates:(id)a5 context:(id)a6 pinnedBlendingModelUICacheUpdateUUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = ATXUIFeedbackPriorContext;
  v17 = [(ATXUIFeedbackPriorContext *)&v25 init];
  if (v17)
  {
    v18 = [v12 mutableCopy];
    cacheUpdateOrdering = v17->_cacheUpdateOrdering;
    v17->_cacheUpdateOrdering = v18;

    v20 = [v13 mutableCopy];
    blendingModelCacheUpdates = v17->_blendingModelCacheUpdates;
    v17->_blendingModelCacheUpdates = v20;

    v22 = [v14 mutableCopy];
    clientModelCacheUpdates = v17->_clientModelCacheUpdates;
    v17->_clientModelCacheUpdates = v22;

    objc_storeStrong(&v17->_context, a6);
    objc_storeStrong(&v17->_pinnedBlendingModelUICacheUpdateUUID, a7);
  }

  return v17;
}

- (void)addClientModelCacheUpdate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uuid];

  if (v5)
  {
    cacheUpdateOrdering = self->_cacheUpdateOrdering;
    v7 = [v4 uuid];
    [(NSMutableOrderedSet *)cacheUpdateOrdering addObject:v7];

    clientModelCacheUpdates = self->_clientModelCacheUpdates;
    v9 = [v4 uuid];
    [(NSMutableDictionary *)clientModelCacheUpdates setObject:v4 forKey:v9];

    v10 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "%@ - added client model cache update %@", &v15, 0x16u);
    }

    [(ATXUIFeedbackPriorContext *)self pruneUnreferencedClientModelCachesIfPossible];
  }

  else
  {
    v13 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackPriorContext addClientModelCacheUpdate:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addBlendingModelUICacheUpdate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uuid];

  if (v5)
  {
    cacheUpdateOrdering = self->_cacheUpdateOrdering;
    v7 = [v4 uuid];
    [(NSMutableOrderedSet *)cacheUpdateOrdering addObject:v7];

    blendingModelCacheUpdates = self->_blendingModelCacheUpdates;
    v9 = [v4 uuid];
    [(NSMutableDictionary *)blendingModelCacheUpdates setObject:v4 forKey:v9];

    v10 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "%@ - added blending ui cache update %@", &v15, 0x16u);
    }

    [(ATXUIFeedbackPriorContext *)self pruneBlendingModelCachesOverMaxNum];
  }

  else
  {
    v13 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackPriorContext addBlendingModelUICacheUpdate:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updatePinnedBlendingModelUICacheUpdateUUID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pinnedBlendingModelUICacheUpdateUUID, a3);
    v5 = v6;
  }
}

- (id)blendingModelUICacheUpdateForUUID:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)clientModelCacheUpdatesForUICacheUpdateUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXUIFeedbackPriorContext *)self blendingModelUICacheUpdateForUUID:v4];
    v6 = objc_opt_new();
    if (v5)
    {
      context = objc_autoreleasePoolPush();
      v21 = v5;
      v7 = [v5 clientModelCacheUpdateUUIDs];
      v8 = [v7 allValues];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = [(NSMutableDictionary *)self->_clientModelCacheUpdates allValues];
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 uuid];
            v16 = [v8 containsObject:v15];

            if (v16)
            {
              [v6 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      objc_autoreleasePoolPop(context);
      v5 = v21;
    }

    v17 = [v6 copy];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)pruneContextStateOlderThanBlendingUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([(NSMutableOrderedSet *)self->_cacheUpdateOrdering containsObject:v4]& 1) != 0)
    {
      [(ATXUIFeedbackPriorContext *)self _pruneBlendingModelCachesOlderThanUUID:v4];
      [(ATXUIFeedbackPriorContext *)self pruneUnreferencedClientModelCachesIfPossible];
      [(ATXUIFeedbackPriorContext *)self _validateCacheUpdateOrderingAndCacheDictMapping];
    }

    else
    {
      v5 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [ATXUIFeedbackPriorContext pruneContextStateOlderThanBlendingUUID:?];
      }
    }
  }
}

- (void)pruneBlendingModelCachesOverMaxNum
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_blendingModelCacheUpdates count]< 3)
  {
    goto LABEL_18;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering reversedOrderedSet];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (!v4)
  {
LABEL_12:
    v11 = v3;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v17 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v9 = *(*(&v16 + 1) + 8 * v8);
    v10 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates objectForKey:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      break;
    }

    v6 = 1;
LABEL_10:
    if (v5 == ++v8)
    {
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v11 = v9;

  if (!v11)
  {
    goto LABEL_18;
  }

  [(ATXUIFeedbackPriorContext *)self pruneContextStateOlderThanBlendingUUID:v11];
  v12 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v21 = v14;
    v22 = 2048;
    v23 = 2;
    _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@ - reached more than %lu ui cache updates, pruned context state", buf, 0x16u);
  }

LABEL_17:
LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_pruneBlendingModelCachesOlderThanUUID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = objc_opt_new();
  cacheUpdateOrdering = self->_cacheUpdateOrdering;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ATXUIFeedbackPriorContext__pruneBlendingModelCachesOlderThanUUID___block_invoke;
  v12[3] = &unk_1E86A4280;
  v6 = v4;
  v13 = v6;
  v14 = self;
  v15 = &v16;
  [(NSMutableOrderedSet *)cacheUpdateOrdering enumerateObjectsUsingBlock:v12];
  [(NSMutableOrderedSet *)self->_cacheUpdateOrdering removeObjectsInArray:v17[5]];
  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v17[5];
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "%@ - _pruneBlendingModelCachesOlderThanUUID removed blending caches with UUIDs: %@", buf, 0x16u);
  }

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void __68__ATXUIFeedbackPriorContext__pruneBlendingModelCachesOlderThanUUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isEqual:a1[4]])
  {
    *a4 = 1;
  }

  else
  {
    v6 = [*(a1[5] + 16) objectForKey:v10];
    v7 = v6;
    if (v6)
    {
      v8 = *(a1[5] + 40);
      v9 = [v6 uuid];
      LOBYTE(v8) = [v8 isEqual:v9];

      if ((v8 & 1) == 0)
      {
        [*(a1[5] + 16) removeObjectForKey:v10];
        [*(*(a1[6] + 8) + 40) addObject:v10];
      }
    }
  }
}

- (void)pruneUnreferencedClientModelCachesIfPossible
{
  v26 = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v21 = [(ATXUIFeedbackPriorContext *)self _referencedClientModelCaches];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = objc_opt_new();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__4;
  v10[4] = __Block_byref_object_dispose__4;
  v11 = objc_opt_new();
  v3 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering reversedOrderedSet];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__ATXUIFeedbackPriorContext_pruneUnreferencedClientModelCachesIfPossible__block_invoke;
  v9[3] = &unk_1E86A42A8;
  v9[4] = self;
  v9[5] = v12;
  v9[6] = v20;
  v9[7] = &v14;
  v9[8] = v10;
  [v3 enumerateObjectsUsingBlock:v9];

  [(NSMutableOrderedSet *)self->_cacheUpdateOrdering removeObjectsInArray:v15[5]];
  v4 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v15[5];
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "%@ - _pruneUnreferencedClientModelCaches removed client caches with UUIDs: %@", buf, 0x16u);
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __73__ATXUIFeedbackPriorContext_pruneUnreferencedClientModelCachesIfPossible__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 24);
  v12 = v3;
  v5 = [*(*(a1[6] + 8) + 40) containsObject:?];
  if (v4 == 1)
  {
    v6 = v12;
    if (v5)
    {
      goto LABEL_15;
    }

    v7 = [*(a1[4] + 24) objectForKey:v12];
    if (v7)
    {
      [*(a1[4] + 24) removeObjectForKey:v12];
      [*(*(a1[7] + 8) + 40) addObject:v12];
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v7 = [*(a1[4] + 24) objectForKey:v12];
    v8 = [v7 clientModelId];
    if (v8)
    {
      if ([*(*(a1[8] + 8) + 40) containsObject:v8])
      {
        [*(a1[4] + 24) removeObjectForKey:v12];
        v9 = *(*(a1[7] + 8) + 40);
        v10 = v12;
      }

      else
      {
        v9 = *(*(a1[8] + 8) + 40);
        v10 = v8;
      }

      [v9 addObject:v10];
    }

LABEL_13:
    goto LABEL_14;
  }

  *(*(a1[5] + 8) + 24) = 1;
LABEL_14:
  v6 = v12;
LABEL_15:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_validateCacheUpdateOrderingAndCacheDictMapping
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "%@ - pruned UUIDs without mappings: %@", buf, 0x16u);
}

void __76__ATXUIFeedbackPriorContext__validateCacheUpdateOrderingAndCacheDictMapping__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 16) objectForKey:v5];
  v4 = [*(*(a1 + 32) + 24) objectForKey:v5];
  if (!(v3 | v4))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (id)_referencedClientModelCaches
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) clientModelCacheUpdateUUIDs];
        v10 = [v9 allValues];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)validContextClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXPredictionContext", @"ATXUIFeedbackTestPredictionContext", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (ATXUIFeedbackPriorContext)initWithProtoData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [[ATXPBUIFeedbackPriorContext alloc] initWithData:v4];
    self = [(ATXUIFeedbackPriorContext *)self initWithProto:v6];

    objc_autoreleasePoolPop(v5);
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ATXUIFeedbackPriorContext)initWithProto:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 cacheUpdateOrderings];
      v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_6];

      v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v7];
      v9 = [v5 cacheUpdateOrderingsCount];
      if (v9 == [v8 count])
      {
        v65 = v8;
        v66 = v7;
        v10 = objc_opt_new();
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v67 = v5;
        v11 = [v5 blendingModelCacheUpdates];
        v12 = [v11 countByEnumeratingWithState:&v72 objects:v77 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v73;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v73 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [[ATXBlendingModelUICacheUpdate alloc] initWithProto:*(*(&v72 + 1) + 8 * i)];
              v17 = v16;
              if (v16)
              {
                v18 = [(ATXBlendingModelUICacheUpdate *)v16 uuid];
                [v10 setObject:v17 forKey:v18];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v72 objects:v77 count:16];
          }

          while (v13);
        }

        v5 = v67;
        v19 = [v67 blendingModelCacheUpdatesCount];
        if (v19 == [v10 count])
        {
          v64 = self;
          v20 = objc_opt_new();
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v21 = [v67 clientModelCacheUpdates];
          v22 = [v21 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v69;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v69 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [[ATXClientModelCacheUpdate alloc] initWithProto:*(*(&v68 + 1) + 8 * j)];
                v27 = v26;
                if (v26)
                {
                  v28 = [(ATXClientModelCacheUpdate *)v26 uuid];
                  [v20 setObject:v27 forKey:v28];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v68 objects:v76 count:16];
            }

            while (v23);
          }

          v5 = v67;
          v29 = [v67 clientModelCacheUpdatesCount];
          v8 = v65;
          if (v29 == [v20 count])
          {
            v30 = [v67 contextClassString];
            v31 = [v67 context];
            v32 = v31;
            v33 = 0;
            if (v30 && v31)
            {
              v34 = [(ATXUIFeedbackPriorContext *)v64 validContextClassNames];
              v35 = [v34 containsObject:v30];

              if (v35)
              {
                v33 = [objc_alloc(NSClassFromString(&v30->isa)) initWithProtoData:v32];
              }

              else
              {
                v33 = 0;
              }
            }

            v63 = v32;
            if ([v67 hasPinnedBlendingModelUICacheUpdateUUID])
            {
              v58 = objc_alloc(MEMORY[0x1E696AFB0]);
              v59 = [v67 pinnedBlendingModelUICacheUpdateUUID];
              v60 = [v58 initWithUUIDString:v59];
            }

            else
            {
              v60 = 0;
            }

            v7 = v66;
            self = [(ATXUIFeedbackPriorContext *)v64 initWithCacheUpdateOrdering:v65 blendingModelCacheUpdates:v10 clientModelCacheUpdates:v20 context:v33 pinnedBlendingModelUICacheUpdateUUID:v60];

            v36 = self;
            v5 = v67;
          }

          else
          {
            v30 = __atxlog_handle_blending_ecosystem();
            self = v64;
            v7 = v66;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              [(ATXUIFeedbackPriorContext *)v30 initWithProto:v51, v52, v53, v54, v55, v56, v57];
            }

            v36 = 0;
          }
        }

        else
        {
          v20 = __atxlog_handle_blending_ecosystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [(ATXUIFeedbackPriorContext *)v20 initWithProto:v44, v45, v46, v47, v48, v49, v50];
          }

          v36 = 0;
          v7 = v66;
        }
      }

      else
      {
        v10 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(ATXUIFeedbackPriorContext *)v10 initWithProto:v37, v38, v39, v40, v41, v42, v43];
        }

        v36 = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
      }

      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v61 = *MEMORY[0x1E69E9840];
  return v36;
}

id __43__ATXUIFeedbackPriorContext_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering array];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_28];
  v6 = [v5 mutableCopy];
  [v3 setCacheUpdateOrderings:v6];

  v7 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates allValues];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_31];
  v9 = [v8 mutableCopy];
  [v3 setBlendingModelCacheUpdates:v9];

  v10 = [(NSMutableDictionary *)self->_clientModelCacheUpdates allValues];
  v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_34];
  v12 = [v11 mutableCopy];
  [v3 setClientModelCacheUpdates:v12];

  v13 = [(ATXProactiveSuggestionFeedbackContextProtocol *)self->_context encodeAsProto];
  [v3 setContext:v13];

  context = self->_context;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v3 setContextClassString:v16];

  pinnedBlendingModelUICacheUpdateUUID = self->_pinnedBlendingModelUICacheUpdateUUID;
  if (pinnedBlendingModelUICacheUpdateUUID)
  {
    v18 = [(NSUUID *)pinnedBlendingModelUICacheUpdateUUID UUIDString];
    [v3 setPinnedBlendingModelUICacheUpdateUUID:v18];
  }

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXUIFeedbackPriorContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUIFeedbackPriorContext *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUIFeedbackPriorContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"protobufData" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXBiomeUIContext" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    self = [(ATXUIFeedbackPriorContext *)self initWithProtoData:v8];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackPriorContext *)self isEqualToATXUIFeedbackPriorContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackPriorContext:(id)a3
{
  v4 = a3;
  v5 = self->_cacheUpdateOrdering;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = self->_blendingModelCacheUpdates;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSMutableDictionary *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = self->_clientModelCacheUpdates;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSMutableDictionary *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_context;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(ATXProactiveSuggestionFeedbackContextProtocol *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_21;
    }
  }

  v18 = self->_pinnedBlendingModelUICacheUpdateUUID;
  v19 = v18;
  if (v18 == v4[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSUUID *)v18 isEqual:?];
  }

LABEL_21:
  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering hash];
  v4 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates hash]- v3 + 32 * v3;
  v5 = [(NSMutableDictionary *)self->_clientModelCacheUpdates hash]- v4 + 32 * v4;
  v6 = [(ATXProactiveSuggestionFeedbackContextProtocol *)self->_context hash]- v5 + 32 * v5;
  return [(NSUUID *)self->_pinnedBlendingModelUICacheUpdateUUID hash]- v6 + 32 * v6;
}

- (void)addClientModelCacheUpdate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addBlendingModelUICacheUpdate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pruneContextStateOlderThanBlendingUUID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = [*(a1 + 16) allKeys];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end