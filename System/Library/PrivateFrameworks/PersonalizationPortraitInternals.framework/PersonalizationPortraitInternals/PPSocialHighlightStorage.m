@interface PPSocialHighlightStorage
+ (id)appLinksForResourceURL:(id)a3 resolvedURL:(id)a4;
+ (id)feedbackPruningPolicy;
+ (int)attributionFeedbackTypeForAttributionFeedbackType:(unint64_t)a3;
+ (int)unifiedFeedbackTypeForHighlightFeedbackType:(unint64_t)a3;
+ (unint64_t)entitlementStatusForClient:(id)a3 applicationIdentifiers:(id)a4;
- (BOOL)_isCollaborationEntitlementPresentForApplicationIdentifiers:(id)a3;
- (BOOL)isClientEntitledForItem:(id)a3 client:(id)a4 applicationIdentifiers:(id)a5 blockedHosts:(id)a6;
- (BOOL)isClientEntitledForItem:(id)a3 client:(id)a4 applicationIdentifiers:(id)a5 blockedHosts:(id)a6 iTunesOverrideChecker:(id)a7;
- (BOOL)isValidHighlight:(id)a3 applicationIdentifiers:(id)a4;
- (BOOL)rerankingEnabled;
- (BOOL)saveAttributionFeedbackForAttributionIdentifier:(id)a3 feedbackType:(unint64_t)a4 client:(id)a5 variant:(id)a6;
- (BOOL)saveFeedbackForHighlightIdentifier:(id)a3 feedbackType:(unint64_t)a4 client:(id)a5 variant:(id)a6;
- (PPSocialHighlightStorage)init;
- (PPSocialHighlightStorage)initWithFeedbackStream:(id)a3 rankedStream:(id)a4 database:(id)a5;
- (double)_sessionLoggingRate;
- (id)_mostRecentRankedHighlightsMatchingTest:(id)a3 client:(id)a4;
- (id)_rankableItemsForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 autoDonatingChatIdentifiers:(id)a6 limit:(unint64_t)a7 error:(id *)a8;
- (id)_rankableItemsForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 limit:(unint64_t)a6 error:(id *)a7;
- (id)_screenTimeConversation;
- (id)_socialAttributionFromAttributeValues:(id)a3 fetchAttributes:(id)a4;
- (id)_socialLayerDefaults;
- (id)allSupportedHighlightsForAutoDonatingChats:(id)a3 error:(id *)a4;
- (id)applicationIdentifiersForResourceURL:(id)a3 resolvedURL:(id)a4;
- (id)attributionForIdentifier:(id)a3 error:(id *)a4;
- (id)attributionsForIdentifiers:(id)a3 error:(id *)a4;
- (id)autoDonatingChatsWithShouldContinueBlock:(id)a3 error:(id *)a4;
- (id)cachedRankedHighlightsForClient:(id)a3 variant:(id)a4 queriedHighlights:(id)a5;
- (id)deduplicateAndSortRankedHighlights:(id)a3 attributionLookup:(id)a4 limit:(unint64_t)a5 client:(id)a6;
- (id)featurizeRankedHighlights:(id)a3;
- (id)feedbackItems;
- (id)feedbackPublisherWithInterval:(double)a3 includingRemote:(BOOL)a4;
- (id)highlightFromRankableHighlight:(id)a3 attributionIdentifiers:(id)a4 earliestAttributionIdentifiers:(id)a5;
- (id)rankedHighlightsForSyncedItems:(id)a3 client:(id)a4 variant:(id)a5 applicationIdentifiers:(id)a6 error:(id *)a7;
- (id)rankedHighlightsWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 applicationIdentifiers:(id)a6 error:(id *)a7;
- (id)rankedItems;
- (id)sharedContentForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 limit:(unint64_t)a6 autoDonatingChatIdentifiers:(id)a7 error:(id *)a8;
- (id)sharedContentFromChats:(id)a3 dateRange:(double)a4 applicationIdentifiers:(id)a5 error:(id *)a6;
- (unint64_t)countDistinctRankedItemsMatchingBatchIdentifier:(id)a3;
- (unsigned)automaticSharingEnabled;
- (unsigned)automaticSharingEnabledForClient:(id)a3 error:(id *)a4;
- (void)_performFeedbackSessionLoggingForEnrichedFeedback:(id)a3 client:(id)a4;
- (void)cleanUpFeedbackWithShouldContinueBlock:(id)a3 ttl:(double)a4 onDeleteBlock:(id)a5;
- (void)clearFeedbackStream;
- (void)clearRankedStream;
- (void)clearStreams;
- (void)deleteAllRecordsFromBundleId:(id)a3;
- (void)deleteAllRecordsFromBundleId:(id)a3 matchingAttributionIdentifiers:(id)a4;
- (void)deleteAllRecordsFromBundleId:(id)a3 matchingDomainSelection:(id)a4;
- (void)deleteDataDerivedFromContentMatchingRequest:(id)a3;
- (void)deleteFeedbackMatchingPredicate:(id)a3;
- (void)freezeAppLinksCache;
- (void)handleAppLinkChangeNotification:(id)a3;
- (void)saveFeedbackItems:(id)a3;
- (void)syncFeedback;
@end

@implementation PPSocialHighlightStorage

- (unsigned)automaticSharingEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer", &keyExistsAndHasValidFormat))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)_screenTimeConversation
{
  if (_screenTimeConversation__pasOnceToken810 != -1)
  {
    dispatch_once(&_screenTimeConversation__pasOnceToken810, &__block_literal_global_323);
  }

  v3 = _screenTimeConversation__pasExprOnceResult;

  return v3;
}

- (void)freezeAppLinksCache
{
  lsAppLinkCache = self->_lsAppLinkCache;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PPSocialHighlightStorage_freezeAppLinksCache__block_invoke;
  v3[3] = &unk_278978048;
  v3[4] = self;
  v3[5] = a2;
  [(_PASLock *)lsAppLinkCache runWithLockAcquired:v3];
}

void __47__PPSocialHighlightStorage_freezeAppLinksCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[3];
  v5 = pp_social_highlights_log_handle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: freezing app link cache", buf, 2u);
    }

    if (v3[2] != v3[3])
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPSocialHighlightStorage.m" lineNumber:849 description:{@"Invalid parameter not satisfying: %@", @"guardedData->_urlToAppID == guardedData->_mutableURLToAppID"}];

      v10 = v3[3];
    }

    v7 = [MEMORY[0x277D425D8] lazyPlistDictionaryWithPlistDictionary:?];
    v8 = v3[2];
    v3[2] = v7;

    v5 = v3[3];
    v3[3] = 0;
  }

  else if (v6)
  {
    *v11 = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: existing frozen cache is still OK", v11, 2u);
  }
}

- (BOOL)rerankingEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PPSocialHighlightStorage *)self _socialLayerDefaults];
  v3 = [v2 BOOLForKey:@"ProactiveRerankingDisabled"];

  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"on";
    if (v3)
    {
      v7 = @"off";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: reranking state is %@.", &v8, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (id)_socialLayerDefaults
{
  if (_socialLayerDefaults__pasOnceToken811 != -1)
  {
    dispatch_once(&_socialLayerDefaults__pasOnceToken811, &__block_literal_global_326);
  }

  v3 = _socialLayerDefaults__pasExprOnceResult;

  return v3;
}

- (BOOL)_isCollaborationEntitlementPresentForApplicationIdentifiers:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (([v3 containsObject:@"*"] & 1) != 0 || (objc_msgSend(v4, "containsObject:", @"collaborations") & 1) == 0)
    {
      v5 = [v4 containsObject:@"portraitCollaborations"];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mostRecentRankedHighlightsMatchingTest:(id)a3 client:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  cache = self->_cache;
  v6 = a3;
  v7 = a4;
  if (cache)
  {
    v8 = objc_opt_new();
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__658;
    v22[4] = __Block_byref_object_dispose__659;
    v23 = 0;
    v9 = objc_autoreleasePoolPush();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__658;
    v34 = __Block_byref_object_dispose__659;
    v35 = 0;
    lock = cache->_lock;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke;
    v21[3] = &unk_278977088;
    v21[4] = &buf;
    [(_PASLock *)lock runWithLockAcquired:v21];
    v11 = *(*(&buf + 1) + 40);
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 3221225472;
    v25 = __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke_40;
    v26 = &unk_278971960;
    v27 = v7;
    v29 = v6;
    v30 = v22;
    v12 = v8;
    v28 = v12;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_39 shouldContinue:&v24];

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v9);
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: found %tu matching highlights.", &buf, 0xCu);
    }

    v16 = v12;
    _Block_object_dispose(v22, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    LODWORD(v24) = 134217984;
    *(&v24 + 4) = v18;
    _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: found %tu matching highlights.", &v24, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)countDistinctRankedItemsMatchingBatchIdentifier:(id)a3
{
  cache = self->_cache;
  v4 = a3;
  v5 = v4;
  if (cache)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v4)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      lock = cache->_lock;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke;
      v9[3] = &unk_2789770D0;
      v10 = v4;
      v11 = &v12;
      [(_PASLock *)lock runWithLockAcquired:v9];
      v6 = v13[3];

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedRankedHighlightsForClient:(id)a3 variant:(id)a4 queriedHighlights:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__22778;
  v30 = __Block_byref_object_dispose__22779;
  v31 = 0;
  v11 = dispatch_semaphore_create(0);
  cache = self->_cache;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __86__PPSocialHighlightStorage_cachedRankedHighlightsForClient_variant_queriedHighlights___block_invoke;
  v23 = &unk_278978108;
  v25 = &v26;
  v13 = v11;
  v24 = v13;
  [PPSocialHighlightCache cachedRankedHighlightsForClient:v8 variant:&v20 completion:?];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 && ([(PPSocialHighlightCache *)self->_cache cachedHighlightsArrayIsValid:v10 queryResults:?]& 1) == 0)
  {
    [(PPSocialHighlightStorage *)self invalidateCacheForClient:v8, v20, v21, v22, v23];
    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: cache for client '%@' is invalid, re-ranking.", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v27[5] count];
      *buf = 134218242;
      v33 = v15;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: returning cached %tu items for client '%@'", buf, 0x16u);
    }

    v16 = [v27[5] copy];
  }

  _Block_object_dispose(&v26, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void __86__PPSocialHighlightStorage_cachedRankedHighlightsForClient_variant_queriedHighlights___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)clearFeedbackStream
{
  v3 = objc_autoreleasePoolPush();
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_463];

  objc_autoreleasePoolPop(v3);
}

- (void)clearRankedStream
{
  v3 = objc_autoreleasePoolPush();
  cache = self->_cache;
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  [(PPSocialHighlightCache *)cache deleteMatchingPredicate:v5];

  objc_autoreleasePoolPop(v3);
}

- (void)clearStreams
{
  [(PPSocialHighlightStorage *)self clearRankedStream];

  [(PPSocialHighlightStorage *)self clearFeedbackStream];
}

- (id)rankedItems
{
  cache = self->_cache;
  if (cache)
  {
    v3 = objc_opt_new();
    v4 = objc_autoreleasePoolPush();
    lock = cache->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__PPSocialHighlightCache_allItems__block_invoke;
    v8[3] = &unk_278976F28;
    v6 = v3;
    v9 = v6;
    [(_PASLock *)lock runWithLockAcquired:v8];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)saveAttributionFeedbackForAttributionIdentifier:(id)a3 feedbackType:(unint64_t)a4 client:(id)a5 variant:(id)a6
{
  v9 = a3;
  v10 = a5;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    [(PPSocialHighlightStorage *)self _writeEnrichedFeedbackForAttributionIdentifier:v9 client:v10 feedbackType:[PPSocialHighlightStorage attributionFeedbackTypeForAttributionFeedbackType:a4]];
  }

  return 1;
}

- (BOOL)saveFeedbackForHighlightIdentifier:(id)a3 feedbackType:(unint64_t)a4 client:(id)a5 variant:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    v11 = [PPSocialHighlightStorage unifiedFeedbackTypeForHighlightFeedbackType:a4];
    [(PPSocialHighlightStorage *)self _writeEnrichedFeedbackForHighlightIdentifier:v9 client:v10 feedbackType:v11];
    if (a4 == 2)
    {
      v12 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: forcing a sync as a hide occurred.", buf, 2u);
      }

      [(PPSocialHighlightStorage *)self syncFeedback];
      v13 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v11 >= 0xC)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v11];
        }

        else
        {
          v14 = off_2789784B0[v11];
        }

        *buf = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: invalidating cache due to feedback of type %@ from client '%@'", buf, 0x16u);
      }

      [(PPSocialHighlightCache *)self->_cache invalidateCacheForClient:v10];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasHighlightIdentifier])
  {
    v4 = [v3 highlightIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke_459(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 40) copy];
        [v11 setHighlight:v9];
        [*(a1 + 48) _performFeedbackSessionLoggingForEnrichedFeedback:v11 client:*(a1 + 56)];
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v11];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasAttributionIdentifier])
  {
    v4 = [v3 attributionIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke_457(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 40) copy];
        [v11 setHighlight:v9];
        [*(a1 + 48) _performFeedbackSessionLoggingForEnrichedFeedback:v11 client:*(a1 + 56)];
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v11];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_performFeedbackSessionLoggingForEnrichedFeedback:(id)a3 client:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(PPSocialHighlightStorage *)self _sessionLoggingRate];
  if ([MEMORY[0x277D3A578] yesWithProbability:?])
  {
    v8 = objc_autoreleasePoolPush();
    v46 = v6;
    v9 = [v6 highlight];
    v10 = [v9 features];
    v11 = [v10 mutableCopy];
    v12 = v11;
    v45 = v8;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v15 = v13;

    v16 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 stringByReplacingOccurrencesOfString:@":" withString:@"_"];
          v25 = [v24 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

          v26 = [v17 objectForKeyedSubscript:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v26 _pas_stringBackedByUTF8CString];

            v26 = v27;
          }

          v28 = [v25 _pas_stringBackedByUTF8CString];
          [v16 setObject:v26 forKeyedSubscript:v28];

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v19);
    }

    v29 = [v7 _pas_stringBackedByUTF8CString];
    [v16 setObject:v29 forKeyedSubscript:@"clientId"];

    v6 = v46;
    v30 = [v46 feedbackType];
    if (v30 >= 0xC)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_2789784B0[v30];
    }

    v32 = [(__CFString *)v31 _pas_stringBackedByUTF8CString];
    [v16 setObject:v32 forKeyedSubscript:@"feedbackType"];

    v33 = MEMORY[0x277CCABB0];
    v34 = [v46 highlight];
    v35 = [v33 numberWithBool:{objc_msgSend(v34, "isPrimary")}];
    [v16 setObject:v35 forKeyedSubscript:@"isPrimary"];

    v36 = MEMORY[0x277CCABB0];
    v37 = [v46 highlight];
    v38 = [v36 numberWithBool:{objc_msgSend(v37, "isProxy")}];
    [v16 setObject:v38 forKeyedSubscript:@"isProxy"];

    v39 = objc_opt_new();
    v40 = [v39 UUIDString];

    v41 = [v40 substringToIndex:{objc_msgSend(v40, "length") >> 2}];
    v42 = [v41 _pas_stringBackedByUTF8CString];
    [v16 setObject:v42 forKeyedSubscript:@"uuid"];

    v43 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: performing feedback session logging.", buf, 2u);
    }

    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlightSessionMatched" payload:v16 inBackground:0];
    objc_autoreleasePoolPop(v45);
  }

  else
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: skipping feedback session logging as not selected for sampling.", buf, 2u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (double)_sessionLoggingRate
{
  v2 = [MEMORY[0x277D42590] isInternalBuild];
  result = 1.0;
  if ((v2 & 1) == 0)
  {
    v4 = [MEMORY[0x277D42590] isBetaBuild];
    result = 0.01;
    if (!v4)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)deleteAllRecordsFromBundleId:(id)a3 matchingAttributionIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
  v9 = objc_autoreleasePoolPush();
  v10 = MEMORY[0x277CCAC30];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke;
  v24[3] = &unk_278978400;
  v11 = v6;
  v25 = v11;
  v12 = v8;
  v26 = v12;
  v13 = [v10 predicateWithBlock:v24];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v13];

  v14 = MEMORY[0x277CCAC30];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke_2;
  v21 = &unk_278978400;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v17 = [v14 predicateWithBlock:&v18];
  [(PPSocialHighlightStorage *)self deleteVendedMatchingPredicate:v17, v18, v19, v20, v21];

  objc_autoreleasePoolPop(v9);
}

uint64_t __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v9 attributionIdentifier];
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = [v9 attributionIdentifier];
        v16 = [v14 containsObject:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 sourceBundleId];
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v8 sourceBundleId];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v8 attributionIdentifier];
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v8 attributionIdentifier];
        v15 = [v13 containsObject:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

- (void)deleteAllRecordsFromBundleId:(id)a3 matchingDomainSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CCAC30];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke;
  v23[3] = &unk_278978400;
  v10 = v6;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  v12 = [v9 predicateWithBlock:v23];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v12];

  v13 = MEMORY[0x277CCAC30];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke_2;
  v20 = &unk_278978400;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = [v13 predicateWithBlock:&v17];
  [(PPSocialHighlightStorage *)self deleteVendedMatchingPredicate:v16, v17, v18, v19, v20];

  objc_autoreleasePoolPop(v8);
}

uint64_t __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v9 domainIdentifier];
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = [v9 domainIdentifier];
        v16 = [v14 containsDomain:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 sourceBundleId];
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v8 sourceBundleId];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v8 domainIdentifier];
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v8 domainIdentifier];
        v15 = [v13 containsDomain:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

- (void)deleteAllRecordsFromBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCAC30];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke;
  v16[3] = &unk_2789783D8;
  v7 = v4;
  v17 = v7;
  v8 = [v6 predicateWithBlock:v16];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v8];

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  cache = self->_cache;
  v11 = MEMORY[0x277CCAC30];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke_2;
  v14[3] = &unk_2789783D8;
  v12 = v7;
  v15 = v12;
  v13 = [v11 predicateWithBlock:v14];
  [(PPSocialHighlightCache *)cache deleteMatchingPredicate:v13];

  objc_autoreleasePoolPop(v9);
}

uint64_t __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    v13 = [v11 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v13;
}

uint64_t __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 hasSourceBundleId])
  {
    v5 = [v3 eventBody];
    v6 = [v5 sourceBundleId];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke;
  v12[3] = &unk_278978338;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [(_PASLock *)lock runWithLockAcquired:v12];
  if (*(v16 + 24) == 1)
  {
    v7 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Skipped deletion due to bloom filter miss", buf, 2u);
    }
  }

  else
  {
    v9[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_425;
    v10[3] = &unk_278978360;
    v10[4] = self;
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_2;
    v9[3] = &unk_278978388;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_3;
    v8[3] = &unk_2789783B0;
    [v6 accessCriteriaUsingBundleIdentifierBlock:v10 domainSelectionBlock:v9 uniqueIdentifiersBlock:v8];
  }

  _Block_object_dispose(&v15, 8);
}

void __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2)
  {
    if (*(a2 + 16))
    {
      LOBYTE(a2) = [v4 matchesBloomFilter:?] ^ 1;
    }

    else
    {
      LOBYTE(a2) = 0;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 deleteAllRecordsFromBundleId:v5 matchingAttributionIdentifiers:v6];
}

- (void)deleteFeedbackMatchingPredicate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  lock = self->_lock;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke;
  v19 = &unk_278978310;
  v8 = v6;
  v20 = v8;
  v9 = v5;
  v21 = v9;
  v10 = v4;
  v22 = v10;
  v23 = &v24;
  [(_PASLock *)lock runWithLockAcquired:&v16];
  v11 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 count];
    v13 = v25[3];
    *buf = 134218240;
    v29 = v12;
    v30 = 2048;
    v31 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: distilled %lu hidden feedback, and deleted %lu others.", buf, 0x16u);
  }

  if (v25[3])
  {
    [(PPSocialHighlightStorage *)self syncFeedback];
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: forcing sync of deletions.", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(v3 + 1);
  if (objc_opt_respondsToSelector())
  {
    v5 = *(v3 + 1);
    LODWORD(v6) = 869711765;
    v7 = [MEMORY[0x277D42548] bloomFilterInMemoryWithNumberOfValuesN:4000 errorRateP:v6];
    v8 = *(v3 + 2);
    *(v3 + 2) = v7;

    *(v3 + 3) = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke_422;
    v34[3] = &unk_2789782E8;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v37 = v9;
    v39 = v10;
    v11 = v3;
    v38 = v11;
    [v5 deleteLocalAndRemoteEventsWithReason:2 usingPredicateBlock:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v27 = v5;
      v28 = v3;
      v15 = *v31;
      obj = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = objc_opt_new();
          v20 = objc_opt_new();
          [v19 setHighlight:v20];

          v21 = [v17 highlight];
          v22 = [v21 highlightIdentifier];
          v23 = [v19 highlight];
          [v23 setHighlightIdentifier:v22];

          [v17 feedbackCreationSecondsSinceReferenceDate];
          [v19 setFeedbackCreationSecondsSinceReferenceDate:?];
          [v19 setFeedbackType:2];
          v24 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v19];
          [(PPSocialHighlightStorageGuardedData *)v11 sendEvent:v24];

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v14);

      v5 = v27;
      v3 = v28;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (*(v3 + 3) <= 0x7FuLL)
    {
      v25 = *(v3 + 2);
      *(v3 + 2) = 0;

      *(v3 + 3) = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v5 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failing deletion due to Biome version mismatch.", buf, 2u);
  }

LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke_422(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v5];
  if ([v6 feedbackType] == 2)
  {
    v7 = [v6 highlight];
    v8 = [v7 highlightIdentifier];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 32);
    v10 = [v6 highlight];
    v11 = [v10 highlightIdentifier];
    LOBYTE(v9) = [v9 containsObject:v11];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 40) addObject:v6];
      v12 = *(a1 + 32);
      v13 = [v6 highlight];
      v14 = [v13 highlightIdentifier];
      [v12 addObject:v14];
    }
  }

  v15 = [*(a1 + 48) evaluateWithObject:v3];
  if (v6)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    [(PPSocialHighlightStorageGuardedData *)*(a1 + 56) addToBloomFilter:v5];
    v17 = 0;
    goto LABEL_12;
  }

  ++*(*(*(a1 + 64) + 8) + 24);
LABEL_10:
  v17 = 1;
LABEL_12:

  objc_autoreleasePoolPop(v4);
  return v17;
}

- (void)cleanUpFeedbackWithShouldContinueBlock:(id)a3 ttl:(double)a4 onDeleteBlock:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-a4];
  v11 = objc_alloc(MEMORY[0x277CBEAA8]);
  v12 = +[PPConfiguration sharedInstance];
  [v12 socialHighlightDecayInterval];
  v14 = [v11 initWithTimeIntervalSinceNow:-v13];

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  lock = self->_lock;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke;
  v31[3] = &unk_2789782C0;
  v18 = v8;
  v36 = v18;
  v19 = v14;
  v32 = v19;
  v20 = v15;
  v33 = v20;
  v21 = v16;
  v34 = v21;
  v22 = v10;
  v35 = v22;
  v38 = v39;
  v23 = v9;
  v37 = v23;
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = &__block_literal_global_421;
  }

  if ([(_PASLock *)lock runWithLockAcquired:v31 shouldContinueBlock:v24]== 1)
  {
    v25 = pp_default_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deferring before lock acquired for cleanup.", buf, 2u);
    }
  }

  v26 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v21 count];
    *buf = 134217984;
    v41 = v27;
    _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: repersisted %tu hidden feedback items.", buf, 0xCu);
  }

  v28 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v21 count];
    *buf = 134217984;
    v41 = v29;
    _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deleted a total of %tu feedback items.", buf, 0xCu);
  }

  _Block_object_dispose(v39, 8);
  v30 = *MEMORY[0x277D85DE8];
}

void __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (objc_opt_respondsToSelector())
  {
    v5 = v3[1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke_416;
    v26[3] = &unk_278978298;
    v29 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v27 = v11;
    v28 = v10;
    v21 = *(a1 + 72);
    v12 = v21;
    v30 = v21;
    [v5 deleteLocalAndRemoteEventsWithReason:1 usingPredicateBlock:v26];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = *(a1 + 48);
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v18];
          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failing deletion due to Biome version mismatch.", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke_416(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[8];
  if (v6 && ((*(v6 + 16))() & 1) == 0)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deferring cleanup.", v35, 2u);
    }

    *a3 = 1;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v5 timestamp];
  v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  v11 = [v5 eventBody];
  v12 = [v11 feedbackCreationDate];

  v13 = [v5 eventBody];
  v14 = [v13 feedbackType];

  if (v14 == 2 && [v12 compare:a1[4]] != -1)
  {
    v15 = [v5 eventBody];
    if (v15)
    {
      v16 = v15;
      v17 = [v5 eventBody];
      v18 = [v17 highlight];
      v19 = [v18 highlightIdentifier];

      if (v19)
      {
        v20 = a1[5];
        v21 = [v5 eventBody];
        v22 = [v21 highlight];
        v23 = [v22 highlightIdentifier];
        LOBYTE(v20) = [v20 containsObject:v23];

        if ((v20 & 1) == 0)
        {
          v24 = a1[6];
          v25 = [v5 eventBody];
          [v24 addObject:v25];

          v26 = a1[5];
          v27 = [v5 eventBody];
          v28 = [v27 highlight];
          v29 = [v28 highlightIdentifier];
          [v26 addObject:v29];

LABEL_20:
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }
  }

  if ([v10 compare:a1[7]] == -1 || objc_msgSend(v12, "compare:", a1[7]) == -1 || v14 == 2)
  {
    v31 = [v5 eventBody];

    if (v31)
    {
      v32 = [v5 eventBody];
      v27 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v32];

      ++*(*(a1[10] + 8) + 24);
      if (v27)
      {
        v33 = a1[9];
        if (v33)
        {
          (*(v33 + 16))(v33, v27);
        }
      }

      goto LABEL_20;
    }

LABEL_21:
    v30 = 1;
    goto LABEL_22;
  }

  v30 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v8);
  return v30;
}

- (id)feedbackItems
{
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  v4 = [(PPSocialHighlightStorage *)self feedbackItemsInInterval:1 includingRemote:?];

  return v4;
}

void __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 state];
  v6 = pp_social_highlights_log_handle();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      v11 = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: error collecting feedback: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(*(a1 + 32) + 8) + 40) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: successfully collected feedback %tu feedback items.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

id __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  v5 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v4];

  objc_autoreleasePoolPop(v3);

  return v5;
}

BOOL __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  objc_autoreleasePoolPop(v3);

  return v4 != 0;
}

- (id)feedbackPublisherWithInterval:(double)a3 includingRemote:(BOOL)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__22778;
  v21 = __Block_byref_object_dispose__22779;
  v22 = 0;
  v7 = objc_opt_new();
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8 - a3;

  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke;
  v15[3] = &unk_2789781E0;
  v16 = a4;
  v15[4] = &v17;
  *&v15[5] = v9;
  [(_PASLock *)lock runWithLockAcquired:v15];
  v11 = [v18[5] filterWithIsIncluded:&__block_literal_global_406];
  v12 = v18[5];
  v18[5] = v11;

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = v12[1];
  if (*(a1 + 48) == 1)
  {
    v4 = [v3 remoteDevices];
    v5 = [v12[1] publishersForRemoteDevices:v4 startTime:1 includeLocal:&__block_literal_global_403 pipeline:*(a1 + 40)];
    v6 = [v5 merge];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [v3 publisherFromStartTime:*(a1 + 40)];
    v10 = *(*(a1 + 32) + 8);
    v4 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v11 = objc_opt_self();
}

BOOL __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];

  if (!v4)
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: filtering event from Biome with nil event body.", v7, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);

  return v4 != 0;
}

- (void)saveFeedbackItems:(id)a3
{
  v4 = a3;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PPSocialHighlightStorage_saveFeedbackItems___block_invoke;
    v6[3] = &unk_278978198;
    v7 = v4;
    [(_PASLock *)lock runWithLockAcquired:v6];
  }
}

void __46__PPSocialHighlightStorage_saveFeedbackItems___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v10, v16];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 32) count];
    *buf = 134217984;
    v21 = v14;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: saved %tu events to the stream.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)_socialAttributionFromAttributeValues:(id)a3 fetchAttributes:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v5 count];
  if (v8 == [v6 count])
  {
    v46 = v6;
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v5 objectAtIndexedSubscript:1];
    v11 = [v5 objectAtIndexedSubscript:2];
    v12 = [v5 objectAtIndexedSubscript:3];
    v63 = [v5 objectAtIndexedSubscript:4];
    v13 = [v5 objectAtIndexedSubscript:5];
    v62 = [v5 objectAtIndexedSubscript:6];
    v14 = [v5 objectAtIndexedSubscript:7];
    v15 = [v5 objectAtIndexedSubscript:8];
    v16 = [v5 objectAtIndexedSubscript:9];
    v59 = [v5 objectAtIndexedSubscript:10];
    v58 = [v5 objectAtIndexedSubscript:11];
    v54 = [v5 objectAtIndexedSubscript:12];
    v49 = v9;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        log = v9;
      }

      else
      {
        log = 0;
      }

      if (v10)
      {
LABEL_14:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v10;
        }

        else
        {
          v60 = 0;
        }

        if (v11)
        {
LABEL_18:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v11 stringByStandardizingPath];
            v53 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v18 isDirectory:0];
          }

          else
          {
            v53 = 0;
          }

          if (!v12)
          {
            goto LABEL_24;
          }

LABEL_22:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v12;
            goto LABEL_25;
          }

LABEL_24:
          v52 = 0;
LABEL_25:
          v55 = v16;
          if (v63)
          {
            objc_opt_class();
            v61 = 0;
            if ((objc_opt_isKindOfClass() & 1) == 0 || !v13)
            {
LABEL_37:
              v47 = v11;
              v48 = v10;
              if (v62)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v14)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v56 = v7;
                      v22 = v62;
                      v23 = v14;
                      v24 = [v22 count];
                      if (v24 == [v23 count] && objc_msgSend(v22, "count"))
                      {
                        v25 = 0;
                        v50 = v23;
                        do
                        {
                          v26 = [v22 objectAtIndexedSubscript:v25];
                          v27 = [v23 objectAtIndexedSubscript:v25];
                          if (v26)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              if (v27)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v28 = v15;
                                  v29 = v13;
                                  v30 = v12;
                                  v31 = [objc_alloc(MEMORY[0x277D3A4D0]) initWithHandle:v27 displayName:v26];
                                  [v56 addObject:v31];

                                  v12 = v30;
                                  v13 = v29;
                                  v15 = v28;
                                  v23 = v50;
                                }
                              }
                            }
                          }

                          ++v25;
                        }

                        while ([v22 count] > v25);
                      }

                      v16 = v55;
                      v7 = v56;
                    }
                  }
                }
              }

              if (v15)
              {
                objc_opt_class();
                v32 = v59;
                if (objc_opt_isKindOfClass())
                {
                  v33 = [v15 firstObject];

                  v15 = v33;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v15;
                  v57 = v15;
                }

                else
                {
                  v57 = 0;
                }
              }

              else
              {
                v57 = 0;
                v32 = v59;
              }

              if (v16)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  LODWORD(v16) = 0;
                  if (!v32)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_64;
                }

                LODWORD(v16) = [v16 unsignedIntegerValue] == 2;
              }

              if (!v32)
              {
                goto LABEL_66;
              }

LABEL_64:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = [v32 BOOLValue];
                goto LABEL_67;
              }

LABEL_66:
              v34 = 0;
LABEL_67:
              if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v51 = v58;
              }

              else
              {
                v51 = 0;
              }

              v35 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v66 = log;
                _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Constructed social attribution with identifier: %@", buf, 0xCu);
              }

              if (log && v60 && v61 && [v7 count] && v57)
              {
                HIDWORD(v45) = v16;
                v36 = v15;
                v37 = v14;
                v6 = v46;
                if (v54)
                {
                  v38 = v7;
                  objc_opt_class();
                  v39 = v58;
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = v54;
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else
                {
                  v38 = v7;
                  v40 = 0;
                  v39 = v58;
                }

                BYTE1(v45) = v34;
                LOBYTE(v45) = BYTE4(v45);
                v17 = [objc_alloc(MEMORY[0x277D3A4B0]) initWithIdentifier:log sourceAppDisplayName:@"Messages" conversationIdentifier:v60 groupPhotoPath:v53 groupDisplayName:v52 groupId:v40 relatedPeople:v38 sender:v61 timestamp:v57 collaborationMetadata:v51 starred:v45 fromMe:?];
              }

              else
              {
                v36 = v15;
                v41 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v66 = log;
                  _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Constructed social attribution has missing data: %@", buf, 0xCu);
                }

                v37 = v14;
                v6 = v46;

                v42 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138740995;
                  v66 = log;
                  v67 = 2117;
                  v68 = v60;
                  v69 = 2117;
                  v70 = v61;
                  v71 = 2117;
                  v72 = v7;
                  v73 = 2112;
                  v74 = v57;
                  _os_log_debug_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: attributionIdentifier: %{sensitive}@, conversationIdentifier: %{sensitive}@, sender: %{sensitive}@, relatedPeople: %{sensitive}@, timestamp: %@", buf, 0x34u);
                }

                v38 = v7;

                v40 = 0;
                v17 = 0;
                v39 = v58;
              }

              v7 = v38;
              goto LABEL_90;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v7;
              v20 = [v63 firstObject];
              v21 = [v13 firstObject];
              if (!v20)
              {
                goto LABEL_35;
              }

              objc_opt_class();
              v61 = 0;
              if ((objc_opt_isKindOfClass() & 1) == 0 || !v21)
              {
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v61 = [objc_alloc(MEMORY[0x277D3A4D0]) initWithHandle:v21 displayName:v20];
                [v19 addObject:?];
              }

              else
              {
LABEL_35:
                v61 = 0;
              }

LABEL_36:

              v7 = v19;
              v16 = v55;
              goto LABEL_37;
            }
          }

          v61 = 0;
          goto LABEL_37;
        }

LABEL_10:
        v53 = 0;
        if (!v12)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      log = 0;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v60 = 0;
    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  log = pp_social_highlights_log_handle();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, log, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query result did not include all of the necessary components.", buf, 2u);
  }

  v17 = 0;
LABEL_90:

  v43 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)attributionsForIdentifiers:(id)a3 error:(id *)a4
{
  v59[13] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v7 = *MEMORY[0x277CC2770];
  v59[0] = *MEMORY[0x277CC3208];
  v59[1] = v7;
  v8 = *MEMORY[0x277CC2760];
  v59[2] = *MEMORY[0x277CC2B78];
  v59[3] = v8;
  v9 = *MEMORY[0x277CC24B0];
  v59[4] = *MEMORY[0x277CC24E0];
  v59[5] = v9;
  v10 = *MEMORY[0x277CC3010];
  v59[6] = *MEMORY[0x277CC3028];
  v59[7] = v10;
  v11 = *MEMORY[0x277CC3190];
  v59[8] = @"com_apple_mobilesms_highlightedContentServerDate";
  v59[9] = v11;
  v59[10] = @"com_apple_mobilesms_fromMe";
  v59[11] = @"com_apple_mobilesms_collaborationMetadata";
  v59[12] = @"com_apple_mobilesms_chatUniqueIdentifier";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:13];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__22778;
  v50 = __Block_byref_object_dispose__22779;
  v51 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = *MEMORY[0x277CCA1A0];
  v15 = *MEMORY[0x277D3A658];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __61__PPSocialHighlightStorage_attributionsForIdentifiers_error___block_invoke;
  v42[3] = &unk_278978170;
  v43 = v6;
  v45 = &v46;
  v34 = v43;
  dsema = v13;
  v44 = dsema;
  [v36 slowFetchAttributes:v12 protectionClass:v14 bundleID:v15 identifiers:v43 completionHandler:v42];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (v47[5])
  {
    v16 = [v34 count];
    if (v16 == [v47[5] count])
    {
      v37 = objc_opt_new();
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v17 = v47[5];
      v18 = [v17 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v18)
      {
        v19 = *v39;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
              v23 = [(PPSocialHighlightStorage *)self _socialAttributionFromAttributeValues:v22 fetchAttributes:v12];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 identifier];
                v26 = v25 == 0;

                if (!v26)
                {
                  v27 = [v24 identifier];
                  [v37 setObject:v24 forKeyedSubscript:v27];
                }
              }
            }

            else
            {
              v22 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query result was not an array.", buf, 2u);
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v18);
      }

      goto LABEL_22;
    }
  }

  v28 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v32 = [v34 count];
    v33 = [v47[5] count];
    *buf = 134218240;
    v56 = v32;
    v57 = 2048;
    v58 = v33;
    _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight attribution query for identifiers: %tu returned invalid number of results: %tu", buf, 0x16u);
  }

  if (a4)
  {
    v29 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277D3A588];
    v54 = @"CoreSpotlight attribution query returned invalid results.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    *a4 = [v29 errorWithDomain:*MEMORY[0x277D3A580] code:24 userInfo:v17];
    v37 = MEMORY[0x277CBEC10];
LABEL_22:

    goto LABEL_24;
  }

  v37 = MEMORY[0x277CBEC10];
LABEL_24:

  _Block_object_dispose(&v46, 8);
  v30 = *MEMORY[0x277D85DE8];

  return v37;
}

void __61__PPSocialHighlightStorage_attributionsForIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = [v3 count];
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query for identifiers: %tu result count: %tu", &v8, 0x16u);
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

- (id)attributionForIdentifier:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v13 count:1];
  v9 = [(PPSocialHighlightStorage *)self attributionsForIdentifiers:v8 error:a4, v13, v14];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)rankedHighlightsWithLimit:(unint64_t)a3 client:(id)a4 variant:(id)a5 applicationIdentifiers:(id)a6 error:(id *)a7
{
  v88 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v58 = a5;
  v63 = a6;
  v81[0] = @"client";
  v81[1] = @"limit";
  v82[0] = v11;
  v57 = a3;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v82[1] = v12;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];

  PLLogRegisteredEvent();
  v13 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: fetching rankedHighlights for client %@", buf, 0xCu);
  }

  v65 = objc_opt_new();
  if ([(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:v63])
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = @"collaborations";
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Overwriting client identifier %@ to %@", buf, 0x16u);
    }

    v11 = @"collaborations";
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__22778;
  v78 = __Block_byref_object_dispose__22779;
  v79 = 0;
  v15 = dispatch_semaphore_create(0);
  cache = self->_cache;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke;
  v71[3] = &unk_278978108;
  v73 = &v74;
  dsema = v15;
  v72 = dsema;
  [PPSocialHighlightCache cachedRankedHighlightsForClient:v11 variant:v71 completion:?];
  v70 = 0;
  v61 = [(PPSocialHighlightStorage *)self _rankableItemsForClient:v11 variant:v58 applicationIdentifiers:v63 limit:a3 error:&v70];
  if (a7)
  {
    *a7 = v70;
  }

  v17 = [v61 first];
  v62 = [v61 second];
  v60 = v11;
  if (v61 && v17 && v62)
  {
    v55 = v17;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v18 = v62;
    v19 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v19)
    {
      v20 = *v67;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v67 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v66 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v18 objectForKeyedSubscript:v22];
          v25 = [v24 allValues];
          v26 = [v25 sortedArrayUsingComparator:&__block_literal_global_388];
          v27 = [v26 _pas_mappedArrayWithTransform:&__block_literal_global_391];

          v28 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v27 count];
            *buf = 138412546;
            *&buf[4] = v22;
            *&buf[12] = 2048;
            *&buf[14] = v29;
            _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Social highlight: %@ attributions deduplicated to %tu items", buf, 0x16u);
          }

          [v65 setObject:v27 forKeyedSubscript:v22];
          objc_autoreleasePoolPop(v23);
        }

        v19 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v19);
    }

    v30 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v61 first];
      v32 = [v31 count];
      *buf = 134217984;
      *&buf[4] = v32;
      _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Social rankable highlights count: %tu", buf, 0xCu);
    }

    v33 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v65 count];
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Social highlight deduplicated count: %tu", buf, 0xCu);
    }

    v35 = self->_cache;
    if (v35)
    {
      dispatch_sync(v35->_queue, &__block_literal_global_656);
    }

    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    v36 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v75[5] count];
      *buf = 134217984;
      *&buf[4] = v37;
      _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: cachedHighlights count: %tu", buf, 0xCu);
    }

    v38 = [(PPSocialHighlightCache *)self->_cache cachedHighlightsArrayIsValid:v55 queryResults:?];
    v39 = v75[5];
    v40 = v38 ^ 1;
    if (!v39)
    {
      v40 = 1;
    }

    if (v40)
    {
      v44 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Ranking social highlights for client '%@', as no valid cache exists.", buf, 0xCu);
      }

      v45 = [(PPSocialHighlightStorage *)self featurizeRankedHighlights:v55];

      v46 = objc_opt_new();
      v47 = [v46 rankSocialHighlights:v45 client:v60 performRerank:{-[PPSocialHighlightStorage rerankingEnabled](self, "rerankingEnabled")}];

      v48 = self->_cache;
      v41 = v47;
      v49 = v60;
      v50 = v49;
      if (v48)
      {
        if (!v49)
        {
          v51 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: Saving ranked items to the vended stream without a client identifier. The cache will not be active.", buf, 2u);
          }
        }

        queue = v48->_queue;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke;
        v84 = &unk_278975A60;
        v85 = v48;
        v86 = v41;
        v87 = v50;
        dispatch_sync(queue, buf);
      }
    }

    else
    {
      v41 = v39;
    }

    v43 = [(PPSocialHighlightStorage *)self deduplicateAndSortRankedHighlights:v41 attributionLookup:v65 limit:v57 client:v60, v55];
    v17 = v41;
  }

  else
  {
    v42 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v42, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: spotlight query failed.", buf, 2u);
    }

    v43 = 0;
  }

  _Block_object_dispose(&v74, 8);
  v53 = *MEMORY[0x277D85DE8];

  return v43;
}

void __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke_385(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)featurizeRankedHighlights:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFE0C0];
  v6 = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:v6 readOnly:1];

  v8 = +[PPLocalTopicStore defaultStore];
  v9 = +[PPLocalContactStore defaultStore];
  v10 = objc_opt_new();
  [v10 timeIntervalSinceReferenceDate];
  v11 = [(PPSocialHighlightStorage *)self feedbackPublisherWithInterval:1 includingRemote:?];

  v12 = +[PPSocialHighlightFeaturizer trialSpecifiedFeatures];
  if (!v12)
  {
    v13 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: no ranking features found.", v20, 2u);
    }

    v12 = objc_opt_new();
  }

  v14 = [PPSocialHighlightFeaturizer alloc];
  v15 = [v9 cachedSignificantContactHandles];
  if (v15)
  {
    v16 = [(PPSocialHighlightFeaturizer *)v14 initWithFeedbackPublisher:v11 topicStore:v8 interactionStore:v7 significantContactHandles:v15 features:v12 highlights:v4];
  }

  else
  {
    v17 = objc_opt_new();
    v16 = [(PPSocialHighlightFeaturizer *)v14 initWithFeedbackPublisher:v11 topicStore:v8 interactionStore:v7 significantContactHandles:v17 features:v12 highlights:v4];
  }

  v18 = [(PPSocialHighlightFeaturizer *)v16 featurizeHighlights:v4];

  return v18;
}

- (id)sharedContentForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 limit:(unint64_t)a6 autoDonatingChatIdentifiers:(id)a7 error:(id *)a8
{
  v60[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = pp_social_highlights_signpost_handle();
  v19 = os_signpost_id_generate(v18);

  v20 = pp_social_highlights_signpost_handle();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Storage.sharedContentFromChats", "", buf, 2u);
  }

  v22 = +[PPConfiguration sharedInstance];
  [v22 socialHighlightDecayInterval];
  v47 = [(PPSocialHighlightStorage *)self sharedContentFromChats:v17 dateRange:v16 applicationIdentifiers:a8 error:?];

  v23 = pp_social_highlights_signpost_handle();
  v24 = v23;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v24, OS_SIGNPOST_INTERVAL_END, v19, "Storage.sharedContentFromChats", " enableTelemetry=YES ", buf, 2u);
  }

  v60[0] = v14;
  v59[0] = @"client";
  v59[1] = @"limit";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v60[1] = v25;
  v60[2] = &unk_284784EF0;
  v59[2] = @"maximumResultCount";
  v59[3] = @"spotlightResultCount";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
  v60[3] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];

  PLLogRegisteredEvent();
  v28 = +[PPTrialWrapper sharedInstance];
  v29 = [v28 plistForFactorName:@"social_highlight_blocked_hosts.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];

  v30 = [v29 objectForKeyedSubscript:@"blockedHostSuffixes"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v32 = [v29 objectForKeyedSubscript:@"blockedHostSuffixes"];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  v33 = [v16 containsObject:@"*"];
  v34 = [v16 containsObject:@"collaborations"];
  v35 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v56 = v33;
    v57 = 1024;
    v58 = v34;
    _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: kPPAccessWildCard: %u, kPPAllCollaborations: %u entitlements detected", buf, 0xEu);
  }

  v36 = [(PPSocialHighlightStorage *)self _screenTimeConversation];
  v37 = objc_opt_new();
  [(PPSocialHighlightStorageUtilities *)self->_socialHighlightStorageUtils clearCache];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __122__PPSocialHighlightStorage_sharedContentForClient_variant_applicationIdentifiers_limit_autoDonatingChatIdentifiers_error___block_invoke;
  v48[3] = &unk_2789780E0;
  v48[4] = self;
  v49 = v16;
  v50 = v14;
  v51 = v32;
  v52 = v37;
  v53 = v15;
  v54 = v36;
  v38 = v36;
  v39 = v15;
  v40 = v37;
  v41 = v32;
  v42 = v14;
  v43 = v16;
  v44 = [v47 _pas_filteredArrayWithTest:v48];
  [(PPSocialHighlightStorage *)self freezeAppLinksCache];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __122__PPSocialHighlightStorage_sharedContentForClient_variant_applicationIdentifiers_limit_autoDonatingChatIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isValidHighlight:v3 applicationIdentifiers:*(a1 + 40)] & 1) == 0)
  {
    v5 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:

      v4 = 0;
      goto LABEL_9;
    }

    v6 = [v3 uniqueIdentifier];
    v24 = 138412290;
    v25 = v6;
    v7 = "PPSocialHighlightStorage: item: %@ suppressed as it is not valid";
    v8 = v5;
    v9 = 12;
LABEL_19:
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v7, &v24, v9);

    goto LABEL_8;
  }

  if (([*(a1 + 32) isClientEntitledForItem:v3 client:*(a1 + 48) applicationIdentifiers:*(a1 + 40) blockedHosts:*(a1 + 56) iTunesOverrideChecker:*(a1 + 64)] & 1) == 0)
  {
    v5 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v23 = *(a1 + 48);
    v6 = [v3 uniqueIdentifier];
    v24 = 138412546;
    v25 = v23;
    v26 = 2112;
    v27 = v6;
    v7 = "PPSocialHighlightStorage: Client: %@, is not entitled for item: %@";
    v8 = v5;
    v9 = 22;
    goto LABEL_19;
  }

  if ([*(a1 + 72) isEqualToString:*MEMORY[0x277D3A750]])
  {
    v4 = 1;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_opt_new();
    v14 = [v3 attributeSet];
    v15 = [v14 authorAddresses];
    [v13 addObjectsFromArray:v15];

    v16 = [v3 attributeSet];
    v17 = [v16 recipientAddresses];
    [v13 addObjectsFromArray:v17];

    v18 = [v3 attributeSet];
    v19 = [v18 accountHandles];
    [v13 removeObjectsInArray:v19];

    if ([v13 count])
    {
      v20 = [*(a1 + 80) allowableByContactsHandles:v13];
      v4 = [v20 allowedByScreenTime];
      if ((v4 & 1) == 0)
      {
        v21 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v3 uniqueIdentifier];
          v24 = 138412290;
          v25 = v22;
          _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing item due to Screen Time restrictions: %@", &v24, 0xCu);
        }
      }
    }

    else
    {
      v4 = 1;
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_rankableItemsForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:v14])
  {
    v15 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = @"collaborations";
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is enabled due to %@ entitlement", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v25 = 0;
    v17 = [(PPSocialHighlightStorage *)self automaticSharingEnabledForClient:v12 error:&v25];
    v16 = v25;
    if (v17 != 2)
    {
      v18 = objc_opt_new();
      if (v18)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  v24 = v16;
  v18 = [(PPSocialHighlightStorage *)self autoDonatingChatsWithError:&v24];
  v19 = v24;

  v16 = v19;
  if (v18)
  {
LABEL_7:
    v20 = [(PPSocialHighlightStorage *)self _rankableItemsForClient:v12 variant:v13 applicationIdentifiers:v14 autoDonatingChatIdentifiers:v18 limit:a6 error:a7];
    goto LABEL_14;
  }

LABEL_9:
  if (a7)
  {
    objc_storeStrong(a7, v16);
  }

  v21 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v16;
    _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: unable to fetch auto donating chat identifiers: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_rankableItemsForClient:(id)a3 variant:(id)a4 applicationIdentifiers:(id)a5 autoDonatingChatIdentifiers:(id)a6 limit:(unint64_t)a7 error:(id *)a8
{
  v99 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v85 = a6;
  v17 = [PPSocialHighlightStorage sharedContentForClient:"sharedContentForClient:variant:applicationIdentifiers:limit:autoDonatingChatIdentifiers:error:" variant:v14 applicationIdentifiers:v15 limit:v16 autoDonatingChatIdentifiers:a7 error:?];
  v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_357];
  v19 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v95 = [v18 count];
    _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight filtered result count: %tu", buf, 0xCu);
  }

  v20 = pp_social_highlights_signpost_handle();
  v21 = os_signpost_id_generate(v20);

  v22 = pp_social_highlights_signpost_handle();
  v23 = v22;
  v76 = v21 - 1;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Storage.rankableHighlightsFromItems", "", buf, 2u);
  }

  spid = v21;

  v24 = [v18 _pas_mappedArrayWithTransform:&__block_literal_global_361_22910];
  v93 = 0;
  v25 = [(PPSocialHighlightStorage *)self attributionsForIdentifiers:v24 error:&v93];
  v26 = v93;
  if (![v24 count] || objc_msgSend(v25, "count"))
  {
    v72 = v26;
    v73 = v24;
    v75 = v17;
    v81 = objc_opt_new();
    v83 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v74 = v18;
    obj = v18;
    v87 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v87)
    {
      v27 = *v90;
      v77 = *MEMORY[0x277CC24C0];
      v79 = v15;
      v80 = v14;
      v82 = v25;
      v78 = v16;
      v84 = *v90;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v90 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v89 + 1) + 8 * i);
          v30 = objc_autoreleasePoolPush();
          v31 = [v29 attributeSet];
          v32 = [v31 URL];

          if (v32)
          {
            v88 = v30;
            v33 = [v29 uniqueIdentifier];
            v34 = [v25 objectForKeyedSubscript:v33];
            v35 = v34;
            if (v33)
            {
              v36 = v34 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              v37 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v95 = v33;
                _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Failed to fetch attribution for identifier: %@", buf, 0xCu);
              }
            }

            else
            {
              v38 = [PPRankableSocialHighlightUtils rankableHighlightFromSearchableItem:v29 attribution:v34 autoDonatingChats:v85 applicationIdentifiers:v16 clientIdentifier:v14 variant:v15];
              v37 = v38;
              if (v38 && ([v38 highlightIdentifier], v39 = objc_claimAutoreleasedReturnValue(), v39, v39))
              {
                [v81 addObject:v37];
                v40 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = [v37 highlightIdentifier];
                  *buf = 138412290;
                  v95 = v41;
                  _os_log_impl(&dword_23224A000, v40, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: CoreSpotlight fetched highlight with identifier: %@", buf, 0xCu);
                }

                v42 = [v37 highlightIdentifier];
                v43 = [v83 objectForKeyedSubscript:v42];

                if (!v43)
                {
                  v44 = objc_opt_new();
                  v45 = [v37 highlightIdentifier];
                  [v83 setObject:v44 forKeyedSubscript:v45];
                }

                v46 = [v29 attributeSet];
                v47 = [v46 attributeForKey:v77];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v48 = [v47 firstObject];
                }

                else
                {
                  v48 = 0;
                }

                v51 = objc_alloc(MEMORY[0x277CCACA8]);
                v52 = [v35 conversationIdentifier];
                v53 = v52;
                if (v48)
                {
                  v54 = [v51 initWithFormat:@"%@_%@", v52, v48, spid];
                }

                else
                {
                  v55 = [v35 sender];
                  v56 = [v55 handle];
                  v54 = [v51 initWithFormat:@"%@_%@", v53, v56];
                }

                if (v54)
                {
                  v57 = [v37 highlightIdentifier];
                  v58 = [v83 objectForKeyedSubscript:v57];
                  v59 = [v58 objectForKeyedSubscript:v54];

                  if (!v59)
                  {
                    v60 = [v37 highlightIdentifier];
                    v61 = [v83 objectForKeyedSubscript:v60];
                    [v61 setObject:v35 forKeyedSubscript:v54];
                  }
                }

                v15 = v79;
                v14 = v80;
                v16 = v78;
                v25 = v82;
              }

              else
              {
                v47 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = [v29 uniqueIdentifier];
                  v50 = [v37 highlightIdentifier];
                  *buf = 138412546;
                  v95 = v49;
                  v96 = 2112;
                  v97 = v50;
                  _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: item %@ did not produce a correct rankable highlight identifier: %@", buf, 0x16u);

                  v25 = v82;
                }
              }

              v27 = v84;
            }

            v30 = v88;
          }

          else
          {
            v33 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight fetched highlight with missing URL.", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v30);
        }

        v87 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v87);
    }

    v62 = pp_social_highlights_signpost_handle();
    v63 = v62;
    if (v76 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v63, OS_SIGNPOST_INTERVAL_END, spid, "Storage.rankableHighlightsFromItems", " enableTelemetry=YES ", buf, 2u);
    }

    v64 = v81;
    v65 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v81 second:v83];

    v18 = v74;
    v17 = v75;
    v26 = v72;
    v24 = v73;
    goto LABEL_49;
  }

  v68 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v95 = v26;
    _os_log_error_impl(&dword_23224A000, v68, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Failed to fetch attributions for identifiers: %@", buf, 0xCu);
  }

  if (a8)
  {
    v69 = v26;
    v65 = 0;
    v70 = *a8;
    *a8 = v69;
    v64 = v70;
LABEL_49:

    goto LABEL_50;
  }

  v65 = 0;
LABEL_50:

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

uint64_t __123__PPSocialHighlightStorage__rankableItemsForClient_variant_applicationIdentifiers_autoDonatingChatIdentifiers_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributeSet];
  v6 = [v5 contentCreationDate];
  v7 = [v4 attributeSet];

  v8 = [v7 contentCreationDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (BOOL)isClientEntitledForItem:(id)a3 client:(id)a4 applicationIdentifiers:(id)a5 blockedHosts:(id)a6 iTunesOverrideChecker:(id)a7
{
  v139 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v110 = a6;
  v14 = a7;
  v15 = [v13 containsObject:@"portraitCollaborations"];
  LODWORD(a7) = [v13 containsObject:@"*"];
  v16 = [v13 containsObject:@"collaborations"];
  v17 = (a7 & v16 & v15 ^ 1) & a7;
  if (v17 != 1 || [v12 length])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [v11 attributeSet];
    v20 = [v19 URL];

    v111 = v20;
    if (!v20)
    {
      v59 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v66 = [v11 uniqueIdentifier];
        *buf = 138412546;
        v136 = v12;
        v137 = 2112;
        v138 = v66;
        _os_log_error_impl(&dword_23224A000, v59, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Encountered CSSearchableItem with nil resourceURL when querying for client: %@, item: %@", buf, 0x16u);
      }

      v62 = 0;
      goto LABEL_111;
    }

    v21 = [v11 attributeSet];
    v22 = [v21 attributeForKey:@"com_apple_mobilesms_resolvedURL"];

    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
    }

    else
    {
      v23 = 0;
    }

    v103 = v23;
    v104 = [(PPSocialHighlightStorage *)self applicationIdentifiersForResourceURL:v111 resolvedURL:v23];
    if (v104)
    {
      v91 = [PPRankableSocialHighlightUtils isSearchableItemCollaboration:v11];
      if ((v16 & v91 & 1) != 0 && (v15 & 1) == [v13 containsObject:@"*"])
      {
        v62 = 1;
        v59 = v111;
LABEL_110:

LABEL_111:
        objc_autoreleasePoolPop(v18);
        goto LABEL_112;
      }

      v101 = v14;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v24 = v104;
      v97 = v18;
      v105 = [v24 countByEnumeratingWithState:&v127 objects:v134 count:16];
      LODWORD(v25) = 0;
      if (v105)
      {
        v106 = *v128;
        v96 = *MEMORY[0x277D3A5B8];
        v92 = v11;
        v95 = *MEMORY[0x277D3A5D8];
        v102 = v24;
        v87 = v22;
        while (2)
        {
          v98 = v25;
          for (i = 0; i != v105; ++i)
          {
            if (*v128 != v106)
            {
              objc_enumerationMutation(v24);
            }

            v27 = *(*(&v127 + 1) + 8 * i);
            v112 = objc_autoreleasePoolPush();
            v28 = [v27 first];
            v29 = [v27 second];
            v30 = [v29 BOOLValue];

            if (v30)
            {
              if ([v28 isEqualToString:v96] && ((-[NSObject nr_isWebURL](v111, "nr_isWebURL") & 1) != 0 || (objc_msgSend(v103, "nr_isWebURL") & 1) != 0))
              {
                v98 = 0;
              }

              else if ([v28 isEqualToString:v95])
              {
                context = objc_autoreleasePoolPush();
                v31 = [v11 attributeSet];
                v32 = [v31 attributeForKey:@"com_apple_mobilesms_ckBundleIDs"];

                objc_opt_class();
                v89 = v32;
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([v32 firstObject], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v33, (isKindOfClass & 1) == 0))
                {
                  v37 = pp_social_highlights_log_handle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    v11 = v92;
                    v86 = [v92 uniqueIdentifier];
                    *buf = 138412290;
                    v136 = v86;
                    _os_log_error_impl(&dword_23224A000, v37, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: could not find any CKBundleIDs to check for %@", buf, 0xCu);

                    v62 = 0;
                  }

                  else
                  {
                    v62 = 0;
LABEL_79:
                    v11 = v92;
                  }

                  v14 = v101;
                  v18 = v97;
                  v59 = v111;

                  objc_autoreleasePoolPop(context);
                  v22 = v87;
                  v43 = v112;
                  goto LABEL_83;
                }

                v35 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: using CSSI bundle IDs to check link entitlement", buf, 2u);
                }

                v36 = [(PPSocialHighlightStorageUtilities *)self->_socialHighlightStorageUtils resolveBundleIdToApplicationIdentifierIfInstalled:v32];
                v98 = [v36 count] != 0;
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v37 = v36;
                v38 = [v37 countByEnumeratingWithState:&v123 objects:v133 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v124;
                  while (2)
                  {
                    for (j = 0; j != v39; ++j)
                    {
                      if (*v124 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v123 + 1) + 8 * j);
                      if (v17 | [v13 containsObject:v42]) == 1 && (!-[NSObject length](v12, "length") || (-[NSObject isEqualToString:](v12, "isEqualToString:", v42)))
                      {

                        v62 = 1;
                        goto LABEL_79;
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v123 objects:v133 count:16];
                    if (v39)
                    {
                      continue;
                    }

                    break;
                  }
                }

                objc_autoreleasePoolPop(context);
                v11 = v92;
                v22 = v87;
                v24 = v102;
              }

              else
              {
                v98 = 1;
              }
            }

            v43 = v112;
            if (v17 | [v13 containsObject:v28]) == 1 && (!-[NSObject length](v12, "length") || (-[NSObject isEqualToString:](v12, "isEqualToString:", v28)))
            {
              v62 = 1;
              v14 = v101;
              v18 = v97;
              v59 = v111;
LABEL_83:

              objc_autoreleasePoolPop(v43);
              goto LABEL_109;
            }

            objc_autoreleasePoolPop(v112);
          }

          v18 = v97;
          LODWORD(v25) = v98;
          v105 = [v24 countByEnumeratingWithState:&v127 objects:v134 count:16];
          if (v105)
          {
            continue;
          }

          break;
        }
      }

      v14 = v101;
      if (((v25 | v91) & 1) == 0)
      {
        v44 = [v101 overrideForURL:v111];
        v45 = v44;
        if (v44 && ([v44 isEqual:v111]& 1) == 0)
        {
          v67 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v68 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v136 = v45;
            _os_log_debug_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEBUG, "Searching for applications to open URL override: %{sensitive}@", buf, 0xCu);
          }

          v88 = v22;
          v25 = v12;
          v94 = v11;

          v114 = v67;
          v102 = v45;
          v69 = [v67 applicationsAvailableForOpeningURL:v45];
          v70 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v136 = v69;
            _os_log_impl(&dword_23224A000, v70, OS_LOG_TYPE_INFO, "Applications found for URL override: %@", buf, 0xCu);
          }

          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v71 = v69;
          v72 = [v71 countByEnumeratingWithState:&v119 objects:v132 count:16];
          v100 = v72 != 0;
          if (v72)
          {
            v73 = v72;
            v74 = *v120;
            while (2)
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v120 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v76 = [*(*(&v119 + 1) + 8 * k) correspondingApplicationRecord];
                v77 = [v76 applicationIdentifier];
                v78 = v17 | [v13 containsObject:v77];

                if (v78 == 1)
                {
                  if (!-[NSObject length](v25, "length") || ([v76 applicationIdentifier], v79 = objc_claimAutoreleasedReturnValue(), v80 = -[NSObject isEqualToString:](v25, "isEqualToString:", v79), v79, v80))
                  {
                    v82 = pp_social_highlights_log_handle();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                    {
                      v83 = [v76 applicationIdentifier];
                      *buf = 138412290;
                      v136 = v83;
                      _os_log_impl(&dword_23224A000, v82, OS_LOG_TYPE_DEFAULT, "Found app supporting URL override but not Universal Links: %@", buf, 0xCu);
                    }

                    v62 = 1;
                    v11 = v94;
                    v12 = v25;
                    v14 = v101;
                    v18 = v97;
                    v59 = v111;
                    v22 = v88;
                    goto LABEL_109;
                  }
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v119 objects:v132 count:16];
              if (v73)
              {
                continue;
              }

              break;
            }
          }

          v11 = v94;
          v12 = v25;
          v14 = v101;
          v45 = v102;
          v18 = v97;
          v22 = v88;
          LOBYTE(v25) = v100;
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      v46 = [v11 attributeSet];
      v47 = [v46 syndicationStatus];

      objc_opt_class();
      v102 = v47;
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v47 unsignedIntegerValue]!= 2)
      {
        v113 = [v111 host];
        if (v113)
        {
          v107 = v12;
          v93 = v11;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          obja = v110;
          v48 = [obja countByEnumeratingWithState:&v115 objects:v131 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v116;
            v99 = v25;
            while (2)
            {
              v51 = 0;
              v52 = v110;
              do
              {
                v53 = v22;
                v54 = v52;
                if (*v116 != v50)
                {
                  objc_enumerationMutation(obja);
                }

                v55 = *(*(&v115 + 1) + 8 * v51);
                v56 = objc_autoreleasePoolPush();
                if ([v55 hasPrefix:@"."])
                {
                  v57 = v55;
                }

                else
                {
                  v57 = [@"." stringByAppendingString:v55];
                }

                v58 = v57;
                objc_autoreleasePoolPop(v56);
                if (([v113 isEqual:v55] & 1) != 0 || objc_msgSend(v113, "hasSuffix:", v58))
                {
                  v64 = pp_social_highlights_log_handle();
                  v11 = v93;
                  v22 = v53;
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    v65 = [v93 uniqueIdentifier];
                    *buf = 138412290;
                    v136 = v65;
                    _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing URL with blocked host, item: %@", buf, 0xCu);
                  }

                  v12 = v107;
                  v14 = v101;
                  v18 = v97;
                  v59 = v111;
                  goto LABEL_87;
                }

                ++v51;
                v52 = v54;
                v14 = v101;
                v18 = v97;
                v22 = v53;
              }

              while (v49 != v51);
              v49 = [obja countByEnumeratingWithState:&v115 objects:v131 count:16];
              LOBYTE(v25) = v99;
              if (v49)
              {
                continue;
              }

              break;
            }
          }

          v11 = v93;
          v12 = v107;
        }
      }

      if (!(v25 & 1 | ((v17 & 1) == 0)))
      {
        v59 = v111;
        if ([v13 containsObject:@"internal"] && !-[NSObject isEqualToString:](v12, "isEqualToString:", *MEMORY[0x277D3A5D0]) || -[NSObject isEqualToString:](v12, "isEqualToString:", *MEMORY[0x277D3A5E0]))
        {
          v60 = pp_social_highlights_log_handle();
          v113 = v60;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v11 uniqueIdentifier];
            *buf = 138412290;
            v136 = v61;
            _os_log_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing link that is not supported by installed app, wildcard entitlement is present and client is not Safari or TV: %@", buf, 0xCu);
          }

LABEL_87:

          v62 = 0;
        }

        else
        {
          v62 = 1;
        }

        goto LABEL_109;
      }
    }

    else
    {
      v63 = pp_social_highlights_log_handle();
      v102 = v63;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v81 = [v11 uniqueIdentifier];
        *buf = 138412546;
        v136 = v12;
        v137 = 2112;
        v138 = v81;
        _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: App Links could not be fetched for client: %@, item: %@", buf, 0x16u);
      }
    }

    v62 = 0;
    v59 = v111;
LABEL_109:

    goto LABEL_110;
  }

  v62 = 1;
LABEL_112:

  v84 = *MEMORY[0x277D85DE8];
  return v62;
}

- (BOOL)isClientEntitledForItem:(id)a3 client:(id)a4 applicationIdentifiers:(id)a5 blockedHosts:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  LOBYTE(self) = [(PPSocialHighlightStorage *)self isClientEntitledForItem:v13 client:v12 applicationIdentifiers:v11 blockedHosts:v10 iTunesOverrideChecker:v14];

  return self;
}

- (BOOL)isValidHighlight:(id)a3 applicationIdentifiers:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 attributeSet];
  v8 = [v7 syndicationStatus];

  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntegerValue] == 2;
  v10 = [v5 attributeSet];
  v11 = [v10 attributeForKey:@"com_apple_mobilesms_fromMe"];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 BOOLValue] ^ 1 | v9;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  v13 = [PPRankableSocialHighlightUtils isSearchableItemCollaboration:v5];
  v14 = [v6 containsObject:@"fromMe"];

  v15 = v12 | v14 | v13;
  if ((v15 & 1) == 0)
  {
    v16 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 uniqueIdentifier];
      v21 = 138412290;
      v22 = v17;
      v18 = "PPSocialHighlightStorage: Suppressing outgoing item since it is not pinned: %@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v14)
  {
    v16 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 uniqueIdentifier];
      v21 = 138412290;
      v22 = v17;
      v18 = "PPSocialHighlightStorage: Including outgoing item since fromMe entitlement is present: %@";
LABEL_14:
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v18, &v21, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (id)applicationIdentifiersForResourceURL:(id)a3 resolvedURL:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v25 = self;
  lsAppLinkCache = self->_lsAppLinkCache;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke;
  v39[3] = &unk_278978070;
  v27 = v6;
  v40 = v27;
  v28 = v7;
  v41 = v28;
  v43 = &v44;
  v30 = v8;
  v42 = v30;
  [(_PASLock *)lsAppLinkCache runWithLockAcquired:v39];
  if ((v45[3] & 1) == 0)
  {
    v10 = objc_opt_new();
    v26 = [PPSocialHighlightStorage appLinksForResourceURL:v27 resolvedURL:v28];
    if ([v26 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v26;
      v11 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v11)
      {
        v12 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            v15 = [v14 targetApplicationRecord];
            v16 = [v15 applicationIdentifier];

            v17 = objc_alloc(MEMORY[0x277D42648]);
            v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isEnabled")}];
            v19 = [v17 initWithFirst:v16 second:v18];

            [v10 addObject:v19];
            [v30 addObject:v19];
          }

          v11 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v11);
      }
    }

    v20 = v25->_lsAppLinkCache;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke_2;
    v31[3] = &unk_278978098;
    v31[4] = v25;
    v32 = v27;
    v33 = v28;
    v21 = v10;
    v34 = v21;
    [(_PASLock *)v20 runWithLockAcquired:v31];
  }

  v22 = [v30 allObjects];

  _Block_object_dispose(&v44, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) absoluteString];
  v5 = [*(a1 + 40) absoluteString];
  v6 = v3[1];
  v7 = [v3[2] objectForKeyedSubscript:v4];
  if (*(a1 + 40))
  {
    v8 = [v3[2] objectForKeyedSubscript:v5];
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (!*(a1 + 40) || v8)
  {
    v30 = v8;
    v31 = v7;
    v32 = v5;
    v33 = v4;
    v34 = v3;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          v15 = *(a1 + 48);
          v16 = objc_alloc(MEMORY[0x277D42648]);
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", v14)}];
          v18 = [v16 initWithFirst:v14 second:v17];
          [v15 addObject:v18];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    v4 = v33;
    v3 = v34;
    v7 = v31;
    v5 = v32;
    v8 = v30;
    if (v30)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v30;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          v23 = 0;
          do
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * v23);
            v25 = *(a1 + 48);
            v26 = objc_alloc(MEMORY[0x277D42648]);
            v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", v24)}];
            v28 = [v26 initWithFirst:v24 second:v27];
            [v25 addObject:v28];

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v21);
      }

      v4 = v33;
      v3 = v34;
      v7 = v31;
      v5 = v32;
      v8 = v30;
    }
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

void __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke_2(id *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = a2;
  if ([v38[3] count] >= 0x7D1)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: clearing LSAppLink cache.", buf, 2u);
    }

    [a1[4] resetLSAppLinkCache];
  }

  if (!v38[3])
  {
    v4 = [v38[2] mutableCopy];
    v5 = v38[3];
    v38[3] = v4;

    objc_storeStrong(v38 + 2, v38[3]);
  }

  v6 = [a1[5] absoluteString];
  v37 = [a1[6] absoluteString];
  v34 = v6;
  if ([a1[7] count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = a1[7];
    v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 first];
          if (v13)
          {
            v14 = [v11 second];
            v15 = [v14 BOOLValue];

            v16 = [v38[3] objectForKeyedSubscript:v6];
            v17 = v16;
            v18 = MEMORY[0x277CBEBF8];
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            if (([v19 containsObject:v13] & 1) == 0)
            {
              v20 = [v19 arrayByAddingObject:v13];
              [v38[3] setObject:v20 forKeyedSubscript:v6];
            }

            if (a1[6])
            {
              v21 = a1;
              v22 = [v38[3] objectForKeyedSubscript:v37];
              v23 = v22;
              v24 = MEMORY[0x277CBEBF8];
              if (v22)
              {
                v24 = v22;
              }

              v25 = v24;

              if (([v25 containsObject:v13] & 1) == 0)
              {
                v26 = [v25 arrayByAddingObject:v13];
                [v38[3] setObject:v26 forKeyedSubscript:v37];
              }

              a1 = v21;
              v6 = v34;
            }

            if (v15)
            {
              [v38[1] addObject:v13];
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v8);
    }

    goto LABEL_38;
  }

  v27 = [v38[3] objectForKeyedSubscript:v6];
  v28 = v27;
  v29 = MEMORY[0x277CBEBF8];
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  [v38[3] setObject:v30 forKeyedSubscript:{v6, v6}];

  if (a1[6])
  {
    v31 = [v38[3] objectForKeyedSubscript:v37];
    obj = v31;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29;
    }

    v6 = v35;
    [v38[3] setObject:v32 forKeyedSubscript:v37];
LABEL_38:
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __47__PPSocialHighlightStorage_resetLSAppLinkCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[2];
  a2[2] = MEMORY[0x277CBEC10];
  v3 = a2;

  v4 = v3[3];
  v3[3] = 0;

  v5 = objc_opt_new();
  v6 = v3[1];
  v3[1] = v5;
}

- (void)handleAppLinkChangeNotification:(id)a3
{
  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: clearing app link cache due to invalidation notification", v5, 2u);
  }

  [(PPSocialHighlightStorage *)self resetLSAppLinkCache];
}

- (id)allSupportedHighlightsForAutoDonatingChats:(id)a3 error:(id *)a4
{
  v40[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D3A740];
  v8 = *MEMORY[0x277D3A5E0];
  v40[0] = *MEMORY[0x277D3A5B8];
  v40[1] = v8;
  v9 = *MEMORY[0x277D3A5C8];
  v40[2] = *MEMORY[0x277D3A5B0];
  v40[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v11 = -[PPSocialHighlightStorage _rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:](self, "_rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:", &stru_284759D38, v7, v10, v6, [&unk_284784EF0 unsignedIntegerValue], a4);
  v12 = [v11 first];

  if (v12)
  {
    v13 = *MEMORY[0x277D3A5D0];
    v39[0] = @"*";
    v39[1] = @"internal";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v15 = -[PPSocialHighlightStorage _rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:](self, "_rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:", v13, v7, v14, v6, [&unk_284784EF0 unsignedIntegerValue], a4);
    v16 = [v15 first];

    if (v16)
    {
      v33 = v6;
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = objc_autoreleasePoolPush();
      v32 = v16;
      v20 = [v12 arrayByAddingObjectsFromArray:v16];
      objc_autoreleasePoolPop(v19);
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v34 + 1) + 8 * i);
            v26 = [v25 highlightIdentifier];
            v27 = [v18 containsObject:v26];

            if ((v27 & 1) == 0)
            {
              [v17 addObject:v25];
              v28 = [v25 highlightIdentifier];
              [v18 addObject:v28];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v22);
      }

      v29 = [v17 copy];
      v16 = v32;
      v6 = v33;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (unsigned)automaticSharingEnabledForClient:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PPSocialHighlightStorage *)self automaticSharingEnabled];
  if (v7 > 1)
  {
    v10 = [(PPSocialHighlightStorage *)self _socialLayerDefaults];
    v9 = [v10 dictionaryForKey:@"SharedWithYouApps"];

    if (!v9)
    {
      v12 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Failed to read SocialLayer app defaults", buf, 2u);
      }

      LOBYTE(v8) = 0;
      goto LABEL_22;
    }

    if (![v6 length])
    {
      LOBYTE(v8) = 2;
      goto LABEL_23;
    }

    v22 = 0;
    v11 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v6 error:&v22];
    v12 = v22;
    if (v11)
    {
      v13 = [v11 bundleIdentifier];
      v14 = [v9 objectForKeyedSubscript:v13];
      v15 = [v14 BOOLValue];

      if (v15)
      {

        LOBYTE(v8) = 2;
LABEL_22:

        goto LABEL_23;
      }

      v18 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 bundleIdentifier];
        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is disabled for %@", buf, 0xCu);
      }

      LOBYTE(v8) = 1;
    }

    else
    {
      v16 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: LSBundleRecord query error: %@", buf, 0xCu);
      }

      if (a4)
      {
        v17 = v12;
        LOBYTE(v8) = 0;
        *a4 = v12;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    goto LABEL_22;
  }

  v8 = v7;
  v9 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v24) = v8;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is disabled globally due to toggle state: %hhu", buf, 8u);
  }

LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

void __48__PPSocialHighlightStorage__socialLayerDefaults__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SocialLayer"];
  v2 = _socialLayerDefaults__pasExprOnceResult;
  _socialLayerDefaults__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __51__PPSocialHighlightStorage__screenTimeConversation__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D4B968]);
  v2 = *MEMORY[0x277D3A658];
  v3 = PPSharedCNContactStore();
  v4 = [v1 initWithBundleIdentifier:v2 contactStore:v3];
  v5 = _screenTimeConversation__pasExprOnceResult;
  _screenTimeConversation__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

- (id)deduplicateAndSortRankedHighlights:(id)a3 attributionLookup:(id)a4 limit:(unint64_t)a5 client:(id)a6
{
  v94 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v65 = a4;
  v70 = a6;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_292];
  v12 = objc_alloc(MEMORY[0x277CBEAC0]);
  v13 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_295];
  v74 = [v12 initWithObjects:v13 forKeys:v11];

  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v15 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_297];
  v69 = v11;
  v73 = [v14 initWithObjects:v15 forKeys:v11];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v81 objects:v93 count:16];
  v71 = v10;
  v72 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = *v82;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v82 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v81 + 1) + 8 * i);
        v22 = [v21 highlightIdentifier];

        if (!v22)
        {
          v35 = pp_default_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_23224A000, v35, OS_LOG_TYPE_FAULT, "PPSocialHighlightStorage: highlight did not have a highlight identifier when queried.", buf, 2u);
          }

          goto LABEL_25;
        }

        if ([v21 isCollaboration] && objc_msgSend(v21, "hasDomainIdentifier"))
        {
          v23 = [v21 highlightIdentifier];
          v24 = [v74 objectForKeyedSubscript:v23];
          v25 = [v21 domainIdentifier];
          v26 = [v24 objectForKeyedSubscript:v25];

          v27 = [v21 highlightIdentifier];
          v28 = [v74 objectForKeyedSubscript:v27];
          v29 = [v21 domainIdentifier];
          if (v26)
          {
            v30 = [v28 objectForKeyedSubscript:v29];

            [v30 syndicationSecondsSinceReferenceDate];
            v32 = v31;
            [v21 syndicationSecondsSinceReferenceDate];
            if (v32 > v33)
            {
              v28 = [v21 highlightIdentifier];
              v29 = [v74 objectForKeyedSubscript:v28];
              v34 = [v21 domainIdentifier];
              [v29 setObject:v21 forKeyedSubscript:v34];

              goto LABEL_15;
            }
          }

          else
          {
            [v28 setObject:v21 forKeyedSubscript:v29];
            v30 = v27;
LABEL_15:
          }

          v36 = [v21 highlightIdentifier];
          v37 = [v73 objectForKeyedSubscript:v36];
          v38 = [v21 domainIdentifier];
          v39 = [v37 objectForKeyedSubscript:v38];

          v40 = [v21 highlightIdentifier];
          v41 = [v73 objectForKeyedSubscript:v40];
          v42 = [v21 domainIdentifier];
          if (v39)
          {
            v43 = [v41 objectForKeyedSubscript:v42];

            [v43 syndicationSecondsSinceReferenceDate];
            v45 = v44;
            [v21 syndicationSecondsSinceReferenceDate];
            if (v45 < v46)
            {
              v41 = [v21 highlightIdentifier];
              v42 = [v73 objectForKeyedSubscript:v41];
              v47 = [v21 domainIdentifier];
              [v42 setObject:v21 forKeyedSubscript:v47];

              goto LABEL_20;
            }

            v10 = v71;
          }

          else
          {
            [v41 setObject:v21 forKeyedSubscript:v42];
            v43 = v40;
LABEL_20:
            v10 = v71;
          }

          v16 = v72;
        }

        v48 = [v21 highlightIdentifier];
        v49 = [v9 containsObject:v48];

        if (v49)
        {
          continue;
        }

        [v10 addObject:v21];
        v35 = [v21 highlightIdentifier];
        [v9 addObject:v35];
LABEL_25:
      }

      v18 = [v16 countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v18);
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_298;
  v76[3] = &unk_278978000;
  v66 = v65;
  v77 = v66;
  v75 = v74;
  v78 = v75;
  v50 = v73;
  v79 = v50;
  v80 = self;
  v51 = [v10 _pas_mappedArrayWithTransform:v76];
  v52 = +[PPConfiguration sharedInstance];
  v53 = [v52 socialHighlightMaxNumHighlights];

  v54 = v51;
  if ([v51 count] > v53)
  {
    v54 = [v51 subarrayWithRange:{0, v53, v66}];
  }

  v92[0] = v70;
  v91[0] = @"client";
  v91[1] = @"limit";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v53, v66}];
  v92[1] = v55;
  v91[2] = @"portraitResultCount";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v54, "count")}];
  v92[2] = v56;
  v91[3] = @"portraitCacheDate";
  v57 = [(PPSocialHighlightStorage *)self lastCacheInvalidationDateForClient:v70];
  v58 = v57;
  if (!v57)
  {
    v58 = [MEMORY[0x277CBEB68] null];
  }

  v92[3] = v58;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:4];
  if (!v57)
  {
  }

  PLLogRegisteredEvent();
  v60 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v72 count];
    v62 = [v54 count];
    *buf = 134218498;
    v86 = v61;
    v87 = 2048;
    v88 = v62;
    v89 = 2112;
    v90 = v70;
    _os_log_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: reduced %tu highlights into %tu deduplicated highlights for %@", buf, 0x20u);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v54;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_298(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 highlightIdentifier];
  v28 = [v3 domainIdentifier];
  v5 = [a1[4] objectForKeyedSubscript:v4];
  v27 = 0;
  if ([v3 isCollaboration] && v4 && v28)
  {
    v6 = v4;
    v26 = v3;
    v27 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [a1[5] objectForKeyedSubscript:{v6, v26}];
          v14 = [v13 objectForKeyedSubscript:v28];
          v15 = [v14 attributionIdentifier];
          [v27 setObject:v15 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    v16 = MEMORY[0x277CBEB98];
    v4 = v6;
    v17 = [a1[6] objectForKeyedSubscript:v6];
    v18 = [v17 allValues];
    v19 = [v18 valueForKey:@"attributionIdentifier"];
    v20 = [v16 setWithArray:v19];

    v21 = [a1[4] objectForKeyedSubscript:v6];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_2_302;
    v29[3] = &unk_2789793E0;
    v30 = v20;
    v22 = v20;
    v5 = [v21 _pas_filteredArrayWithTest:v29];

    v3 = v26;
  }

  v23 = [a1[7] highlightFromRankableHighlight:v3 attributionIdentifiers:v5 earliestAttributionIdentifiers:{v27, v26}];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_3()
{
  v0 = objc_opt_new();

  return v0;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCollaboration])
  {
    v3 = [v2 highlightIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)highlightFromRankableHighlight:(id)a3 attributionIdentifiers:(id)a4 earliestAttributionIdentifiers:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v9 score];
  if (v12 < 0.0)
  {
    v13 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v47 = [v9 highlightIdentifier];
      [v9 score];
      *buf = 138412546;
      v65 = v47;
      v66 = 2048;
      v67 = v48;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: Suppressing highlight %@ due to negative score: %g", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_28;
  }

  v15 = [v9 isTopKResult];
  [v9 score];
  v17 = v16 * 0.2 + 0.8;
  v18 = v16 * 0.8;
  if (v15)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (![v9 hasResolvedUrl] || (objc_msgSend(v9, "resolvedUrl"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, !v21))
  {
    v24 = 0;
    goto LABEL_13;
  }

  v22 = objc_alloc(MEMORY[0x277CBEBC0]);
  v23 = [v9 resolvedUrl];
  v24 = [v22 initWithString:v23];

  if (!v24)
  {
LABEL_13:
    v60 = MEMORY[0x277CBEC10];
    goto LABEL_14;
  }

  v62 = @"com_apple_mobilesms_resolvedURL";
  v63 = v24;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
LABEL_14:
  v25 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 highlightIdentifier];
    *buf = 138412546;
    v65 = v26;
    v66 = 2112;
    v67 = v10;
    _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Constructed social highlight with identifier: %@, attributionIdentifiers: %@", buf, 0x16u);
  }

  v27 = objc_alloc(MEMORY[0x277CBEBC0]);
  v28 = [v9 resourceUrl];
  v29 = [v27 initWithString:v28];

  v59 = v29;
  if (!v29)
  {
    v49 = [MEMORY[0x277CCA890] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStorage.m" lineNumber:589 description:@"All social highlights must have a resource URL"];
  }

  v30 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v9 syndicationSecondsSinceReferenceDate];
  v31 = [v30 initWithTimeIntervalSinceReferenceDate:?];
  v61 = v24;
  if ([v9 isCollaboration])
  {
    v32 = [v9 applicationIdentifiers];
    v33 = [v32 containsObject:@"com.apple.private.sociallayer.highlights"];

    v57 = v11;
    if (v33)
    {
      v34 = [v9 handleToIdentityMap];
    }

    else
    {
      v34 = 0;
    }

    v56 = objc_alloc(MEMORY[0x277D3A4B8]);
    v58 = [v9 highlightIdentifier];
    v54 = [v9 collaborationIdentifier];
    v55 = [v9 contentDisplayName];
    v42 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 contentCreationSecondsSinceReferenceDate];
    v53 = [v42 initWithTimeIntervalSinceReferenceDate:?];
    v52 = [v9 contentType];
    v51 = [v9 fileProviderId];
    v50 = [v9 localIdentity];
    v43 = [v9 localIdentityProof];
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v41 = v59;
    v40 = v60;
    v14 = [v56 initWithIdentifier:v58 resourceURL:v59 timestamp:v31 attributionIdentifiers:v10 supplementaryData:v60 collaborationIdentifier:v54 contentDisplayName:v55 contentCreationDate:v53 contentUTIType:v52 fileProviderId:v51 earliestAttributionIdentifiers:v57 localIdentity:v50 localIdentityProof:v43 handleToIdentityMap:v34 score:v44];

    v36 = v34;
    v11 = v57;
    v38 = v58;
  }

  else
  {
    v35 = objc_alloc(MEMORY[0x277D3A4C0]);
    v36 = [v9 highlightIdentifier];
    if (v10)
    {
      v37 = v10;
    }

    else
    {
      v37 = MEMORY[0x277CBEBF8];
    }

    v38 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v39 = v35;
    v41 = v59;
    v40 = v60;
    v14 = [v39 initWithIdentifier:v36 resourceURL:v59 timestamp:v31 attributionIdentifiers:v37 supplementaryData:v60 score:v38];
  }

  v13 = v61;
LABEL_28:

  v45 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)sharedContentFromChats:(id)a3 dateRange:(double)a4 applicationIdentifiers:(id)a5 error:(id *)a6
{
  v77[1] = *MEMORY[0x277D85DE8];
  v53 = a3;
  v54 = a5;
  v77[0] = *MEMORY[0x277D3A658];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
  v10 = [PPSocialHighlightStorageUtilities filteredAllowedChatBundleIds:v9];

  if ([v10 count])
  {
    v11 = objc_opt_new();
    [v11 setReason:@"SHContent"];
    [v11 setDisableBlockingOnIndex:1];
    v12 = [&unk_284784EF0 integerValue];
    [v11 setMaximumBatchSize:2 * v12];
    [v11 setReason:@"reason:PPSocialHighlightStore-2; code:1"];
    v76 = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    [v11 setProtectionClasses:v13];

    v14 = *MEMORY[0x277CC31F8];
    v75[0] = *MEMORY[0x277CC3208];
    v75[1] = v14;
    v15 = *MEMORY[0x277CC24A8];
    v75[2] = *MEMORY[0x277CC2640];
    v75[3] = v15;
    v16 = *MEMORY[0x277CC24C0];
    v75[4] = *MEMORY[0x277CC24B0];
    v75[5] = v16;
    v17 = *MEMORY[0x277CC3010];
    v75[6] = *MEMORY[0x277CC23A0];
    v75[7] = v17;
    v18 = *MEMORY[0x277CC2CA0];
    v75[8] = *MEMORY[0x277CC2760];
    v75[9] = v18;
    v19 = *MEMORY[0x277CC2B58];
    v75[10] = *MEMORY[0x277CC2678];
    v75[11] = v19;
    v20 = *MEMORY[0x277CC2B38];
    v75[12] = *MEMORY[0x277CC3118];
    v75[13] = v20;
    v75[14] = @"com_apple_mobilesms_highlightedContentServerDate";
    v75[15] = @"com_apple_mobilesms_syndicationContentType";
    v21 = *MEMORY[0x277CC3190];
    v75[16] = @"com_apple_mobilesms_collaborationIdentifier";
    v75[17] = v21;
    v75[18] = *MEMORY[0x277CC2B78];
    v75[19] = @"com_apple_mobilesms_resolvedURL";
    v75[20] = @"com_apple_mobilesms_fromMe";
    v75[21] = @"com_apple_mobilesms_ckBundleIDs";
    v75[22] = @"com_apple_mobilesms_localIdentityProof";
    v75[23] = @"com_apple_mobilesms_localIdentity";
    v75[24] = @"com_apple_mobilesms_handleToIdentityMap";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:25];
    [v11 setFetchAttributes:v22];

    [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v51 = [v23 initWithFormat:@"%@=%@", *MEMORY[0x277CC2DB8], @"lnk"];
    v24 = [(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:v54];
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v24)
    {
      v26 = @"%@=1";
    }

    else
    {
      v26 = @"%@!=2";
    }

    v50 = [v25 initWithFormat:v26, @"com_apple_mobilesms_syndicationContentType"];
    v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ != 0 && (InRange(com_apple_mobilesms_isHighlightedContent, 1, 2) || com_apple_mobilesms_isHighlightedContent=8)", v18];
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ || %@)", @"InRange(com_apple_mobilesms_isHighlightedContent, 1, 2)", v52];
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"kMDItemContentCreationDate>=$time.now(-%.f)", *&a4];
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v29 = objc_autoreleasePoolPush();
    v74[0] = v51;
    v74[1] = v27;
    v74[2] = @"URL=*";
    v74[3] = v49;
    v74[4] = v50;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    v31 = [v30 _pas_componentsJoinedByString:@" && "];

    v32 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v11 lowPriority];
      v34 = @"high";
      if (v33)
      {
        v34 = @"low";
      }

      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Performing CoreSpotlight highlight query (%@ priority): %@", buf, 0x16u);
    }

    v35 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v31 context:v11];
    [v35 setBundleIDs:v10];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke;
    v60[3] = &unk_278977F70;
    v62 = &v64;
    v36 = v28;
    v61 = v36;
    v63 = v12;
    [v35 setFoundItemsHandler:v60];
    v37 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__22778;
    v72 = __Block_byref_object_dispose__22779;
    v73 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_3;
    v57[3] = &unk_278977F00;
    v59 = buf;
    v38 = v37;
    v58 = v38;
    [v35 setCompletionHandler:v57];
    [v35 start];
    dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
    if (v65[3] || !*(*&buf[8] + 40))
    {
      v39 = 1;
    }

    else
    {
      v41 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v47 = *(*&buf[8] + 40);
        *v68 = 138412290;
        v69 = v47;
        _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight highlight query error: %@", v68, 0xCu);
      }

      if (a6)
      {
        objc_storeStrong(a6, *(*&buf[8] + 40));
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v39 = 0;
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v29);
    if (v39)
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_276;
      v55[3] = &unk_278977F98;
      v56 = v53;
      v40 = [v36 _pas_filteredArrayWithTest:v55];
      v42 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v65[3];
        *buf = 134218240;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight query result count: %tu returning top %tu", buf, 0x16u);
      }

      v44 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Returned results: %@", buf, 0xCu);
      }
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v11 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Short-circuiting sharedContentFromChats query because Messages app is protected.", buf, 2u);
    }

    v40 = MEMORY[0x277CBEBF8];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v40;
}

void __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 count];
  *(*(*(a1 + 40) + 8) + 24) += v3;
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v9 objectAtIndexedSubscript:i];
      v8 = [*(a1 + 32) indexOfObject:v7 inSortedRange:0 options:objc_msgSend(*(a1 + 32) usingComparator:{"count"), 1024, &__block_literal_global_23044}];
      if (v8 < *(a1 + 48))
      {
        [*(a1 + 32) insertObject:v7 atIndex:v8];
      }

      if ([*(a1 + 32) count] > *(a1 + 48))
      {
        [*(a1 + 32) removeLastObject];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_276(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domainIdentifier];
  if (v4)
  {
    v5 = [v3 attributeSet];
    v6 = [v5 syndicationStatus];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = 0;
    }

    v10 = [*(a1 + 32) containsObject:v4];
    if (v7 == 2 || v7 == 8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v14 = [v3 uniqueIdentifier];
      v15 = 138543362;
      v16 = v14;
      _os_log_fault_impl(&dword_23224A000, v8, OS_LOG_TYPE_FAULT, "PPSocialHighlightStorage: CSSI %{public}@ missing domainIdentifier", &v15, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributeSet];
  v6 = [v5 contentCreationDate];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v9 = v8;

  v10 = [v4 attributeSet];

  v11 = [v10 contentCreationDate];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v14 = v13;

  v15 = [v14 compare:v9];
  return v15;
}

- (id)rankedHighlightsForSyncedItems:(id)a3 client:(id)a4 variant:(id)a5 applicationIdentifiers:(id)a6 error:(id *)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v46 = a4;
  v45 = a6;
  v10 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v55 + 1) + 8 * i);
        v17 = [v16 highlight];
        v18 = [v17 identifier];
        v19 = [v10 objectForKeyedSubscript:v18];

        if (!v19)
        {
          v20 = objc_opt_new();
          v21 = [v16 highlight];
          v22 = [v21 identifier];
          [v10 setObject:v20 forKeyedSubscript:v22];
        }

        v23 = [v16 highlight];
        v24 = [v23 identifier];
        v25 = [v10 objectForKeyedSubscript:v24];
        v26 = [v16 highlight];
        v27 = [v26 attributionIdentifiers];
        [v25 addObjectsFromArray:v27];
      }

      v13 = [v11 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v13);
  }

  v28 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = [v10 allKeys];
  v30 = [v29 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v52;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v52 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v51 + 1) + 8 * j);
        v35 = [v10 objectForKeyedSubscript:v34];
        v36 = [v35 allObjects];
        [v28 setObject:v36 forKeyedSubscript:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v31);
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __103__PPSocialHighlightStorage_rankedHighlightsForSyncedItems_client_variant_applicationIdentifiers_error___block_invoke;
  v48[3] = &unk_278977F28;
  v49 = v45;
  v50 = v46;
  v37 = v46;
  v38 = v45;
  v39 = [v11 _pas_mappedArrayWithTransform:v48];
  v40 = objc_opt_new();
  v41 = [v40 rankSocialHighlights:v39 client:v37 performRerank:0];

  v42 = [(PPSocialHighlightStorage *)self deduplicateAndSortRankedHighlights:v41 attributionLookup:v28 limit:-1 client:v37];

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)autoDonatingChatsWithShouldContinueBlock:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Device is Class C locked, cannot query Spotlight.", &buf, 2u);
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:27 userInfo:0];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v47[0] = *MEMORY[0x277D3A658];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v9 = [PPSocialHighlightStorageUtilities filteredAllowedChatBundleIds:v8];

    if ([v9 count])
    {
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      [v11 setReason:@"SHConversations"];
      [v11 setDisableBlockingOnIndex:1];
      v46 = *MEMORY[0x277CC23A8];
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v11 setFetchAttributes:v12];

      [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
      [v11 setReason:@"reason:PPSocialHighlightStore-1; code:1"];
      v45 = *MEMORY[0x277CCA1A0];
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v11 setProtectionClasses:v13];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = +[PPConfiguration sharedInstance];
      [v15 socialHighlightDecayInterval];
      v32 = [v14 initWithFormat:@"kMDItemLastUsedDate>=$time.now(-%.f)", v16];

      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ && %@", @"com_apple_mobilesms_isChatAutoDonating=1", v32];
      v18 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Performing CoreSpotlight automatic donation query: %@", &buf, 0xCu);
      }

      v19 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v17 context:v11];
      [v19 setBundleIDs:v9];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke;
      v36[3] = &unk_278977ED8;
      v20 = v10;
      v37 = v20;
      [v19 setFoundItemsHandler:v36];
      v21 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__22778;
      v43 = __Block_byref_object_dispose__22779;
      v44 = 0;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke_227;
      v33[3] = &unk_278977F00;
      p_buf = &buf;
      v22 = v21;
      v34 = v22;
      [v19 setCompletionHandler:v33];
      [v19 start];
      if (v5)
      {
        while ([MEMORY[0x277D425A0] waitForSemaphore:v22 timeoutSeconds:1.0] == 1)
        {
          if ((v5[2](v5) & 1) == 0)
          {
            v23 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v38 = 0;
              _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMaintenance: deferring autodonating chats", v38, 2u);
            }

            [v19 cancel];
            goto LABEL_15;
          }
        }
      }

      else
      {
        [MEMORY[0x277D425A0] waitForSemaphore:v22];
      }

      v25 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v20 count];
        *v38 = 134217984;
        v39 = v26;
        _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight automatic donation query result count: %tu", v38, 0xCu);
      }

      if ([v20 count] || !*(*(&buf + 1) + 40))
      {
        v27 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *v38 = 138739971;
          v39 = v20;
          _os_log_debug_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: CoreSpotlight automatic donation query results: %{sensitive}@", v38, 0xCu);
        }

        v7 = v20;
      }

      else
      {
        v30 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = *(*(&buf + 1) + 40);
          *v38 = 138412290;
          v39 = v31;
          _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight automatic donation query error: %@", v38, 0xCu);
        }

        if (a4)
        {
          v7 = 0;
          *a4 = *(*(&buf + 1) + 40);
        }

        else
        {
LABEL_15:
          v7 = 0;
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Short-circuiting autoDonatingChats query because Messages app is protected.", &buf, 2u);
      }

      v7 = [MEMORY[0x277CBEB98] set];
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

void __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 attributeSet];
        v11 = [v10 accountIdentifier];

        if (v11)
        {
          [*(a1 + 32) addObject:v11];
        }

        else
        {
          v12 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v8 attributeSet];
            v14 = [v13 uniqueIdentifier];
            *buf = 138412290;
            v21 = v14;
            _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight automatic donation query returned nil accountIdentifier for chat: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke_227(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)syncFeedback
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: triggering sync", buf, 2u);
  }

  v3 = objc_opt_new();
  v9 = 0;
  v4 = [v3 triggerSyncWithError:&v9];
  v5 = v9;
  v6 = pp_social_highlights_log_handle();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: successfully triggered sync", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failed to trigger sync: %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PPSocialHighlightStorage)initWithFeedbackStream:(id)a3 rankedStream:(id)a4 database:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PPSocialHighlightStorage;
  v12 = [(PPSocialHighlightStorage *)&v19 init];
  if (v12)
  {
    v13 = objc_opt_new();
    objc_storeStrong(v13 + 1, a3);
    if (v10)
    {
      v14 = [[PPSocialHighlightCache alloc] initWithStream:v10 database:v11];
      cache = v12->_cache;
      v12->_cache = v14;
    }

    v16 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v13];
    lock = v12->_lock;
    v12->_lock = v16;
  }

  return v12;
}

- (PPSocialHighlightStorage)init
{
  v3 = objc_alloc(MEMORY[0x277CF1B18]);
  v4 = +[PPSocialHighlightStorage feedbackPruningPolicy];
  v5 = [v3 initWithPruningPolicy:v4];

  v6 = NSRoundUpToMultipleOfPageSize(0x30000uLL);
  v7 = [PPPaths subdirectory:@"streams"];
  v8 = [objc_alloc(MEMORY[0x277CF17F8]) initWithStoreBasePath:v7 segmentSize:v6];
  v9 = objc_alloc(MEMORY[0x277CF17E8]);
  v10 = +[PPConfiguration sharedInstance];
  [v10 socialHighlightRankedStorageMaxAge];
  v11 = [v9 initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:5 * v6 maxStreamSize:?];

  [v8 setPruningPolicy:v11];
  v12 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"rankedSocialHighlights" storeConfig:v8];
  v13 = [(PPSocialHighlightStorage *)self _screenTimeConversation];
  v14 = objc_opt_new();
  socialHighlightStorageUtils = self->_socialHighlightStorageUtils;
  self->_socialHighlightStorageUtils = v14;

  v16 = objc_opt_new();
  v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v16];
  lsAppLinkCache = self->_lsAppLinkCache;
  self->_lsAppLinkCache = v17;

  [(PPSocialHighlightStorage *)self resetLSAppLinkCache];
  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v21 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v21 addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0];

  v22 = +[PPSQLDatabase sharedInstance];
  v23 = [(PPSocialHighlightStorage *)self initWithFeedbackStream:v5 rankedStream:v12 database:v22];

  return v23;
}

+ (int)attributionFeedbackTypeForAttributionFeedbackType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a3 == 2)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

+ (int)unifiedFeedbackTypeForHighlightFeedbackType:(unint64_t)a3
{
  if (a3 >= 0xC)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (id)appLinksForResourceURL:(id)a3 resolvedURL:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v7 = [MEMORY[0x277CC1E48] appLinksWithURL:v5 limit:1 includeLinksForCurrentApplication:1 error:&v20];
  v8 = v20;
  v9 = pp_social_highlights_log_handle();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: LSAppLink URL query error: %@", buf, 0xCu);
    }

    v14 = 0;
    v7 = v10;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v7 count];
    *buf = 134217984;
    v22 = v17;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: LSAppLink for URL count: %tu", buf, 0xCu);
  }

  if (v6 && ([v6 isEqual:v5] & 1) == 0)
  {

    v19 = 0;
    v11 = [MEMORY[0x277CC1E48] appLinksWithURL:v6 limit:1 includeLinksForCurrentApplication:1 error:&v19];
    v8 = v19;
    v12 = pp_social_highlights_log_handle();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v11 count];
        *buf = 134217984;
        v22 = v18;
        _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: LSAppLink for resolvedURL count: %tu", buf, 0xCu);
      }

      v14 = [v7 arrayByAddingObjectsFromArray:v11];

      v7 = v11;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: LSAppLink resolvedURL query error: %@", buf, 0xCu);
      }

      v14 = 0;
    }

LABEL_13:

    v7 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (unint64_t)entitlementStatusForClient:(id)a3 applicationIdentifiers:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:a3 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isWebBrowser])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)feedbackPruningPolicy
{
  v2 = objc_alloc(MEMORY[0x277CF17E8]);
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  v4 = [v2 initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:7340032 maxStreamSize:?];

  return v4;
}

@end