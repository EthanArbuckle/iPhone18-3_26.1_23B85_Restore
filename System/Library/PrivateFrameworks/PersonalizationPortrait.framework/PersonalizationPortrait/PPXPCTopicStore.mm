@interface PPXPCTopicStore
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)computeAndCacheTopicScores:(id *)scores;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)iterRankedTopicsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block;
- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (id)_init;
- (id)cachePath:(id *)path;
- (id)rankedTopicsWithQuery:(id)query error:(id *)error;
- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error;
- (id)topicCacheSandboxExtensionToken:(id *)token;
- (id)topicExtractionsFromText:(id)text error:(id *)error;
- (id)topicRecordsWithQuery:(id)query error:(id *)error;
- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPXPCTopicStore

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PPXPCTopicStore;
  _initFromSubclass = [(PPTopicStore *)&v6 _initFromSubclass];
  if (_initFromSubclass)
  {
    v3 = [[PPClientFeedbackHelper alloc] initWithParentObject:_initFromSubclass];
    v4 = _initFromSubclass[1];
    _initFromSubclass[1] = v3;
  }

  return _initFromSubclass;
}

- (id)cachePath:(id *)path
{
  v4 = +[PPTopicReadOnlyClient sharedInstance];
  v5 = [v4 cachePath:path];

  return v5;
}

- (id)topicCacheSandboxExtensionToken:(id *)token
{
  v4 = +[PPTopicReadOnlyClient sharedInstance];
  v5 = [v4 topicCacheSandboxExtensionToken:token];

  return v5;
}

- (BOOL)computeAndCacheTopicScores:(id *)scores
{
  v4 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(scores) = [v4 computeAndCacheTopicScores:scores];

  return scores;
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  clientIdentifier = [(PPXPCTopicStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPXPCTopicStore.m" lineNumber:301 description:@"The clientIdentifier property must be set on the PPTopicStore in order to send feedback."];
  }

  clientIdentifier2 = [(PPXPCTopicStore *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  v12 = +[PPTopicReadOnlyClient sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PPXPCTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke;
  v15[3] = &unk_1E77F7D98;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  [v12 registerUniversalSearchSpotlightFeedback:feedbackCopy completion:v15];
}

uint64_t __71__PPXPCTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  clientIdentifier = [(PPXPCTopicStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPXPCTopicStore.m" lineNumber:271 description:@"The clientIdentifier property must be set on the PPTopicStore in order to send feedback."];
  }

  clientIdentifier2 = [(PPXPCTopicStore *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  v12 = +[PPTopicReadOnlyClient sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__PPXPCTopicStore_registerFeedback_completion___block_invoke;
  v15[3] = &unk_1E77F7D98;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  [v12 registerFeedback:feedbackCopy completion:v15];
}

uint64_t __47__PPXPCTopicStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v6 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(count) = [v6 clearWithError:error deletedCount:count];

  return count;
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v4 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(error) = [v4 cloudSyncWithError:error];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v8 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(error) = [v8 deleteAllTopicsFromSourcesWithBundleId:idCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idsCopy = ids;
  idCopy = id;
  v11 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(error) = [v11 deleteAllTopicsFromSourcesWithBundleId:idCopy groupIds:idsCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idsCopy = ids;
  idCopy = id;
  v11 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(error) = [v11 deleteAllTopicsFromSourcesWithBundleId:idCopy documentIds:idsCopy deletedCount:count error:error];

  return error;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v8 = +[PPTopicReadWriteClient sharedInstance];
  LOBYTE(error) = [v8 deleteAllTopicsWithTopicId:idCopy deletedCount:count error:error];

  return error;
}

- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error
{
  mappingIdentifierCopy = mappingIdentifier;
  identifierCopy = identifier;
  v9 = +[PPTopicReadOnlyClient sharedInstance];
  v10 = [v9 unmapMappedTopicIdentifier:identifierCopy mappingIdentifier:mappingIdentifierCopy error:error];

  return v10;
}

- (id)topicExtractionsFromText:(id)text error:(id *)error
{
  textCopy = text;
  v6 = objc_opt_new();
  v7 = pp_topics_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_topics_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPXPCTopicStore.topicExtractionsFromText", "", buf, 2u);
  }

  v11 = +[PPTopicReadOnlyClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__PPXPCTopicStore_topicExtractionsFromText_error___block_invoke;
  v19[3] = &unk_1E77F6DC8;
  v20 = v6;
  v12 = v6;
  v13 = [v11 topicExtractionsFromText:textCopy error:error handleBatch:v19];

  v14 = pp_topics_signpost_handle();
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPXPCTopicStore.topicExtractionsFromText", "", buf, 2u);
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)topicRecordsWithQuery:(id)query error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = pp_topics_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_topics_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPXPCTopicStore.topicRecordsWithQuery", "", buf, 2u);
  }

  v11 = +[PPTopicReadOnlyClient sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __47__PPXPCTopicStore_topicRecordsWithQuery_error___block_invoke;
  v28[3] = &unk_1E77F6748;
  v12 = v6;
  v29 = v12;
  v30 = &v32;
  v13 = [v11 topicRecordsWithQuery:queryCopy error:error handleBatch:v28];

  v14 = pp_topics_signpost_handle();
  v15 = v14;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPXPCTopicStore.topicRecordsWithQuery", "", buf, 2u);
  }

  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:v33[3]];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObjectsFromArray:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

void __47__PPXPCTopicStore_topicRecordsWithQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = pp_topics_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPXPCTopicStore.iterTopicRecordsWithQuery", "", buf, 2u);
  }

  v13 = +[PPTopicReadOnlyClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__PPXPCTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = [v13 topicRecordsWithQuery:queryCopy error:error handleBatch:v19];

  v16 = pp_topics_signpost_handle();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PPXPCTopicStore.iterTopicRecordsWithQuery", "", buf, 2u);
  }

  return v15;
}

void __57__PPXPCTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  queryCopy = query;
  v7 = objc_opt_new();
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v8 = pp_topics_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_topics_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PPXPCTopicStore.scoresForTopicMapping", "", buf, 2u);
  }

  v12 = +[PPTopicReadOnlyClient sharedInstance];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __53__PPXPCTopicStore_scoresForTopicMapping_query_error___block_invoke;
  v43[3] = &unk_1E77F6748;
  v31 = v7;
  v44 = v31;
  v45 = &v47;
  v13 = [v12 scoresForTopicMapping:mappingCopy query:queryCopy error:error handleBatch:v43];

  v14 = pp_topics_signpost_handle();
  v15 = v14;
  if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v9, "PPXPCTopicStore.scoresForTopicMapping", "", buf, 2u);
  }

  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x1E695DF90]);
    v17 = [v16 initWithCapacity:v48[3]];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v31;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v18)
    {
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v23)
          {
            v24 = *v36;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v36 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v35 + 1) + 8 * j);
                second = [v26 second];
                first = [v26 first];
                [v17 setObject:second forKeyedSubscript:first];
              }

              v23 = [v22 countByEnumeratingWithState:&v35 objects:v51 count:16];
            }

            while (v23);
          }
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v47, 8);
  v29 = *MEMORY[0x1E69E9840];

  return v17;
}

void __53__PPXPCTopicStore_scoresForTopicMapping_query_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  mappingCopy = mapping;
  v12 = pp_topics_signpost_handle();
  v13 = os_signpost_id_generate(v12);

  v14 = pp_topics_signpost_handle();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PPXPCTopicStore.iterScoresForTopicMapping", "", buf, 2u);
  }

  v16 = +[PPTopicReadOnlyClient sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__PPXPCTopicStore_iterScoresForTopicMapping_query_error_block___block_invoke;
  v22[3] = &unk_1E77F7D70;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = [v16 scoresForTopicMapping:mappingCopy query:queryCopy error:error handleBatch:v22];

  v19 = pp_topics_signpost_handle();
  v20 = v19;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v20, OS_SIGNPOST_INTERVAL_END, v13, "PPXPCTopicStore.iterScoresForTopicMapping", "", buf, 2u);
  }

  return v18;
}

void __63__PPXPCTopicStore_iterScoresForTopicMapping_query_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v14 = [v12 first];
        v15 = [v12 second];
        (*(v13 + 16))(v13, v14, v15, a3);

        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)rankedTopicsWithQuery:(id)query error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = pp_topics_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_topics_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPXPCTopicStore.rankedTopicsWithQuery", "", buf, 2u);
  }

  v11 = +[PPTopicReadOnlyClient sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __47__PPXPCTopicStore_rankedTopicsWithQuery_error___block_invoke;
  v28[3] = &unk_1E77F6748;
  v12 = v6;
  v29 = v12;
  v30 = &v32;
  v13 = [v11 rankedTopicsWithQuery:queryCopy error:error handleBatch:v28];

  v14 = pp_topics_signpost_handle();
  v15 = v14;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPXPCTopicStore.rankedTopicsWithQuery", "", buf, 2u);
  }

  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:v33[3]];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObjectsFromArray:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

void __47__PPXPCTopicStore_rankedTopicsWithQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (BOOL)iterRankedTopicsWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = pp_topics_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPXPCTopicStore.iterRankedTopicsWithQuery", "", buf, 2u);
  }

  v13 = +[PPTopicReadOnlyClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__PPXPCTopicStore_iterRankedTopicsWithQuery_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = [v13 rankedTopicsWithQuery:queryCopy error:error handleBatch:v19];

  v16 = pp_topics_signpost_handle();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PPXPCTopicStore.iterRankedTopicsWithQuery", "", buf, 2u);
  }

  return v15;
}

void __57__PPXPCTopicStore_iterRankedTopicsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end