@interface PPUniversalSearchSpotlightIndexScorer
- (PPUniversalSearchSpotlightIndexScorer)init;
- (PPUniversalSearchSpotlightIndexScorer)initWithLocalTopicStore:(id)a3;
- (double)computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector:(id)a3;
- (double)computeSpotlightIndexTopicSubscoreFromPortraitExtractions:(id)a3;
- (id)topicAlgorithmWeights;
@end

@implementation PPUniversalSearchSpotlightIndexScorer

- (double)computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = [v4 allKeys];
  v7 = [v5 initWithArray:v6];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__19394;
  v37[4] = __Block_byref_object_dispose__19395;
  v38 = objc_opt_new();
  v8 = [(_PASLazyPurgeableResult *)self->_cachedPortraitTopicScores result];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __105__PPUniversalSearchSpotlightIndexScorer_computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector___block_invoke;
  v33[3] = &unk_278976DB8;
  v35 = &v39;
  v9 = v7;
  v34 = v9;
  v36 = v37;
  [v8 enumerateKeysAndObjectsUsingBlock:v33];

  v10 = v40[3];
  v11 = [(PPUniversalSearchSpotlightIndexScorer *)self topicAlgorithmWeights];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__PPUniversalSearchSpotlightIndexScorer_computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector___block_invoke_2;
  v20[3] = &unk_278976DE0;
  v22 = v37;
  v12 = v11;
  v21 = v12;
  v23 = &v25;
  v24 = &v29;
  [v4 enumerateKeysAndObjectsUsingBlock:v20];
  v13 = v26[3];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v15 = sqrt(v10);
    if (v15 != 0.0)
    {
      v16 = v30[3];
      v17 = pp_universal_search_log_handle();
      v14 = v16 / sqrt(v13) / v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v44 = v14;
        _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "PPSpotlightScoring: spotlightQueryScore of %f", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void __105__PPUniversalSearchSpotlightIndexScorer_computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [v5 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v7 * v8;
  if ([*(a1 + 32) containsObject:v9])
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:v5 forKeyedSubscript:v9];
  }
}

void __105__PPUniversalSearchSpotlightIndexScorer_computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:a2];
  if (v5)
  {
    for (i = 0; i != 13; ++i)
    {
      [v13 countForAlgorithm:i];
      v8 = v7;
      v9 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v9 doubleValue];
      v11 = v8 * v10;

      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v11 * v11;
      [v5 doubleValue];
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + v11 * v12;
    }
  }
}

- (double)computeSpotlightIndexTopicSubscoreFromPortraitExtractions:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v5;
        v6 = *(*(&v35 + 1) + 8 * v5);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v7 = [v6 topics];
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
              v13 = [v12 item];
              v14 = [v13 topicIdentifier];
              v15 = [v14 hasPrefix:@"Q"];

              if (v15)
              {
                v16 = [v12 item];
                v17 = [v16 topicIdentifier];
                v18 = [v4 objectForKeyedSubscript:v17];

                if (!v18)
                {
                  v18 = objc_opt_new();
                  v19 = [v12 item];
                  v20 = [v19 topicIdentifier];
                  [v4 setObject:v18 forKeyedSubscript:v20];
                }

                v21 = [v6 topicAlgorithm];
                [v12 score];
                [v18 addToCountForAlgorithm:v21 value:?];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v9);
        }

        v5 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  [(PPUniversalSearchSpotlightIndexScorer *)self computeSpotlightIndexTopicScoreComponentFromDocumentTopicVector:v4];
  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)topicAlgorithmWeights
{
  v2 = objc_opt_new();
  v3 = 13;
  do
  {
    [v2 addObject:&unk_284784710];
    --v3;
  }

  while (v3);

  return v2;
}

- (PPUniversalSearchSpotlightIndexScorer)initWithLocalTopicStore:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PPUniversalSearchSpotlightIndexScorer;
  v7 = [(PPUniversalSearchSpotlightIndexScorer *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_topicStore, a3);
    objc_initWeak(&location, v8);
    v9 = objc_alloc(MEMORY[0x277D425E8]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__PPUniversalSearchSpotlightIndexScorer_initWithLocalTopicStore___block_invoke;
    v13[3] = &unk_278976D90;
    objc_copyWeak(v14, &location);
    v14[1] = a2;
    v10 = [v9 initWithBlock:v13];
    cachedPortraitTopicScores = v8->_cachedPortraitTopicScores;
    v8->_cachedPortraitTopicScores = v10;

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __65__PPUniversalSearchSpotlightIndexScorer_initWithLocalTopicStore___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    if (!v4)
    {
      v5 = +[PPLocalTopicStore defaultStore];
      v6 = v3[1];
      v3[1] = v5;

      v4 = v3[1];
    }

    v7 = [v4 cachedTopicScores];
    if (!v7)
    {
      v8 = pp_universal_search_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "Failed to read topic cache in %@.  Forcing regeneration", buf, 0xCu);
      }

      v10 = v3[1];
      v19 = 0;
      v11 = [v10 computeAndCacheTopicScores:&v19];
      v12 = v19;
      if ((v11 & 1) == 0)
      {
        v13 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412546;
          v21 = v17;
          v22 = 2112;
          v23 = v12;
          _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "Forced topic cache recreation failed in %@ with %@", buf, 0x16u);
        }
      }

      v7 = [v3[1] cachedTopicScores];
      if (!v7)
      {
        v14 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412290;
          v21 = v18;
          _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Topic cache still empty after successful regeneration in %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PPUniversalSearchSpotlightIndexScorer)init
{
  v3 = +[PPLocalTopicStore defaultStore];
  v4 = [(PPUniversalSearchSpotlightIndexScorer *)self initWithLocalTopicStore:v3];

  return v4;
}

@end