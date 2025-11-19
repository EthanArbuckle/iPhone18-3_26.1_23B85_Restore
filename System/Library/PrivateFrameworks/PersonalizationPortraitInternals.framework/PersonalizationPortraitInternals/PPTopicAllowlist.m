@interface PPTopicAllowlist
+ (id)_keyFor:(uint64_t)a1 of:(void *)a2;
+ (id)sharedInstance;
- (BOOL)_topicIsAllowedForClientProcess:(void *)a3 topic:;
- (BOOL)shouldBypassAllowlist:(id)a3;
- (PPTopicAllowlist)initWithTrialWrapper:(id)a3;
- (id)filterTopicDictionary:(id)a3 clientProcess:(id)a4;
- (id)indicesOfAllowedTopicsInRecordArray:(id)a3 clientProcess:(id)a4;
- (id)indicesOfAllowedTopicsInScoredTopicArray:(id)a3 clientProcess:(id)a4;
- (void)_loadAssetData;
- (void)dealloc;
@end

@implementation PPTopicAllowlist

- (id)filterTopicDictionary:(id)a3 clientProcess:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  allowlistTrie = self->_allowlistTrie;
  v9 = [PPTopicAllowlist _keyFor:v7 of:?];
  LODWORD(allowlistTrie) = [(_PASCFBurstTrie *)allowlistTrie payloadForString:v9];

  if (allowlistTrie)
  {
    v10 = v6;
  }

  else
  {
    v11 = [v6 allKeys];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__PPTopicAllowlist_filterTopicDictionary_clientProcess___block_invoke;
    v26[3] = &unk_2789717F8;
    v26[4] = self;
    v27 = v7;
    v12 = [v11 _pas_filteredArrayWithTest:v26];

    v10 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [v6 objectForKeyedSubscript:{v18, v22}];
          [v10 setObject:v19 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_keyFor:(uint64_t)a1 of:(void *)a2
{
  v2 = a2;
  v3 = @"/ShouldBypassTopicAllowlist/";
  objc_opt_self();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v2, @"/ShouldBypassTopicAllowlist/"];

  return v4;
}

BOOL __56__PPTopicAllowlist_filterTopicDictionary_clientProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = [v5 stringValue];

  v8 = [v6 initWithFormat:@"Q%@", v7];
  v9 = [(PPTopicAllowlist *)v2 _topicIsAllowedForClientProcess:v3 topic:v8];

  return v9;
}

- (BOOL)_topicIsAllowedForClientProcess:(void *)a3 topic:
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"%@/%@", v7, v6];

  v9 = [v4 payloadForString:v8] != 0;
  return v9;
}

- (id)indicesOfAllowedTopicsInScoredTopicArray:(id)a3 clientProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  allowlistTrie = self->_allowlistTrie;
  v9 = [PPTopicAllowlist _keyFor:v7 of:?];
  LODWORD(allowlistTrie) = [(_PASCFBurstTrie *)allowlistTrie payloadForString:v9];

  if (allowlistTrie)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__PPTopicAllowlist_indicesOfAllowedTopicsInScoredTopicArray_clientProcess___block_invoke;
    v12[3] = &unk_2789717D0;
    v12[4] = self;
    v13 = v7;
    v10 = [v6 indexesOfObjectsPassingTest:v12];
  }

  return v10;
}

BOOL __75__PPTopicAllowlist_indicesOfAllowedTopicsInScoredTopicArray_clientProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 item];
  v5 = [v4 topicIdentifier];
  v6 = [(PPTopicAllowlist *)v2 _topicIsAllowedForClientProcess:v3 topic:v5];

  return v6;
}

- (id)indicesOfAllowedTopicsInRecordArray:(id)a3 clientProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  allowlistTrie = self->_allowlistTrie;
  v9 = [PPTopicAllowlist _keyFor:v7 of:?];
  LODWORD(allowlistTrie) = [(_PASCFBurstTrie *)allowlistTrie payloadForString:v9];

  if (allowlistTrie)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PPTopicAllowlist_indicesOfAllowedTopicsInRecordArray_clientProcess___block_invoke;
    v12[3] = &unk_2789717A8;
    v12[4] = self;
    v13 = v7;
    v10 = [v6 indexesOfObjectsPassingTest:v12];
  }

  return v10;
}

BOOL __70__PPTopicAllowlist_indicesOfAllowedTopicsInRecordArray_clientProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 topic];
  v5 = [v4 topicIdentifier];
  v6 = [(PPTopicAllowlist *)v2 _topicIsAllowedForClientProcess:v3 topic:v5];

  return v6;
}

- (BOOL)shouldBypassAllowlist:(id)a3
{
  allowlistTrie = self->_allowlistTrie;
  v4 = [PPTopicAllowlist _keyFor:a3 of:?];
  LODWORD(allowlistTrie) = [(_PASCFBurstTrie *)allowlistTrie payloadForString:v4];

  return allowlistTrie != 0;
}

- (void)dealloc
{
  [(PPTrialWrapper *)self->_trialWrapper removeUpdateHandlerForToken:self->_trialToken];
  v3.receiver = self;
  v3.super_class = PPTopicAllowlist;
  [(PPTopicAllowlist *)&v3 dealloc];
}

- (PPTopicAllowlist)initWithTrialWrapper:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PPTopicAllowlist;
  v6 = [(PPTopicAllowlist *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialWrapper, a3);
    [(PPTopicAllowlist *)v7 _loadAssetData];
    objc_initWeak(&location, v7);
    trialWrapper = v7->_trialWrapper;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__PPTopicAllowlist_initWithTrialWrapper___block_invoke;
    v12[3] = &unk_2789797B8;
    objc_copyWeak(&v13, &location);
    v9 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" block:v12];
    trialToken = v7->_trialToken;
    v7->_trialToken = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)_loadAssetData
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 16) filepathForFactor:@"topicAllowlist.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  v3 = pp_topics_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "Loading topic allowlist from %@.", &v11, 0xCu);
  }

  if (!v2)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Failed to read path for topic allowlist.";
      v8 = v6;
      v9 = 2;
      goto LABEL_11;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v2];
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  if (!*(a1 + 8))
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = v2;
      v7 = "Failed to initialize topic allowlist trie from file at %@";
      v8 = v6;
      v9 = 12;
LABEL_11:
      _os_log_fault_impl(&dword_23224A000, v8, OS_LOG_TYPE_FAULT, v7, &v11, v9);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

void __41__PPTopicAllowlist_initWithTrialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PPTopicAllowlist *)WeakRetained _loadAssetData];
    WeakRetained = v2;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global_458);
  }

  v3 = sharedInstance__pasExprOnceResult_459;

  return v3;
}

void __34__PPTopicAllowlist_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PPTopicAllowlist alloc];
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [(PPTopicAllowlist *)v1 initWithTrialWrapper:v2];
  v4 = sharedInstance__pasExprOnceResult_459;
  sharedInstance__pasExprOnceResult_459 = v3;

  objc_autoreleasePoolPop(v0);
}

@end