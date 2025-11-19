@interface PPLocalNamedEntityStore
+ (float)resolvedPerRecordDecayRateForFeatureProvider:(id)a3 perRecordDecayRate:(float)a4;
+ (id)defaultStore;
+ (id)recordsForNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5;
+ (void)sortAndTruncate:(id)a3 queryLimit:(unint64_t)a4;
- (BOOL)clearWithError:(id *)a3 deletedCount:(unint64_t *)a4;
- (BOOL)cloudSyncWithError:(id *)a3;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThan:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 error:(id *)a6;
- (BOOL)donateMapItem:(id)a3 forPlaceName:(id)a4 error:(id *)a5;
- (BOOL)donateNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 error:(id *)a8;
- (BOOL)filterExistingNamedEntitiesWithShouldContinueBlock:(id)a3;
- (BOOL)flushDonationsWithError:(id *)a3;
- (BOOL)iterNamedEntityRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)iterRankedNamedEntitiesWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (PPLocalNamedEntityStore)init;
- (PPLocalNamedEntityStore)initWithStorage:(id)a3 topicStoreForNamedEntityMapping:(id)a4 lazyContactStoreForMapsFeedback:(id)a5 trialWrapper:(id)a6;
- (double)finalScoreFromRecordsUsingHybrid:(id)a3 streamingScorer:(id)a4 mlModel:(id)a5;
- (id)namedEntityRecordsWithQuery:(id)a3 error:(id *)a4;
- (id)namedEntityToMatchedStringMappingForNamedEntities:(id)a3 timestamp:(double)a4 error:(id *)a5;
- (id)rankedNamedEntitiesWithQuery:(id)a3 error:(id *)a4 clientProcessName:(id)a5;
- (id)scoredEntityFromRecords:(id)a3 scoringDate:(id)a4 perRecordDecayRate:(float)a5 decayRate:(float)a6 sourceStats:(id)a7 decayedFeedbackCounts:(id)a8 streamingScorer:(id *)a9 mlModel:(id)a10;
- (uint64_t)_generateMapsSearchQueryResult;
- (void)_logDifferentiallyPrivateExtractionsWithDpCategory:(void *)a1 extractions:(void *)a2;
- (void)processFeedback:(id)a3;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)runWithLockAcquired:(id)a3;
@end

@implementation PPLocalNamedEntityStore

uint64_t __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke_402(uint64_t a1)
{
  v2 = pp_entities_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "Maps launch event handler invoked", v4, 2u);
  }

  return [MEMORY[0x277D425A0] runAsyncOnQueue:*(*(a1 + 32) + 32) afterDelaySeconds:*(a1 + 40) block:3.0];
}

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_6129);
  if (!defaultStore_instance_6130)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_6130;
    defaultStore_instance_6130 = v2;

    v4 = defaultStore_instance_6130;
    if (defaultStore_instance_6130)
    {
      [(PPLocalNamedEntityStore *)defaultStore_instance_6130 _generateMapsSearchQueryResult];
      objc_initWeak(&location, v4);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke;
      aBlock[3] = &unk_2789797B8;
      objc_copyWeak(&v16, &location);
      v5 = _Block_copy(aBlock);
      v6 = +[PPAppLaunchMonitor sharedInstance];
      v7 = *MEMORY[0x277D3A650];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke_402;
      v13[3] = &unk_2789737B8;
      v13[4] = v4;
      v8 = v5;
      v14 = v8;
      v9 = [v6 registerForAppLaunchWithBundleId:v7 queue:0 handler:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = pp_entities_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v13, 2u);
      }
    }
  }

  v11 = defaultStore_instance_6130;
  pthread_mutex_unlock(&defaultStore_lock_6129);

  return v11;
}

- (void)runWithLockAcquired:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PPLocalNamedEntityStore_runWithLockAcquired___block_invoke;
  v7[3] = &unk_2789737E0;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (BOOL)filterExistingNamedEntitiesWithShouldContinueBlock:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  if (v4[2](v4))
  {
    v6 = [(PPTrialWrapper *)self->_trialWrapper lastTreatmentUpdateForNamespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
    storage = self->_storage;
    v49 = 0;
    v8 = [(PPNamedEntityStorage *)storage namedEntityFilterLastRunDateWithError:&v49];
    v9 = v49;
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10)
    {
      if (!v8 || ([v6 earlierDate:v8], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToDate:", v6), v11, !v12))
      {
        if (v4[2](v4))
        {
          *buf = 0;
          v44 = buf;
          v45 = 0x3032000000;
          v46 = __Block_byref_object_copy__6005;
          v47 = __Block_byref_object_dispose__6006;
          v48 = objc_opt_new();
          v16 = objc_opt_new();
          if (v4[2](v4))
          {
            v17 = self->_storage;
            v18 = objc_opt_new();
            v42 = v9;
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __78__PPLocalNamedEntityStore_filterExistingNamedEntitiesWithShouldContinueBlock___block_invoke;
            v38[3] = &unk_278973768;
            v40 = v4;
            v39 = v16;
            v41 = buf;
            [(PPNamedEntityStorage *)v17 iterNamedEntityRecordsAndIdsWithQuery:v18 error:&v42 block:v38];
            v19 = v42;

            if ([*(v44 + 5) count])
            {
              v20 = pp_entities_log_handle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [*(v44 + 5) count];
                *v50 = 134217984;
                v51 = v21;
                _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: dropping %tu named entities", v50, 0xCu);
              }

              v36 = v19;
              v37 = 0;
              v22 = [(PPNamedEntityStorage *)self->_storage deleteNamedEntitiesMatchingRowIds:*(v44 + 5) atLeastOneNamedEntityRemoved:0 deletedCount:&v37 error:&v36];
              v23 = v36;

              if (!v22)
              {
                v24 = pp_entities_log_handle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *v50 = 138412290;
                  v51 = v23;
                  _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error in dropping the named entities: %@", v50, 0xCu);
                }
              }

              v25 = v37;
              if (v25 != [*(v44 + 5) count])
              {
                v26 = pp_entities_log_handle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = [*(v44 + 5) count];
                  *v50 = 134218240;
                  v51 = v27;
                  v52 = 2048;
                  v53 = v37;
                  _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: dropped a different number of named entities than was expected. Expected %tu, found %tu", v50, 0x16u);
                }
              }
            }

            else
            {
              v30 = pp_entities_log_handle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *v50 = 0;
                _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: no named entities to drop.", v50, 2u);
              }

              v23 = v19;
            }

            v31 = self->_storage;
            v35 = v23;
            v13 = [(PPNamedEntityStorage *)v31 setNamedEntityFilterLastRunDate:v5 error:&v35];
            v9 = v35;

            if (v13)
            {
              v32 = pp_entities_log_handle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *v50 = 0;
                _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: completed pruning of database for new filter.", v50, 2u);
              }
            }

            else
            {
              v32 = pp_entities_log_handle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *v50 = 138412290;
                v51 = v9;
                _os_log_error_impl(&dword_23224A000, v32, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to update the last runtime of the named entity filter. %@", v50, 0xCu);
              }
            }

            v29 = v40;
          }

          else
          {
            v29 = pp_entities_log_handle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v50 = 0;
              _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entities after constructing filter.", v50, 2u);
            }

            v13 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v28 = pp_entities_log_handle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entiies before filtering operation.", buf, 2u);
          }

          v13 = 0;
        }

        goto LABEL_47;
      }

      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: not running filter as there is no need.", buf, 2u);
      }
    }

    else
    {
      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: has previously run filter on default assets in the build.", buf, 2u);
      }
    }

    v13 = 1;
LABEL_47:

    goto LABEL_48;
  }

  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entities before processing.", buf, 2u);
  }

  v13 = 0;
LABEL_48:

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

void __78__PPLocalNamedEntityStore_filterExistingNamedEntitiesWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    if (([*(a1 + 32) isAcceptableRecord:v7] & 1) == 0)
    {
      v8 = pp_entities_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134217984;
        v12 = a3;
        _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: filtering named entity with row id %lli", &v11, 0xCu);
      }

      [*(*(*(a1 + 48) + 8) + 40) addIndex:a3];
    }
  }

  else
  {
    v9 = pp_entities_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering in progress.", &v11, 2u);
    }

    *a4 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)namedEntityToMatchedStringMappingForNamedEntities:(id)a3 timestamp:(double)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:a4];
  [v9 setScoringDate:v10];
  [v9 setToDate:v10];
  [v9 setOrderByName:1];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__6005;
  v34[4] = __Block_byref_object_dispose__6006;
  v35 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6005;
  v32 = __Block_byref_object_dispose__6006;
  v33 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke;
  aBlock[3] = &unk_278979A20;
  aBlock[4] = v34;
  aBlock[5] = &v28;
  v11 = _Block_copy(aBlock);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__6005;
  v25[4] = __Block_byref_object_dispose__6006;
  v26 = 0;
  v23 = v25;
  v24 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke_2;
  v21[3] = &unk_278973740;
  v12 = v11;
  v22 = v12;
  v13 = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v9 error:&v24 block:v21];
  v14 = v24;
  v15 = v14;
  if (v13)
  {
    v16 = v29[5];
  }

  else
  {
    if (a5 && v14)
    {
      v17 = v14;
      *a5 = v15;
    }

    v18 = pp_entities_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v15;
      _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "namedEntityToMatchedStringMappingForNamedEntities: error from iterNamedEntityRecordsWithQuery: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(v34, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) count])
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          [v5 rangeOfString:v12 options:{1, v16}];
          if (v14)
          {
            [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:v12];
            [v6 addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [*(*(*(a1 + 32) + 8) + 40) minusSet:v6];
  }

  else
  {
    *a3 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [v17 entity];
  v6 = [v5 clusterIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v17 entity];
    v10 = [v9 clusterIdentifier];
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      goto LABEL_5;
    }

    v11 = [v17 entity];
    v12 = [v11 clusterIdentifier];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(a1 + 32);
    v5 = [v17 entity];
    v16 = [v5 name];
    (*(v15 + 16))(v15, v16, a3);
  }

LABEL_5:
}

- (void)processFeedback:(id)a3
{
  v239 = *MEMORY[0x277D85DE8];
  v165 = a3;
  v3 = [v165 feedbackItems];
  if (self)
  {
    v4 = objc_opt_new();
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v227 objects:v235 count:16];
    if (v6)
    {
      v7 = *v228;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v228 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v227 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 itemString];
          v12 = [v4 objectForKeyedSubscript:v11];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = objc_opt_new();
            [v4 setObject:v14 forKeyedSubscript:v11];
          }

          v15 = [v4 objectForKeyedSubscript:v11];
          [v15 addObject:v9];

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v5 countByEnumeratingWithState:&v227 objects:v235 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v16 = [v165 clientIdentifier];
  v17 = [v16 isEqualToString:@"mapssearch"];

  if (v17)
  {
    v18 = v4;
    v196 = v18;
    if (self)
    {
      v181 = [v18 allKeys];
      v19 = objc_opt_new();
      v179 = objc_opt_new();
      if ([v181 count])
      {
        v20 = 0;
        v21 = 0;
        v172 = 0;
        while (1)
        {
          v174 = objc_autoreleasePoolPush();
          v22 = [v181 count] > 7 ? 8 : objc_msgSend(v181, "count");
          v23 = objc_autoreleasePoolPush();
          v176 = [v181 subarrayWithRange:{v20, v22}];
          objc_autoreleasePoolPop(v23);
          [v179 setMatchingIdentifiers:v176];
          v24 = [(_PASLazyResult *)self->_lazyContactStoreForMapsFeedback result];
          *&v212 = v21;
          v25 = [v24 contactsWithQuery:v179 error:&v212];
          v26 = v212;

          if (!v25)
          {
            break;
          }

          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          obj = v25;
          v187 = [obj countByEnumeratingWithState:&v223 objects:v235 count:16];
          if (v187)
          {
            v185 = *v224;
            v27 = v26;
            do
            {
              v28 = 0;
              do
              {
                if (*v224 != v185)
                {
                  v29 = v28;
                  objc_enumerationMutation(obj);
                  v28 = v29;
                }

                v190 = v28;
                v30 = *(*(&v223 + 1) + 8 * v28);
                context = objc_autoreleasePoolPush();
                v210[0] = v27;
                v198 = [v30 contactsContactIdentifierWithError:v210];
                v194 = v210[0];

                if (v198)
                {
                  v31 = [v30 localizedFullName];

                  if (v31)
                  {
                    v32 = [v30 localizedFullName];
                    v33 = [v19 objectForKeyedSubscript:v32];
                    v34 = v33 == 0;

                    if (v34)
                    {
                      v35 = objc_opt_new();
                      v36 = [v30 localizedFullName];
                      [v19 setObject:v35 forKeyedSubscript:v36];
                    }

                    v37 = [v30 localizedFullName];
                    v38 = [v19 objectForKeyedSubscript:v37];
                    v39 = [v196 objectForKeyedSubscript:v198];
                    v40 = v39;
                    if (!v39)
                    {
                      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                      v40 = MEMORY[0x277CBEBF8];
                    }

                    [v38 addObjectsFromArray:v40];
                  }

                  v219 = 0u;
                  v220 = 0u;
                  v217 = 0u;
                  v218 = 0u;
                  v41 = [v30 postalAddresses];
                  v42 = [v41 countByEnumeratingWithState:&v217 objects:&v227 count:16];
                  if (v42)
                  {
                    v43 = *v218;
                    do
                    {
                      for (j = 0; j != v42; ++j)
                      {
                        if (*v218 != v43)
                        {
                          objc_enumerationMutation(v41);
                        }

                        v45 = *(*(&v217 + 1) + 8 * j);
                        v46 = objc_autoreleasePoolPush();
                        v47 = [v45 value];
                        v48 = [v47 singleLineNormalizedAddressString];
                        if (v48)
                        {
                          v49 = [v19 objectForKeyedSubscript:v48];
                          v50 = v49 == 0;

                          if (v50)
                          {
                            v51 = objc_opt_new();
                            [v19 setObject:v51 forKeyedSubscript:v48];
                          }

                          v52 = [v19 objectForKeyedSubscript:v48];
                          v53 = [v196 objectForKeyedSubscript:v198];
                          v54 = v53;
                          if (!v53)
                          {
                            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                            v54 = MEMORY[0x277CBEBF8];
                          }

                          [v52 addObjectsFromArray:v54];
                        }

                        objc_autoreleasePoolPop(v46);
                      }

                      v42 = [v41 countByEnumeratingWithState:&v217 objects:&v227 count:16];
                    }

                    while (v42);
                  }
                }

                else
                {
                  v41 = pp_entities_log_handle();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v194;
                    _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error fetching contact identifier for contact. %@", buf, 0xCu);
                  }
                }

                objc_autoreleasePoolPop(context);
                v28 = v190 + 1;
                v27 = v194;
              }

              while (v190 + 1 != v187);
              v187 = [obj countByEnumeratingWithState:&v223 objects:v235 count:16];
              v27 = v194;
            }

            while (v187);
          }

          else
          {
            v27 = v26;
          }

          v21 = v27;

          objc_autoreleasePoolPop(v174);
          v172 += 8;
          v20 = v172;
          if ([v181 count] <= v172)
          {
            goto LABEL_57;
          }
        }

        v55 = pp_entities_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_error_impl(&dword_23224A000, v55, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error fetching maps related contacts: %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v174);
        v21 = v26;
LABEL_57:
      }

      v4 = v19;
      [v19 addEntriesFromDictionary:v196];
    }

    else
    {
      v4 = 0;
    }
  }

  v56 = objc_alloc(MEMORY[0x277CBEB58]);
  v57 = [v4 allKeys];
  v58 = [v56 initWithArray:v57];

  v59 = objc_opt_new();
  v164 = objc_opt_new();
  v60 = [v165 timestamp];
  [v164 setScoringDate:v60];

  v61 = [v165 timestamp];
  [v164 setToDate:v61];

  v62 = [v165 clientBundleId];
  v63 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:v62 domain:1];
  [v164 setExcludingSourceBundleIds:v63];

  [v164 setOrderByName:1];
  v210[0] = 0;
  v210[1] = v210;
  v210[2] = 0x3032000000;
  v210[3] = __Block_byref_object_copy__6005;
  v210[4] = __Block_byref_object_dispose__6006;
  v211 = &stru_284759D38;
  v208 = v210;
  v209 = 0;
  v204[0] = MEMORY[0x277D85DD0];
  v204[1] = 3221225472;
  v204[2] = __43__PPLocalNamedEntityStore_processFeedback___block_invoke;
  v204[3] = &unk_278973718;
  v162 = v58;
  v205 = v162;
  v163 = v59;
  v206 = v163;
  v199 = v4;
  v207 = v199;
  LOBYTE(v58) = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v164 error:&v209 block:v204];
  v161 = v209;
  if (v58)
  {
    if (![v163 count])
    {
LABEL_129:
      v139 = objc_opt_new();
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v144 = v162;
      v145 = [v144 countByEnumeratingWithState:&v200 objects:v222 count:16];
      if (v145)
      {
        v146 = *v201;
        do
        {
          for (k = 0; k != v145; ++k)
          {
            if (*v201 != v146)
            {
              objc_enumerationMutation(v144);
            }

            v148 = *(*(&v200 + 1) + 8 * k);
            v149 = objc_autoreleasePoolPush();
            v150 = [v199 objectForKeyedSubscript:v148];
            [v139 addObjectsFromArray:v150];

            objc_autoreleasePoolPop(v149);
          }

          v145 = [v144 countByEnumeratingWithState:&v200 objects:v222 count:16];
        }

        while (v145);
      }

      if ([v139 count])
      {
        v151 = objc_alloc(MEMORY[0x277D3A328]);
        v152 = [v165 timestamp];
        v153 = [v165 clientIdentifier];
        v154 = [v165 clientBundleId];
        v155 = [v165 mappingId];
        v156 = [v151 initWithFeedbackItems:v139 timestamp:v152 clientIdentifier:v153 clientBundleId:v154 mappingId:v155];

        [PPFeedbackStorage logFeedback:v156 domain:1 domainStatus:1 inBackground:1];
      }

      goto LABEL_138;
    }

    v64 = objc_alloc(MEMORY[0x277D3A328]);
    v65 = [v165 timestamp];
    v66 = [v165 clientIdentifier];
    v67 = [v165 clientBundleId];
    v68 = [v165 mappingId];
    v69 = [v64 initWithFeedbackItems:v163 timestamp:v65 clientIdentifier:v66 clientBundleId:v67 mappingId:v68];

    [PPFeedbackStorage logFeedback:v69 domain:1 domainStatus:2 inBackground:1];
    v70 = [v165 clientBundleId];
    v71 = [v165 clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:v165 matchingFeedbackItems:v163 clientBundleId:v70 clientIdentifier:v71 domain:1];

    v72 = v69;
    v160 = v72;
    if (self)
    {
      v73 = [v72 clientBundleId];
      v74 = [PPFeedbackUtils shouldSample:v73];

      if (v74)
      {
        oslog = objc_opt_new();
        [oslog setPredictionType:2];
        v75 = [PPFeedbackUtils feedbackMetadataForBaseFeedback:v160];
        [oslog setFeedbackMetadata:v75];

        v216 = 0;
        v169 = v160;
        v76 = objc_opt_new();
        v77 = objc_opt_new();
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v78 = [v169 feedbackItems];
        v79 = [v78 countByEnumeratingWithState:&v217 objects:v235 count:16];
        if (v79)
        {
          v80 = *v218;
          do
          {
            for (m = 0; m != v79; ++m)
            {
              if (*v218 != v80)
              {
                objc_enumerationMutation(v78);
              }

              v82 = *(*(&v217 + 1) + 8 * m);
              v83 = [v82 itemString];
              [v76 addObject:v83];

              v84 = [v82 itemString];
              [v77 setObject:v82 forKeyedSubscript:v84];
            }

            v79 = [v78 countByEnumeratingWithState:&v217 objects:v235 count:16];
          }

          while (v79);
        }

        v85 = [v169 timestamp];
        [v85 timeIntervalSince1970];
        v86 = [(PPLocalNamedEntityStore *)self namedEntityToMatchedStringMappingForNamedEntities:v76 timestamp:&v216 error:?];

        v182 = objc_opt_new();
        v234 = 0u;
        v233 = 0u;
        v232 = 0u;
        *buf = 0u;
        v87 = v86;
        v88 = [v87 countByEnumeratingWithState:buf objects:&v227 count:16];
        if (v88)
        {
          v89 = *v232;
          do
          {
            for (n = 0; n != v88; ++n)
            {
              if (*v232 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*&buf[8] + 8 * n);
              v92 = [v87 objectForKeyedSubscript:v91];
              v93 = [v77 objectForKeyedSubscript:v91];
              [v182 setObject:v92 forKeyedSubscript:v93];
            }

            v88 = [v87 countByEnumeratingWithState:buf objects:&v227 count:16];
          }

          while (v88);
        }

        v94 = v216;
        v159 = v182 != 0;
        v158 = v94;
        if (v182)
        {
          log = [[PPFeatureRedactor alloc] initWithTrialWrapper:self->_trialWrapper namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v173 = v182;
          v171 = [v173 countByEnumeratingWithState:&v212 objects:&v223 count:16];
          if (!v171)
          {
            v166 = 0;
            goto LABEL_119;
          }

          v166 = 0;
          v167 = *v213;
          v95 = *MEMORY[0x277D3A6D8];
          v96 = v95;
          while (1)
          {
            for (ii = 0; ii != v171; ++ii)
            {
              if (*v213 != v167)
              {
                objc_enumerationMutation(v173);
              }

              v97 = *(*(&v212 + 1) + 8 * ii);
              obja = [PPFeedbackUtils feedbackItemForPPFeedbackItem:v97];
              v98 = [v173 objectForKeyedSubscript:v97];
              v99 = [v169 clientBundleId];
              v175 = log;
              v100 = v98;
              v186 = v99;
              v195 = v100;
              v178 = [(PPNamedEntityStorage *)self->_storage decayedFeedbackCountsForClusterIdentifier:v100];
              v197 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
              contexta = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
              v101 = 0;
              if (v197 && contexta)
              {
                v102 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v197];
                v101 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:contexta]| v102;
              }

              v180 = [(PPNamedEntityStorage *)self->_storage sourceStats:v101 withExcludedAlgorithms:0];
              v191 = objc_opt_new();
              v103 = objc_opt_new();
              v104 = objc_autoreleasePoolPush();
              v105 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v195, 0}];
              objc_autoreleasePoolPop(v104);
              [v103 setMatchingNames:v105];

              [v103 setScoringDate:v191];
              *&v217 = 0;
              v106 = [(PPLocalNamedEntityStore *)self namedEntityRecordsWithQuery:v103 error:&v217];
              v107 = v217;
              v177 = v107;
              if (v106)
              {
                v108 = objc_alloc(MEMORY[0x277D3A420]);
                v109 = [v106 firstObject];
                v110 = [v109 entity];
                v111 = [v110 name];
                v112 = [v111 lowercaseString];
                v113 = [v106 firstObject];
                v114 = [v113 entity];
                v115 = [v114 bestLanguage];
                v116 = [v108 initWithName:v112 category:0 dynamicCategory:0 language:v115 mostRelevantRecord:0];

                v117 = [[PPStreamingNamedEntityScorer alloc] initWithScoringDate:v191 perRecordDecayRate:v180 sourceStats:v96];
                v118 = objc_opt_self();
                v119 = objc_opt_self();
                v120 = [v106 firstObject];
                v121 = [v116 name];
                [(PPStreamingNamedEntityScorer *)v117 startNewClusterWithDecayedFeedbackCounts:v178 mostRelevantRecord:v120 dominantEntityName:v121];

                v229 = 0u;
                v230 = 0u;
                v227 = 0u;
                v228 = 0u;
                v122 = v106;
                v123 = [v122 countByEnumeratingWithState:&v227 objects:v235 count:16];
                if (v123)
                {
                  v124 = *v228;
                  do
                  {
                    for (jj = 0; jj != v123; ++jj)
                    {
                      if (*v228 != v124)
                      {
                        objc_enumerationMutation(v122);
                      }

                      [(PPStreamingNamedEntityScorer *)v117 addRecord:*(*(&v227 + 1) + 8 * jj)];
                    }

                    v123 = [v122 countByEnumeratingWithState:&v227 objects:v235 count:16];
                  }

                  while (v123);
                }

                *buf = 0;
                v221 = 0;
                [(PPStreamingNamedEntityScorer *)v117 getFinalScoreWithAggregationResultOut:buf finalResultOut:&v221];
                v127 = v126;
                v128 = objc_alloc(MEMORY[0x277D42648]);
                v129 = [MEMORY[0x277CCABB0] numberWithDouble:v127];
                v130 = [v128 initWithFirst:v129 second:*buf];
              }

              else
              {
                v131 = v107;
                v116 = pp_entities_log_handle();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  v138 = NSStringFromSelector(sel_getScoredNamedEntityFeaturesWithNamedEntity_excludingSourceBundleId_decayRate_error_);
                  *v235 = 138412546;
                  v236 = v138;
                  v237 = 2112;
                  v238 = v177;
                  _os_log_error_impl(&dword_23224A000, v116, OS_LOG_TYPE_ERROR, "error %@: %@", v235, 0x16u);
                }

                v130 = 0;
                v166 = v177;
              }

              if (v130)
              {
                v132 = [v130 second];
                v133 = [PPFeedbackUtils featuresForScoreDict:v132];
                v134 = [v133 mutableCopy];

                if (v134)
                {
                  [(PPFeatureRedactor *)v175 transformFeaturesInPlace:v134];
                  v135 = [v130 first];
                  [v135 floatValue];
                  v136 = [PPFeedbackUtils scoredItemWithFeaturesForFeatureDictionary:v134 score:?];

                  goto LABEL_108;
                }

                v137 = pp_entities_log_handle();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                {
                  *v235 = 0;
                  _os_log_error_impl(&dword_23224A000, v137, OS_LOG_TYPE_ERROR, "nil result from +[PPRecordFeaturizer featuresForScoreDict]", v235, 2u);
                }

                v134 = 0;
              }

              else
              {
                v134 = pp_entities_log_handle();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  *v235 = 138412290;
                  v236 = v166;
                  _os_log_error_impl(&dword_23224A000, v134, OS_LOG_TYPE_ERROR, "nil result from getScoredNamedEntityFeaturesWithNamedEntity: %@", v235, 0xCu);
                }
              }

              v136 = 0;
LABEL_108:

              [v136 addFeedbackItems:obja];
              [oslog addScoredItems:v136];
            }

            v171 = [v173 countByEnumeratingWithState:&v212 objects:&v223 count:16];
            if (!v171)
            {
LABEL_119:

              [PPFeedbackUtils addBoilerplateToFeedbackLog:oslog];
              v141 = [MEMORY[0x277D41DA8] sharedInstance];
              [v141 logMessage:oslog];

              goto LABEL_123;
            }
          }
        }

        if (v94)
        {
          v140 = v94;
          v166 = v158;
        }

        else
        {
          v166 = 0;
        }

        log = pp_entities_log_handle();
        if (os_log_type_enabled(&log->super, OS_LOG_TYPE_ERROR))
        {
          *v235 = 138412290;
          v236 = v158;
          _os_log_error_impl(&dword_23224A000, &log->super, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from getMatchedNamedEntityForFeedback: %@", v235, 0xCu);
        }

LABEL_123:
      }

      else
      {
        oslog = pp_default_log_handle();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *v235 = 0;
          _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: No feedback session logs collection performed due to sampling.", v235, 2u);
        }

        v166 = 0;
        v159 = 1;
      }

      v142 = v166;
      if (v159)
      {
        goto LABEL_128;
      }
    }

    else
    {

      v142 = 0;
    }

    v143 = pp_entities_log_handle();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      *v235 = 138412290;
      v236 = v161;
      _os_log_error_impl(&dword_23224A000, v143, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: feedback logging failed: %@", v235, 0xCu);
    }

LABEL_128:
    [(PPNamedEntityStorage *)self->_storage donateNamedEntityFeedback:v160];

    goto LABEL_129;
  }

  v139 = pp_default_log_handle();
  if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
  {
    *v235 = 138412290;
    v236 = v161;
    _os_log_error_impl(&dword_23224A000, v139, OS_LOG_TYPE_ERROR, "processFeedbackItems: error from iterNamedEntityRecordsWithQuery: %@", v235, 0xCu);
  }

LABEL_138:

  _Block_object_dispose(v210, 8);
  v157 = *MEMORY[0x277D85DE8];
}

void __43__PPLocalNamedEntityStore_processFeedback___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 entity];
  v7 = [v6 clusterIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 entity];
    v10 = [v9 clusterIdentifier];
    v11 = [v10 isEqual:*(*(*(a1 + 56) + 8) + 40)];

    if ((v11 & 1) == 0)
    {
      v30 = a3;
      v12 = [v5 entity];
      v13 = [v12 clusterIdentifier];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v32 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = *(a1 + 32);
      v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v22 = v5;
            v23 = [v5 entity];
            v24 = [v23 name];
            [v24 rangeOfString:v20 options:1];
            v26 = v25;

            if (v26)
            {
              v27 = *(a1 + 40);
              v28 = [*(a1 + 48) objectForKeyedSubscript:v20];
              [v27 addObjectsFromArray:v28];

              [v32 addObject:v20];
            }

            objc_autoreleasePoolPop(v21);
            v5 = v22;
          }

          v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      [*(a1 + 32) minusSet:v32];
      if (![*(a1 + 32) count])
      {
        *v30 = 1;
      }
    }
  }

  else
  {
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138739971;
    v12 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Named entity feedback received: %{sensitive}@", &v11, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [PPInternalFeedback fromBaseFeedback:v5 storeType:1];
  [v8 storePendingFeedback:v9 storeType:1 error:0];

  if (v6)
  {
    v6[2](v6, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 error:(id *)a6
{
  v140 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v112 = a4;
  v105 = a5;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v112;
    v135 = 2048;
    v136 = [v8 count];
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating %tu locations", buf, 0x16u);
  }

  v111 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  v104 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v8;
  v106 = [obj countByEnumeratingWithState:&v130 objects:v139 count:16];
  if (!v106)
  {
    v107 = 0;
    v108 = 1;
    goto LABEL_75;
  }

  v107 = 0;
  v103 = *v131;
  v108 = 1;
  do
  {
    for (i = 0; i != v106; ++i)
    {
      if (*v131 != v103)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v130 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v12 = objc_opt_new();
      [v11 score];
      v14 = v13;
      v15 = 0.5;
      if (v14 > 0.0)
      {
        [v11 score];
      }

      v16 = fmin(v15, 1.0);
      v17 = [v11 locationName];

      if (v17)
      {
        v18 = pp_entities_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a name", buf, 0xCu);
        }

        v19 = objc_alloc(MEMORY[0x277D3A420]);
        v20 = [v11 locationName];
        v21 = [v19 initWithName:v20 category:3 language:v111];

        v22 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v21 score:v16];
        [v12 addObject:v22];
        v23 = [v11 mapItem];
        v24 = [v11 locationName];
        v129 = 0;
        [(PPLocalNamedEntityStore *)self donateMapItem:v23 forPlaceName:v24 error:&v129];
        v25 = v129;

        if (v25)
        {
          v26 = pp_entities_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v25;
            _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for location name: %@", buf, 0xCu);
          }

          v27 = +[PPMetricsUtils loggingQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke;
          block[3] = &unk_2789797E0;
          v127 = v112;
          v128 = v25;
          dispatch_async(v27, block);
        }
      }

      else
      {
        v25 = 0;
      }

      v28 = [v11 streetAddress];

      if (v28)
      {
        v29 = pp_entities_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a street address", buf, 0xCu);
        }

        v30 = objc_alloc(MEMORY[0x277D3A420]);
        v31 = [v11 streetAddress];
        v32 = [v30 initWithName:v31 category:8 language:v111];

        v33 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v32 score:v16];
        [v12 addObject:v33];
      }

      v34 = [v11 city];

      if (v34)
      {
        v35 = pp_entities_log_handle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a city", buf, 0xCu);
        }

        v36 = objc_alloc(MEMORY[0x277D3A420]);
        v37 = [v11 city];
        v38 = [v36 initWithName:v37 category:9 language:v111];

        v39 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v38 score:v16];
        [v12 addObject:v39];
      }

      v40 = [v11 stateOrProvince];

      if (v40)
      {
        v41 = pp_entities_log_handle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a state", buf, 0xCu);
        }

        v42 = objc_alloc(MEMORY[0x277D3A420]);
        v43 = [v11 stateOrProvince];
        v44 = [v42 initWithName:v43 category:10 language:v111];

        v45 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v44 score:v16];
        [v12 addObject:v45];
      }

      v46 = [v11 country];

      if (v46)
      {
        v47 = pp_entities_log_handle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a country", buf, 0xCu);
        }

        v48 = objc_alloc(MEMORY[0x277D3A420]);
        v49 = [v11 country];
        v50 = [v48 initWithName:v49 category:11 language:v111];

        v51 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v50 score:v16];
        [v12 addObject:v51];
      }

      v52 = [v11 streetAddress];

      if (v52)
      {
        v53 = [v11 streetAddress];
        v54 = [v11 city];
        v55 = [v11 stateOrProvince];
        v56 = [v11 postalCode];
        v57 = [v11 country];
        v58 = [PPNamedEntitySupport fullAddressForStreetAddress:v53 city:v54 state:v55 postalCode:v56 country:v57];

        if (v58)
        {
          v59 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v58 category:12 language:v111];
          v60 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v59 score:v16];
          [v12 addObject:v60];
          v61 = [v11 mapItem];
          v125 = v25;
          [(PPLocalNamedEntityStore *)self donateMapItem:v61 forPlaceName:v58 error:&v125];
          v62 = v125;

          if (v62)
          {
            v63 = pp_entities_log_handle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v62;
              _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for full address: %@", buf, 0xCu);
            }
          }

          v25 = v62;
        }
      }

      v64 = [v11 unstructuredLocationString];

      if (v64)
      {
        v65 = pp_entities_log_handle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v112;
          _os_log_impl(&dword_23224A000, v65, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating an unstructured location string", buf, 0xCu);
        }

        v66 = objc_alloc(MEMORY[0x277D3A420]);
        v67 = [v11 unstructuredLocationString];
        v68 = [v66 initWithName:v67 category:3 language:v111];

        v69 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v68 score:v16];
        [v12 addObject:v69];
        v70 = [v11 mapItem];
        v71 = [v11 unstructuredLocationString];
        v124 = v25;
        [(PPLocalNamedEntityStore *)self donateMapItem:v70 forPlaceName:v71 error:&v124];
        v72 = v124;

        if (v72)
        {
          v73 = pp_entities_log_handle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v72;
            _os_log_error_impl(&dword_23224A000, v73, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for unstructured location: %@", buf, 0xCu);
          }

          v74 = +[PPMetricsUtils loggingQueue];
          v121[0] = MEMORY[0x277D85DD0];
          v121[1] = 3221225472;
          v121[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_357;
          v121[3] = &unk_2789797E0;
          v122 = v112;
          v123 = v72;
          dispatch_async(v74, v121);
        }
      }

      else
      {
        v72 = v25;
      }

      v75 = objc_alloc(MEMORY[0x277D3A4D8]);
      v76 = [v11 documentId];
      if (v76)
      {
        v77 = [v75 initWithBundleId:v112 groupId:v105 documentId:v76 date:v104];
      }

      else
      {
        v78 = objc_opt_new();
        v79 = [v78 UUIDString];
        v77 = [v75 initWithBundleId:v112 groupId:v105 documentId:v79 date:v104];
      }

      v80 = pp_entities_log_handle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v94 = [v12 count];
        v95 = [v77 documentId];
        *buf = 138412802;
        *&buf[4] = v112;
        v135 = 2048;
        v136 = v94;
        v137 = 2112;
        v138 = v95;
        _os_log_debug_impl(&dword_23224A000, v80, OS_LOG_TYPE_DEBUG, "PPLocationNamedEntities: %@ donated %tu entities under document ID %@", buf, 0x20u);
      }

      v120 = v72;
      v81 = [(PPLocalNamedEntityStore *)self donateNamedEntities:v12 source:v77 algorithm:6 cloudSync:0 sentimentScore:&v120 error:0.0];
      v82 = v120;

      if (v81)
      {
        if (!v108)
        {
          v108 = 0;
          goto LABEL_71;
        }

        v116 = v82;
        if (self)
        {
          v83 = v77;
          v84 = [PPLocalLocationStore locationNamedEntityToPPScoredLocation:v11];
          v85 = +[PPLocalLocationStore defaultStore];
          *buf = v84;
          v108 = 1;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v87 = [v85 donateLocations:v86 source:v83 contextualNamedEntities:0 algorithm:6 cloudSync:0 error:&v116];

          v88 = v116;
          if (v87)
          {
            v82 = v88;
            goto LABEL_71;
          }
        }

        else
        {
          v88 = v82;
        }

        v96 = v88;

        v97 = pp_entities_log_handle();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v96;
          _os_log_error_impl(&dword_23224A000, v97, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate locations: %@", buf, 0xCu);
        }

        v91 = +[PPMetricsUtils loggingQueue];
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_366;
        v113[3] = &unk_2789797E0;
        v114 = v112;
        v82 = v96;
        v115 = v82;
        dispatch_async(v91, v113);
        v93 = &v115;
        v92 = &v114;
      }

      else
      {
        v89 = v82;

        v90 = pp_entities_log_handle();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_23224A000, v90, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate entities: %@", buf, 0xCu);
        }

        v91 = +[PPMetricsUtils loggingQueue];
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_362;
        v117[3] = &unk_2789797E0;
        v118 = v112;
        v82 = v89;
        v119 = v82;
        dispatch_async(v91, v117);
        v93 = &v119;
        v92 = &v118;
      }

      v107 = v82;
      v108 = 0;
LABEL_71:

      objc_autoreleasePoolPop(context);
    }

    v106 = [obj countByEnumeratingWithState:&v130 objects:v139 count:16];
  }

  while (v106);
LABEL_75:

  if (a6)
  {
    v98 = v107;
    *a6 = v107;
  }

  [(PPLocalNamedEntityStore *)self flushDonationsWithError:a6];

  v99 = *MEMORY[0x277D85DE8];
  return v108;
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to donate map item for location name."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_357(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate map item for unstructured location."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_362(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate entities."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_366(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate locations."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

- (BOOL)clearWithError:(id *)a3 deletedCount:(unint64_t *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating named entity query cache due to clear operation.", &v16, 2u);
  }

  v8 = [(PPNamedEntityStorage *)self->_storage clearWithError:a3 deletedCount:a4];
  v9 = v8;
  if (a3 && !v8)
  {
    v10 = pp_entities_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "clearWithError error: %@", &v16, 0xCu);
    }
  }

  v11 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
  v12 = [v11 UTF8String];
  if (!v12)
  {
    v12 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
  }

  PPPostNotification(v12);

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)cloudSyncWithError:(id *)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFE208] userKnowledgeStore];
  if (v5)
  {
    v6 = pp_entities_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: exporting locally-generated named entity records", buf, 2u);
    }

    v7 = objc_opt_new();
    storage = self->_storage;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __46__PPLocalNamedEntityStore_cloudSyncWithError___block_invoke;
    v29[3] = &unk_278977450;
    v9 = v7;
    v30 = v9;
    [(PPNamedEntityStorage *)storage exportRecordsToDKWithShouldContinueBlock:v29];
    v10 = pp_entities_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: synchronizing _DKKnowledgeStore", buf, 2u);
    }

    v28 = 0;
    v11 = [v5 synchronizeWithError:&v28];
    v12 = v28;
    if (v11)
    {
      v13 = pp_entities_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: importing remotely-generated named entity records", buf, 2u);
      }

        ;
      }

      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: processing _DKKnowledgeStore remote named entity deletions", buf, 2u);
      }

      [(PPNamedEntityStorage *)self->_storage processNewDKEventDeletions];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = [v12 localizedDescription];
      v20 = [v18 initWithFormat:@"Unable to synchronize _DKKnowledgeStore: %@", v19];

      if (a3)
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v22 = *MEMORY[0x277D3A580];
        v31 = *MEMORY[0x277CCA450];
        v32 = v20;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        *a3 = [v21 initWithDomain:v22 code:1 userInfo:v23];
      }

      v24 = pp_entities_log_handle();
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
    if (a3)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = *MEMORY[0x277D3A580];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"Unable to connect to _DKKnowledgeStore";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *a3 = [v15 initWithDomain:v16 code:1 userInfo:v17];
    }

    v9 = pp_entities_log_handle();
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

- (BOOL)donateMapItem:(id)a3 forPlaceName:(id)a4 error:(id *)a5
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pp_entities_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = [v5 length];
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "map item being donated of length %tu", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v12 = 0;
  v11 = 0;
  v7 = [(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesOlderThanDate:a3 atLeastOneNamedEntityRemoved:&v12 deletedCount:&v11 error:a5];
  if (v12 == 1)
  {
    v8 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    v9 = [v8 UTF8String];
    if (!v9)
    {
      v9 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(v9);
  }

  if (a4)
  {
    *a4 = v11;
  }

  return v7;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThan:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v21 = 0;
  v20 = 0;
  v15 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:v12 groupId:v13 olderThanDate:v14 atLeastOneNamedEntityRemoved:&v21 deletedCount:&v20 error:a7])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v15 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:v12 groupId:v13 algorithm:4 olderThan:v14 deletedCount:0 error:a7];
    }

    else
    {
      v15 = 1;
    }
  }

  if (v21 == 1)
  {
    v17 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    v18 = [v17 UTF8String];
    if (!v18)
    {
      v18 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(v18);
  }

  if (a6)
  {
    *a6 = v20;
  }

  return v15;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v14 = 0;
  v9 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:v8 atLeastOneNamedEntityRemoved:&v15 deletedCount:&v14 error:a5])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v9 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:v8 algorithm:4 deletedCount:0 error:a5];
    }

    else
    {
      v9 = 1;
    }
  }

  if (v15 == 1)
  {
    v11 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    v12 = [v11 UTF8String];
    if (!v12)
    {
      v12 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(v12);
  }

  if (a4)
  {
    *a4 = v14;
  }

  return v9;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v18 = 0;
  v17 = 0;
  v12 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:v10 groupIds:v11 atLeastOneNamedEntityRemoved:&v18 deletedCount:&v17 error:a6])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v12 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:v10 groupIds:v11 algorithm:4 deletedCount:0 error:a6];
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 == 1)
  {
    v14 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    v15 = [v14 UTF8String];
    if (!v15)
    {
      v15 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(v15);
  }

  if (a5)
  {
    *a5 = v17;
  }

  return v12;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v18 = 0;
  v17 = 0;
  v12 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:v10 documentIds:v11 atLeastOneNamedEntityRemoved:&v18 deletedCount:&v17 error:a6])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v12 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:v10 documentIds:v11 algorithm:4 deletedCount:0 error:a6];
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 == 1)
  {
    v14 = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    v15 = [v14 UTF8String];
    if (!v15)
    {
      v15 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(v15);
  }

  if (a5)
  {
    *a5 = v17;
  }

  return v12;
}

- (BOOL)flushDonationsWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PPLocalNamedEntityStore_flushDonationsWithError___block_invoke;
  v8[3] = &unk_278973630;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  if (*(v10 + 24) == 1)
  {
    v5 = [(PPLocalNamedEntityStore *)self meaningfulChangeNotificationOverride];
    v6 = [v5 UTF8String];
    if (!v6)
    {
      v6 = "com.apple.proactive.PersonalizationPortrait.namedEntitiesDidChangeMeaningfully";
    }

    PPPostNotification(v6);
  }

  _Block_object_dispose(&v9, 8);
  return 1;
}

void __51__PPLocalNamedEntityStore_flushDonationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pp_entities_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "Flushing donations", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3[8];
  v3[8] = 0;
}

- (BOOL)donateNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 error:(id *)a8
{
  v9 = a6;
  v101 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v72 = v12;
  if (!v12)
  {
    v63 = v13;
    v64 = [MEMORY[0x277CCA890] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"entities"}];

    v13 = v63;
  }

  v71 = v13;
  if (!v13)
  {
    v65 = [MEMORY[0x277CCA890] currentHandler];
    [v65 handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"source"}];
  }

  v14 = pp_entities_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v72 count];
    v16 = [MEMORY[0x277D3A438] describeAlgorithm:a5];
    *buf = 134218498;
    v96 = v15;
    v97 = 2112;
    v98 = v71;
    v99 = 2112;
    v100 = v16;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore received a donation of %tu named entities from source: %@, algorithm: %@", buf, 0x20u);
  }

  if ([v72 count])
  {
    v17 = +[PPSettings sharedInstance];
    v18 = [v71 bundleId];
    v19 = [v17 bundleIdentifierIsEnabledForDonation:v18];

    if (v19)
    {
      if (v9)
      {
        v20 = +[PPSettings sharedInstance];
        v21 = [v71 bundleId];
        v22 = [v20 bundleIdentifierIsEnabledForCloudKit:v21];

        if (v22)
        {
          v66 = 1;
          goto LABEL_22;
        }

        v26 = pp_entities_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v62 = [v71 bundleId];
          *buf = 138412290;
          v96 = v62;
          _os_log_debug_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore suppressed named entity cloudSync on donation from disabled bundleId: %@", buf, 0xCu);
        }
      }

      v66 = 0;
LABEL_22:
      v27 = [v72 count];
      v85 = 0;
      v86 = &v85;
      v87 = 0x3032000000;
      v88 = __Block_byref_object_copy__6005;
      v89 = __Block_byref_object_dispose__6006;
      v90 = 0;
      lock = self->_lock;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke;
      v82[3] = &unk_2789736A8;
      v84 = &v85;
      v29 = v72;
      v83 = v29;
      [(_PASLock *)lock runWithLockAcquired:v82];
      v30 = +[PPMetricsUtils loggingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke_2;
      block[3] = &unk_2789736D0;
      v67 = v71;
      v76 = v67;
      v77 = self;
      v79 = &v85;
      v80 = a5;
      v81 = v27;
      v78 = v29;
      dispatch_async(v30, block);

      if ([v86[5] count])
      {
        v31 = pp_entities_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v86[5] count];
          v33 = [v86[5] count];
          *buf = 134218496;
          v96 = v27 - v32;
          v97 = 2048;
          v98 = v27;
          v99 = 2048;
          v100 = v33;
          _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: PPNamedEntityFilter filtered %tu entities. Prev count %tu, new count %tu.", buf, 0x20u);
        }

        v34 = v86[5];
        v35 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v34, "count")}];
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        obj = v34;
        v36 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
        if (v36)
        {
          v74 = *v92;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v92 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v91 + 1) + 8 * i);
              v39 = objc_autoreleasePoolPush();
              v40 = [v38 item];
              v41 = [v35 objectForKeyedSubscript:v40];

              if (v41)
              {
                v42 = [v41 scoredNamedEntity];
                [v42 score];
                v44 = v43;
                v45 = [v41 occurrencesInSource];
                [v38 score];
                v47 = v46;
                v48 = [v41 occurrencesInSource];

                v49 = objc_alloc(MEMORY[0x277D3A498]);
                v50 = [v38 item];
                v51 = [v49 initWithItem:v50 score:(v47 + v44 * v45) / (v48 + 1)];

                v52 = -[PPCoalescedScoredNamedEntity initWithScoredNamedEntity:occurrencesInSource:]([PPCoalescedScoredNamedEntity alloc], "initWithScoredNamedEntity:occurrencesInSource:", v51, ([v41 occurrencesInSource] + 1));
              }

              else
              {
                v52 = [[PPCoalescedScoredNamedEntity alloc] initWithScoredNamedEntity:v38 occurrencesInSource:1];
              }

              v53 = [v38 item];
              [v35 setObject:v52 forKeyedSubscript:v53];

              objc_autoreleasePoolPop(v39);
            }

            v36 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
          }

          while (v36);
        }

        v54 = objc_autoreleasePoolPush();
        v55 = [v35 allValues];
        objc_autoreleasePoolPop(v54);

        if ([v55 count])
        {
          v56 = pp_entities_log_handle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = [v55 count];
            *buf = 134217984;
            v96 = v57;
            _os_log_impl(&dword_23224A000, v56, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: writing %tu coalesced scored entities to the database.", buf, 0xCu);
          }

          if (![(PPNamedEntityStorage *)self->_storage donateNamedEntities:v55 source:v67 algorithm:a5 cloudSync:v66 decayRate:a8 sentimentScore:0.0 error:a7])
          {
            v25 = 0;
            goto LABEL_43;
          }

          [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_334];
        }
      }

      else
      {
        v55 = pp_default_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v67 bundleId];
          *buf = 138412546;
          v96 = v58;
          v97 = 2048;
          v98 = v27;
          _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: Received a donation that filtered to zero from bundle %@. Prev count %tu", buf, 0x16u);
        }
      }

      v25 = 1;
LABEL_43:

      _Block_object_dispose(&v85, 8);
      goto LABEL_44;
    }

    v23 = pp_entities_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v61 = [v71 bundleId];
      *buf = 138412290;
      v96 = v61;
      _os_log_debug_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore suppressed named entity donation from disabled bundleId: %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = pp_entities_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v71 bundleId];
      *buf = 138412290;
      v96 = v24;
      _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore received empty donation from %@", buf, 0xCu);
    }
  }

  v25 = 1;
LABEL_44:

  v59 = *MEMORY[0x277D85DE8];
  return v25;
}

void __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10[2] result];
  v4 = [v3 filterScoredNamedEntities:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = MEMORY[0x277CBEBF8];
  }
}

void __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke_2(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) bundleId];
  [v2 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", v3)}];

  [v2 setAlgorithm:{+[PPMetricsUtils mapNamedEntityAlgorithmForPET2:](PPMetricsUtils, "mapNamedEntityAlgorithmForPET2:", *(a1 + 64))}];
  v4 = [*(a1 + 32) groupId];
  v5 = [PPMetricsUtils filterGroupIdAllowance:v4];
  [v2 setGroupId:v5];

  v6 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v2 setActiveTreatments:v6];

  v7 = [MEMORY[0x277D41DA8] sharedInstance];
  [v7 trackDistributionForMessage:v2 value:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];

  v8 = objc_opt_new();
  v9 = [*(a1 + 32) language];
  [v8 setDetectedLanguage:v9];

  v10 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  [v8 setSystemLanguage:v10];

  v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v8 setLanguageCount:{objc_msgSend(v11, "count")}];

  v12 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v8 setActiveTreatments:v12];

  v13 = [MEMORY[0x277D41DA8] sharedInstance];
  [v13 trackScalarForMessage:v8];

  v14 = objc_opt_new();
  v15 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v14 setActiveTreatments:v15];

  v16 = *(a1 + 72);
  v17 = v16 - [*(*(*(a1 + 56) + 8) + 40) count];
  v18 = [MEMORY[0x277D41DA8] sharedInstance];
  [v18 trackDistributionForMessage:v14 value:v17];

  if (*(a1 + 64) != 16)
  {
    goto LABEL_25;
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  if (!v19)
  {
    goto LABEL_24;
  }

  v21 = objc_alloc(MEMORY[0x277CBEB98]);
  v22 = +[PPConfiguration sharedInstance];
  v23 = [v22 differentiallyPrivateEntityLogLevels];
  v24 = [v23 objectForKeyedSubscript:@"Extraction.low"];
  v25 = [v21 initWithArray:v24];

  v26 = objc_alloc(MEMORY[0x277CBEB98]);
  v27 = +[PPConfiguration sharedInstance];
  v28 = [v27 differentiallyPrivateEntityLogLevels];
  v29 = [v28 objectForKeyedSubscript:@"Extraction.medium"];
  v53 = [v26 initWithArray:v29];

  v30 = objc_alloc(MEMORY[0x277CBEB98]);
  v31 = +[PPConfiguration sharedInstance];
  v32 = [v31 differentiallyPrivateEntityLogLevels];
  v33 = [v32 objectForKeyedSubscript:@"Extraction.high"];
  v51 = [v30 initWithArray:v33];

  v34 = objc_opt_new();
  v54 = objc_opt_new();
  v52 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v50 = v20;
  obj = v20;
  v35 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v35)
  {
    goto LABEL_21;
  }

  v36 = v35;
  v37 = *v58;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v58 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v57 + 1) + 8 * i);
      v40 = MEMORY[0x277D3A420];
      v41 = [v39 item];
      v42 = [v40 describeCategory:{objc_msgSend(v41, "category")}];

      v43 = [v39 item];
      v44 = [v43 dynamicCategory];

      v45 = v34;
      if ([v25 containsObject:v42])
      {
LABEL_18:
        v46 = [v39 item];
        v47 = [v46 name];
        [v45 addObject:v47];

        goto LABEL_19;
      }

      if (v44)
      {
        v45 = v34;
        if ([v25 containsObject:v44])
        {
          goto LABEL_18;
        }

        v45 = v54;
        if ([v53 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v54;
        if ([v53 containsObject:v44])
        {
          goto LABEL_18;
        }

        v45 = v52;
        if ([v51 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v52;
        if ([v51 containsObject:v44])
        {
          goto LABEL_18;
        }
      }

      else
      {
        v45 = v54;
        if ([v53 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v52;
        if ([v51 containsObject:v42])
        {
          goto LABEL_18;
        }
      }

LABEL_19:
    }

    v36 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v36);
LABEL_21:

  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v34 extractions:?];
  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v54 extractions:?];
  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v52 extractions:?];
  v48 = pp_entities_log_handle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: completed logging of entities to differential privacy.", buf, 2u);
  }

  v20 = v50;
LABEL_24:

LABEL_25:
  v49 = *MEMORY[0x277D85DE8];
}

- (void)_logDifferentiallyPrivateExtractionsWithDpCategory:(void *)a1 extractions:(void *)a2
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [v6 localeIdentifier];
    v8 = [v5 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait.NamedEntity", v3, v7];

    v9 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v8];
    [v9 record:v4];
    v10 = pp_entities_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v13 = [v4 count];
      v14 = 2112;
      v15 = v3;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: logged %tu items of type %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = pp_entities_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: not logging any extractions matching %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)rankedNamedEntitiesWithQuery:(id)a3 error:(id *)a4 clientProcessName:(id)a5
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v74 = a5;
  if ([v6 isForRecordMonitoring])
  {
    v7 = +[PPConfiguration sharedInstance];
    [v6 setLimit:{objc_msgSend(v7, "namedEntityLoadAndMonitorInitialLoadLimit")}];

    v8 = pp_entities_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v74;
      *&buf[12] = 2048;
      *&buf[14] = [v6 limit];
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: overwrote query from %@ with limit %tu", buf, 0x16u);
    }
  }

  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 limit];
    v11 = [v6 fromDate];
    v12 = [v11 description];
    v13 = [v6 toDate];
    v14 = [v13 description];
    *buf = 134218498;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v115 = v14;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "rankedNamedEntitiesWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v75 = [v6 limit];
  v15 = +[PPConfiguration sharedInstance];
  v16 = v75 > [v15 maxNumberNamedEntities];

  if (v16)
  {
    v17 = +[PPConfiguration sharedInstance];
    v18 = [v17 maxNumberNamedEntities];

    v75 = v18;
  }

  if ([v6 locationConsumer] == 3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v115 = __Block_byref_object_copy__6005;
    v116 = __Block_byref_object_dispose__6006;
    v117 = 0;
    lock = self->_lock;
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke;
    v110[3] = &unk_278973630;
    v110[4] = buf;
    [(_PASLock *)lock runWithLockAcquired:v110];
    if ([*(*&buf[8] + 40) count] > v75)
    {
      v20 = [*(*&buf[8] + 40) subarrayWithRange:0];
      v21 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v20;
    }

    v22 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    v23 = -[PPEvictingMinPriorityQueue initWithCapacity:]([PPEvictingMinPriorityQueue alloc], "initWithCapacity:", [v6 limit]);
    v24 = [v6 scoringDate];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;

    v73 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
    v71 = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
    v28 = 0;
    v29 = self;
    if (v73 && v71)
    {
      v30 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v73];
      v28 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v71]| v30;
      v29 = self;
    }

    v31 = [(PPNamedEntityStorage *)v29->_storage sourceStats:v28 withExcludedAlgorithms:0];
    v100[0] = 0;
    v100[1] = v100;
    v100[2] = 0x3032000000;
    v100[3] = __Block_byref_object_copy__6005;
    v100[4] = __Block_byref_object_dispose__6006;
    v101 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2;
    aBlock[3] = &unk_278973658;
    aBlock[4] = v29;
    v67 = v27;
    v94 = v67;
    v68 = v31;
    v95 = v68;
    v97 = v100;
    v69 = v23;
    v96 = v69;
    v98 = &v102;
    v99 = &v106;
    v32 = _Block_copy(aBlock);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v115 = __Block_byref_object_copy__6005;
    v116 = __Block_byref_object_dispose__6006;
    v117 = 0;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x3032000000;
    v91[3] = __Block_byref_object_copy__6005;
    v91[4] = __Block_byref_object_dispose__6006;
    v92 = 0;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x3032000000;
    v89[3] = __Block_byref_object_copy__6005;
    v89[4] = __Block_byref_object_dispose__6006;
    v90 = 0;
    v33 = pp_entities_signpost_handle();
    spid = os_signpost_id_generate(v33);

    v34 = pp_entities_signpost_handle();
    v35 = v34;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *v112 = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalNamedEntityStore.rankedNamedEntitiesWithQuery.aggregation", "", v112, 2u);
    }

    v36 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalNamedEntityStore-scoring" qosClass:qos_class_self()];
    v37 = dispatch_semaphore_create(64);
    v38 = [v6 copy];
    [v38 setOrderByName:1];
    [v38 setRemoveNearDuplicates:1];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_309;
    v81[3] = &unk_278973680;
    v86 = buf;
    v87 = v91;
    v88 = v89;
    v39 = v37;
    v82 = v39;
    v40 = v36;
    v83 = v40;
    v41 = v32;
    v84 = self;
    v85 = v41;
    v42 = v81;
    v43 = [v38 copy];
    [v43 setLimit:-1];
    v111 = 0;
    v44 = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v43 error:&v111 block:v42];

    v45 = v111;
    if (!v44)
    {
      v46 = pp_entities_log_handle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v112 = 138412290;
        v113 = v45;
        _os_log_error_impl(&dword_23224A000, v46, OS_LOG_TYPE_ERROR, "_unlimitedNamedEntityRecordsWithQuery: nil result from iterNamedEntityRecordsWithQuery: %@", v112, 0xCu);
      }

      if (a4)
      {
        v47 = v45;
        *a4 = v45;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_312;
    block[3] = &unk_2789772E0;
    v79 = v91;
    v48 = v41;
    v78 = v48;
    v80 = v89;
    dispatch_sync(v40, block);
    v49 = pp_entities_signpost_handle();
    v50 = v49;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *v112 = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v50, OS_SIGNPOST_INTERVAL_END, spid, "PPLocalNamedEntityStore.rankedNamedEntitiesWithQuery.aggregation", "", v112, 2u);
    }

    _Block_object_dispose(v89, 8);
    _Block_object_dispose(v91, 8);

    _Block_object_dispose(buf, 8);
    v51 = v107[3];
    v52 = v6;
    v53 = v74;
    v54 = +[PPMetricsUtils loggingQueue];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __86__PPLocalNamedEntityStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke;
    v115 = &unk_278979850;
    v55 = v53;
    v116 = v55;
    v119 = v51;
    v56 = v52;
    v120 = !v44;
    v117 = v56;
    v118 = self;
    dispatch_async(v54, buf);

    if (v44)
    {
      v57 = v103[3];
      v58 = v107[3];
      v59 = pp_entities_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v103[3];
        v61 = +[PPConfiguration sharedInstance];
        [v61 scoreThresholdForNamedEntity];
        *buf = 134218496;
        *&buf[4] = v60;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        *&buf[22] = 2048;
        v115 = (v58 + v57);
        _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: filtered %tu items below threshold of %f out of %tu total.", buf, 0x20u);
      }

      v22 = [(PPEvictingMinPriorityQueue *)v69 extractSortedMutableArray];
      if ([v22 count] > v75)
      {
        v63 = [v22 subarrayWithRange:0];

        v22 = v63;
      }
    }

    else
    {
      v64 = pp_default_log_handle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = 0;
        _os_log_error_impl(&dword_23224A000, v64, OS_LOG_TYPE_ERROR, "Error encountered while scoring named entities: %@", buf, 0xCu);
      }

      v22 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }

    _Block_object_dispose(v100, 8);
    _Block_object_dispose(&v102, 8);
    _Block_object_dispose(&v106, 8);
  }

  v65 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 24) result];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 count])
  {
    v6 = *MEMORY[0x277D3A6D8];
    *&v6 = *MEMORY[0x277D3A6D8];
    v7 = [*(a1 + 32) scoredEntityFromRecords:v10 scoringDate:*(a1 + 40) perRecordDecayRate:*(a1 + 48) decayRate:v5 sourceStats:*(*(a1 + 64) + 8) + 40 decayedFeedbackCounts:0 streamingScorer:v6 mlModel:0.0];
    v8 = *(a1 + 56);
    objc_sync_enter(v8);
    if (v7)
    {
      [*(a1 + 56) addObject:v7];
      v9 = 80;
    }

    else
    {
      v9 = 72;
    }

    ++*(*(*(a1 + v9) + 8) + 24);
    objc_sync_exit(v8);
  }
}

void __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_309(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = [v3 entity];
  v6 = [v5 clusterIdentifier];
  LOBYTE(v4) = [v4 isEqualToString:v6];

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if ((v4 & 1) == 0)
  {
    v8 = v7;
    v9 = *(*(*(a1 + 80) + 8) + 40);
    if (![v8 count])
    {
      goto LABEL_9;
    }

    v10 = +[PPConfiguration sharedInstance];
    if ([v10 use2StageScoreInterpreterForNEScoring])
    {
    }

    else
    {
      v11 = +[PPConfiguration sharedInstance];
      v12 = [v11 namedEntityScoringUsesHybrid];

      if (!v12)
      {
        if ([MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32) timeoutSeconds:0.0])
        {
          (*(*(a1 + 56) + 16))();
LABEL_9:
          v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
          v16 = *(*(a1 + 72) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v18 = [v3 entity];
          v19 = [v18 clusterIdentifier];
          v20 = *(*(a1 + 64) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          v22 = [v3 entity];
          v23 = [v22 clusterIdentifier];

          if (v23)
          {
            if (!*(*(*(a1 + 64) + 8) + 40))
            {
LABEL_16:

              goto LABEL_17;
            }

            v24 = [*(*(a1 + 48) + 56) decayedFeedbackCountsForClusterIdentifier:?];
            v25 = *(*(a1 + 80) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;
          }

          else
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_23224A000, v27, OS_LOG_TYPE_FAULT, "Named entity record unexpectedly had nil cluster identifier while aggregating for scoring.", buf, 2u);
            }

            v28 = *(*(a1 + 80) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = 0;

            v26 = objc_opt_new();
            v30 = [v26 UUIDString];
            v31 = [v30 lowercaseString];
            v32 = *(*(a1 + 64) + 8);
            v33 = *(v32 + 40);
            *(v32 + 40) = v31;
          }

          goto LABEL_16;
        }

        v34 = *(a1 + 40);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_3;
        v36[3] = &unk_278977290;
        v40 = *(a1 + 56);
        v37 = v8;
        v38 = v9;
        v39 = *(a1 + 32);
        dispatch_async(v34, v36);

        v14 = v40;
LABEL_8:

        goto LABEL_9;
      }
    }

    [MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32)];
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2_310;
    block[3] = &unk_278977290;
    v45 = *(a1 + 56);
    v42 = v8;
    v43 = v9;
    v44 = *(a1 + 32);
    dispatch_async(v13, block);

    v14 = v45;
    goto LABEL_8;
  }

  [v7 addObject:v3];
LABEL_17:
}

uint64_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_312(void *a1)
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

void __86__PPLocalNamedEntityStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke(uint64_t a1)
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
  v4 = [*(a1 + 40) scoringDate];
  [v9 setTimeSpec:v4 != 0];

  [v9 setLimitHit:{*(a1 + 56) > objc_msgSend(*(a1 + 40), "limit")}];
  v5 = [*(a1 + 40) fromDate];
  [v9 setTimeLimited:v5 != 0];

  v6 = [*(a1 + 40) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 64)];
  v7 = [*(*(a1 + 48) + 48) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

intptr_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2_310(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return dispatch_semaphore_signal(v4);
}

intptr_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return dispatch_semaphore_signal(v4);
}

- (id)scoredEntityFromRecords:(id)a3 scoringDate:(id)a4 perRecordDecayRate:(float)a5 decayRate:(float)a6 sourceStats:(id)a7 decayedFeedbackCounts:(id)a8 streamingScorer:(id *)a9 mlModel:(id)a10
{
  v123 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  if (![v16 count])
  {
    v74 = 0;
    goto LABEL_55;
  }

  v20 = v16;
  v105 = v17;
  v21 = v18;
  v107 = v19;
  v103 = v20;
  if (!self)
  {
    v74 = 0;
    goto LABEL_54;
  }

  v102 = v16;
  v98 = objc_autoreleasePoolPush();
  if ([v20 count])
  {
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v94 = [MEMORY[0x277CCA890] currentHandler];
    [v94 handleFailureInMethod:sel__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer_ object:self file:@"PPLocalNamedEntityStore.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"records.count > 0"}];

    if (v21)
    {
      goto LABEL_9;
    }
  }

  v22 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
  v23 = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
  v24 = v23;
  v25 = 0;
  if (v22 && v23)
  {
    v26 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v22];
    v25 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v24]| v26;
  }

  v21 = [(PPNamedEntityStorage *)self->_storage sourceStats:v25 withExcludedAlgorithms:0];

LABEL_9:
  v95 = self;
  v104 = v21;
  v99 = v19;
  v100 = v18;
  v101 = v17;
  v27 = [v20 objectAtIndexedSubscript:0];
  v106 = [v27 entity];

  v28 = v20;
  v29 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v114;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v114 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = MEMORY[0x277CCABB0];
        v36 = [*(*(&v113 + 1) + 8 * i) entity];
        v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v36, "category")}];
        [v29 addObject:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v32);
  }

  v38 = [v29 allObjects];
  v108 = MEMORY[0x277D85DD0];
  v109 = 3221225472;
  v110 = __62__PPLocalNamedEntityStore__dominantEntityCategoryFromRecords___block_invoke;
  v111 = &unk_2789735A0;
  v112 = v29;
  v39 = v29;
  v40 = [v38 sortedArrayUsingComparator:&v108];
  v41 = [v40 lastObject];
  v42 = [v41 unsignedIntegerValue];

  v43 = v30;
  v44 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v114;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v114 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v113 + 1) + 8 * j) entity];
        v51 = [v50 name];
        [v44 addObject:v51];
      }

      v47 = [v45 countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v47);
  }

  v52 = [v44 allObjects];
  v108 = MEMORY[0x277D85DD0];
  v109 = 3221225472;
  v110 = __58__PPLocalNamedEntityStore__dominantEntityNameFromRecords___block_invoke;
  v111 = &unk_2789735C8;
  v112 = v44;
  v53 = v44;
  v54 = [v52 sortedArrayUsingComparator:&v108];
  v55 = [v54 lastObject];

  v108 = MEMORY[0x277D85DD0];
  v109 = 3221225472;
  v110 = __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke;
  v111 = &__block_descriptor_40_e46_B24__0__PPNamedEntityRecord_8__NSDictionary_16l;
  v112 = v42;
  v56 = [MEMORY[0x277CCAC30] predicateWithBlock:&v108];
  v57 = [v45 filteredArrayUsingPredicate:v56];

  v97 = v57;
  v58 = [v57 sortedArrayUsingComparator:&__block_literal_global_293];
  v59 = [v58 lastObject];

  v60 = objc_alloc(MEMORY[0x277D3A420]);
  v61 = [v106 bestLanguage];
  v62 = [v60 initWithName:v55 category:v42 dynamicCategory:0 language:v61 mostRelevantRecord:v59];

  v63 = *a9;
  if (!*a9)
  {
    v64 = [[PPStreamingNamedEntityScorer alloc] initWithScoringDate:v105 perRecordDecayRate:v104 sourceStats:a5];
    v65 = *a9;
    *a9 = v64;

    v63 = *a9;
  }

  v96 = v55;
  [v63 startNewClusterWithDecayedFeedbackCounts:v107 mostRelevantRecord:v59 dominantEntityName:v55];
  v66 = +[PPConfiguration sharedInstance];
  v67 = [v66 namedEntityScoringUsesHybrid];

  if (v67)
  {
    v68 = [(NSCache *)v95->_modelCache objectForKey:@"scoring_model"];
    v19 = v99;
    if (!v68)
    {
      trialWrapper = v95->_trialWrapper;
      *&v113 = 0;
      v68 = [(PPTrialWrapper *)trialWrapper mlModelForModelName:@"PPModel_NE.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" error:&v113];
      v70 = v113;
      if (!v68)
      {
        v91 = v70;
        v92 = pp_default_log_handle();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
        {
          *v121 = 138412290;
          v122 = v91;
          _os_log_fault_impl(&dword_23224A000, v92, OS_LOG_TYPE_FAULT, "PPLocalNamedEntityStore: unable to load scoring model with error: %@", v121, 0xCu);
        }

        v93 = pp_entities_log_handle();
        v17 = v101;
        v16 = v102;
        v18 = v100;
        v73 = v97;
        v87 = v98;
        v21 = v104;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *v121 = 0;
          _os_log_error_impl(&dword_23224A000, v93, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to locate ML model.", v121, 2u);
        }

        v74 = 0;
        goto LABEL_53;
      }

      [(NSCache *)v95->_modelCache setObject:v68 forKey:@"scoring_model"];
    }

    [(PPLocalNamedEntityStore *)v95 finalScoreFromRecordsUsingHybrid:v45 streamingScorer:*a9 mlModel:v68];
    v72 = v71;

    v73 = v57;
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v75 = v45;
    v76 = [v75 countByEnumeratingWithState:&v113 objects:v121 count:16];
    v73 = v57;
    if (v76)
    {
      v77 = v76;
      v78 = *v114;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v114 != v78)
          {
            objc_enumerationMutation(v75);
          }

          [*a9 addRecord:*(*(&v113 + 1) + 8 * k)];
        }

        v77 = [v75 countByEnumeratingWithState:&v113 objects:v121 count:16];
      }

      while (v77);
    }

    [*a9 getFinalScore];
    v72 = v80;
    v19 = v99;
  }

  v81 = +[PPConfiguration sharedInstance];
  [v81 scoreThresholdForNamedEntity];
  v83 = v82;

  if (v72 <= 0.0)
  {
    v84 = 1;
  }

  else
  {
    v84 = v67;
  }

  v85 = v83;
  v86 = v84 == 1 && v72 < v85;
  v18 = v100;
  v17 = v101;
  v87 = v98;
  if (v86)
  {
    v16 = v102;
    if (v67)
    {
      v88 = pp_entities_log_handle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v118 = v72;
        v119 = 2048;
        v120 = v85;
        _os_log_debug_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEBUG, "Portrait Scoring, filtering out score of %f below threshold of %f", buf, 0x16u);
      }
    }

    v74 = 0;
  }

  else
  {
    v74 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v62 score:v72];
    v16 = v102;
  }

  v21 = v104;
LABEL_53:

  objc_autoreleasePoolPop(v87);
LABEL_54:

LABEL_55:
  v89 = *MEMORY[0x277D85DE8];

  return v74;
}

BOOL __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 entity];
  v4 = [v3 category] == *(a1 + 32);

  return v4;
}

uint64_t __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 source];
  v6 = [v5 date];
  v7 = [v4 source];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __58__PPLocalNamedEntityStore__dominantEntityNameFromRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 localizedCapitalizedString];
  v8 = [v6 isEqualToString:v7];

  v9 = [v5 localizedCapitalizedString];
  v10 = [v5 isEqualToString:v9];

  v11 = [*(a1 + 32) countForObject:v6];
  v12 = [*(a1 + 32) countForObject:v5];

  if (v8 && !v10)
  {
    return 1;
  }

  if (v11 < v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (v11 == v12)
  {
    v14 = 0;
  }

  if (v8 & 1 | ((v10 & 1) == 0))
  {
    return v14;
  }

  else
  {
    return -1;
  }
}

uint64_t __62__PPLocalNamedEntityStore__dominantEntityCategoryFromRecords___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  v9 = -1;
  if (v7 >= v8)
  {
    v9 = 1;
  }

  if (v7 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (double)finalScoreFromRecordsUsingHybrid:(id)a3 streamingScorer:(id)a4 mlModel:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [v8 addRecord:*(*(&v27 + 1) + 8 * i)];
      }

      v11 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0;
  [v8 getFinalScoreWithAggregationResultOut:0 finalResultOut:&v26];
  if (v26)
  {
    v25 = 0;
    v14 = [v9 predictionFromFeatures:v26 error:&v25];
    v15 = v25;
    if (v14)
    {
      v16 = [v14 featureValueForName:@"computed_score"];
      v17 = [v16 multiArrayValue];

      if (v17)
      {
        v18 = [v16 multiArrayValue];
        v19 = [v18 objectAtIndexedSubscript:0];
        [v19 doubleValue];
        v21 = v20;
      }

      else
      {
        [v16 doubleValue];
        v21 = v22;
      }
    }

    else
    {
      v16 = pp_default_log_handle();
      v21 = -1.0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPLocalNamedEntityStore: unable to retrieve prediction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = pp_default_log_handle();
    v21 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v15, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: the score interpreter provided a nil final output.", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)iterRankedNamedEntitiesWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pp_entities_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 limit];
    v12 = [v8 fromDate];
    v13 = [v12 description];
    v14 = [v8 toDate];
    v15 = [v14 description];
    *buf = 134218498;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "iterRankedNamedEntitiesWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v32 = 0;
  v16 = [(PPLocalNamedEntityStore *)self rankedNamedEntitiesWithQuery:v8 error:&v32];
  v17 = v32;
  if (v17)
  {
    v18 = pp_entities_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v17;
      _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "iterRankedNamedEntitiesWithQuery: error from rankedNamedEntitiesWithQuery: %@", buf, 0xCu);
    }

    if (a4)
    {
      v19 = v17;
      *a4 = v17;
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
LABEL_10:
      v24 = 0;
      while (1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v28 + 1) + 8 * v24);
        buf[0] = 0;
        v9[2](v9, v25, buf);
        if (buf[0])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v22)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

- (id)namedEntityRecordsWithQuery:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 limit];
    v9 = [v6 fromDate];
    v10 = [v9 description];
    v11 = [v6 toDate];
    v12 = [v11 description];
    *buf = 134218498;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "namedEntityRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__PPLocalNamedEntityStore_namedEntityRecordsWithQuery_error___block_invoke;
  v19[3] = &unk_2789790F8;
  v20 = v13;
  v14 = v13;
  if ([(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v6 error:a4 block:v19])
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

- (BOOL)iterNamedEntityRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a5;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 limit];
    v11 = [v8 fromDate];
    v12 = [v11 description];
    v13 = [v8 toDate];
    v14 = [v13 description];
    *buf = 134218498;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v70 = v14;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "iterNamedEntityRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if (![v8 limit])
  {
    LOBYTE(v26) = 1;
    goto LABEL_21;
  }

  v15 = [v8 copy];
  [v15 setLimit:-1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v70 = __Block_byref_object_copy__6005;
  v71 = __Block_byref_object_dispose__6006;
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v17 = [v8 limit];
  if (v17 >= 0x40)
  {
    v18 = 64;
  }

  else
  {
    v18 = v17;
  }

  v72 = [v16 initWithCapacity:{v18, v37}];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke;
  aBlock[3] = &unk_278973528;
  v59 = v62;
  v60 = buf;
  v58 = v37;
  v61 = v64;
  v19 = v8;
  v57 = v19;
  v20 = _Block_copy(aBlock);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v21 = v19;
  v22 = v21;
  v23 = self != 0;
  if (self)
  {
    v24 = ([v21 locationConsumer] - 1) < 2;

    if (!v24)
    {
      v23 = 0;
      v25 = 0;
      goto LABEL_13;
    }

    v22 = +[PPLocalLocationStore defaultStore];
    v25 = [v22 homeOrWorkAddresses];
  }

  else
  {
    v25 = 0;
  }

  LOBYTE(v24) = self != 0;
LABEL_13:
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_2;
  v46[3] = &unk_278973550;
  v27 = v25;
  v47 = v27;
  v28 = _Block_copy(v46);
  storage = self->_storage;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_3;
  v38[3] = &unk_278973578;
  v41 = &v52;
  v45 = v24;
  v30 = v28;
  v39 = v30;
  v42 = &v48;
  v43 = buf;
  v31 = v20;
  v40 = v31;
  v44 = v62;
  v26 = [(PPNamedEntityStorage *)storage iterNamedEntityRecordsWithQuery:v15 error:a4 block:v38];
  if (v26)
  {
    v31[2](v31);
  }

  if (v23 && v49[3])
  {
    v32 = pp_entities_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v35 = v49[3];
      v36 = v53[3];
      *v65 = 134218240;
      v66 = v35;
      v67 = 2048;
      v68 = v36;
      _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "iterNamedEntitiesRecordsWithQuery filtered %tu of %tu items due to map UI restriction", v65, 0x16u);
    }
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

void __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(*(*(a1 + 56) + 8) + 40);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(*(a1 + 48) + 8);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++*(*(*(a1 + 64) + 8) + 24);
        v10 = *(*(a1 + 48) + 8);
        if (*(v10 + 24))
        {
          v11 = 1;
        }

        else
        {
          v12 = *(*(*(a1 + 64) + 8) + 24);
          v11 = v12 == [*(a1 + 32) limit];
          v10 = *(*(a1 + 48) + 8);
        }

        *(v10 + 24) = v11;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  v5 = [v4 category];

  if ((v5 | 4) == 0xC)
  {
    v6 = *(a1 + 32);
    v7 = objc_autoreleasePoolPush();
    v8 = [v3 entity];
    v9 = [v8 name];
    v10 = [v9 lowercaseString];

    objc_autoreleasePoolPop(v7);
    v11 = [v6 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v8 = v5;
  if (*(a1 + 80) == 1 && (v6 = (*(*(a1 + 32) + 16))(), v5 = v8, v6))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:v5];
    if ([*(*(*(a1 + 64) + 8) + 40) count] == 64)
    {
      (*(*(a1 + 40) + 16))();
    }

    *a3 = *(*(*(a1 + 72) + 8) + 24);
  }

  return MEMORY[0x2821F96F8]();
}

- (PPLocalNamedEntityStore)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPNamedEntityStorage alloc] initWithDatabase:v3];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_6111];
      v6 = +[PPLocalTopicStore defaultStore];
      v7 = +[PPTrialWrapper sharedInstance];
      self = [(PPLocalNamedEntityStore *)self initWithStorage:v4 topicStoreForNamedEntityMapping:v6 lazyContactStoreForMapsFeedback:v5 trialWrapper:v7];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PPLocalNamedEntityStore)initWithStorage:(id)a3 topicStoreForNamedEntityMapping:(id)a4 lazyContactStoreForMapsFeedback:(id)a5 trialWrapper:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v37.receiver = self;
  v37.super_class = PPLocalNamedEntityStore;
  v16 = [(PPNamedEntityStore *)&v37 _initFromSubclass];
  if (v16)
  {
    v30 = v13;
    v17 = objc_opt_new();
    v18 = objc_alloc(MEMORY[0x277D425F0]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke;
    v35[3] = &unk_2789734E0;
    v36 = v15;
    v19 = [v18 initWithBlock:v35];
    v20 = *(v17 + 16);
    *(v17 + 16) = v19;

    *(v17 + 8) = 0;
    v21 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v17];

    lock = v16->_lock;
    v16->_lock = v21;

    objc_storeStrong(&v16->_storage, a3);
    objc_storeStrong(&v16->_topicStoreForNamedEntityMapping, a4);
    objc_storeStrong(&v16->_lazyContactStoreForMapsFeedback, a5);
    objc_storeStrong(&v16->_trialWrapper, a6);
    objc_initWeak(&location, v16);
    trialWrapper = v16->_trialWrapper;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke_263;
    v32[3] = &unk_2789797B8;
    objc_copyWeak(&v33, &location);
    v24 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" block:v32];
    v25 = objc_opt_new();
    modelCache = v16->_modelCache;
    v16->_modelCache = v25;

    v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.mapsPrefetchQueue" qosClass:17];
    mapsPrefetchQueue = v16->_mapsPrefetchQueue;
    v16->_mapsPrefetchQueue = v27;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    v13 = v30;
  }

  return v16;
}

PPNamedEntityFilter *__120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v8 = 0;
  v2 = [v1 mlModelForModelName:@"PPModel_NE_Filtering.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" error:&v8];
  v3 = v8;
  if (!v2)
  {
    v4 = pp_entities_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to fetch filtering model from Trial. %@", buf, 0xCu);
    }
  }

  v5 = [[PPNamedEntityFilter alloc] initWithModel:v2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] removeAllObjects];
    v3 = pp_entities_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "Invalidating all caches as a result of named entity namespace update.", v4, 2u);
    }
  }
}

+ (float)resolvedPerRecordDecayRateForFeatureProvider:(id)a3 perRecordDecayRate:(float)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 < 0.0)
  {
    v7 = [v5 featureValueForName:@"algorithm"];
    v8 = [v7 int64Value];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 0xA)
    {
      goto LABEL_7;
    }

    v9 = *MEMORY[0x277D3A658];
    v10 = [v6 featureValueForName:@"source_bundleId"];
    v11 = [v10 stringValue];
    v12 = [v9 isEqualToString:v11];

    v13 = ((v8 - 5) >= 3 ? MEMORY[0x277D3A730] : MEMORY[0x277D3A758]);
    if (v12)
    {
LABEL_7:
      v13 = MEMORY[0x277D3A738];
    }

    a4 = *v13;
  }

  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  return a4;
}

+ (id)recordsForNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
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
        v16 = [v14 item];
        [v15 setEntity:v16];

        [v14 score];
        [v15 setInitialScore:?];
        [v15 setSource:v8];
        [v15 setAlgorithm:a5];
        v17 = [MEMORY[0x277D3A578] osBuild];
        [v15 setExtractionOsBuild:v17];

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

+ (void)sortAndTruncate:(id)a3 queryLimit:(unint64_t)a4
{
  v5 = a3;
  [v5 sortUsingComparator:&__block_literal_global_299];
  if ([v5 count] > a4)
  {
    [v5 removeObjectsInRange:{a4, objc_msgSend(v5, "count") - a4}];
  }
}

uint64_t __54__PPLocalNamedEntityStore_sortAndTruncate_queryLimit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

- (uint64_t)_generateMapsSearchQueryResult
{
  if (result)
  {
    v1 = *(result + 8);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke;
    v2[3] = &unk_278973790;
    v2[4] = result;
    return [v1 runWithLockAcquired:v2];
  }

  return result;
}

void __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke(uint64_t a1)
{
  v2 = pp_entities_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Running Maps search query prefetch.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PPLocalNamedEntityStore *)WeakRetained _generateMapsSearchQueryResult];
}

void __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D425E8];
  v4 = a2;
  v5 = [v3 alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke_2;
  v8[3] = &unk_278974E50;
  v8[4] = *(a1 + 32);
  v6 = [v5 initWithBlock:v8 idleTimeout:240.0];
  v7 = v4[3];
  v4[3] = v6;
}

id __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  v3 = pp_entities_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Maps search query: cache miss", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = +[PPConfiguration sharedInstance];
  [v5 mapsSearchQueryFromDateInterval];
  v6 = [v4 dateByAddingTimeInterval:?];

  v7 = +[PPConfiguration sharedInstance];
  v8 = [v7 mapsSearchQueryLimit];

  v9 = [MEMORY[0x277D3A430] locationQueryWithLimit:v8 fromDate:v6 consumerType:3];
  [v9 setLocationConsumer:0];
  v10 = *(a1 + 32);
  v18 = 0;
  v11 = [v10 rankedNamedEntitiesWithQuery:v9 error:&v18 clientProcessName:@"suggestd"];
  v12 = v18;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = pp_entities_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Failed to prefetch Maps search query: %@", buf, 0xCu);
    }

    v13 = objc_opt_new();
  }

  v15 = v13;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end