@interface PPLocalTopicStore
+ (id)calibrateScoredTopic:(id)topic calibrationTrie:(id)trie;
+ (id)defaultStore;
+ (id)recordsForTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm;
+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit;
- (BOOL)clearTopicScoresCache:(id *)cache;
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)computeAndCacheTopicScoresWithShouldContinueBlock:(id)block error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId algorithm:(unint64_t)algorithm olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error;
- (BOOL)flushDonationsWithError:(id *)error;
- (BOOL)iterScoredTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name block:(id)block;
- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block;
- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (PPLocalTopicStore)init;
- (PPLocalTopicStore)initWithStorage:(id)storage trialWrapper:(id)wrapper;
- (PPTopicTransform)_topicTransformForId:(uint64_t)id;
- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model;
- (id)_coalesceScoredTopics:(void *)topics exactMatchesInSourceText:;
- (id)_feedbackItemsByItemString:(void *)string;
- (id)rankedTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name;
- (id)scoreTopics:(id)topics scoringDate:(id)date decayRate:(double)rate strictFiltering:(BOOL)filtering sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0;
- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error clientProcessName:(id)name;
- (id)topicCacheSandboxExtensionToken:(id *)token;
- (id)topicExtractionsFromText:(id)text clientProcessName:(id)name error:(id *)error;
- (id)topicRecordsWithQuery:(id)query error:(id *)error;
- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error;
- (uint64_t)_defaultIterScoresForTopicMapping:(void *)mapping query:(void *)query error:(void *)error clientProcessName:(void *)name block:;
- (uint64_t)_logFeedbackSessionsWithFeedback:(void *)feedback error:;
- (void)_dpLoggingForMappingId:(void *)id mappedTopics:;
- (void)_logParametersForQuery:(void *)query client:(void *)client method:;
- (void)_petLoggingForMappedTopicQuery:(void *)query mappingId:(uint64_t)id count:(void *)count clientProcessName:(char)name hasError:;
- (void)logDonationErrorForReason:(int64_t)reason errorCode:(unint64_t)code source:(id)source;
- (void)processFeedback:(id)feedback;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
- (void)topicInvalidationCallback;
@end

@implementation PPLocalTopicStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_20685);
  if (!defaultStore_instance_20686)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_20686;
    defaultStore_instance_20686 = v2;

    if (!defaultStore_instance_20686)
    {
      v4 = pp_topics_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalTopicStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance_20686;
  pthread_mutex_unlock(&defaultStore_lock_20685);

  return v5;
}

- (id)topicCacheSandboxExtensionToken:(id *)token
{
  v11 = 0u;
  v12 = 0u;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v5 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v6 = *MEMORY[0x277D861B8];
  [(NSString *)self->_cachePath cStringUsingEncoding:4];
  v7 = sandbox_extension_issue_file_to_process();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{v7, v11, v12}];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)clearTopicScoresCache:(id *)cache
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(cache) = [defaultManager removeItemAtPath:self->_cachePath error:cache];

  return cache;
}

- (BOOL)computeAndCacheTopicScoresWithShouldContinueBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if ((atomic_exchange(&self->_cacheUpdateEnqueued._Value, 1u) & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    cacheUpdateQueue = self->_cacheUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke;
    block[3] = &unk_278977560;
    block[4] = self;
    v20 = blockCopy;
    dispatch_sync(cacheUpdateQueue, block);

    objc_autoreleasePoolPop(v7);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20434;
  v17 = __Block_byref_object_dispose__20435;
  v18 = 0;
  v9 = self->_cacheUpdateQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke_414;
  v12[3] = &unk_278977588;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(v9, v12);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  atomic_store(0, (*(a1 + 32) + 64));
  if ((*(*(a1 + 40) + 16))())
  {
    v2 = objc_opt_new();
    [v2 setRemoveNearDuplicates:1];
    v3 = *(a1 + 32);
    v37 = 0;
    v4 = [v3 rankedTopicsWithQuery:v2 error:&v37];
    v5 = v37;
    v6 = v37;
    if (!(*(*(a1 + 40) + 16))())
    {
LABEL_26:

      goto LABEL_27;
    }

    if (v4)
    {
      obj = v5;
      v30 = v6;
      v31 = v2;
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            v14 = [v13 item];
            v15 = [v14 topicIdentifier];

            v16 = MEMORY[0x277CCABB0];
            [v13 score];
            v17 = [v16 numberWithDouble:?];
            [v7 setObject:v17 forKeyedSubscript:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v10);
      }

      v6 = v30;
      v2 = v31;
      v5 = obj;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 72), v5);
    if (v6)
    {
      v18 = pp_topics_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v6;
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "Iterating over PPTopicStore failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (!(*(*(a1 + 40) + 16))())
      {
        v6 = 0;
LABEL_25:

        v4 = 0;
        goto LABEL_26;
      }

      v19 = *(*(a1 + 32) + 40);
      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 UUIDString];
      v18 = [v19 stringByAppendingFormat:@".new-%@", v21];

      v32 = 0;
      v22 = [MEMORY[0x277D425D8] fileBackedDataWithPropertyList:v7 writtenToPath:v18 format:1 error:&v32];
      v23 = v32;
      v6 = v32;
      objc_storeStrong((*(a1 + 32) + 72), v23);
      if (v22)
      {
        v24 = [v18 fileSystemRepresentation];
        v25 = [*(*(a1 + 32) + 40) fileSystemRepresentation];
        rename(v24, v25, v26);
      }

      else
      {
        v27 = pp_topics_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v6;
          _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "Could not serialize and write plist: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_25;
  }

LABEL_27:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)processFeedback:(id)feedback
{
  v219 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  mappingId = [feedbackCopy mappingId];

  if (mappingId)
  {
    v4 = feedbackCopy;
    if (!self)
    {
      goto LABEL_99;
    }

    v144 = v4;
    feedbackItems = [v4 feedbackItems];
    v6 = [PPLocalTopicStore _feedbackItemsByItemString:feedbackItems];

    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys = [v6 allKeys];
    v9 = [v7 initWithArray:allKeys];

    v10 = objc_opt_new();
    mappingId2 = [v144 mappingId];
    if (!mappingId2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__processMappedTopicPendingFeedback_ object:self file:@"PPLocalTopicStore.m" lineNumber:1790 description:@"Mapping ID was previously checked to be nonnull. Check for memory corruption"];
    }

    v142 = objc_opt_new();
    timestamp = [v144 timestamp];
    [v142 setScoringDate:timestamp];

    timestamp2 = [v144 timestamp];
    [v142 setToDate:timestamp2];

    [v142 setMinimumComponentCount:1];
    clientBundleId = [v144 clientBundleId];
    v14 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId domain:0];
    [v142 setExcludingSourceBundleIds:v14];

    v186 = 0;
    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = __56__PPLocalTopicStore__processMappedTopicPendingFeedback___block_invoke;
    v182[3] = &unk_278977510;
    v139 = v9;
    v183 = v139;
    v140 = v10;
    v184 = v140;
    v166 = v6;
    v185 = v166;
    v15 = [(PPLocalTopicStore *)self iterScoresForTopicMapping:mappingId2 query:v142 error:&v186 block:v182];
    v138 = v186;
    if (!v15)
    {
      oslog = pp_default_log_handle();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v213) = 138412290;
        *(&v213 + 4) = v138;
        _os_log_error_impl(&dword_23224A000, oslog, OS_LOG_TYPE_ERROR, "_processMappedTopicPendingFeedback: error from iterScoresForTopicMapping: %@", &v213, 0xCu);
      }

      goto LABEL_98;
    }

    oslog = objc_opt_new();
    v16 = objc_opt_new();
    v161 = [(PPLocalTopicStore *)self _topicTransformForId:mappingId2];
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    obj = v139;
    v168 = [obj countByEnumeratingWithState:&v178 objects:v196 count:16];
    if (v168)
    {
      v163 = *v179;
      do
      {
        for (i = 0; i != v168; ++i)
        {
          if (*v179 != v163)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v178 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          if ([v18 length] && (objc_msgSend(v161, "containsMappedTopic:", v18) & 1) != 0)
          {
            v19 = [v166 objectForKeyedSubscript:v18];
            [oslog addObjectsFromArray:v19];
          }

          else
          {
            v176 = 0u;
            v177 = 0u;
            v174 = 0u;
            v175 = 0u;
            v19 = [v166 objectForKeyedSubscript:v18];
            v20 = [v19 countByEnumeratingWithState:&v174 objects:&v192 count:16];
            if (v20)
            {
              v21 = *v175;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v175 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:&stru_284759D38 itemFeedbackType:{objc_msgSend(*(*(&v174 + 1) + 8 * j), "itemFeedbackType")}];
                  [v16 addObject:v23];
                }

                v20 = [v19 countByEnumeratingWithState:&v174 objects:&v192 count:16];
              }

              while (v20);
            }
          }

          objc_autoreleasePoolPop(context);
        }

        v168 = [obj countByEnumeratingWithState:&v178 objects:v196 count:16];
      }

      while (v168);
    }

    if ([oslog count])
    {
      v24 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp3 = [v144 timestamp];
      clientIdentifier = [v144 clientIdentifier];
      clientBundleId2 = [v144 clientBundleId];
      v28 = [v24 initWithFeedbackItems:oslog timestamp:timestamp3 clientIdentifier:clientIdentifier clientBundleId:clientBundleId2 mappingId:mappingId2];

      [PPFeedbackStorage logFeedback:v28 domain:0 domainStatus:4 inBackground:1];
    }

    if ([v16 count])
    {
      v29 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp4 = [v144 timestamp];
      clientIdentifier2 = [v144 clientIdentifier];
      clientBundleId3 = [v144 clientBundleId];
      v33 = [v29 initWithFeedbackItems:v16 timestamp:timestamp4 clientIdentifier:clientIdentifier2 clientBundleId:clientBundleId3 mappingId:mappingId2];

      [PPFeedbackStorage logFeedback:v33 domain:0 domainStatus:3 inBackground:1];
    }

    if (![v140 count])
    {
LABEL_97:

LABEL_98:
      v4 = v144;
      goto LABEL_99;
    }

    v34 = objc_alloc(MEMORY[0x277D3A328]);
    timestamp5 = [v144 timestamp];
    clientIdentifier3 = [v144 clientIdentifier];
    clientBundleId4 = [v144 clientBundleId];
    v137 = [v34 initWithFeedbackItems:v140 timestamp:timestamp5 clientIdentifier:clientIdentifier3 clientBundleId:clientBundleId4 mappingId:mappingId2];

    [PPFeedbackStorage logFeedback:v137 domain:0 domainStatus:5 inBackground:1];
    feedbackItems2 = [v137 feedbackItems];
    clientBundleId5 = [v144 clientBundleId];
    clientIdentifier4 = [v144 clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:v144 matchingFeedbackItems:feedbackItems2 clientBundleId:clientBundleId5 clientIdentifier:clientIdentifier4 domain:0];

    timestamp6 = [v144 timestamp];
    clientIdentifier5 = [v144 clientIdentifier];
    clientBundleId6 = [v144 clientBundleId];
    v44 = v140;
    v136 = timestamp6;
    v135 = clientIdentifier5;
    v134 = clientBundleId6;
    v45 = mappingId2;
    v46 = v44;
    v147 = v45;
    v47 = objc_opt_new();
    v211 = 0u;
    v212 = 0u;
    *v209 = 0u;
    v210 = 0u;
    v145 = v46;
    v149 = [v145 countByEnumeratingWithState:v209 objects:&v213 count:16];
    if (v149)
    {
      v146 = *v210;
      do
      {
        v48 = 0;
        do
        {
          if (*v210 != v146)
          {
            v49 = v48;
            objc_enumerationMutation(v145);
            v48 = v49;
          }

          v154 = v48;
          v50 = *(*&v209[8] + 8 * v48);
          v156 = objc_autoreleasePoolPush();
          itemString = [v50 itemString];
          v191 = 0;
          v164 = [(PPLocalTopicStore *)self unmapMappedTopicIdentifier:itemString mappingIdentifier:v147 error:&v191];
          obja = v191;
          if (v164)
          {
            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            contexta = v164;
            v51 = [contexta countByEnumeratingWithState:&v187 objects:v207 count:16];
            if (v51)
            {
              v52 = *v188;
              do
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v188 != v52)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v54 = *(*(&v187 + 1) + 8 * k);
                  v55 = objc_autoreleasePoolPush();
                  v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Q%@", v54];
                  v57 = [v47 objectForKeyedSubscript:v56];
                  v58 = v57 == 0;

                  if (v58)
                  {
                    v59 = objc_opt_new();
                    [v47 setObject:v59 forKeyedSubscript:v56];
                  }

                  v60 = [v47 objectForKeyedSubscript:v56];
                  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v50, "itemFeedbackType")}];
                  [v60 addObject:v61];

                  objc_autoreleasePoolPop(v55);
                }

                v51 = [contexta countByEnumeratingWithState:&v187 objects:v207 count:16];
              }

              while (v51);
            }
          }

          else
          {
            contexta = pp_default_log_handle();
            if (os_log_type_enabled(contexta, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v202 = itemString;
              v203 = 2112;
              v204 = v147;
              v205 = 2112;
              v206 = obja;
              _os_log_error_impl(&dword_23224A000, contexta, OS_LOG_TYPE_ERROR, "Error while getting unmapped topics for mapped topic %@ under mapping %@: %@", buf, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v156);
          v48 = v154 + 1;
        }

        while (v154 + 1 != v149);
        v149 = [v145 countByEnumeratingWithState:v209 objects:&v213 count:16];
      }

      while (v149);
    }

    v62 = objc_opt_new();
    [v62 setScoringDate:v136];
    [v62 setToDate:v136];
    [v62 setOrderByIdentifier:1];
    v63 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys2 = [v47 allKeys];
    v65 = [v63 initWithArray:allKeys2];
    [v62 setMatchingTopicIds:v65];

    v66 = objc_opt_new();
    v207[0] = 0;
    v207[1] = v207;
    v207[2] = 0x3032000000;
    v207[3] = __Block_byref_object_copy__20434;
    v207[4] = __Block_byref_object_dispose__20435;
    v208 = &stru_284759D38;
    *&v187 = 0;
    *&v213 = MEMORY[0x277D85DD0];
    *(&v213 + 1) = 3221225472;
    v214 = __115__PPLocalTopicStore__mappedTopicsFilterPendingFeedbackItems_scoringDate_clientIdentifier_clientBundleId_mappingId___block_invoke;
    v215 = &unk_278977538;
    v218 = v207;
    v67 = v47;
    v216 = v67;
    v68 = v66;
    v217 = v68;
    v69 = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v62 error:&v187 block:&v213];
    v70 = v187;
    if (v69)
    {
      if (![v68 count])
      {
LABEL_92:

        _Block_object_dispose(v207, 8);
        v207[0] = 0;
        v129 = [(PPLocalTopicStore *)self _logFeedbackSessionsWithFeedback:v137 error:v207];
        v130 = v207[0];
        if ((v129 & 1) == 0)
        {
          v131 = pp_topics_log_handle();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v213) = 138412290;
            *(&v213 + 4) = v130;
            _os_log_error_impl(&dword_23224A000, v131, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: error generating sessions %@", &v213, 0xCu);
          }
        }

        goto LABEL_97;
      }

      v71 = [objc_alloc(MEMORY[0x277D3A328]) initWithFeedbackItems:v68 timestamp:v136 clientIdentifier:v135 clientBundleId:v134 mappingId:v147];
      [(PPTopicStorage *)self->_storage donateTopicFeedback:v71];
      v72 = objc_opt_new();
      [v72 setClientId:v135];
      [v72 setMappingId:v147];
      concatenatedTreatmentNames = [(PPTrialWrapper *)self->_trialWrapper concatenatedTreatmentNames];
      [v72 setActiveTreatments:concatenatedTreatmentNames];

      mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
      [mEMORY[0x277D41DA8] trackScalarForMessage:v72 count:{objc_msgSend(v68, "count")}];
    }

    else
    {
      v71 = pp_default_log_handle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v209 = 138412290;
        *&v209[4] = v70;
        _os_log_error_impl(&dword_23224A000, v71, OS_LOG_TYPE_ERROR, "_processTopicPendingFeedback: error from iterTopicRecordsWithQuery: %@", v209, 0xCu);
      }
    }

    goto LABEL_92;
  }

  v4 = feedbackCopy;
  if (self)
  {
    v157 = v4;
    feedbackItems3 = [v4 feedbackItems];
    v76 = [PPLocalTopicStore _feedbackItemsByItemString:feedbackItems3];

    v77 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys3 = [v76 allKeys];
    v79 = [v77 initWithArray:allKeys3];

    v80 = objc_opt_new();
    v155 = objc_opt_new();
    timestamp7 = [v157 timestamp];
    [v155 setScoringDate:timestamp7];

    timestamp8 = [v157 timestamp];
    [v155 setToDate:timestamp8];

    [v155 setOrderByIdentifier:1];
    clientBundleId7 = [v157 clientBundleId];
    v84 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId7 domain:0];
    [v155 setExcludingSourceBundleIds:v84];

    v85 = objc_alloc(MEMORY[0x277CBEB98]);
    feedbackItems4 = [v157 feedbackItems];
    v87 = [feedbackItems4 _pas_proxyArrayWithMapping:&__block_literal_global_390_20443];
    v88 = [v85 initWithArray:v87];
    [v155 setMatchingTopicIds:v88];

    *&v187 = 0;
    *(&v187 + 1) = &v187;
    *&v188 = 0x3032000000;
    *(&v188 + 1) = __Block_byref_object_copy__20434;
    *&v189 = __Block_byref_object_dispose__20435;
    *(&v189 + 1) = &stru_284759D38;
    *&v178 = 0;
    v196[0] = MEMORY[0x277D85DD0];
    v196[1] = 3221225472;
    v196[2] = __58__PPLocalTopicStore__processPortraitTopicPendingFeedback___block_invoke_2;
    v196[3] = &unk_2789774E8;
    v200 = &v187;
    osloga = v80;
    v197 = osloga;
    v167 = v76;
    v198 = v167;
    v150 = v79;
    v199 = v150;
    LOBYTE(v76) = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v155 error:&v178 block:v196];
    v148 = v178;
    if (v76)
    {
      if ([osloga count])
      {
        v89 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp9 = [v157 timestamp];
        clientIdentifier6 = [v157 clientIdentifier];
        clientBundleId8 = [v157 clientBundleId];
        mappingId3 = [v157 mappingId];
        v94 = [v89 initWithFeedbackItems:osloga timestamp:timestamp9 clientIdentifier:clientIdentifier6 clientBundleId:clientBundleId8 mappingId:mappingId3];

        [PPFeedbackStorage logFeedback:v94 domain:0 domainStatus:2 inBackground:1];
        feedbackItems5 = [v94 feedbackItems];
        clientBundleId9 = [v157 clientBundleId];
        clientIdentifier7 = [v157 clientIdentifier];
        [PPFeedbackUtils recordUserEventsFromFeedback:v157 matchingFeedbackItems:feedbackItems5 clientBundleId:clientBundleId9 clientIdentifier:clientIdentifier7 domain:0];

        *&v174 = 0;
        LOBYTE(clientBundleId9) = [(PPLocalTopicStore *)self _logFeedbackSessionsWithFeedback:v94 error:&v174];
        v98 = v174;
        if ((clientBundleId9 & 1) == 0)
        {
          v99 = pp_topics_log_handle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v213) = 138412290;
            *(&v213 + 4) = v98;
            _os_log_error_impl(&dword_23224A000, v99, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: failed in session logging: %@", &v213, 0xCu);
          }
        }

        [(PPTopicStorage *)self->_storage donateTopicFeedback:v94];
      }

      objb = objc_opt_new();
      v100 = objc_opt_new();
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v162 = v150;
      v101 = [v162 countByEnumeratingWithState:&v192 objects:&v213 count:16];
      if (v101)
      {
        v165 = *v193;
        do
        {
          v170 = v101;
          for (m = 0; m != v170; ++m)
          {
            if (*v193 != v165)
            {
              objc_enumerationMutation(v162);
            }

            v103 = *(*(&v192 + 1) + 8 * m);
            contextb = objc_autoreleasePoolPush();
            v104 = MEMORY[0x277CCAC68];
            v105 = v103;
            v106 = [[v104 alloc] initWithPattern:@"Q[0-9]{1 options:10}" error:{0, 0}];
            v107 = [v106 rangeOfFirstMatchInString:v105 options:0 range:{0, objc_msgSend(v105, "length")}];
            v109 = v108;

            if (v107 == 0x7FFFFFFFFFFFFFFFLL && v109 == 0)
            {
              v211 = 0u;
              v212 = 0u;
              *v209 = 0u;
              v210 = 0u;
              v111 = [v167 objectForKeyedSubscript:v105];
              v112 = [v111 countByEnumeratingWithState:v209 objects:v207 count:16];
              if (v112)
              {
                v113 = *v210;
                do
                {
                  for (n = 0; n != v112; ++n)
                  {
                    if (*v210 != v113)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v115 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:&stru_284759D38 itemFeedbackType:{objc_msgSend(*(*&v209[8] + 8 * n), "itemFeedbackType")}];
                    [v100 addObject:v115];
                  }

                  v112 = [v111 countByEnumeratingWithState:v209 objects:v207 count:16];
                }

                while (v112);
              }
            }

            else
            {
              v111 = [v167 objectForKeyedSubscript:v105];
              [objb addObjectsFromArray:v111];
            }

            objc_autoreleasePoolPop(contextb);
          }

          v101 = [v162 countByEnumeratingWithState:&v192 objects:&v213 count:16];
        }

        while (v101);
      }

      if ([objb count])
      {
        v116 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp10 = [v157 timestamp];
        clientIdentifier8 = [v157 clientIdentifier];
        clientBundleId10 = [v157 clientBundleId];
        mappingId4 = [v157 mappingId];
        v121 = [v116 initWithFeedbackItems:objb timestamp:timestamp10 clientIdentifier:clientIdentifier8 clientBundleId:clientBundleId10 mappingId:mappingId4];

        [PPFeedbackStorage logFeedback:v121 domain:0 domainStatus:2 inBackground:1];
      }

      if ([v100 count])
      {
        v122 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp11 = [v157 timestamp];
        clientIdentifier9 = [v157 clientIdentifier];
        clientBundleId11 = [v157 clientBundleId];
        mappingId5 = [v157 mappingId];
        v127 = [v122 initWithFeedbackItems:v100 timestamp:timestamp11 clientIdentifier:clientIdentifier9 clientBundleId:clientBundleId11 mappingId:mappingId5];

        [PPFeedbackStorage logFeedback:v127 domain:0 domainStatus:0 inBackground:1];
      }

      v128 = objb;
    }

    else
    {
      v128 = pp_default_log_handle();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v213) = 138412290;
        *(&v213 + 4) = v148;
        _os_log_error_impl(&dword_23224A000, v128, OS_LOG_TYPE_ERROR, "_processTopicPendingFeedback: error from iterTopicRecordsWithQuery: %@", &v213, 0xCu);
      }
    }

    _Block_object_dispose(&v187, 8);
    v4 = v157;
  }

LABEL_99:

  v132 = *MEMORY[0x277D85DE8];
}

- (id)_feedbackItemsByItemString:(void *)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = stringCopy;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        itemString = [v8 itemString];
        v11 = [v2 objectForKeyedSubscript:itemString];

        if (!v11)
        {
          v12 = objc_opt_new();
          [v2 setObject:v12 forKeyedSubscript:itemString];
        }

        v13 = [v2 objectForKeyedSubscript:itemString];
        [v13 addObject:v8];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

void __58__PPLocalTopicStore__processPortraitTopicPendingFeedback___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v5 = [v17 topic];
  v6 = [v5 clusterIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v17 topic];
    v9 = [v8 clusterIdentifier];
    v10 = [v9 isEqualToString:*(*(*(a1 + 56) + 8) + 40)];

    if ((v10 & 1) == 0)
    {
      v11 = [v17 topic];
      v12 = [v11 topicIdentifier];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
      [v15 addObjectsFromArray:v16];

      [*(a1 + 48) removeObject:*(*(*(a1 + 56) + 8) + 40)];
      if (![*(a1 + 48) count])
      {
        *a3 = 1;
      }
    }
  }

  else
  {
  }
}

- (uint64_t)_logFeedbackSessionsWithFeedback:(void *)feedback error:
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = a2;
  clientBundleId = [v4 clientBundleId];
  v6 = [PPFeedbackUtils shouldSample:clientBundleId];

  if (!v6)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPLocalTopicStore: No feedback session logs collection performed due to sampling.", buf, 2u);
    }

    v16 = 1;
    goto LABEL_91;
  }

  v7 = objc_opt_new();
  [v7 setPredictionType:1];
  v8 = [PPFeedbackUtils feedbackMetadataForBaseFeedback:v4];
  [v7 setFeedbackMetadata:v8];

  feedbackItems = [v4 feedbackItems];
  v125 = objc_opt_new();
  v121 = objc_opt_new();
  v9 = objc_opt_new();
  [v9 setLimit:1000];
  clientBundleId2 = [v4 clientBundleId];
  if (clientBundleId2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    clientBundleId3 = [v4 clientBundleId];
    v14 = [v12 initWithObjects:{clientBundleId3, 0}];

    objc_autoreleasePoolPop(v11);
    [v9 setExcludingSourceBundleIds:v14];
  }

  else
  {
    [v9 setExcludingSourceBundleIds:0];
  }

  v147 = 0;
  v17 = [self rankedTopicsWithQuery:v9 error:&v147];
  v18 = v147;
  v19 = v18;
  if (!v17)
  {
    if (feedback)
    {
      v64 = v18;
      *feedback = v19;
    }

    v65 = pp_topics_log_handle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v157 = v19;
      _os_log_error_impl(&dword_23224A000, v65, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from rankedTopicsWithQuery: %@", buf, 0xCu);
    }

    v148 = 0;
    goto LABEL_90;
  }

  feedbackCopy = feedback;
  v116 = v18;
  v109 = v9;
  v119 = v7;
  v114 = v4;
  v120 = objc_opt_new();
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v108 = v17;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = *v144;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v144 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v143 + 1) + 8 * i);
      v25 = objc_autoreleasePoolPush();
      item = [v24 item];
      topicIdentifier = [item topicIdentifier];
      if ([topicIdentifier length])
      {
        item2 = [v24 item];
        topicIdentifier2 = [item2 topicIdentifier];
        v30 = [topicIdentifier2 characterAtIndex:0];

        if (v30 != 81)
        {
          goto LABEL_19;
        }

        item3 = [v24 item];
        topicIdentifier3 = [item3 topicIdentifier];
        item = [topicIdentifier3 substringFromIndex:1];

        topicIdentifier = [v121 numberFromString:item];
        if (topicIdentifier)
        {
          [v120 addObject:topicIdentifier];
        }
      }

LABEL_19:
      objc_autoreleasePoolPop(v25);
    }

    v21 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
  }

  while (v21);
LABEL_21:

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v33 = feedbackItems;
  v117 = [v33 countByEnumeratingWithState:&v139 objects:v154 count:16];
  if (v117)
  {
    v115 = *v140;
    v4 = v114;
    v7 = v119;
    v34 = 0x27896F000;
    v112 = v33;
LABEL_23:
    v35 = 0;
    while (1)
    {
      if (*v140 != v115)
      {
        objc_enumerationMutation(v33);
      }

      v36 = *(*(&v139 + 1) + 8 * v35);
      v37 = objc_autoreleasePoolPush();
      isMapped = [v4 isMapped];
      itemString = [v36 itemString];
      v40 = itemString;
      if (isMapped)
      {
        break;
      }

      v43 = [itemString length];

      if (v43 >= 2)
      {
        itemString2 = [v36 itemString];
        v45 = [itemString2 characterAtIndex:0];
        itemString3 = [v36 itemString];
        v42 = itemString3;
        if (v45 == 81)
        {
          v47 = [itemString3 substringFromIndex:1];

          v42 = v47;
        }

        v48 = [v121 numberFromString:v42];
        if (v48)
        {
          v49 = v48;
          obja = v35;
          v118 = v37;
          v152 = v48;
          v153 = &unk_284786120;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v153 forKeys:&v152 count:1];

          v42 = v50;
          goto LABEL_34;
        }

LABEL_46:

        v7 = v119;
      }

      objc_autoreleasePoolPop(v37);
      v35 = v35 + 1;
      if (v35 == v117)
      {
        v117 = [v33 countByEnumeratingWithState:&v139 objects:v154 count:16];
        if (v117)
        {
          goto LABEL_23;
        }

        goto LABEL_59;
      }
    }

    obja = v35;
    mappingId = [v4 mappingId];
    v138 = v116;
    v42 = [self unmapMappedTopicIdentifier:v40 mappingIdentifier:mappingId error:&v138];
    v19 = v138;

    if (!v42)
    {
      v66 = pp_topics_log_handle();
      v17 = v108;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v157 = v19;
        _os_log_error_impl(&dword_23224A000, v66, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from unmapMappedTopicIdentifier: %@", buf, 0xCu);
      }

      v148 = 0;
      objc_autoreleasePoolPop(v37);
      v7 = v119;
      goto LABEL_89;
    }

    v118 = v37;
    v116 = v19;
LABEL_34:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v51 = v120;
    v52 = [v51 countByEnumeratingWithState:&v134 objects:v151 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v135;
LABEL_36:
      v56 = 0;
      while (1)
      {
        if (*v135 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v134 + 1) + 8 * v56);
        v58 = [v42 objectForKeyedSubscript:v57];

        if (v58)
        {
          v59 = objc_alloc(MEMORY[0x277CCACA8]);
          stringValue = [v57 stringValue];
          v61 = [v59 initWithFormat:@"Q%@", stringValue];

          v62 = [PPFeedbackUtils feedbackItemForPPFeedbackItem:v36];
          v63 = [v125 objectForKeyedSubscript:v61];
          if (!v63)
          {
            v63 = objc_opt_new();
            [v125 setObject:v63 forKeyedSubscript:v61];
          }

          [v63 addObject:v62];
          ++v54;

          if (v54 > 4)
          {
            break;
          }
        }

        if (v53 == ++v56)
        {
          v53 = [v51 countByEnumeratingWithState:&v134 objects:v151 count:16];
          if (v53)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    v33 = v112;
    v4 = v114;
    v34 = 0x27896F000;
    v37 = v118;
    v35 = obja;
    goto LABEL_46;
  }

  v7 = v119;
  v34 = 0x27896F000uLL;
LABEL_59:

  v67 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v68 = v125;
  v69 = [v68 countByEnumeratingWithState:&v130 objects:v150 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v131;
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v131 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v130 + 1) + 8 * j);
        [v67 addObject:v73];
        v74 = objc_opt_new();
        LODWORD(v75) = -1.0;
        v76 = [*(v34 + 2296) scoredItemWithFeaturesForFeatureDictionary:v74 score:v75];
        v77 = [v68 objectForKeyedSubscript:v73];
        [v76 setFeedbackItems:v77];

        [v7 addScoredItems:v76];
      }

      v70 = [v68 countByEnumeratingWithState:&v130 objects:v150 count:16];
    }

    while (v70);
  }

  v78 = pp_topics_log_handle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    v79 = [v68 count];
    *buf = 134283521;
    v157 = v79;
    _os_log_impl(&dword_23224A000, v78, OS_LOG_TYPE_INFO, "Feedback logging: retrieved features for %{private}lu topics: ", buf, 0xCu);
  }

  v80 = objc_opt_new();
  [v80 setLimit:1000];
  clientBundleId4 = [v114 clientBundleId];
  if (clientBundleId4)
  {
    v82 = objc_autoreleasePoolPush();
    v83 = objc_alloc(MEMORY[0x277CBEB98]);
    clientBundleId5 = [v114 clientBundleId];
    v85 = [v83 initWithObjects:{clientBundleId5, 0}];

    objc_autoreleasePoolPop(v82);
    [v80 setExcludingSourceBundleIds:v85];
  }

  else
  {
    [v80 setExcludingSourceBundleIds:0];
  }

  v113 = v67;
  [v80 setMatchingTopicIds:v67];
  objb = v80;
  [self topicRecordsWithQuery:v80 error:feedbackCopy];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v86 = v129 = 0u;
  v87 = [v86 countByEnumeratingWithState:&v126 objects:v149 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *v127;
    while (2)
    {
      for (k = 0; k != v88; ++k)
      {
        if (*v127 != v90)
        {
          objc_enumerationMutation(v86);
        }

        v92 = *(*(&v126 + 1) + 8 * k);
        v93 = *(v34 + 2296);
        source = [v92 source];
        bundleId = [source bundleId];
        LODWORD(v93) = [v93 shouldSampleExtraction:bundleId];

        if (!v93)
        {
          goto LABEL_80;
        }

        topic = [v92 topic];
        topicIdentifier4 = [topic topicIdentifier];
        v98 = [v68 objectForKey:topicIdentifier4];

        if (v98)
        {
          if (v89 > 0x63)
          {
            v7 = v119;
            v34 = 0x27896F000;
            goto LABEL_86;
          }

          v99 = objc_opt_new();
          v100 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v92, "algorithm")}];
          [v99 setAlgorithm:v100];

          source2 = [v92 source];
          bundleId2 = [source2 bundleId];
          [v99 setSourceBundleId:bundleId2];

          [v92 initialScore];
          [v99 setScore:?];
          v7 = v119;
          [v119 addExtractedDonations:v99];
          ++v89;
        }

        else
        {
LABEL_80:
          v7 = v119;
        }

        v34 = 0x27896F000;
      }

      v88 = [v86 countByEnumeratingWithState:&v126 objects:v149 count:16];
      if (v88)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v89 = 0;
  }

LABEL_86:

  v103 = pp_topics_log_handle();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
  {
    *buf = 134283521;
    v157 = v89;
    _os_log_impl(&dword_23224A000, v103, OS_LOG_TYPE_INFO, "Feedback logging: logged %{private}lu topic records: ", buf, 0xCu);
  }

  [*(v34 + 2296) addBoilerplateToFeedbackLog:v7];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] logMessage:v7];

  v148 = 1;
  v33 = v113;
  v4 = v114;
  v17 = v108;
  v19 = v116;
LABEL_89:

  v9 = v109;
LABEL_90:

  v16 = v148;
LABEL_91:

  v105 = *MEMORY[0x277D85DE8];
  return v16;
}

void __56__PPLocalTopicStore__processMappedTopicPendingFeedback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) objectForKeyedSubscript:v8];
    [v6 addObjectsFromArray:v7];

    [*(a1 + 32) removeObject:v8];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

- (PPTopicTransform)_topicTransformForId:(uint64_t)id
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (id)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_284759D38];
    objc_autoreleasePoolPop(v4);
    v6 = *(id + 24);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.dat", v5];
    v8 = [v6 filepathForFactor:v7 namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

    v9 = pp_topics_log_handle();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "Loading topic transform file from: %@", buf, 0xCu);
      }

      v11 = [[PPTopicTransform alloc] initWithPath:v8 mappingId:v3];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "Cannot locate asset path for transform resource: %@", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __115__PPLocalTopicStore__mappedTopicsFilterPendingFeedbackItems_scoringDate_clientIdentifier_clientBundleId_mappingId___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 topic];
  v5 = [v4 clusterIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 topic];
    v8 = [v7 clusterIdentifier];
    v9 = [v8 isEqualToString:*(*(*(a1 + 48) + 8) + 40)];

    if ((v9 & 1) == 0)
    {
      v24 = v3;
      v10 = [v3 topic];
      v11 = [v10 topicIdentifier];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = *v28;
        do
        {
          v16 = 0;
          do
          {
            if (*v28 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v27 + 1) + 8 * v16);
            v18 = objc_autoreleasePoolPush();
            v19 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
            v20 = [v19 countForObject:v17];

            for (; v20; --v20)
            {
              v21 = objc_autoreleasePoolPush();
              v22 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:*(*(*(a1 + 48) + 8) + 40) itemFeedbackType:{objc_msgSend(v17, "intValue")}];
              [*(a1 + 40) addObject:v22];

              objc_autoreleasePoolPop(v21);
            }

            objc_autoreleasePoolPop(v18);
            ++v16;
          }

          while (v16 != v15);
          v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      v3 = v24;
    }
  }

  else
  {
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_topics_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v14 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPTopic universal search spotlight feedback received: %{sensitive}@", buf, 0xCu);
  }

  v8 = +[PPMetricsUtils loggingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PPLocalTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke;
  block[3] = &unk_2789790A8;
  v9 = feedbackCopy;
  v12 = v9;
  dispatch_async(v8, block);

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __73__PPLocalTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 clientBundleId];
  v3 = [*(a1 + 32) clientIdentifier];
  [PPFeedbackUtils recordUniversalSearchSpotlightStatsFromFeedback:v2 clientBundleId:v4 clientIdentifier:v3];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  isMapped = [feedbackCopy isMapped];
  v8 = pp_topics_log_handle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (isMapped)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v14 = 138739971;
    v15 = feedbackCopy;
    v10 = "Mapped Topic feedback received: %{sensitive}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v14 = 138739971;
    v15 = feedbackCopy;
    v10 = "Topic feedback received: %{sensitive}@";
  }

  _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v10, &v14, 0xCu);
LABEL_5:

  v11 = objc_opt_new();
  v12 = [PPInternalFeedback fromBaseFeedback:feedbackCopy storeType:2];
  [v11 storePendingFeedback:v12 storeType:2 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logDonationErrorForReason:(int64_t)reason errorCode:(unint64_t)code source:(id)source
{
  sourceCopy = source;
  v9 = +[PPMetricsUtils loggingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__PPLocalTopicStore_logDonationErrorForReason_errorCode_source___block_invoke;
  v11[3] = &unk_278977478;
  v11[4] = self;
  v12 = sourceCopy;
  reasonCopy = reason;
  codeCopy = code;
  v10 = sourceCopy;
  dispatch_async(v9, v11);
}

void __64__PPLocalTopicStore_logDonationErrorForReason_errorCode_source___block_invoke(void *a1)
{
  v4 = objc_opt_new();
  [v4 setReason:{+[PPMetricsUtils mapTopicDonationErrorForPET2:](PPMetricsUtils, "mapTopicDonationErrorForPET2:", a1[6])}];
  v2 = [*(a1[4] + 24) concatenatedTreatmentNames];
  [v4 setActiveTreatments:v2];

  [v4 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", a1[5])}];
  [v4 setCode:a1[7]];
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  [v3 trackScalarForMessage:v4];
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [(PPTopicStorage *)self->_storage clearWithError:error deletedCount:count];
  v7 = v6;
  if (error && !v6)
  {
    v8 = pp_topics_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *error;
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "clearWithError error: %@", &v12, 0xCu);
    }
  }

  [(PPLocalTopicStore *)self topicInvalidationCallback];
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)topicInvalidationCallback
{
  if (self)
  {
    v1 = *(self + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PPLocalTopicStore_topicInvalidationCallback__block_invoke;
    block[3] = &unk_2789790A8;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __46__PPLocalTopicStore_topicInvalidationCallback__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPLocalTopicStore invalidating topics", buf, 2u);
  }

  PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsInvalidated");
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = [v3 computeAndCacheTopicScores:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPLocalTopicStore had an error while trying to refresh the cache after topic invalidation: %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v10 = v5;
    [v7 clearTopicScoresCache:&v10];
    v8 = v10;

    v5 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  if (userKnowledgeStore)
  {
    v6 = pp_topics_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: exporting locally-generated topic records", buf, 2u);
    }

    v7 = objc_opt_new();
    storage = self->_storage;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__PPLocalTopicStore_cloudSyncWithError___block_invoke;
    v29[3] = &unk_278977450;
    v9 = v7;
    v30 = v9;
    [(PPTopicStorage *)storage exportRecordsToDKWithShouldContinueBlock:v29];
    v10 = pp_topics_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: synchronizing _DKKnowledgeStore", buf, 2u);
    }

    v28 = 0;
    v11 = [userKnowledgeStore synchronizeWithError:&v28];
    v12 = v28;
    if (v11)
    {
      v13 = pp_topics_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: importing remotely-generated topic records", buf, 2u);
      }

        ;
      }

      v14 = pp_topics_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: processing _DKKnowledgeStore remote topic deletions", buf, 2u);
      }

      [(PPTopicStorage *)self->_storage processNewDKEventDeletions];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      localizedDescription = [v12 localizedDescription];
      v20 = [v18 initWithFormat:@"Unable to synchronize _DKKnowledgeStore: %@", localizedDescription];

      if (error)
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v22 = *MEMORY[0x277D3A580];
        v31 = *MEMORY[0x277CCA450];
        v32 = v20;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        *error = [v21 initWithDomain:v22 code:1 userInfo:v23];
      }

      v24 = pp_topics_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v20;
        _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (error)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = *MEMORY[0x277D3A580];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"Unable to connect to _DKKnowledgeStore";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *error = [v15 initWithDomain:v16 code:1 userInfo:v17];
    }

    v9 = pp_topics_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = @"Unable to connect to _DKKnowledgeStore";
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v11 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)deleteAllTopicsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsOlderThanDate:date atLeastOneTopicRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId algorithm:(unint64_t)algorithm olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  v13 = 0;
  v12 = 0;
  v10 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupId:groupId olderThanDate:than algorithm:algorithm atLeastOneTopicRemoved:&v13 deletedCount:&v12 error:error];
  if (v13 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v12;
  }

  return v10;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupId:groupId olderThanDate:than atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id algorithm:algorithm atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id atLeastOneTopicRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupIds:ids algorithm:algorithm atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupIds:ids atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id documentIds:ids algorithm:algorithm atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id documentIds:ids atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsWithTopicId:id algorithm:algorithm atLeastOneTopicRemoved:&v9 deletedCount:count error:error];
  if (v9 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  return v7;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  v8 = 0;
  v6 = [(PPTopicStorage *)self->_storage deleteAllTopicsWithTopicId:id atLeastOneTopicRemoved:&v8 deletedCount:count error:error];
  if (v8 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  return v6;
}

- (BOOL)flushDonationsWithError:(id *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PPLocalTopicStore_flushDonationsWithError___block_invoke;
  v5[3] = &unk_278977428;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  if (*(v7 + 24) == 1)
  {
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsDidChangeMeaningfully");
  }

  _Block_object_dispose(&v6, 8);
  return 1;
}

void __45__PPLocalTopicStore_flushDonationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pp_topics_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "Flushing donations", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3[8];
  v3[8] = 0;
}

- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error
{
  syncCopy = sync;
  v147 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  sourceCopy = source;
  textCopy = text;
  if (topicsCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:1185 description:{@"Invalid parameter not satisfying: %@", @"topics"}];

    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"source"}];

LABEL_3:
  v18 = pp_topics_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [topicsCopy count];
    v20 = [MEMORY[0x277D3A548] describeAlgorithm:algorithm];
    *buf = 134218498;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = sourceCopy;
    *&buf[22] = 2112;
    v141 = v20;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore received a donation of %tu topics from source: %@, algorithm: %@", buf, 0x20u);
  }

  v21 = +[PPSettings sharedInstance];
  bundleId = [sourceCopy bundleId];
  v23 = [v21 bundleIdentifierIsEnabledForDonation:bundleId];

  if ((v23 & 1) == 0)
  {
    v28 = pp_topics_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      bundleId2 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId2;
      _os_log_debug_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEBUG, "Suppressed topic donation from disabled bundleId: %@", buf, 0xCu);
    }

    LOBYTE(v29) = 1;
    goto LABEL_71;
  }

  if (!syncCopy)
  {
    goto LABEL_15;
  }

  v24 = +[PPSettings sharedInstance];
  bundleId3 = [sourceCopy bundleId];
  v26 = [v24 bundleIdentifierIsEnabledForCloudKit:bundleId3];

  if ((v26 & 1) == 0)
  {
    v30 = pp_topics_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      bundleId4 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId4;
      _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "Suppressed topic cloudSync on donation from disabled bundleId: %@", buf, 0xCu);
    }

LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  v27 = 1;
LABEL_16:
  v116 = topicsCopy;
  v117 = textCopy;
  v115 = sourceCopy;
  if (algorithm == 5 && ([sourceCopy documentId], v31 = objc_claimAutoreleasedReturnValue(), v32 = *MEMORY[0x277D3A6E0], v33 = objc_msgSend(v31, "hasPrefix:", *MEMORY[0x277D3A6E0]), v31, v33))
  {
    v114 = v27;
    v34 = topicsCopy;
    v35 = sourceCopy;
    v36 = v35;
    v113 = v34;
    if (self)
    {
      v121 = v35;
      v123 = objc_opt_new();
      v37 = [(PPTrialWrapper *)self->_trialWrapper plistForFactorName:@"PhotosTopicMap.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v38 = v34;
      v39 = [v38 countByEnumeratingWithState:&v129 objects:buf count:16];
      v112 = v32;
      if (!v39)
      {
        v42 = 1;
        goto LABEL_69;
      }

      v40 = v39;
      v41 = *v130;
      v120 = *MEMORY[0x277D3A580];
      v119 = *MEMORY[0x277D3A588];
      v42 = 1;
      while (1)
      {
        v43 = 0;
        do
        {
          if (*v130 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v129 + 1) + 8 * v43);
          item = [v44 item];
          topicIdentifier = [item topicIdentifier];
          v47 = [v37 objectForKeyedSubscript:topicIdentifier];

          if (v47)
          {
            item2 = [v44 item];
            topicIdentifier2 = [item2 topicIdentifier];
            v50 = [v37 objectForKeyedSubscript:topicIdentifier2];

            v51 = objc_alloc(MEMORY[0x277D3A498]);
            v52 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v50];
            [v44 score];
            v53 = [v51 initWithItem:v52 score:?];

            [v123 addObject:v53];
LABEL_32:

            goto LABEL_33;
          }

          v54 = pp_topics_log_handle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            item3 = [v44 item];
            topicIdentifier3 = [item3 topicIdentifier];
            *v136 = 138739971;
            v137 = topicIdentifier3;
            _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_INFO, "PPLocalTopicStore: got unmatched photos topic: %{sensitive}@", v136, 0xCu);
          }

          if (error)
          {
            v57 = objc_alloc(MEMORY[0x277CCACA8]);
            item4 = [v44 item];
            topicIdentifier4 = [item4 topicIdentifier];
            v60 = [topicIdentifier4 length];
            bundleId5 = [v121 bundleId];
            v50 = [v57 initWithFormat:@"No unmapping found for Photos topic to QID: topic.length:%tu donated from %@", v60, bundleId5];

            v62 = pp_topics_log_handle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *v136 = 138412290;
              v137 = v50;
              _os_log_error_impl(&dword_23224A000, v62, OS_LOG_TYPE_ERROR, "%@", v136, 0xCu);
            }

            v63 = objc_alloc(MEMORY[0x277CCA9B8]);
            v134 = v119;
            v135 = v50;
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
            v42 = 0;
            *error = [v63 initWithDomain:v120 code:3 userInfo:v53];
            goto LABEL_32;
          }

          v42 = 0;
LABEL_33:
          ++v43;
        }

        while (v40 != v43);
        v64 = [v38 countByEnumeratingWithState:&v129 objects:buf count:16];
        v40 = v64;
        if (!v64)
        {
LABEL_69:

          v99 = objc_alloc(MEMORY[0x277D3A4D8]);
          v36 = v121;
          bundleId6 = [v121 bundleId];
          groupId = [v121 groupId];
          documentId = [v121 documentId];
          v103 = [documentId stringByReplacingOccurrencesOfString:v112 withString:&stru_284759D38];
          date = [v121 date];
          v105 = [v99 initWithBundleId:bundleId6 groupId:groupId documentId:v103 date:date];

          v29 = [(PPLocalTopicStore *)self donateTopics:v123 source:v105 algorithm:5 cloudSync:v114 sentimentScore:0 exactMatchesInSourceText:error error:score]& v42;
          goto LABEL_70;
        }
      }
    }

    LOBYTE(v29) = 0;
LABEL_70:

    sourceCopy = v115;
    topicsCopy = v116;
    textCopy = v117;
  }

  else
  {
    algorithmCopy = algorithm;
    selfCopy = self;
    v66 = [(PPLocalTopicStore *)self _coalesceScoredTopics:topicsCopy exactMatchesInSourceText:textCopy];
    if (self)
    {
      v67 = objc_opt_new();
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v68 = v66;
      v69 = [v68 countByEnumeratingWithState:&v129 objects:buf count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v130;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v130 != v71)
            {
              objc_enumerationMutation(v68);
            }

            first = [*(*(&v129 + 1) + 8 * i) first];
            [v67 addObject:first];
          }

          v70 = [v68 countByEnumeratingWithState:&v129 objects:buf count:16];
        }

        while (v70);
      }

      if ([v67 count])
      {
        v74 = [(PPTopicBlocklist *)self->_blocklist indicesOfBlockedTopicsInScoredTopicArray:v67];
        if ([v74 count])
        {
          v75 = [v67 count];
          v76 = [v74 count];
          v77 = pp_topics_log_handle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = [v67 count];
            *v136 = 134218240;
            v137 = v78;
            v138 = 2048;
            v139 = v75 - v76;
            _os_log_impl(&dword_23224A000, v77, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering scored topic list from %tu to %tu", v136, 0x16u);
          }

          v79 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v67, "count")}];
          [v79 removeIndexes:v74];
          selfCopy = [v68 objectsAtIndexes:v79];

          textCopy = v117;
        }

        else
        {
          selfCopy = v68;
        }
      }

      else
      {
        selfCopy = v68;
      }
    }

    if ([selfCopy count])
    {
      v80 = objc_opt_new();
      v81 = objc_opt_new();
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v82 = selfCopy;
      v83 = [v82 countByEnumeratingWithState:&v125 objects:v133 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v126;
        do
        {
          for (j = 0; j != v84; ++j)
          {
            if (*v126 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v87 = *(*(&v125 + 1) + 8 * j);
            first2 = [v87 first];
            [v80 addObject:first2];

            second = [v87 second];
            [v81 addObject:second];
          }

          v84 = [v82 countByEnumeratingWithState:&v125 objects:v133 count:16];
        }

        while (v84);
      }

      sourceCopy = v115;
      v29 = [(PPTopicStorage *)self->_storage donateTopics:v80 source:v115 algorithm:algorithmCopy cloudSync:v27 decayRate:v81 sentimentScore:error exactMatchesInSourceText:0.0 error:score];
      if (v29)
      {
        bundleId7 = [v115 bundleId];
        groupId2 = [v115 groupId];
        v92 = v80;
        v93 = bundleId7;
        v94 = groupId2;
        v95 = +[PPMetricsUtils loggingQueue];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __70__PPLocalTopicStore__logDonationForTopics_bundleId_algorithm_groupId___block_invoke;
        v141 = &unk_2789774A0;
        v96 = v93;
        v142 = v96;
        selfCopy2 = self;
        v97 = v92;
        v144 = v97;
        v146 = algorithmCopy;
        v98 = v94;
        v145 = v98;
        dispatch_async(v95, buf);

        [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_361];
      }

      textCopy = v117;
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    topicsCopy = v116;
  }

LABEL_71:

  v106 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_coalesceScoredTopics:(void *)topics exactMatchesInSourceText:
{
  v5 = a2;
  topicsCopy = topics;
  if (self)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__PPLocalTopicStore__coalesceScoredTopics_exactMatchesInSourceText___block_invoke;
    v14 = &unk_278977968;
    v8 = v7;
    v15 = v8;
    v16 = topicsCopy;
    [v5 enumerateObjectsUsingBlock:&v11];
    v9 = objc_autoreleasePoolPush();
    self = [v8 allValues];
    objc_autoreleasePoolPop(v9);
  }

  return self;
}

void __70__PPLocalTopicStore__logDonationForTopics_bundleId_algorithm_groupId___block_invoke(uint64_t a1)
{
  v8 = objc_opt_new();
  [v8 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  v2 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v8 setActiveTreatments:v2];

  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  [v3 trackScalarForMessage:v8 count:{objc_msgSend(*(a1 + 48), "count")}];

  v4 = objc_opt_new();
  [v4 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v4 setAlgorithm:{+[PPMetricsUtils mapTopicAlgorithmForPET2:](PPMetricsUtils, "mapTopicAlgorithmForPET2:", *(a1 + 64))}];
  v5 = [PPMetricsUtils filterGroupIdAllowance:*(a1 + 56)];
  [v4 setGroupId:v5];

  v6 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v4 setActiveTreatments:v6];

  v7 = [MEMORY[0x277D41DA8] sharedInstance];
  [v7 trackDistributionForMessage:v4 value:{objc_msgSend(*(a1 + 48), "count")}];
}

void __68__PPLocalTopicStore__coalesceScoredTopics_exactMatchesInSourceText___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v29 = v5;
  v7 = [v5 item];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 first];

  v10 = MEMORY[0x277CCABB0];
  v11 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  if ([v11 BOOLValue])
  {
    v12 = [v10 numberWithInt:1];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v29 item];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = [v15 second];
    v12 = [v10 numberWithInt:{objc_msgSend(v16, "BOOLValue")}];
  }

  if (v9)
  {
    v17 = [v9 scoredTopic];
    [v17 score];
    v19 = v18;
    [v29 score];
    v21 = v19 + v20 * exp2(-[v9 occurrencesInSource]);

    v22 = objc_alloc(MEMORY[0x277D3A498]);
    v23 = [v29 item];
    v24 = [v22 initWithItem:v23 score:objc_msgSend(v29 resultPosition:"resultPosition") resultCount:{objc_msgSend(v29, "resultCount"), v21}];

    v25 = -[PPCoalescedScoredTopic initWithScoredTopic:occurrencesInSource:]([PPCoalescedScoredTopic alloc], "initWithScoredTopic:occurrencesInSource:", v24, ([v9 occurrencesInSource] + 1));
  }

  else
  {
    v25 = [[PPCoalescedScoredTopic alloc] initWithScoredTopic:v29 occurrencesInSource:1];
  }

  v26 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v25 second:v12];
  v27 = *(a1 + 32);
  v28 = [v29 item];
  [v27 setObject:v26 forKeyedSubscript:v28];
}

- (id)topicExtractionsFromText:(id)text clientProcessName:(id)name error:(id *)error
{
  v78 = *MEMORY[0x277D85DE8];
  textCopy = text;
  nameCopy = name;
  v9 = pp_topics_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v75 = [textCopy length];
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: topicExtractionsFromText called with text length %tu", buf, 0xCu);
  }

  v10 = +[PPTopicExtractionPlugin sharedInstance];
  v11 = [v10 extractionsFromText:textCopy bundleId:nameCopy];

  v12 = pp_topics_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    topicRecords = [v11 topicRecords];
    v56 = [topicRecords count];
    *buf = 134217984;
    v75 = v56;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "PPLocalTopicStore: topicExtractionsFromText found %tu topics", buf, 0xCu);
  }

  topicRecords2 = [v11 topicRecords];

  if (topicRecords2)
  {
    v58 = nameCopy;
    v59 = textCopy;
    v14 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v57 = v11;
    topicRecords3 = [v11 topicRecords];
    v16 = [topicRecords3 countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v65;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v65 != v18)
          {
            objc_enumerationMutation(topicRecords3);
          }

          v20 = *(*(&v64 + 1) + 8 * i);
          v21 = objc_alloc(MEMORY[0x277D3A498]);
          topic = [v20 topic];
          [v20 initialScore];
          v23 = [v21 initWithItem:topic score:?];
          [v14 addObject:v23];
        }

        v17 = [topicRecords3 countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v17);
    }

    if (self)
    {
      v24 = [(PPLocalTopicStore *)self _coalesceScoredTopics:v14 exactMatchesInSourceText:0];
      v25 = 0x277CBE000uLL;
      v26 = objc_opt_new();
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v27 = v24;
      v28 = [v27 countByEnumeratingWithState:&v68 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v69;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v69 != v30)
            {
              objc_enumerationMutation(v27);
            }

            first = [*(*(&v68 + 1) + 8 * j) first];
            [v26 addObject:first];
          }

          v29 = [v27 countByEnumeratingWithState:&v68 objects:buf count:16];
        }

        while (v29);
      }

      v33 = v26;
      if ([v33 count])
      {
        v34 = [(PPTopicBlocklist *)self->_blocklist indicesOfBlockedTopicsInScoredTopicArray:v33];
        if ([v34 count])
        {
          v35 = [v33 count];
          v36 = [v34 count];
          v37 = pp_topics_log_handle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = [v33 count];
            *buf = 134218240;
            v75 = v38;
            v76 = 2048;
            v77 = v35 - v36;
            _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering scored topic list from %tu to %tu", buf, 0x16u);
          }

          v39 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v33, "count")}];
          [v39 removeIndexes:v34];
          v40 = [v33 objectsAtIndexes:v39];
        }

        else
        {
          v40 = v33;
        }

        v11 = v57;
      }

      else
      {
        v33 = v33;
        v40 = v33;
        v11 = v57;
      }
    }

    else
    {
      v33 = 0;
      v40 = 0;
      v11 = v57;
      v25 = 0x277CBE000;
    }

    v42 = pp_topics_log_handle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v40 count];
      *buf = 134217984;
      v75 = v43;
      _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: topicExtractionsFromText finished coalescing and filtering with blocklist, %tu topics remain", buf, 0xCu);
    }

    v44 = [v40 sortedArrayUsingComparator:&__block_literal_global_339];

    v45 = *(v25 + 2840);
    v41 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v46 = v44;
    v47 = [v46 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v61;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(v46);
          }

          scoredTopic = [*(*(&v60 + 1) + 8 * k) scoredTopic];
          item = [scoredTopic item];
          [v41 addObject:item];
        }

        v48 = [v46 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v48);
    }

    nameCopy = v58;
    textCopy = v59;
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  v53 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __70__PPLocalTopicStore_topicExtractionsFromText_clientProcessName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  v6 = [a2 scoredTopic];
  [v6 score];
  v8 = v7;
  v9 = [v5 scoredTopic];

  [v9 score];
  v11 = [v4 reverseCompareDouble:v8 withDouble:v10];

  return v11;
}

- (id)topicRecordsWithQuery:(id)query error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_topics_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v10 = [fromDate description];
    toDate = [queryCopy toDate];
    v12 = [toDate description];
    *buf = 134218498;
    v22 = limit;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "topicRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__PPLocalTopicStore_topicRecordsWithQuery_error___block_invoke;
  v19[3] = &unk_278979120;
  v20 = v13;
  v14 = v13;
  if ([(PPLocalTopicStore *)self iterTopicRecordsWithQuery:queryCopy error:error block:v19])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:0 method:@"iterTopicRecordsWithQuery"];
  v10 = pp_topics_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v13 = [fromDate description];
    toDate = [queryCopy toDate];
    v15 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v42 = v15;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "iterTopicRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if ([queryCopy limit])
  {
    v16 = [queryCopy copy];
    [v16 setLimit:-1];
    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    limit2 = [queryCopy limit];
    if (limit2 >= 0x40)
    {
      v19 = 64;
    }

    else
    {
      v19 = limit2;
    }

    v20 = [v17 initWithCapacity:v19];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v42 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke;
    aBlock[3] = &unk_278977398;
    v37 = v39;
    aBlock[4] = self;
    v21 = v20;
    v34 = v21;
    v36 = blockCopy;
    v38 = buf;
    v35 = queryCopy;
    v22 = _Block_copy(aBlock);
    storage = self->_storage;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke_2;
    v29[3] = &unk_2789773C0;
    v24 = v21;
    v30 = v24;
    v25 = v22;
    v31 = v25;
    v32 = v39;
    v26 = [(PPTopicStorage *)storage iterTopicRecordsWithQuery:v16 error:error block:v29];
    if (v26)
    {
      v25[2](v25);
    }

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    LOBYTE(v26) = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_logParametersForQuery:(void *)query client:(void *)client method:
{
  v27[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  queryCopy = query;
  clientCopy = client;
  if (self)
  {
    v25 = clientCopy;
    context = objc_autoreleasePoolPush();
    v26[0] = @"client";
    null = queryCopy;
    if (!queryCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v27[0] = null;
    v26[1] = @"excludedBundleIds";
    excludingSourceBundleIds = [v7 excludingSourceBundleIds];
    allObjects = [excludingSourceBundleIds allObjects];
    v13 = [allObjects _pas_componentsJoinedByString:@""];;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_284759D38;
    }

    v27[1] = v15;
    v26[2] = @"includedBundleIds";
    matchingSourceBundleIds = [v7 matchingSourceBundleIds];
    allObjects2 = [matchingSourceBundleIds allObjects];
    v18 = [allObjects2 _pas_componentsJoinedByString:@""];;
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_284759D38;
    }

    v27[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v23 logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.TopicQueryReceived" payload:v21 inBackground:0];

    if (!queryCopy)
    {
    }

    objc_autoreleasePoolPop(context);
    clientCopy = v25;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v4;
    if (v3 && [v4 count])
    {
      v6 = [*(v3 + 32) indicesOfBlockedTopicsInRecordArray:v5];
      if ([v6 count])
      {
        v7 = [v5 count];
        v8 = [v6 count];
        v9 = pp_topics_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v27 = [v5 count];
          v28 = 2048;
          v29 = v7 - v8;
          _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering topic record list from %tu to %tu", buf, 0x16u);
        }

        [v5 removeObjectsAtIndexes:v6];
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
LABEL_11:
      v14 = 0;
      while (1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = *(*(a1 + 64) + 8);
        (*(*(a1 + 56) + 16))(*(a1 + 56));
        ++*(*(*(a1 + 72) + 8) + 24);
        v17 = *(*(a1 + 64) + 8);
        if (*(v17 + 24))
        {
          v18 = 1;
        }

        else
        {
          v19 = *(*(*(a1 + 72) + 8) + 24);
          v18 = v19 == [*(a1 + 48) limit];
          v17 = *(*(a1 + 64) + 8);
        }

        *(v17 + 24) = v18;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }

  [*(a1 + 40) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result == 64)
  {
    result = (*(*(a1 + 40) + 16))();
  }

  *a3 = *(*(*(a1 + 48) + 8) + 24);
  return result;
}

- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mappingIdentifierCopy = mappingIdentifier;
  v10 = [(PPLocalTopicStore *)self _topicTransformForId:mappingIdentifierCopy];
  v11 = [v10 QIDWeightsWithMappedTopicIdentifier:identifierCopy];
  v12 = v11;
  if (error && !v11)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D3A580];
    v19 = *MEMORY[0x277CCA470];
    mappingIdentifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mapped topic ID (%@) not found in this mapping (%@).", identifierCopy, mappingIdentifierCopy];
    v20[0] = mappingIdentifierCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:v14 code:3 userInfo:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error clientProcessName:(id)name
{
  v62 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  queryCopy = query;
  nameCopy = name;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:nameCopy method:@"scoresForTopicMapping"];
  v58 = 0;
  v12 = mappingCopy;
  v13 = queryCopy;
  v14 = nameCopy;
  v15 = v14;
  selfCopy = self;
  if (self)
  {
    v16 = -[PPEvictingMinPriorityQueue initWithCapacity:]([PPEvictingMinPriorityQueue alloc], "initWithCapacity:", [v13 limit]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __81__PPLocalTopicStore__defaultScoresForTopicMapping_query_clientProcessName_error___block_invoke;
    v59[3] = &unk_2789795B0;
    v17 = v16;
    v60 = v17;
    selfCopy2 = self;
    v19 = v13;
    v20 = v13;
    v21 = v15;
    [(PPLocalTopicStore *)selfCopy2 _defaultIterScoresForTopicMapping:v12 query:v20 error:&v58 clientProcessName:v15 block:v59];
    v22 = objc_alloc(MEMORY[0x277CBEB38]);
    [(PPEvictingMinPriorityQueue *)v17 count];
    v24 = [v22 initWithCapacity:v23];
    [(PPEvictingMinPriorityQueue *)v17 count];
    if (v25 > 0.0)
    {
      do
      {
        v26 = objc_autoreleasePoolPush();
        popItem = [(PPEvictingMinPriorityQueue *)v17 popItem];
        v28 = MEMORY[0x277CCABB0];
        [popItem score];
        v29 = [v28 numberWithDouble:?];
        item = [popItem item];
        [v24 setValue:v29 forKey:item];

        objc_autoreleasePoolPop(v26);
        [(PPEvictingMinPriorityQueue *)v17 count];
      }

      while (v31 > 0.0);
    }
  }

  else
  {
    v19 = v13;
    v21 = v14;
    v24 = 0;
  }

  v32 = v21;

  v33 = v58;
  -[PPLocalTopicStore _petLoggingForMappedTopicQuery:mappingId:count:clientProcessName:hasError:](selfCopy, v19, v12, [v24 count], v21, v24 == 0);
  v34 = [v24 count];
  v35 = +[PPConfiguration sharedInstance];
  maxNumberMappedTopics = [v35 maxNumberMappedTopics];

  if (v34 <= maxNumberMappedTopics)
  {
    [(PPLocalTopicStore *)selfCopy _dpLoggingForMappingId:v12 mappedTopics:v24];
    v38 = v24;
  }

  else
  {
    v51 = v33;
    v52 = v12;
    context = objc_autoreleasePoolPush();
    v37 = [v24 keysSortedByValueUsingComparator:&__block_literal_global_317];
    v38 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v39 = +[PPConfiguration sharedInstance];
    v49 = v37;
    v40 = [v37 subarrayWithRange:{0, objc_msgSend(v39, "maxNumberMappedTopics")}];

    v41 = [v40 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v55;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v55 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v54 + 1) + 8 * i);
          v46 = [v24 objectForKeyedSubscript:v45];
          [v38 setObject:v46 forKeyedSubscript:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v42);
    }

    v12 = v52;
    [(PPLocalTopicStore *)selfCopy _dpLoggingForMappingId:v52 mappedTopics:v38];

    objc_autoreleasePoolPop(context);
    v33 = v51;
    v32 = v21;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)_petLoggingForMappedTopicQuery:(void *)query mappingId:(uint64_t)id count:(void *)count clientProcessName:(char)name hasError:
{
  v11 = a2;
  queryCopy = query;
  countCopy = count;
  if (self)
  {
    v14 = +[PPMetricsUtils loggingQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__PPLocalTopicStore__petLoggingForMappedTopicQuery_mappingId_count_clientProcessName_hasError___block_invoke;
    v15[3] = &unk_278977370;
    v16 = countCopy;
    v17 = queryCopy;
    idCopy = id;
    nameCopy = name;
    v18 = v11;
    selfCopy = self;
    dispatch_async(v14, v15);
  }
}

- (void)_dpLoggingForMappingId:(void *)id mappedTopics:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  idCopy = id;
  if (self)
  {
    v7 = v5;
    if ([v7 isEqualToString:@"news-topics"])
    {
      v8 = @"NewsTopic";
    }

    else
    {
      if (![v7 isEqualToString:@"podcasts-topics"])
      {
        v34 = [v7 isEqualToString:@"high-level-topics"];
        if (v34)
        {
          v35 = @"HighLevelTopic";
        }

        else
        {
          v35 = 0;
        }

        v9 = v35;
        if (!v34)
        {
LABEL_18:

          goto LABEL_19;
        }

LABEL_7:
        v36 = v5;
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        localeIdentifier = [currentLocale localeIdentifier];
        v13 = [v10 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", v9, localeIdentifier];

        allValues = [idCopy allValues];
        v15 = [allValues _pas_leftFoldWithInitialObject:&unk_284786110 accumulate:&__block_literal_global_324];
        [v15 doubleValue];
        v17 = v16;

        v18 = objc_opt_new();
        [v18 nextDouble];
        v20 = v19;

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        allKeys = [idCopy allKeys];
        v22 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v38;
          v25 = 0.0;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v27 = *(*(&v37 + 1) + 8 * i);
              v28 = objc_autoreleasePoolPush();
              v29 = [idCopy objectForKeyedSubscript:v27];
              [v29 doubleValue];
              v25 = v25 + v30;

              if (v25 / v17 >= v20)
              {
                v31 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v13];
                v41 = v27;
                v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
                [v31 record:v32];

                objc_autoreleasePoolPop(v28);
                goto LABEL_17;
              }

              objc_autoreleasePoolPop(v28);
            }

            v23 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        v5 = v36;
        goto LABEL_18;
      }

      v8 = @"PodcastTopic";
    }

    v9 = v8;
    goto LABEL_7;
  }

LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
}

id __57__PPLocalTopicStore__dpLoggingForMappingId_mappedTopics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277CCABB0];
  [v4 doubleValue];
  v9 = v8;
  [v5 doubleValue];
  v11 = [v7 numberWithDouble:v9 + v10];
  objc_autoreleasePoolPop(v6);

  return v11;
}

void __95__PPLocalTopicStore__petLoggingForMappedTopicQuery_mappingId_count_clientProcessName_hasError___block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setBundleId:*(a1 + 32)];
  [v9 setMappingId:*(a1 + 40)];
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = log10(v2);
  }

  else
  {
    v3 = 0;
  }

  [v9 setResultSizeLog10:v3];
  v4 = [*(a1 + 48) fromDate];
  [v9 setTimeLimited:v4 != 0];

  [v9 setLimitHit:{*(a1 + 64) > objc_msgSend(*(a1 + 48), "limit")}];
  v5 = [*(a1 + 48) scoringDate];
  [v9 setTimeSpec:v5 != 0];

  v6 = [*(a1 + 48) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 72)];
  v7 = [*(*(a1 + 56) + 24) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

void __81__PPLocalTopicStore__defaultScoresForTopicMapping_query_clientProcessName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3A498];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 initWithItem:v7 score:v10];
  [*(a1 + 32) addObject:v11];
}

- (uint64_t)_defaultIterScoresForTopicMapping:(void *)mapping query:(void *)query error:(void *)error clientProcessName:(void *)name block:
{
  v75 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mappingCopy = mapping;
  errorCopy = error;
  nameCopy = name;
  selfCopy = self;
  v63 = [(PPLocalTopicStore *)self _topicTransformForId:v11];
  outputTopicCount = [v63 outputTopicCount];
  if (outputTopicCount && [mappingCopy limit])
  {
    v55 = [mappingCopy copy];
    [v55 setLimit:-1];
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v68 = 0;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __91__PPLocalTopicStore__defaultIterScoresForTopicMapping_query_error_clientProcessName_block___block_invoke;
    v64[3] = &unk_278977308;
    v54 = v13;
    v65 = v54;
    v57 = v14;
    v66 = v57;
    v67 = &v69;
    v59 = [selfCopy iterScoredTopicsWithQuery:v55 error:&v68 clientProcessName:0 block:v64];
    v53 = v68;
    if (v59)
    {
      v15 = v57;
      mutableBytes = [v57 mutableBytes];
      [v63 applyFeatureSmoothing:mutableBytes vectorLength:v70[6]];
      v17 = v57;
      mutableBytes2 = [v57 mutableBytes];
      [v63 applyFeatureScaling:mutableBytes2 vectorLength:v70[6]];
      v19 = v57;
      mutableBytes3 = [v57 mutableBytes];
      [v63 applyFeatureNormalization:mutableBytes3 vectorLength:v70[6]];
      v21 = v54;
      mutableBytes4 = [v54 mutableBytes];
      v23 = v57;
      mutableBytes5 = [v57 mutableBytes];
      v52 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * outputTopicCount];
      v51 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * outputTopicCount];
      v25 = v52;
      mutableBytes6 = [v52 mutableBytes];
      v27 = v51;
      v28 = mappingCopy;
      mutableBytes7 = [v51 mutableBytes];
      if (v70[6] >= 1)
      {
        v31 = 0;
        do
        {
          LODWORD(v30) = *(mutableBytes5 + 4 * v31);
          [v63 addWeightedTopicScoreToBuffer:mutableBytes6 countNonZeroComponentsInBuffer:mutableBytes7 qid:*(mutableBytes4 + 4 * v31++) score:v30];
        }

        while (v31 < v70[6]);
      }

      [v63 applyOutputScaling:mutableBytes6 vectorLength:outputTopicCount];
      if ([mappingCopy scoreWithBiases])
      {
        [v63 addBias:mutableBytes6];
      }

      [v63 applyOutputActivation:mutableBytes6];
      v32 = 0;
      v61 = 0;
      buf[0] = 0;
      v33 = outputTopicCount;
      while (1)
      {
        v34 = *(mutableBytes6 + 4 * v32);
        [v63 threshold];
        if (v34 <= v35)
        {
          goto LABEL_22;
        }

        v36 = *(mutableBytes7 + 2 * v32);
        if ([v28 minimumComponentCount] > v36)
        {
          goto LABEL_22;
        }

        v37 = objc_autoreleasePoolPush();
        if ((buf[0] & 1) == 0)
        {
          break;
        }

LABEL_21:
        objc_autoreleasePoolPop(v37);
        v28 = mappingCopy;
        ++v61;
LABEL_22:
        if (v33 == ++v32)
        {
          [(PPLocalTopicStore *)selfCopy _petLoggingForMappedTopicQuery:v28 mappingId:v11 count:v61 clientProcessName:errorCopy hasError:0];

          goto LABEL_30;
        }
      }

      [v63 payloadForTopic:v32];
      v39 = v38 = mappingCopy;
      if (!v39)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__defaultIterScoresForTopicMapping_query_error_clientProcessName_block_ object:selfCopy file:@"PPLocalTopicStore.m" lineNumber:732 description:{@"Invalid parameter not satisfying: %@", @"topicName"}];

        v38 = mappingCopy;
      }

      matchingMappedTopicIds = [v38 matchingMappedTopicIds];
      if (matchingMappedTopicIds)
      {
        matchingMappedTopicIds2 = [v38 matchingMappedTopicIds];
        v43 = [matchingMappedTopicIds2 containsObject:v39];

        if (((v39 != 0) & v43) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (!v39)
      {
LABEL_20:

        goto LABEL_21;
      }

      LODWORD(v41) = *(mutableBytes6 + 4 * v32);
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      nameCopy[2](nameCopy, v39, v44, buf);

      goto LABEL_20;
    }

    v46 = pp_topics_log_handle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v53;
      _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "Encountered an error iterating scored topics: %@", buf, 0xCu);
    }

    v47 = mappingCopy;
    if (query)
    {
      v48 = v53;
      *query = v53;
      v47 = mappingCopy;
    }

    [(PPLocalTopicStore *)selfCopy _petLoggingForMappedTopicQuery:v47 mappingId:v11 count:0 clientProcessName:errorCopy hasError:1];
LABEL_30:

    _Block_object_dispose(&v69, 8);
  }

  else
  {
    v59 = 1;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v59;
}

void __91__PPLocalTopicStore__defaultIterScoresForTopicMapping_query_error_clientProcessName_block___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 item];
  v5 = [v4 topicIdentifier];
  v6 = [v5 length];
  if (v6 < 0xC && (v12 = 0, v11 = 0, [v5 getBytes:&v11 maxLength:11 usedLength:0 encoding:1 options:0 range:0 remainingRange:{v6, 0}], v11 == 81))
  {
    v7 = atol(&v11 + 1);

    LODWORD(v11) = v7;
    if (v7 != -1)
    {
      [*(a1 + 32) appendBytes:&v11 length:4];
      [v3 score];
      *&v8 = v8;
      v10 = LODWORD(v8);
      [*(a1 + 40) appendBytes:&v10 length:4];
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block
{
  if (self)
  {
    LOBYTE(self) = [(PPLocalTopicStore *)self _defaultIterScoresForTopicMapping:mapping query:query error:error clientProcessName:0 block:block];
  }

  return self;
}

- (BOOL)iterScoredTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name block:(id)block
{
  v114 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  nameCopy = name;
  blockCopy = block;
  scoringDate = [queryCopy scoringDate];
  v12 = scoringDate;
  if (scoringDate)
  {
    v13 = scoringDate;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  objc_opt_self();
  v68 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  objc_opt_self();
  v66 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  v15 = 0;
  if (v68 && v66)
  {
    v16 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v68];
    v15 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v66]| v16;
  }

  storage = self->_storage;
  v18 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784770, 0}];
  objc_autoreleasePoolPop(v18);
  v20 = [(PPTopicStorage *)storage sourceStats:v15 withExcludedAlgorithms:v19];

  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x3032000000;
  v103[3] = __Block_byref_object_copy__20434;
  v103[4] = __Block_byref_object_dispose__20435;
  v104 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v21 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-processing" qosClass:qos_class_self()];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke;
  aBlock[3] = &unk_278977268;
  aBlock[4] = self;
  v62 = v14;
  v87 = v62;
  v67 = queryCopy;
  v88 = v67;
  v63 = v20;
  v89 = v63;
  v92 = v103;
  v93 = &v95;
  v94 = &v99;
  v64 = v21;
  v90 = v64;
  v61 = blockCopy;
  v91 = v61;
  v22 = _Block_copy(aBlock);
  *v108 = 0;
  *&v108[8] = v108;
  *&v108[16] = 0x3032000000;
  *&v108[24] = __Block_byref_object_copy__20434;
  v109 = __Block_byref_object_dispose__20435;
  v110 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__20434;
  v84[4] = __Block_byref_object_dispose__20435;
  v85 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__20434;
  v82[4] = __Block_byref_object_dispose__20435;
  v83 = 0;
  v23 = pp_topics_signpost_handle();
  v24 = os_signpost_id_generate(v23);

  v25 = pp_topics_signpost_handle();
  v26 = v25;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PPLocalTopicStore.iterScoredTopicsWithQuery.aggregation", "", buf, 2u);
  }

  v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-scoring" qosClass:qos_class_self()];
  v28 = dispatch_semaphore_create(64);
  v29 = [v67 copy];
  [v29 setOrderByIdentifier:1];
  [v29 setRemoveNearDuplicates:1];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_286;
  v74[3] = &unk_2789772B8;
  v79 = v108;
  v80 = v84;
  v81 = v82;
  v30 = v28;
  v75 = v30;
  v31 = v27;
  v76 = v31;
  v32 = v22;
  selfCopy = self;
  v78 = v32;
  v33 = v74;
  v34 = [v29 copy];
  [v34 setLimit:-1];
  v105 = 0;
  v69 = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v34 error:&v105 block:v33];

  v35 = v105;
  if (v69)
  {
    v36 = 0;
  }

  else
  {
    v37 = pp_topics_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v107 = v35;
      _os_log_error_impl(&dword_23224A000, v37, OS_LOG_TYPE_ERROR, "_unlimitedTopicRecordsWithQuery: nil result from iterTopicRecordsWithQuery: %@", buf, 0xCu);
    }

    v38 = v35;
    v36 = v35;
  }

  v39 = v36;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_291;
  block[3] = &unk_2789772E0;
  v72 = v84;
  v40 = v32;
  v71 = v40;
  v73 = v82;
  dispatch_sync(v31, block);
  v41 = pp_topics_signpost_handle();
  v42 = v41;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v42, OS_SIGNPOST_INTERVAL_END, v24, "PPLocalTopicStore.iterScoredTopicsWithQuery.aggregation", "", buf, 2u);
  }

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v84, 8);

  _Block_object_dispose(v108, 8);
  if (v69)
  {
    v43 = atomic_load(v96 + 6);
    v44 = atomic_load(v100 + 6);
    v45 = pp_topics_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = atomic_load(v96 + 6);
      v47 = +[PPConfiguration sharedInstance];
      [v47 scoreThresholdForTopic];
      *v108 = 67109632;
      *&v108[4] = v46;
      *&v108[8] = 2048;
      *&v108[10] = v48;
      *&v108[18] = 2048;
      *&v108[20] = v44 + v43;
      _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: filtered %d items below threshold of %f out of %tu total.", v108, 0x1Cu);
    }

    v49 = atomic_load(v100 + 6);
    v50 = v67;
    v51 = nameCopy;
    v52 = +[PPMetricsUtils loggingQueue];
    v53 = v49;
    *v108 = MEMORY[0x277D85DD0];
    *&v108[8] = 3221225472;
    *&v108[16] = __74__PPLocalTopicStore__petLoggingForQuery_count_clientProcessName_hasError___block_invoke;
    *&v108[24] = &unk_278979850;
    v54 = v51;
    v109 = v54;
    v112 = v53;
    v55 = v50;
    v113 = 0;
    v110 = v55;
    selfCopy2 = self;
    dispatch_async(v52, v108);
  }

  else
  {
    v56 = pp_default_log_handle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v108 = 138412290;
      *&v108[4] = v39;
      _os_log_error_impl(&dword_23224A000, v56, OS_LOG_TYPE_ERROR, "Error encountered while scoring named entities: %@", v108, 0xCu);
    }

    if (error)
    {
      v57 = v39;
      *error = v39;
    }
  }

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(v103, 8);

  v58 = *MEMORY[0x277D85DE8];
  return v69;
}

void __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [*(a1 + 48) decayRate];
    v10 = [v7 scoreTopics:v5 scoringDate:v8 decayRate:objc_msgSend(*(a1 + 48) strictFiltering:"scoreWithStrictFiltering") sourceStats:*(a1 + 56) decayedFeedbackCounts:v6 streamingScorer:*(*(a1 + 80) + 8) + 40 mlModel:{v9, 0}];
    if (v10)
    {
      atomic_fetch_add((*(*(a1 + 96) + 8) + 24), 1u);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2;
      block[3] = &unk_278977560;
      v11 = *(a1 + 64);
      v14 = *(a1 + 72);
      v13 = v10;
      dispatch_sync(v11, block);
    }

    else
    {
      atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1u);
    }
  }
}

void __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_286(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = [v3 topic];
  v6 = [v5 clusterIdentifier];
  LOBYTE(v4) = [v4 isEqualToString:v6];

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if ((v4 & 1) == 0)
  {
    v8 = v7;
    v9 = *(*(*(a1 + 80) + 8) + 40);
    if (![v8 count])
    {
      goto LABEL_8;
    }

    v10 = +[PPConfiguration sharedInstance];
    if ([v10 use2StageScoreInterpreterForTPScoring])
    {
    }

    else
    {
      v11 = +[PPConfiguration sharedInstance];
      v12 = [v11 topicScoringUsesHybrid];

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    [MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32)];
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2_287;
    block[3] = &unk_278977290;
    v40 = *(a1 + 56);
    v37 = v8;
    v38 = v9;
    v39 = *(a1 + 32);
    dispatch_async(v13, block);

LABEL_8:
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [v3 topic];
    v18 = [v17 clusterIdentifier];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [v3 topic];
    v22 = [v21 clusterIdentifier];

    if (v22)
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
LABEL_15:

        goto LABEL_16;
      }

      v23 = [*(*(a1 + 48) + 80) decayedFeedbackCountsForClusterIdentifier:?];
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v26 = pp_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v34 = [v3 topic];
        v35 = [v34 topicIdentifier];
        *buf = 138412290;
        v42 = v35;
        _os_log_fault_impl(&dword_23224A000, v26, OS_LOG_TYPE_FAULT, "Topic record unexpectedly had nil cluster identifier while aggregating for scoring. %@", buf, 0xCu);
      }

      v27 = *(*(a1 + 80) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = 0;

      v25 = objc_opt_new();
      v29 = [v25 UUIDString];
      v30 = [v29 lowercaseString];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    goto LABEL_15;
  }

  [v7 addObject:v3];
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_291(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) count];
  if (result)
  {
    v3 = *(*(a1[5] + 8) + 40);
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(a1[4] + 16);

    return v5();
  }

  return result;
}

void __74__PPLocalTopicStore__petLoggingForQuery_count_clientProcessName_hasError___block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setBundleId:*(a1 + 32)];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = log10(v2);
  }

  else
  {
    v3 = 0;
  }

  [v9 setResultSizeLog10:v3];
  [v9 setLimitHit:{*(a1 + 56) > objc_msgSend(*(a1 + 40), "limit")}];
  v4 = [*(a1 + 40) scoringDate];
  [v9 setTimeSpec:v4 != 0];

  v5 = [*(a1 + 40) fromDate];
  [v9 setTimeLimited:v5 != 0];

  v6 = [*(a1 + 40) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 64)];
  v7 = [*(*(a1 + 48) + 24) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

intptr_t __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2_287(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return dispatch_semaphore_signal(v4);
}

- (id)rankedTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name
{
  nameCopy = name;
  queryCopy = query;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:nameCopy method:@"rankedTopicsWithQuery"];
  v10 = [queryCopy copy];
  [v10 setLimit:-1];
  scoreWithCalibration = [queryCopy scoreWithCalibration];
  v12 = +[PPConfiguration sharedInstance];
  topicCalibrationTrie = [v12 topicCalibrationTrie];

  v14 = [PPEvictingMinPriorityQueue alloc];
  limit = [queryCopy limit];

  v16 = [(PPEvictingMinPriorityQueue *)v14 initWithCapacity:limit];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__PPLocalTopicStore_rankedTopicsWithQuery_error_clientProcessName___block_invoke;
  v21[3] = &unk_278977240;
  v24 = scoreWithCalibration;
  v22 = topicCalibrationTrie;
  v23 = v16;
  v17 = v16;
  v18 = topicCalibrationTrie;
  [(PPLocalTopicStore *)self iterScoredTopicsWithQuery:v10 error:error clientProcessName:nameCopy block:v21];

  extractSortedMutableArray = [(PPEvictingMinPriorityQueue *)v17 extractSortedMutableArray];

  return extractSortedMutableArray;
}

void __67__PPLocalTopicStore_rankedTopicsWithQuery_error_clientProcessName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (*(a1 + 48) == 1)
    {
      v6 = v3;
      v5 = [PPLocalTopicStore calibrateScoredTopic:v3 calibrationTrie:*(a1 + 32)];

      v4 = v5;
    }

    v7 = v4;
    [*(a1 + 40) addObject:v4];
  }
}

- (id)scoreTopics:(id)topics scoringDate:(id)date decayRate:(double)rate strictFiltering:(BOOL)filtering sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0
{
  filteringCopy = filtering;
  v141 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  dateCopy = date;
  statsCopy = stats;
  countsCopy = counts;
  if (![topicsCopy count])
  {
    v24 = 0;
    goto LABEL_52;
  }

  v123 = topicsCopy;
  v20 = topicsCopy;
  v129 = dateCopy;
  v21 = statsCopy;
  v22 = countsCopy;
  if (!self)
  {
    v128 = v21;
    v24 = 0;
    goto LABEL_51;
  }

  v121 = countsCopy;
  v122 = statsCopy;
  v120 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v21)
  {
    v127 = 0;
    v128 = v21;
    v23 = 0;
  }

  else
  {
    objc_opt_self();
    v23 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
    objc_opt_self();
    v25 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
    v26 = v25;
    v27 = 0;
    if (v23 && v25)
    {
      v28 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v23];
      v27 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v26]| v28;
    }

    v127 = v26;
    storage = self->_storage;
    v30 = objc_autoreleasePoolPush();
    v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784770, 0}];
    objc_autoreleasePoolPop(v30);
    v128 = [(PPTopicStorage *)storage sourceStats:v27 withExcludedAlgorithms:v31];
  }

  v32 = [v20 objectAtIndexedSubscript:0];
  topic = [v32 topic];

  v34 = objc_alloc(MEMORY[0x277D3A530]);
  v119 = topic;
  topicIdentifier = [topic topicIdentifier];
  v36 = [v20 objectAtIndexedSubscript:0];
  v125 = [v34 initWithTopicIdentifier:topicIdentifier mostRelevantRecord:v36];

  v37 = *scorer;
  v126 = v23;
  if (!*scorer)
  {
    v38 = [PPStreamingTopicScorer alloc];
    v118 = v129;
    v39 = v128;
    if (v38 && (*v138 = v38, *&v138[8] = PPStreamingTopicScorer, (v40 = objc_msgSendSuper2(v138, sel_init)) != 0))
    {
      v41 = v40;
      v117 = filteringCopy;
      objc_opt_self();
      v42 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
      if (v42)
      {
        v43 = v42;
        v115 = v22;
        v116 = dateCopy;
        objc_opt_self();
        v44 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
        if (v44)
        {
          v45 = v44;
          v46 = *MEMORY[0x277D3A6D8];
          v47 = v43;
          v48 = [[PPScoreInterpreter alloc] initWithBytecode:v43];
          v49 = v41[1];
          v41[1] = v48;

          v50 = [[PPScoreInterpreter alloc] initWithBytecode:v45];
          v51 = v41[2];
          v41[2] = v50;

          v52 = [PPScoreDict alloc];
          v114 = v45;
          v53 = objc_opt_new();
          v54 = [(PPScoreDict *)v52 initWithScoreInputSet:v53];

          *&v55 = v46;
          [(PPScoreDict *)v54 setScalarValue:2 forIndex:v55];
          *&v56 = [v39 minRefCount];
          [(PPScoreDict *)v54 setScalarValue:6 forIndex:v56];
          *&v57 = [v39 maxRefCount];
          [(PPScoreDict *)v54 setScalarValue:7 forIndex:v57];
          [v39 avgRefCount];
          *&v58 = v58;
          [(PPScoreDict *)v54 setScalarValue:8 forIndex:v58];
          [v39 medianRefCount];
          *&v59 = v59;
          [(PPScoreDict *)v54 setScalarValue:9 forIndex:v59];
          *&v60 = [v39 uniqueBundleIdCount];
          [(PPScoreDict *)v54 setScalarValue:10 forIndex:v60];
          *&v61 = [v39 uniqueDocIdCount];
          [(PPScoreDict *)v54 setScalarValue:11 forIndex:v61];
          *&v62 = [v39 recordCount];
          [(PPScoreDict *)v54 setScalarValue:23 forIndex:v62];
          *&v63 = v117;
          [(PPScoreDict *)v54 setScalarValue:16 forIndex:v63];
          v64 = MEMORY[0x277CBEAF8];
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          localeIdentifier = [currentLocale localeIdentifier];
          v67 = [v64 componentsFromLocaleIdentifier:localeIdentifier];
          v68 = [v67 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
          [(PPScoreDict *)v54 setObject:v68 forIndex:5];

          v69 = v118;
          [(PPScoreDict *)v54 setObject:v118 forIndex:7];
          earliestDate = [v39 earliestDate];
          [(PPScoreDict *)v54 setObject:earliestDate forIndex:9];

          latestDate = [v39 latestDate];
          [(PPScoreDict *)v54 setObject:latestDate forIndex:10];

          v72 = v114;
          v73 = v41[3];
          v41[3] = v54;
        }

        else
        {
          v72 = v43;
          v47 = v41;
          v41 = 0;
          v69 = v118;
        }

        v74 = v41;

        v41 = v47;
        v22 = v115;
        dateCopy = v116;
      }

      else
      {
        v74 = 0;
        v69 = v118;
      }
    }

    else
    {
      v74 = 0;
      v69 = v118;
    }

    v75 = *scorer;
    *scorer = v74;

    v76 = objc_opt_self();
    v77 = objc_opt_self();
    v37 = *scorer;
  }

  v78 = [v20 objectAtIndexedSubscript:0];
  if (v37)
  {
    v79 = v37[3];
    v80 = v22;
    [v80 engagedExplicitly];
    *&v81 = v81;
    [v79 setScalarValue:12 forIndex:v81];
    [v80 engagedImplicitly];
    *&v82 = v82;
    [v79 setScalarValue:13 forIndex:v82];
    [v80 rejectedExplicitly];
    *&v83 = v83;
    [v79 setScalarValue:14 forIndex:v83];
    [v80 rejectedImplicitly];
    *&v84 = v84;
    [v79 setScalarValue:15 forIndex:v84];
    latestDate2 = [v80 latestDate];

    [v79 setObject:latestDate2 forIndex:11];
  }

  v86 = v22;

  v87 = +[PPConfiguration sharedInstance];
  topicScoringUsesHybrid = [v87 topicScoringUsesHybrid];

  v89 = selfCopy;
  if (topicScoringUsesHybrid)
  {
    v90 = [(NSCache *)selfCopy->_modelCache objectForKey:@"scoring_model"];
    v91 = v125;
    if (!v90)
    {
      trialWrapper = selfCopy->_trialWrapper;
      *&v130 = 0;
      v90 = [(PPTrialWrapper *)trialWrapper mlModelForModelName:@"PPModel_TP.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" error:&v130];
      v93 = v130;
      if (v93)
      {
        v94 = pp_topics_log_handle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *v138 = 138412802;
          *&v138[4] = v93;
          *&v138[12] = 2112;
          *&v138[14] = @"PPModel_TP.mlmodelc";
          v139 = 2112;
          v140 = @"PERSONALIZATION_PORTRAIT_TOPICS";
          _os_log_error_impl(&dword_23224A000, v94, OS_LOG_TYPE_ERROR, "PPlocalTopciStore: error %@ in retrieving %@ model with namespace %@", v138, 0x20u);
        }

        v91 = v125;
      }

      if (!v90)
      {
        v112 = pp_topics_log_handle();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          *v138 = 0;
          _os_log_error_impl(&dword_23224A000, v112, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: unable to locate ML model.", v138, 2u);
        }

        v24 = 0;
        countsCopy = v121;
        statsCopy = v122;
        v97 = v120;
        goto LABEL_49;
      }

      v89 = selfCopy;
      [(NSCache *)selfCopy->_modelCache setObject:v90 forKey:@"scoring_model"];
    }

    [(PPLocalTopicStore *)v89 finalScoreFromRecordsUsingHybrid:v20 streamingScorer:*scorer mlModel:v90];
    v96 = v95;

    v97 = v120;
  }

  else
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v98 = v20;
    v99 = [v98 countByEnumeratingWithState:&v130 objects:v138 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v131;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v131 != v101)
          {
            objc_enumerationMutation(v98);
          }

          [(PPStreamingTopicScorer *)*scorer addRecord:?];
        }

        v100 = [v98 countByEnumeratingWithState:&v130 objects:v138 count:16];
      }

      while (v100);
    }

    if (*scorer)
    {
      v96 = [PPStreamingTopicScorer getFinalScoreWithAggregationResultOut:0 finalResultOut:?];
    }

    else
    {
      v96 = 0.0;
    }

    v97 = v120;
    v91 = v125;
  }

  v103 = +[PPConfiguration sharedInstance];
  [v103 scoreThresholdForTopic];
  v105 = v104;

  if (v96 <= 0.0)
  {
    v106 = 1;
  }

  else
  {
    v106 = topicScoringUsesHybrid;
  }

  v22 = v86;
  if (v106 == 1)
  {
    v107 = v105;
    if (v96 < v107)
    {
      v108 = pp_topics_log_handle();
      countsCopy = v121;
      v109 = v126;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        v113 = v107;
        if (!topicScoringUsesHybrid)
        {
          v113 = 0.0;
        }

        *buf = 134218240;
        v135 = v96;
        v136 = 2048;
        v137 = v113;
        _os_log_debug_impl(&dword_23224A000, v108, OS_LOG_TYPE_DEBUG, "Portrait Scoring, filtering out score of %f below threshold of %f", buf, 0x16u);
      }

      v24 = 0;
      statsCopy = v122;
      goto LABEL_50;
    }
  }

  v24 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v91 score:v96];
  countsCopy = v121;
  statsCopy = v122;
LABEL_49:
  v109 = v126;
LABEL_50:

  objc_autoreleasePoolPop(v97);
LABEL_51:

  topicsCopy = v123;
LABEL_52:

  v110 = *MEMORY[0x277D85DE8];

  return v24;
}

- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  hybridCopy = hybrid;
  scorerCopy = scorer;
  modelCopy = model;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [hybridCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(hybridCopy);
        }

        [(PPStreamingTopicScorer *)scorerCopy addRecord:?];
      }

      v11 = [hybridCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0;
  *&v14 = [PPStreamingTopicScorer getFinalScoreWithAggregationResultOut:scorerCopy finalResultOut:&v27];
  if (v27)
  {
    v26 = 0;
    v15 = [modelCopy predictionFromFeatures:v27 error:{&v26, v14}];
    v16 = v26;
    if (v15)
    {
      v17 = [v15 featureValueForName:@"computed_score"];
      multiArrayValue = [v17 multiArrayValue];

      if (multiArrayValue)
      {
        multiArrayValue2 = [v17 multiArrayValue];
        v20 = [multiArrayValue2 objectAtIndexedSubscript:0];
        [v20 doubleValue];
        v22 = v21;
      }

      else
      {
        [v17 doubleValue];
        v22 = v23;
      }
    }

    else
    {
      v17 = pp_default_log_handle();
      v22 = -1.0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPTopicStore: unable to retrieve prediction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = pp_default_log_handle();
    v22 = 0.0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: the score interpreter provided a nil final output.", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (PPLocalTopicStore)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPTopicStorage alloc] initWithDatabase:v3];
    if (v4)
    {
      v5 = +[PPTrialWrapper sharedInstance];
      self = [(PPLocalTopicStore *)self initWithStorage:v4 trialWrapper:v5];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocalTopicStore)initWithStorage:(id)storage trialWrapper:(id)wrapper
{
  v45 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  wrapperCopy = wrapper;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v42.receiver = self;
  v42.super_class = PPLocalTopicStore;
  _initFromSubclass = [(PPTopicStore *)&v42 _initFromSubclass];
  v11 = _initFromSubclass;
  if (_initFromSubclass)
  {
    objc_storeStrong(_initFromSubclass + 10, storage);
    v12 = objc_opt_new();
    modelCache = v11->_modelCache;
    v11->_modelCache = v12;

    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v14];

    lock = v11->_lock;
    v11->_lock = v15;

    objc_storeStrong(&v11->_trialWrapper, wrapper);
    v17 = [[PPTopicBlocklist alloc] initWithTrialWrapper:v11->_trialWrapper];
    blocklist = v11->_blocklist;
    v11->_blocklist = v17;

    objc_initWeak(&location, v11);
    trialWrapper = v11->_trialWrapper;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __50__PPLocalTopicStore_initWithStorage_trialWrapper___block_invoke;
    v39[3] = &unk_2789797B8;
    objc_copyWeak(&v40, &location);
    v20 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" block:v39];
    v21 = objc_autoreleasePoolPush();
    parentDirectory = [(PPTopicStorage *)v11->_storage parentDirectory];
    v23 = [parentDirectory stringByAppendingPathComponent:@"Topics"];

    objc_autoreleasePoolPop(v21);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    v25 = [defaultManager createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v38];
    v26 = v38;
    if ((v25 & 1) == 0)
    {
      v27 = pp_default_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v26;
        _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPLocalTopicStore had an error while trying to create the cache directory: %@", buf, 0xCu);
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = [v23 stringByAppendingPathComponent:@"ScoreCache"];
    objc_autoreleasePoolPop(v28);
    cachePath = v11->_cachePath;
    v11->_cachePath = v29;

    v31 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-cache"];
    cacheUpdateQueue = v11->_cacheUpdateQueue;
    v11->_cacheUpdateQueue = v31;

    v33 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-asyncCache" qosClass:9];
    cacheAsyncUpdateQueue = v11->_cacheAsyncUpdateQueue;
    v11->_cacheAsyncUpdateQueue = v33;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v11;
}

void __50__PPLocalTopicStore_initWithStorage_trialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeAllObjects];
    v3 = pp_topics_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPLocalTopicStore: invaliding model cache due to Trial update.", v4, 2u);
    }
  }
}

+ (id)recordsForTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm
{
  v27 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  sourceCopy = source;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(topicsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = topicsCopy;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_opt_new();
        item = [v14 item];
        [v15 setTopic:item];

        [v14 score];
        [v15 setInitialScore:?];
        [v15 setSource:sourceCopy];
        [v15 setAlgorithm:algorithm];
        osBuild = [MEMORY[0x277D3A578] osBuild];
        [v15 setExtractionOsBuild:osBuild];

        v18 = +[PPTrialWrapper sharedInstance];
        [v15 setExtractionAssetVersion:{objc_msgSend(v18, "treatmentsHash")}];

        [v9 addObject:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)calibrateScoredTopic:(id)topic calibrationTrie:(id)trie
{
  topicCopy = topic;
  if (trie)
  {
    trieCopy = trie;
    item = [topicCopy item];
    topicIdentifier = [item topicIdentifier];
    v9 = [topicIdentifier substringFromIndex:1];
    v10 = [trieCopy payloadForString:v9];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D3A498]);
      item2 = [topicCopy item];
      [topicCopy score];
      v14 = [v11 initWithItem:item2 score:{(1.0 - pow(1.0 - v13, v10 / 100.0))}];

      topicCopy = v14;
    }
  }

  v15 = topicCopy;

  return topicCopy;
}

+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit
{
  truncateCopy = truncate;
  [truncateCopy sortUsingComparator:&__block_literal_global_20683];
  if ([truncateCopy count] > limit)
  {
    [truncateCopy removeObjectsInRange:{limit, objc_msgSend(truncateCopy, "count") - limit}];
  }
}

uint64_t __48__PPLocalTopicStore_sortAndTruncate_queryLimit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

@end