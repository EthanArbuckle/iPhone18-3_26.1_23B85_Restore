@interface PPTopicBlocklist
+ (id)sharedInstance;
- (PPTopicBlocklist)initWithTrialWrapper:(id)wrapper;
- (id)indicesOfBlockedTopicsInRecordArray:(id)array;
- (id)indicesOfBlockedTopicsInScoredTopicArray:(id)array;
- (void)_loadAssetData;
- (void)dealloc;
@end

@implementation PPTopicBlocklist

- (id)indicesOfBlockedTopicsInScoredTopicArray:(id)array
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PPTopicBlocklist_indicesOfBlockedTopicsInScoredTopicArray___block_invoke;
  v5[3] = &unk_278976998;
  v5[4] = self;
  v3 = [array indexesOfObjectsPassingTest:v5];

  return v3;
}

uint64_t __61__PPTopicBlocklist_indicesOfBlockedTopicsInScoredTopicArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 scoredTopic];
  v4 = [v3 item];
  v5 = [v4 topicIdentifier];
  v6 = [v2 shouldBlock:v5];

  return v6;
}

- (id)indicesOfBlockedTopicsInRecordArray:(id)array
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PPTopicBlocklist_indicesOfBlockedTopicsInRecordArray___block_invoke;
  v5[3] = &unk_278976970;
  v5[4] = self;
  v3 = [array indexesOfObjectsPassingTest:v5];

  return v3;
}

uint64_t __56__PPTopicBlocklist_indicesOfBlockedTopicsInRecordArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 topic];
  v4 = [v3 topicIdentifier];
  v5 = [v2 shouldBlock:v4];

  return v5;
}

- (void)dealloc
{
  [(PPTrialWrapper *)self->_trialWrapper removeUpdateHandlerForToken:self->_trialToken];
  v3.receiver = self;
  v3.super_class = PPTopicBlocklist;
  [(PPTopicBlocklist *)&v3 dealloc];
}

- (PPTopicBlocklist)initWithTrialWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v15.receiver = self;
  v15.super_class = PPTopicBlocklist;
  v6 = [(PPTopicBlocklist *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialWrapper, wrapper);
    [(PPTopicBlocklist *)v7 _loadAssetData];
    objc_initWeak(&location, v7);
    trialWrapper = v7->_trialWrapper;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__PPTopicBlocklist_initWithTrialWrapper___block_invoke;
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
  v2 = [*(self + 16) filepathForFactor:@"topicBlocklist.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  v3 = pp_topics_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "Loading topic blocklist from %@.", &v11, 0xCu);
  }

  if (!v2)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Failed to read path for topic blocklist.";
      v8 = v6;
      v9 = 2;
      goto LABEL_11;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v2];
  v5 = *(self + 8);
  *(self + 8) = v4;

  if (!*(self + 8))
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = v2;
      v7 = "Failed to initialize topic blocklist trie from file at %@";
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

void __41__PPTopicBlocklist_initWithTrialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PPTopicBlocklist *)WeakRetained _loadAssetData];
    WeakRetained = v2;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_18282 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_18282, &__block_literal_global_18283);
  }

  v3 = sharedInstance__pasExprOnceResult_18284;

  return v3;
}

void __34__PPTopicBlocklist_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PPTopicBlocklist alloc];
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [(PPTopicBlocklist *)v1 initWithTrialWrapper:v2];
  v4 = sharedInstance__pasExprOnceResult_18284;
  sharedInstance__pasExprOnceResult_18284 = v3;

  objc_autoreleasePoolPop(v0);
}

@end