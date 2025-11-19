@interface WBSPasswordBreachResults
- (WBSPasswordBreachResults)initWithContext:(id)a3;
- (id)recentlyBreachedResultRecords;
- (id)resultRecordsForQueries:(id)a3;
- (void)_restoreResultsFromPersistentStoreIfNecessary;
- (void)_saveResultsToPersistentStore;
- (void)addResultRecords:(id)a3;
- (void)clearAllResultsSynchronously;
- (void)clearRecentlyBreachedResultRecords;
- (void)markAllCompromisedResultRecordsAsRecentlyBreached;
@end

@implementation WBSPasswordBreachResults

- (WBSPasswordBreachResults)initWithContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSPasswordBreachResults;
  v6 = [(WBSPasswordBreachResults *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_context, a3);
    v8 = v7;
  }

  return v7;
}

- (id)resultRecordsForQueries:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(WBSPasswordBreachResults *)self _restoreResultsFromPersistentStoreIfNecessary];
  v22 = [MEMORY[0x1E695DF00] now];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {

    goto LABEL_15;
  }

  v8 = v7;
  v20 = 0;
  v9 = *v24;
  obj = v6;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v11 persistentIdentifier];
      v13 = [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier objectForKeyedSubscript:v12];
      if (v13)
      {
        v14 = v13;
        v15 = [(WBSPasswordBreachResultRecord *)v13 dateLastModified];
        v16 = [v11 dateLastModified];
        v17 = [v15 compare:v16];

        if (v17 != -1)
        {
          goto LABEL_10;
        }

        [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier setObject:0 forKeyedSubscript:v12];

        v20 = 1;
      }

      v14 = [[WBSPasswordBreachResultRecord alloc] initWithPersistentIdentifier:v12 result:0 dateLastModified:v22];
LABEL_10:
      [v5 addObject:v14];
    }

    v6 = obj;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);

  if (v20)
  {
    [(WBSPasswordBreachResults *)self _saveResultsToPersistentStore];
  }

LABEL_15:
  os_unfair_lock_unlock(&self->_lock);

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)addResultRecords:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(WBSPasswordBreachResults *)self _restoreResultsFromPersistentStoreIfNecessary];
  v5 = [(WBSPasswordBreachContext *)self->_context configuration];
  v6 = [v5 verboseSensitiveLoggingEnabled];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138740227;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 result];
        v15 = [v13 persistentIdentifier];
        v16 = [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier objectForKeyedSubscript:v15];
        [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier setObject:v13 forKeyedSubscript:v15];
        if ([v16 result] == 1 && (v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(NSMutableSet *)self->_recentlyBreachedPersistentIdentifiers addObject:v15];
        }

        if (v6)
        {
          if (v14 > 3)
          {
            v18 = 0;
          }

          else
          {
            v18 = off_1E7CF33B8[v14];
          }

          v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v23 = MEMORY[0x1E696AEC0];
            log = v19;
            v20 = [v23 safari_stringAsHexWithData:v15];
            *buf = v22;
            v30 = v20;
            v31 = 2117;
            v32 = v18;
            _os_log_debug_impl(&dword_1B8447000, log, OS_LOG_TYPE_DEBUG, "Result for persistent identifier %{sensitive}@: %{sensitive}@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  [(WBSPasswordBreachResults *)self _saveResultsToPersistentStore];
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)markAllCompromisedResultRecordsAsRecentlyBreached
{
  os_unfair_lock_lock(&self->_lock);
  resultRecordsByPersistentIdentifier = self->_resultRecordsByPersistentIdentifier;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__WBSPasswordBreachResults_markAllCompromisedResultRecordsAsRecentlyBreached__block_invoke;
  v4[3] = &unk_1E7CF3398;
  v4[4] = self;
  [(NSMutableDictionary *)resultRecordsByPersistentIdentifier enumerateKeysAndObjectsUsingBlock:v4];
  os_unfair_lock_unlock(&self->_lock);
}

void __77__WBSPasswordBreachResults_markAllCompromisedResultRecordsAsRecentlyBreached__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 result] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [*(*(a1 + 32) + 32) addObject:v5];
  }
}

- (id)recentlyBreachedResultRecords
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(WBSPasswordBreachResults *)self _restoreResultsFromPersistentStoreIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_recentlyBreachedPersistentIdentifiers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier objectForKeyedSubscript:v10, v16];
        if (v11)
        {
          v12 = v4;
          v13 = v11;
        }

        else
        {
          v12 = v3;
          v13 = v10;
        }

        [v12 addObject:v13];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    [(NSMutableSet *)self->_recentlyBreachedPersistentIdentifiers minusSet:v3];
    [(WBSPasswordBreachResults *)self _saveResultsToPersistentStore];
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)clearRecentlyBreachedResultRecords
{
  os_unfair_lock_lock(&self->_lock);
  [(WBSPasswordBreachResults *)self _restoreResultsFromPersistentStoreIfNecessary];
  [(NSMutableSet *)self->_recentlyBreachedPersistentIdentifiers removeAllObjects];
  [(WBSPasswordBreachResults *)self _saveResultsToPersistentStore];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearAllResultsSynchronously
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_recentlyBreachedPersistentIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier removeAllObjects];
  [(WBSPasswordBreachResults *)self _saveResultsToPersistentStore];
  v3 = [(WBSPasswordBreachContext *)self->_context store];
  [v3 saveStoreSynchronously];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_saveResultsToPersistentStore
{
  os_unfair_lock_assert_owner(&self->_lock);
  v6 = [(WBSPasswordBreachContext *)self->_context store];
  v3 = [(NSMutableDictionary *)self->_resultRecordsByPersistentIdentifier allValues];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_43];

  [v6 setResultRecords:v4];
  v5 = [(NSMutableSet *)self->_recentlyBreachedPersistentIdentifiers allObjects];
  [v6 setRecentlyBreachedPersistentIdentifiers:v5];
}

- (void)_restoreResultsFromPersistentStoreIfNecessary
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Unexpected non-data type in saved recently breached persistent identifiers.", buf, 2u);
}

@end