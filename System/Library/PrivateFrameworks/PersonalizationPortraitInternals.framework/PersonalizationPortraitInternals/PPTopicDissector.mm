@interface PPTopicDissector
+ (id)sharedInstance;
- (PPTopicDissector)init;
- (PPTopicDissector)initWithContextClient:(id)client;
- (id)extractionsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language weight:(double)weight;
- (void)_collectHighLevelTopicsWithText:(id)text bundleId:(id)id addTopic:(id)topic weight:(double)weight;
@end

@implementation PPTopicDissector

- (void)_collectHighLevelTopicsWithText:(id)text bundleId:(id)id addTopic:(id)topic weight:(double)weight
{
  topicCopy = topic;
  textCopy = text;
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "HighLevel Topic Extraction beginning for text...", buf, 2u);
  }

  transform = self->_transform;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__PPTopicDissector__collectHighLevelTopicsWithText_bundleId_addTopic_weight___block_invoke;
  v14[3] = &unk_2789722D0;
  v15 = topicCopy;
  v12 = topicCopy;
  [(PPTextToTopicTransform *)transform iterateTopicsForText:textCopy block:v14];

  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "HighLevel Topic Extraction completed for text", buf, 2u);
  }
}

void __77__PPTopicDissector__collectHighLevelTopicsWithText_bundleId_addTopic_weight___block_invoke(uint64_t a1, void *a2, float a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pp_default_log_handle();
  v7 = a3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138740227;
    v13 = v5;
    v14 = 2048;
    v15 = v7;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "topicId: %{sensitive}@, score: %f", &v12, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277D3A498]);
  v9 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v5];
  v10 = [v8 initWithItem:v9 score:v7];

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void __166__PPTopicDissector__collectResultsFromContextKitWithText_isPlainText_bundleId_language_useContextKitTopics_useContextKitNamedEntities_addTopic_addNamedEntity_weight___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(v4 + 16))(v4, v6, v7, 1);
}

void __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v19 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TP_%lu", a4];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v11 setTopics:v12];

    v13 = objc_opt_new();
    [v11 setTopicsExactMatchesInSourceText:v13];

    [v11 setSource:*(a1 + 40)];
    [v11 setTopicAlgorithm:a4];
    [v11 setCloudSync:*(a1 + 56)];
    [v11 setSentimentScore:*(a1 + 48)];
    v14 = *(a1 + 32);
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TP_%lu", a4];
    [v14 setObject:v11 forKeyedSubscript:v15];
  }

  v16 = [v11 topics];
  v17 = [v16 arrayByAddingObject:v19];
  [v11 setTopics:v17];

  v18 = [v11 topicsExactMatchesInSourceText];
  [v18 addObject:v7];

  objc_autoreleasePoolPop(v8);
}

void __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NE_%lu", a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    [v8 setEntities:v9];

    [v8 setSource:*(a1 + 40)];
    [v8 setEntityAlgorithm:a3];
    [v8 setCloudSync:*(a1 + 56)];
    [v8 setSentimentScore:*(a1 + 48)];
    v10 = *(a1 + 32);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NE_%lu", a3];
    [v10 setObject:v8 forKeyedSubscript:v11];
  }

  v12 = [v8 entities];
  v13 = [v12 arrayByAddingObject:v14];
  [v8 setEntities:v13];

  objc_autoreleasePoolPop(v5);
}

- (id)extractionsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language weight:(double)weight
{
  plainTextCopy = plainText;
  textCopy = text;
  idCopy = id;
  languageCopy = language;
  newRequest = [(CKContextClient *)self->_contextClient newRequest];
  [newRequest setText:textCopy];
  v16 = MEMORY[0x277CBEAF8];
  languageCode = languageCopy;
  if (!languageCopy)
  {
    id = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [id languageCode];
  }

  v18 = [v16 componentsFromLocaleIdentifier:languageCode];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  [newRequest setLanguageTag:v19];

  if (!languageCopy)
  {
  }

  [newRequest setTextIsRaw:!plainTextCopy];
  v20 = dispatch_semaphore_create(0);
  v21 = objc_opt_new();
  *(v21 + 8) = 0;
  v22 = objc_opt_new();
  v23 = *(v21 + 16);
  *(v21 + 16) = v22;

  v24 = objc_opt_new();
  v25 = *(v21 + 24);
  *(v21 + 24) = v24;

  v26 = objc_opt_new();
  v27 = *(v21 + 32);
  *(v21 + 32) = v26;

  v28 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v21];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke;
  v42[3] = &unk_278972208;
  v29 = idCopy;
  v43 = v29;
  v48 = plainTextCopy;
  v30 = v28;
  v44 = v30;
  weightCopy = weight;
  v31 = languageCopy;
  v45 = v31;
  v32 = v20;
  v46 = v32;
  [newRequest executeWithReply:v42];
  [MEMORY[0x277D425A0] waitForSemaphore:v32 timeoutSeconds:0 onAcquire:&__block_literal_global_140 onTimeout:3.0];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2906;
  v40 = __Block_byref_object_dispose__2907;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_141;
  v35[3] = &unk_278972230;
  v35[4] = &v36;
  [v30 runWithLockAcquired:v35];
  v33 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v33;
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v4 = [v3 error];

  if (v4)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v34 = [v3 error];
      *buf = 138412290;
      v48 = v34;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "ContextKit error: %@", buf, 0xCu);
    }

    v6 = [v3 error];
    if ([v6 code] == 4)
    {
      v7 = 0;
      v8 = 0;
LABEL_24:

LABEL_26:
      v18 = +[PPLocalTopicStore defaultStore];
      [v18 logDonationErrorForReason:v8 errorCode:v7 source:*(a1 + 32)];
      goto LABEL_27;
    }

    v19 = [v3 error];
    v20 = [v19 code] == 7;

    if (!v20)
    {
      v6 = [v3 error];
      v7 = [v6 code];
      v8 = 3;
      goto LABEL_24;
    }

LABEL_25:
    v7 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  v9 = [v3 results];
  if (!v9 || ([v3 results], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count") == 0, v10, v9, v11))
  {
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "nil or empty results received from ContextKit", buf, 2u);
    }

    if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D3A698]])
    {
      v22 = *(a1 + 72);
      v23 = [v3 error];
      v6 = v23;
      if (v22)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v7 = [v23 code];
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v12 = pp_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 results];
    v14 = [v13 count];
    *buf = 134217984;
    v48 = v14;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "got %lu results from ContextKit", buf, 0xCu);
  }

  v15 = pp_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v35 = [v3 debug];
    *buf = 138739971;
    v48 = v35;
    _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "ContextKit debug info: %{sensitive}@", buf, 0xCu);
  }

  v16 = [v3 results];
  v17 = ([v16 count] & 0xFFFFFFFFFFFF0000) != 0;

  if (v17)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "ignoring excessive results returned from ContextKit.", buf, 2u);
    }
  }

  else
  {
    v25 = [v3 results];
    v26 = [v25 count];

    v27 = +[PPConfiguration sharedInstance];
    [v27 halfValuePosition];
    v29 = v28;

    v30 = *(a1 + 40);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_129;
    v36[3] = &unk_2789721E0;
    v37 = v3;
    v39 = &v43;
    v31 = *(a1 + 64);
    v40 = v29;
    v41 = v31;
    v42 = v26;
    v38 = *(a1 + 48);
    [v30 runWithLockAcquired:v36];
    v32 = pp_default_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v44 + 12);
      *buf = 134217984;
      v48 = v33;
      _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "processed %lu results from ContextKit", buf, 0xCu);
    }

    v18 = v37;
  }

LABEL_27:

  dispatch_semaphore_signal(*(a1 + 56));
  _Block_object_dispose(&v43, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_141(uint64_t a1, _BYTE *a2)
{
  a2[8] = 1;
  v3 = a2;
  v4 = [PPContextKitResultContainer alloc];
  v6 = v3[2];
  v5 = v3[3];
  v7 = v3[4];

  v8 = v6;
  v9 = v5;
  v10 = v7;
  if (v4)
  {
    v14.receiver = v4;
    v14.super_class = PPContextKitResultContainer;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    v4 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_topics, v6);
      objc_storeStrong(&v4->_namedEntities, v5);
      objc_storeStrong(&v4->_topicsExactMatchesInSourceText, v7);
    }
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v4;
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_138()
{
  v0 = pp_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_23224A000, v0, OS_LOG_TYPE_ERROR, "Timeout waiting for ContextKit response.", v1, 2u);
  }
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_129(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(v3 + 8) == 1)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "Exceeded time limit to process ContextKit extractions. Stopping.", buf, 2u);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [*(a1 + 32) results];
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      obj = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * v8);
          v10 = pp_default_log_handle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v9 title];
            v23 = [v9 topicId];
            v24 = [v9 category];
            *buf = 138740483;
            v32 = v22;
            v33 = 2117;
            v34 = v23;
            v35 = 2117;
            v36 = v24;
            _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "ContextKit title: %{sensitive}@, qid: %{sensitive}@, category: %{sensitive}@", buf, 0x20u);
          }

          v11 = [v9 topicId];

          LOWORD(v12) = *(*(*(a1 + 48) + 8) + 24);
          v13 = *(a1 + 56) / (*(a1 + 56) + v12);
          if (v11)
          {
            v14 = objc_alloc(MEMORY[0x277D3A530]);
            v15 = [v9 topicId];
            v16 = [v14 initWithTopicIdentifier:v15];

            v17 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v16 score:*(*(*(a1 + 48) + 8) + 24) resultPosition:*(a1 + 72) resultCount:v13 * *(a1 + 64)];
            [v3[2] addObject:v17];
            v18 = v3[4];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isExactMatch")}];
            [v18 addObject:v19];
          }

          else
          {
            v20 = objc_alloc(MEMORY[0x277D3A420]);
            v21 = [v9 title];
            v16 = [v20 initWithName:v21 category:0 language:*(a1 + 40)];

            v17 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v16 score:*(*(*(a1 + 48) + 8) + 24) resultPosition:*(a1 + 72) resultCount:v13 * *(a1 + 64)];
            [v3[3] addObject:v17];
          }

          ++*(*(*(a1 + 48) + 8) + 24);
          ++v8;
        }

        while (v6 != v8);
        v4 = obj;
        v6 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v6);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (PPTopicDissector)init
{
  if (init__pasOnceToken4 != -1)
  {
    dispatch_once(&init__pasOnceToken4, &__block_literal_global_2922);
  }

  v4 = init__pasExprOnceResult;
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopicDissector.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"contextClient"}];
  }

  v5 = [(PPTopicDissector *)self initWithContextClient:v4];

  return v5;
}

void __24__PPTopicDissector_init__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CFC738] clientWithDefaultRequestType:2];
  v2 = init__pasExprOnceResult;
  init__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (PPTopicDissector)initWithContextClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = PPTopicDissector;
  v6 = [(PPTopicDissector *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextClient, client);
    v8 = +[PPTextToTopicTransform sharedInstance];
    transform = v7->_transform;
    v7->_transform = v8;
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken14 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken14, &__block_literal_global_144);
  }

  v3 = sharedInstance__pasExprOnceResult_2939;

  return v3;
}

void __34__PPTopicDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_2939;
  sharedInstance__pasExprOnceResult_2939 = v1;

  objc_autoreleasePoolPop(v0);
}

@end