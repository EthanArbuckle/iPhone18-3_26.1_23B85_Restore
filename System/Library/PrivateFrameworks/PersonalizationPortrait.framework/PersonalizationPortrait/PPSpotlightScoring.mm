@interface PPSpotlightScoring
+ (id)defaultInstance;
- (PPSpotlightScoring)initWithTopicStore:(id)store;
- (id)spotlightQueryScore:(id)score error:(id *)error;
- (void)dealloc;
@end

@implementation PPSpotlightScoring

- (id)spotlightQueryScore:(id)score error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  cachedTopicScores = [(PPTopicStore *)self->_topicStore cachedTopicScores];
  if (!cachedTopicScores)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43[0] = @"Topic stored did not return scores";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      *error = [v17 errorWithDomain:@"PPErrorDomain" code:1 userInfo:v18];
    }

    v13 = pp_universal_search_log_handle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *v36 = 0;
    v19 = "Topic stored did not return scores while computing score for spotlight";
    goto LABEL_21;
  }

  if (!scoreCopy)
  {
    v13 = pp_universal_search_log_handle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v16 = 0;
      goto LABEL_17;
    }

    *v36 = 0;
    v19 = "PPSpotlightScoring: nil spotlightQueryScore for item with nil attributes";
LABEL_21:
    _os_log_error_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_ERROR, v19, v36, 2u);
    goto LABEL_12;
  }

  portraitFeatureVector = [scoreCopy portraitFeatureVector];
  portraitFeatureVectorVersion = [scoreCopy portraitFeatureVectorVersion];
  v10 = [PPSpotlightScoringFeatureVector decodeFeatureVectorFromData:portraitFeatureVector version:portraitFeatureVectorVersion];

  qidStrings = [v10 qidStrings];
  v12 = [qidStrings count];

  *v36 = 0;
  v37 = v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __48__PPSpotlightScoring_spotlightQueryScore_error___block_invoke;
  v27 = &unk_1E77F7AA8;
  v30 = &v32;
  v13 = v10;
  v28 = v13;
  v31 = v36;
  v29 = cachedTopicScores;
  [v29 enumerateKeysAndObjectsUsingBlock:&v24];
  v14 = sqrt(v12) * sqrt(v33[3]);
  if (v14 == 0.0)
  {
    v15 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEBUG, "PPSpotlightScoring: spotlightQueryScore of 0 due to empty portrait", buf, 2u);
    }

    v16 = &unk_1F1B45948;
  }

  else
  {
    v20 = *(v37 + 3) / v14;
    v21 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v41 = v20;
      _os_log_debug_impl(&dword_1A7FD3000, v21, OS_LOG_TYPE_DEBUG, "PPSpotlightScoring: spotlightQueryScore of %f", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{v20, v24, v25, v26, v27, v28}];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

void __48__PPSpotlightScoring_spotlightQueryScore_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  [v5 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v7 * v9;
  v10 = [*(a1 + 32) qidStrings];
  v11 = [v10 containsObject:v14];

  if (v11)
  {
    v12 = [*(a1 + 40) objectForKeyedSubscript:v14];
    [v12 doubleValue];
    *(*(*(a1 + 56) + 8) + 24) = v13 + *(*(*(a1 + 56) + 8) + 24);
  }
}

- (void)dealloc
{
  sandboxExtensionHandle = self->_sandboxExtensionHandle;
  if (sandbox_extension_release() == -1)
  {
    v4 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_ERROR, "PPSpotlightScoring was unable to release the sandbox extension", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = PPSpotlightScoring;
  [(PPSpotlightScoring *)&v5 dealloc];
}

- (PPSpotlightScoring)initWithTopicStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = PPSpotlightScoring;
  v6 = [(PPSpotlightScoring *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_topicStore, store);
  topicStore = v7->_topicStore;
  v16 = 0;
  v9 = [(PPTopicStore *)topicStore topicCacheSandboxExtensionToken:&v16];
  v10 = v16;
  if (!v9)
  {
    v9 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_error_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_ERROR, "PPSpotlightScoring was unable to get the sandbox extension: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  [v9 cStringUsingEncoding:4];
  v11 = sandbox_extension_consume();
  if (v11 == -1)
  {
    v13 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_ERROR, "PPSpotlightScoring was unable to consume the sandbox extension", buf, 2u);
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v7->_sandboxExtensionHandle = v11;

LABEL_5:
  v12 = v7;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)defaultInstance
{
  pthread_mutex_lock(&defaultInstance_lock);
  if (!defaultInstance_instance)
  {
    v2 = objc_opt_new();
    if (v2)
    {
      v3 = [[PPSpotlightScoring alloc] initWithTopicStore:v2];
      v4 = defaultInstance_instance;
      defaultInstance_instance = v3;

      if (defaultInstance_instance)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = pp_universal_search_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        v6 = "PPSpotlightScoring defaultInstance did not initialize.";
        v7 = &v10;
LABEL_13:
        _os_log_error_impl(&dword_1A7FD3000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      }
    }

    else
    {
      v5 = pp_universal_search_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "PPTopicStore gave nil, bailing on PPSpotlightScoring initialization.";
        v7 = buf;
        goto LABEL_13;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v8 = defaultInstance_instance;
  pthread_mutex_unlock(&defaultInstance_lock);

  return v8;
}

@end