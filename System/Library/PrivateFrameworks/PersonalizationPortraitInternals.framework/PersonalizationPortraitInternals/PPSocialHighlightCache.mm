@interface PPSocialHighlightCache
- (PPSocialHighlightCache)init;
- (id)database;
- (id)initWithStream:(void *)stream database:;
- (id)lastCacheInvalidationDateForClient:(void *)client;
- (uint64_t)cachedHighlightsArrayIsValid:(void *)valid queryResults:;
- (void)cachedRankedHighlightsForClient:(uint64_t)client variant:(void *)variant completion:(void *)completion;
- (void)deleteMatchingPredicate:(uint64_t)predicate;
- (void)invalidateCacheForClient:(void *)client;
- (void)saveOrderedBatch:(uint64_t)batch;
@end

@implementation PPSocialHighlightCache

- (id)database
{
  db = self->_db;
  if (db)
  {
    v3 = db;
  }

  else
  {
    v3 = +[PPSQLDatabase sharedInstance];
  }

  return v3;
}

- (PPSocialHighlightCache)init
{
  v3 = NSRoundUpToMultipleOfPageSize(0x30000uLL);
  v4 = [PPPaths subdirectory:@"streams"];
  v5 = [objc_alloc(MEMORY[0x277CF17F8]) initWithStoreBasePath:v4 segmentSize:v3];
  v6 = objc_alloc(MEMORY[0x277CF17E8]);
  v7 = +[PPConfiguration sharedInstance];
  [v7 socialHighlightRankedStorageMaxAge];
  v8 = [v6 initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:25 * v3 maxStreamSize:?];

  [v5 setPruningPolicy:v8];
  v9 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"rankedSocialHighlights" storeConfig:v5];
  v10 = +[PPSQLDatabase sharedInstance];
  v11 = [(PPSocialHighlightCache *)&self->super.isa initWithStream:v9 database:v10];

  return v11;
}

- (id)initWithStream:(void *)stream database:
{
  v5 = a2;
  streamCopy = stream;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PPSocialHighlightCache;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v5];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, stream);
      v9 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SocialHighlightCache"];
      v10 = self[3];
      self[3] = v9;
    }
  }

  return self;
}

- (void)cachedRankedHighlightsForClient:(uint64_t)client variant:(void *)variant completion:(void *)completion
{
  variantCopy = variant;
  completionCopy = completion;
  if (client)
  {
    v7 = *(client + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke;
    block[3] = &unk_278979060;
    block[4] = client;
    v9 = variantCopy;
    v10 = completionCopy;
    dispatch_async(v7, block);
  }
}

void __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [(PPSocialHighlightCache *)*(a1 + 32) lastCacheInvalidationDateForClient:?];
  v4 = objc_opt_new();
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = +[PPConfiguration sharedInstance];
  [v7 socialHighlightCacheTimeoutInterval];
  v9 = v6 - v8;

  [v3 timeIntervalSinceReferenceDate];
  if (v10 >= v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__658;
  v45 = __Block_byref_object_dispose__659;
  v46 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = *(*v2 + 8);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_20;
  v40[3] = &unk_2789718C0;
  v40[4] = &v41;
  *&v40[5] = v11;
  [v13 runWithLockAcquired:v40];
  objc_autoreleasePoolPop(v12);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__658;
  v38[4] = __Block_byref_object_dispose__659;
  v39 = 0;
  v14 = objc_opt_new();
  v15 = objc_autoreleasePoolPush();
  v16 = v42[5];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_2;
  v36[3] = &unk_2789770F8;
  v37 = *(a1 + 40);
  v17 = [v16 filterWithIsIncluded:v36];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_3;
  v32[3] = &unk_2789718E8;
  v33 = v14;
  v34 = *(a1 + 40);
  v35 = v38;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_26;
  v29 = &unk_278971910;
  v31 = v38;
  v18 = v33;
  v30 = v18;
  v19 = [v17 sinkWithCompletion:v32 shouldContinue:&v26];

  objc_autoreleasePoolPop(v15);
  v20 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v18 count];
    v22 = *(a1 + 40);
    *buf = 134218242;
    v48 = v21;
    v49 = 2112;
    v50 = v22;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: found %tu cached items for client '%@'", buf, 0x16u);
  }

  v23 = *(a1 + 48);
  v24 = [v18 copy];
  (*(v23 + 16))(v23, v24);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v41, 8);

  v25 = *MEMORY[0x277D85DE8];
}

- (id)lastCacheInvalidationDateForClient:(void *)client
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (client)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__658;
    v22 = __Block_byref_object_dispose__659;
    v23 = 0;
    database = [client database];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __61__PPSocialHighlightCache_lastCacheInvalidationDateForClient___block_invoke;
    v15 = &unk_278978BB8;
    v17 = &v18;
    v5 = v3;
    v16 = v5;
    [database readTransactionWithClient:0 block:&v12];

    if (v19[5])
    {
      v6 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v19[5];
        *buf = 138412546;
        v25 = v7;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: last cache invalidation of %@ for client %@.", buf, 0x16u);
      }

      v8 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v19[5] doubleValue];
      client = [v8 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v9 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: no last invalidation date of cache", buf, 2u);
      }

      client = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  v10 = *MEMORY[0x277D85DE8];

  return client;
}

void __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v3 numberWithDouble:v4];
  v6 = [v5 publisherWithStartTime:0 endTime:v9 maxEvents:0 lastN:0 reversed:1];

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  objc_autoreleasePoolPop(v4);
  if (v5 && [v5 hasClientIdentifier])
  {
    v6 = [v5 clientIdentifier];
    if ([v6 isEqualToString:*(a1 + 32)])
    {
      v7 = [v5 hasBatchIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = pp_social_highlights_log_handle();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPSocialHighlightCache: unable to read from the cache: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v9 = *(a1 + 40);
      v13 = 134218242;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: found cache of %tu items for client: '%@'", &v13, 0x16u);
    }

    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: batch Identifier is: %@ for client: '%@'", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__PPSocialHighlightCache_cachedRankedHighlightsForClient_variant_completion___block_invoke_26(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  objc_autoreleasePoolPop(v4);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v5 batchIdentifier];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [v5 batchIdentifier];
  v10 = [v9 isEqualToString:*(*(*(a1 + 40) + 8) + 40)];

  if (v10)
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v11 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v5 batchIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPSocialHighlightCache: returning cache as have completed loading of batch %@", &v15, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void __61__PPSocialHighlightCache_lastCacheInvalidationDateForClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v8 = [[v3 alloc] initWithFormat:@"%@_%@", @"socialHighlightCacheInvalidationDate", *(a1 + 32)];
  v5 = [PPSQLKVStore numberForKey:v8 transaction:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (uint64_t)cachedHighlightsArrayIsValid:(void *)valid queryResults:
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2;
  validCopy = valid;
  if (!self)
  {
    v47 = 0;
    goto LABEL_62;
  }

  if (![v5 count])
  {
    v8 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v48 = "PPSocialHighlightCache: no social highlights found in cache, no cache will be persisted.";
LABEL_56:
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, v48, buf, 2u);
    goto LABEL_60;
  }

  v7 = [v5 count];
  if (v7 != [validCopy count])
  {
    v8 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v48 = "PPSocialHighlightCache: cache length did not match query content length. Invalidating cache.";
    goto LABEL_56;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = v5;
  v57 = [v8 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (!v57)
  {
    v47 = 1;
    goto LABEL_61;
  }

  v53 = v5;
  v61 = *v72;
  v58 = v8;
  v59 = validCopy;
LABEL_6:
  v9 = 0;
LABEL_7:
  if (*v72 != v61)
  {
    objc_enumerationMutation(v8);
  }

  v10 = *(*(&v71 + 1) + 8 * v9);
  [v10 contentCreationSecondsSinceReferenceDate];
  v12 = v11;
  v13 = objc_opt_new();
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = +[PPConfiguration sharedInstance];
  [v16 socialHighlightDecayInterval];
  v18 = v15 - v17;

  if (v12 < v18)
  {
    v49 = pp_social_highlights_log_handle();
    v5 = v53;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    highlightIdentifier = [v10 highlightIdentifier];
    *buf = 138739971;
    v81 = highlightIdentifier;
    _os_log_impl(&dword_23224A000, v49, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: highlight %{sensitive}@ found to be expired, invalidating cache.", buf, 0xCu);
    goto LABEL_68;
  }

  v19 = v10;
  v20 = validCopy;
  if (![v19 hasAttributionIdentifier] || !objc_msgSend(v19, "hasHighlightIdentifier"))
  {

    goto LABEL_58;
  }

  v62 = v9;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v75 objects:buf count:16];
  if (!v22)
  {
    goto LABEL_57;
  }

  v23 = v22;
  v24 = *v76;
  while (2)
  {
    v25 = 0;
    do
    {
      if (*v76 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v75 + 1) + 8 * v25);
      if (![v26 hasAttributionIdentifier] || !objc_msgSend(v26, "hasHighlightIdentifier"))
      {
        goto LABEL_29;
      }

      attributionIdentifier = [v26 attributionIdentifier];
      attributionIdentifier2 = [v19 attributionIdentifier];
      if (![attributionIdentifier isEqualToString:attributionIdentifier2] || (v29 = objc_msgSend(v26, "highlightType"), v29 != objc_msgSend(v19, "highlightType")))
      {

        goto LABEL_29;
      }

      highlightIdentifier2 = [v26 highlightIdentifier];
      highlightIdentifier3 = [v19 highlightIdentifier];
      if (![highlightIdentifier2 isEqualToString:highlightIdentifier3] || (objc_msgSend(v26, "syndicationSecondsSinceReferenceDate"), v33 = v32, objc_msgSend(v19, "syndicationSecondsSinceReferenceDate"), v33 != v34))
      {
        v37 = 0;
        goto LABEL_28;
      }

      v70 = highlightIdentifier2;
      isCollaboration = [v26 isCollaboration];
      if (isCollaboration != [v19 isCollaboration] || (v36 = objc_msgSend(v26, "hasCollaborationIdentifier"), v36 != objc_msgSend(v19, "hasCollaborationIdentifier")))
      {
        v37 = 0;
        highlightIdentifier2 = v70;
        goto LABEL_28;
      }

      collaborationIdentifier = [v26 collaborationIdentifier];
      collaborationIdentifier2 = [v19 collaborationIdentifier];
      v69 = collaborationIdentifier;
      if (collaborationIdentifier != collaborationIdentifier2)
      {
        collaborationIdentifier3 = [v26 collaborationIdentifier];
        collaborationIdentifier4 = [v19 collaborationIdentifier];
        v64 = collaborationIdentifier3;
        if (![collaborationIdentifier3 isEqual:?])
        {
          v37 = 0;
          highlightIdentifier2 = v70;
LABEL_45:

          goto LABEL_46;
        }
      }

      contentType = [v26 contentType];
      contentType2 = [v19 contentType];
      v67 = contentType;
      if (contentType != contentType2)
      {
        contentType3 = [v26 contentType];
        [v19 contentType];
        v65 = v60 = contentType3;
        if (![contentType3 isEqual:?])
        {
          v37 = 0;
LABEL_40:
          v45 = v65;
          highlightIdentifier2 = v70;
          goto LABEL_43;
        }
      }

      contentDisplayName = [v26 contentDisplayName];
      contentDisplayName2 = [v19 contentDisplayName];
      if (contentDisplayName != contentDisplayName2)
      {
        v56 = contentDisplayName2;
        contentDisplayName3 = [v26 contentDisplayName];
        [v19 contentDisplayName];
        v44 = v55 = contentDisplayName;
        v37 = [contentDisplayName3 isEqual:v44];

        if (v67 == contentType2)
        {
          highlightIdentifier2 = v70;
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v37 = 1;
      highlightIdentifier2 = v70;
      if (v67 == contentType2)
      {
        goto LABEL_44;
      }

      v45 = v65;
LABEL_43:
      v65 = v45;

LABEL_44:
      if (v69 != collaborationIdentifier2)
      {
        goto LABEL_45;
      }

LABEL_46:

LABEL_28:
      if (v37)
      {

        v9 = v62 + 1;
        v8 = v58;
        validCopy = v59;
        if (v62 + 1 != v57)
        {
          goto LABEL_7;
        }

        v47 = 1;
        v57 = [v58 countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (!v57)
        {
          v5 = v53;
          goto LABEL_61;
        }

        goto LABEL_6;
      }

LABEL_29:
      ++v25;
    }

    while (v23 != v25);
    v46 = [v21 countByEnumeratingWithState:&v75 objects:buf count:16];
    v23 = v46;
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_57:

  v8 = v58;
  validCopy = v59;
LABEL_58:
  v49 = pp_social_highlights_log_handle();
  v5 = v53;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    highlightIdentifier = [v19 highlightIdentifier];
    *buf = 138739971;
    v81 = highlightIdentifier;
    _os_log_debug_impl(&dword_23224A000, v49, OS_LOG_TYPE_DEBUG, "PPSocialHighlightCache: found highlight %{sensitive}@ in the cache that was not in the Spotlight query, invaldating cache.", buf, 0xCu);
LABEL_68:
  }

LABEL_59:

LABEL_60:
  v47 = 0;
LABEL_61:

LABEL_62:
  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)invalidateCacheForClient:(void *)client
{
  v3 = a2;
  if (client)
  {
    database = [client database];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__PPSocialHighlightCache_invalidateCacheForClient___block_invoke;
    v5[3] = &unk_278978B68;
    v6 = v3;
    [database writeTransactionWithClient:0 block:v5];
  }
}

void __51__PPSocialHighlightCache_invalidateCacheForClient___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCABB0];
  [v4 timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", @"socialHighlightCacheInvalidationDate", *(a1 + 32)];
  [PPSQLKVStore setNumber:v7 forKey:v8 transaction:v3];

  objc_autoreleasePoolPop(v5);
  v9 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: invalidated the cache as of %@ for client %@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteMatchingPredicate:(uint64_t)predicate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (predicate)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = *(predicate + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PPSocialHighlightCache_deleteMatchingPredicate___block_invoke;
    v9[3] = &unk_2789770D0;
    v10 = v3;
    v11 = &v12;
    [v5 runWithLockAcquired:v9];
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v13[3];
      *buf = 134217984;
      v17 = v7;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPSocialHighlightCache: deleted %tu items in the vended stream.", buf, 0xCu);
    }

    _Block_object_dispose(&v12, 8);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __50__PPSocialHighlightCache_deleteMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PPSocialHighlightCache_deleteMatchingPredicate___block_invoke_2;
  v6[3] = &unk_278971938;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 pruneWithPredicateBlock:v6];
}

uint64_t __50__PPSocialHighlightCache_deleteMatchingPredicate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) evaluateWithObject:v3];
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v5;
}

- (void)saveOrderedBatch:(uint64_t)batch
{
  v3 = a2;
  v4 = v3;
  if (batch)
  {
    v5 = *(batch + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__PPSocialHighlightCache_saveOrderedBatch___block_invoke;
    v6[3] = &unk_278976F28;
    v7 = v3;
    [v5 runWithLockAcquired:v6];
  }
}

void __43__PPSocialHighlightCache_saveOrderedBatch___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 source];
  v5 = [*(a1 + 32) count] - 1;
  if (v5 >= 0)
  {
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      [v4 sendEvent:v7];

      objc_autoreleasePoolPop(v6);
      --v5;
    }

    while (v5 != -1);
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "PPSocialHighlightCache: saved %tu events to the stream.", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 publisherWithStartTime:0 endTime:0 maxEvents:0 lastN:0 reversed:1];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

uint64_t __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 batchIdentifier];
  if (v5)
  {
    v7 = [v5 clientIdentifier];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      v8 = (*(*(a1 + 48) + 16))();

      if (v8)
      {
        v9 = *(*(a1 + 56) + 8);
        if (*(v9 + 40))
        {
          v10 = v6 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          if (![v6 isEqual:?])
          {
            v11 = 0;
            goto LABEL_13;
          }

          v9 = *(*(a1 + 56) + 8);
        }

        objc_storeStrong((v9 + 40), v6);
        [*(a1 + 40) addObject:v5];
      }
    }

    else
    {
    }
  }

  v11 = 1;
LABEL_13:

  objc_autoreleasePoolPop(v4);
  return v11;
}

void __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  v4 = pp_social_highlights_log_handle();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 error];
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSocialHighlightCache: unable to read items from Biome %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: successfully completed reading of the ranked stream from Biome.", &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __34__PPSocialHighlightCache_allItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 publisherFromStartTime:0.0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__PPSocialHighlightCache_allItems__block_invoke_2;
  v7[3] = &unk_278971988;
  v8 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PPSocialHighlightCache_allItems__block_invoke_41;
  v5[3] = &unk_2789719B0;
  v6 = *(a1 + 32);
  v4 = [v3 sinkWithCompletion:v7 receiveInput:v5];
}

void __34__PPSocialHighlightCache_allItems__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: retrieved %tu events from the stream.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __34__PPSocialHighlightCache_allItems__block_invoke_41(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = [v7 eventBody];
    [v5 addObject:v6];

    objc_autoreleasePoolPop(v4);
  }
}

void __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 publisherFromStartTime:0.0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke_2;
  v9[3] = &unk_2789770F8;
  v10 = *(a1 + 32);
  v4 = [v3 filterWithIsIncluded:v9];
  v5 = [MEMORY[0x277CF17A8] count];
  v6 = [v4 reduce:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke_46;
  v8[3] = &unk_2789719D8;
  v8[4] = *(a1 + 40);
  v7 = [v6 sinkWithCompletion:&__block_literal_global_45 receiveInput:v8];
}

uint64_t __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  if ([v5 isPrimary])
  {
    v6 = [v3 eventBody];
    v7 = [v6 batchIdentifier];
    if (v7)
    {
      v8 = [v3 eventBody];
      v9 = [v8 batchIdentifier];
      v10 = [v9 isEqual:*(a1 + 32)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

uint64_t __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke_46(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 error];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPSocialHighlightCache: unable to count items matching batch identifier: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke_2;
  block[3] = &unk_278975A60;
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = [v4 UUIDString];

  objc_autoreleasePoolPop(v3);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v6 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke_3;
  v13[3] = &unk_278971A00;
  v7 = v2;
  v14 = v7;
  v17 = v18;
  v8 = v5;
  v15 = v8;
  v16 = *(a1 + 40);
  v9 = [v6 _pas_mappedArrayWithTransform:v13];
  v10 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: Saving to cache for client '%@' with batch identifier of: '%@'", buf, 0x16u);
  }

  [(PPSocialHighlightCache *)*(a1 + 48) saveOrderedBatch:v9];
  _Block_object_dispose(v18, 8);

  v12 = *MEMORY[0x277D85DE8];
}

id __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 highlightIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [v3 setIsPrimary:0];
    [v3 setRank:*(*(a1[7] + 8) + 24)];
  }

  else
  {
    [v3 setIsPrimary:1];
    [v3 setRank:*(*(a1[7] + 8) + 24)];
    v6 = a1[4];
    v7 = [v3 highlightIdentifier];
    [v6 addObject:v7];

    ++*(*(a1[7] + 8) + 24);
  }

  [v3 setBatchIdentifier:a1[5]];
  [v3 setClientIdentifier:a1[6]];

  return v3;
}

@end