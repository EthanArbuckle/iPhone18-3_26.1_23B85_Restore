@interface PPSpotlightWritebackDissector
+ (BOOL)bundleIdIsAllowed:(id)a3;
+ (id)sharedCache;
- (BOOL)consumeContentFromBundleId:(id)a3 extractions:(id)a4 spotlightIdentifier:(id)a5 fileProtectionType:(id)a6 shouldContinueBlock:(id)a7;
- (PPSpotlightWritebackDissector)init;
- (PPSpotlightWritebackDissector)initWithNamedEntityStore:(id)a3 topicStore:(id)a4 spotlightIndex:(id)a5 significanceCheckEnabled:(BOOL)a6;
- (id)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 shouldContinueBlock:(id)a6;
- (void)_getNamedEntityPortraitScores:(id)a3 priorityQueue:(id)a4;
@end

@implementation PPSpotlightWritebackDissector

- (id)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 shouldContinueBlock:(id)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v63 = a4;
  v9 = a5;
  v70 = a6;
  v10 = +[PPConfiguration sharedInstance];
  v68 = [v10 useRawNEExtractionScores];

  v11 = +[PPConfiguration sharedInstance];
  v12 = [v11 maxNEExtractions];

  v13 = objc_opt_new();
  v65 = objc_opt_new();
  v14 = [[PPEvictingMinPriorityQueue alloc] initWithCapacity:v12];
  v15 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v9;
  v69 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
  if (!v69)
  {
    goto LABEL_33;
  }

  v67 = *v88;
  while (2)
  {
    v16 = 0;
    do
    {
      if (*v88 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v87 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      if ((v70[2]() & 1) == 0)
      {
        v57 = pp_default_log_handle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v57, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring while processing Portrait containers.", buf, 2u);
        }

        objc_autoreleasePoolPop(v18);
        v44 = obj;
        goto LABEL_47;
      }

      v71 = v16;
      v72 = v18;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v19 = [v17 topics];
      v20 = [v19 countByEnumeratingWithState:&v83 objects:v99 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v84;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v84 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v83 + 1) + 8 * i) item];
            v25 = [v24 topicIdentifier];
            [v13 addQidString:v25];
          }

          v21 = [v19 countByEnumeratingWithState:&v83 objects:v99 count:16];
        }

        while (v21);
      }

      if (!v68)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v26 = [v17 entities];
        v34 = [v26 countByEnumeratingWithState:&v75 objects:v97 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v76;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v76 != v36)
              {
                objc_enumerationMutation(v26);
              }

              v38 = *(*(&v75 + 1) + 8 * j);
              v39 = objc_autoreleasePoolPush();
              v40 = [v38 item];
              v41 = [v40 name];
              [v15 addObject:v41];

              objc_autoreleasePoolPop(v39);
            }

            v35 = [v26 countByEnumeratingWithState:&v75 objects:v97 count:16];
          }

          while (v35);
        }

LABEL_30:
        v30 = v72;
        goto LABEL_31;
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v26 = [v17 entities];
      v27 = [v26 countByEnumeratingWithState:&v79 objects:v98 count:16];
      if (!v27)
      {
        goto LABEL_30;
      }

      v28 = v27;
      v29 = *v80;
      v30 = v72;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v80 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v79 + 1) + 8 * k);
          v33 = objc_autoreleasePoolPush();
          [(PPEvictingMinPriorityQueue *)v14 addObject:v32];
          objc_autoreleasePoolPop(v33);
        }

        v28 = [v26 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v28);
LABEL_31:

      objc_autoreleasePoolPop(v30);
      v16 = v71 + 1;
    }

    while (v71 + 1 != v69);
    v69 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_33:

  if ((v68 & 1) == 0)
  {
    [(PPSpotlightWritebackDissector *)self _getNamedEntityPortraitScores:v15 priorityQueue:v14];
  }

  v42 = v70[2]();
  v43 = pp_default_log_handle();
  v44 = v43;
  if (v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [(PPEvictingMinPriorityQueue *)v14 count];
      *buf = 134217984;
      v92 = v61;
      _os_log_debug_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEBUG, "PPSpotlightWritebackDissector: namedEntityPriorityQueue contains %f items", buf, 0xCu);
    }

    v45 = [(PPEvictingMinPriorityQueue *)v14 extractSortedMutableArray];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __116__PPSpotlightWritebackDissector_spotlightAttributesForBundleId_spotlightIdentifier_extractions_shouldContinueBlock___block_invoke;
    v73[3] = &unk_278978540;
    v46 = v65;
    v74 = v46;
    [v45 enumerateObjectsUsingBlock:v73];

    v47 = pp_default_log_handle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *&v48 = COERCE_DOUBLE([v46 count]);
      *buf = 134217984;
      v92 = *&v48;
      _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: namedEntityScores contains %tu items", buf, 0xCu);
    }

    if (v70[2]())
    {
      [(PPUniversalSearchSpotlightIndexScorer *)self->_scorer computeSpotlightIndexScoreFromPortraitExtractions:obj];
      v50 = v49;
      v51 = pp_default_log_handle();
      v53 = v63;
      v52 = v64;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v92 = v50;
        v93 = 2112;
        v94 = v63;
        v95 = 2112;
        v96 = v64;
        _os_log_debug_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEBUG, "PPSpotlightWritebackDissector: spotlightIndexScore of %g for CSSI item %@ from %@", buf, 0x20u);
      }

      v54 = objc_opt_new();
      [v54 setStaticScore:v50];
      v55 = [v13 encodeAsData];
      [v54 setFeatureVector:v55];

      v56 = [MEMORY[0x277D3A4F0] featureVectorVersion];
      [v54 setFeatureVectorVersion:v56];

      [v54 setNamedEntityScores:v46];
    }

    else
    {
      v60 = pp_default_log_handle();
      v53 = v63;
      v52 = v64;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring before writing back.", buf, 2u);
      }

      v54 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring after fetching scores.", buf, 2u);
    }

LABEL_47:

    v54 = 0;
    v53 = v63;
    v52 = v64;
  }

  v58 = *MEMORY[0x277D85DE8];

  return v54;
}

void __116__PPSpotlightWritebackDissector_spotlightAttributesForBundleId_spotlightIdentifier_extractions_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 item];
  v6 = [v5 name];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCABB0];
    [v13 score];
    v9 = [v8 numberWithDouble:?];
    v10 = *(a1 + 32);
    v11 = [v13 item];
    v12 = [v11 name];
    [v10 setObject:v9 forKeyedSubscript:v12];
  }
}

- (void)_getNamedEntityPortraitScores:(id)a3 priorityQueue:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[PPConfiguration sharedInstance];
    v9 = [v8 storeNewExtractions];

    v10 = +[PPConfiguration sharedInstance];
    [v10 scoreThreshold];
    v12 = v11;

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = +[PPSpotlightWritebackDissector sharedCache];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_2;
    v24 = &unk_278971780;
    v25 = v6;
    v26 = v14;
    v16 = v13;
    LOBYTE(v32) = v9;
    v27 = v16;
    v30 = &__block_literal_global_124;
    v31 = v12;
    v28 = v7;
    v29 = self;
    v17 = v14;
    [v15 runWithLockAcquired:&v21];

    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 count];
      *buf = 134217984;
      v34 = v19;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: %lu named entities to query", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3 objectForKeyedSubscript:v8];
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 40);
          v13 = [v10 cachingDate];
          [v12 timeIntervalSinceDate:v13];
          v15 = v14;

          if (v15 > 3600.0)
          {
            [v3 setObject:0 forKeyedSubscript:v8];
          }
        }

        [*(a1 + 48) addObject:v8];
        if (*(a1 + 88) == 1)
        {
          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Storing uncached extraction with score of 0", buf, 2u);
          }

          v17 = (*(*(a1 + 72) + 16))(0.0);
          [*(a1 + 56) addObject:v17];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  v18 = pp_default_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 48) count];
    *buf = 134217984;
    v41 = v19;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Querying Portrait for %lu extracted named entities", buf, 0xCu);
  }

  if ([*(a1 + 48) count])
  {
    v20 = objc_opt_new();
    [v20 setMatchingNames:*(a1 + 48)];
    v21 = [*(a1 + 56) getMinItemWithoutPopping];
    [v21 score];
    v23 = v22;

    v24 = *(*(a1 + 64) + 16);
    v35 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_133;
    v29[3] = &unk_278971758;
    v30 = v3;
    v31 = *(a1 + 40);
    v33 = *(a1 + 80);
    v32 = *(a1 + 56);
    v34 = v23;
    LOBYTE(v24) = [v24 iterRankedNamedEntitiesWithQuery:v20 error:&v35 block:v29];
    v25 = v35;
    if ((v24 & 1) == 0)
    {
      v26 = pp_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v25;
        _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPSpotlightWritebackDissector: Error querying portrait for NEs: %@", buf, 0xCu);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_133(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count] >= 0x200)
  {
    [*(a1 + 32) removeAllObjects];
  }

  v6 = [PPSpotlightWritebackDissectorCacheEntry alloc];
  v7 = *(a1 + 40);
  [v5 score];
  v8 = [(PPSpotlightWritebackDissectorCacheEntry *)v6 initWithCachingDate:v7 score:?];
  v9 = *(a1 + 32);
  v10 = [v5 item];
  v11 = [v10 name];
  [v9 setObject:v8 forKeyedSubscript:v11];

  [v5 score];
  if (v12 >= *(a1 + 56))
  {
    [*(a1 + 48) addObject:v5];
    [*(a1 + 48) count];
    if (v13 >= [*(a1 + 48) capacity])
    {
      [v5 score];
      if (v14 < *(a1 + 64))
      {
        v15 = pp_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 64);
          v18 = 134217984;
          v19 = v16;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Terminating processing of scored portrait NEs scoring lower than %f", &v18, 0xCu);
        }

        *a3 = 1;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke(double a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D3A420];
  v5 = a3;
  v6 = [[v4 alloc] initWithName:v5 category:0 language:@"unknown"];

  v7 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v6 score:a1];

  return v7;
}

- (BOOL)consumeContentFromBundleId:(id)a3 extractions:(id)a4 spotlightIdentifier:(id)a5 fileProtectionType:(id)a6 shouldContinueBlock:(id)a7
{
  v39[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (+[PPSpotlightWritebackDissector bundleIdIsAllowed:](PPSpotlightWritebackDissector, "bundleIdIsAllowed:", v13) && (![v13 isEqualToString:*MEMORY[0x277D3A648]] || objc_msgSend(MEMORY[0x277D42598], "lockState") != 1))
  {
    v33 = a2;
    v34 = v14;
    v35 = v16;
    v18 = [(PPSpotlightWritebackDissector *)self spotlightAttributesForBundleId:v13 spotlightIdentifier:v15 extractions:v14 shouldContinueBlock:v17];
    v19 = objc_opt_new();
    v20 = MEMORY[0x277CCABB0];
    [v18 staticScore];
    v21 = [v20 numberWithDouble:?];
    [v19 setPortraitStaticScore:v21];

    v22 = [v18 featureVector];
    [v19 setPortraitFeatureVector:v22];

    v23 = [v18 featureVectorVersion];
    [v19 setPortraitFeatureVectorVersion:v23];

    v24 = [v18 namedEntityScores];
    [v19 setPortraitNamedEntities:v24];

    v25 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v15 domainIdentifier:0 attributeSet:v19];
    [v25 setIsUpdate:1];
    v26 = self->_spotlightIndex;
    if (!v26)
    {
      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PersonalizationPortrait-harvestQueueWriteback-%@", v13];
      v26 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:v27 protectionClass:v35 bundleIdentifier:v13];
    }

    v39[0] = v25;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __131__PPSpotlightWritebackDissector_consumeContentFromBundleId_extractions_spotlightIdentifier_fileProtectionType_shouldContinueBlock___block_invoke;
    aBlock[3] = &unk_278971710;
    aBlock[5] = v37;
    aBlock[6] = v33;
    aBlock[4] = self;
    v29 = _Block_copy(aBlock);
    v30 = _Block_copy(v29);

    _Block_object_dispose(v37, 8);
    [(PPSearchableIndex *)v26 indexSearchableItems:v28 completionHandler:v30];

    v14 = v34;
    v16 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

void __131__PPSpotlightWritebackDissector_consumeContentFromBundleId_extractions_spotlightIdentifier_fileProtectionType_shouldContinueBlock___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (atomic_fetch_add((*(a1[5] + 8) + 24), 1u))
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a1[6] object:a1[4] file:@"PPSpotlightWritebackDissector.m" lineNumber:150 description:@"This block should not be run more than once"];

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSpotlightWritebackDissector: Error indexing updated CSSI: %@", &v8, 0xCu);
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
}

- (PPSpotlightWritebackDissector)initWithNamedEntityStore:(id)a3 topicStore:(id)a4 spotlightIndex:(id)a5 significanceCheckEnabled:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = PPSpotlightWritebackDissector;
  v14 = [(PPSpotlightWritebackDissector *)&v18 init];
  if (v14)
  {
    v15 = [[PPUniversalSearchSpotlightIndexScorer alloc] initWithLocalTopicStore:v12];
    scorer = v14->_scorer;
    v14->_scorer = v15;

    objc_storeStrong(&v14->_namedEntityStore, a3);
    objc_storeStrong(&v14->_spotlightIndex, a5);
    v14->_significanceCheckEnabled = a6;
  }

  return v14;
}

- (PPSpotlightWritebackDissector)init
{
  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = +[PPLocalTopicStore defaultStore];
  v5 = [(PPSpotlightWritebackDissector *)self initWithNamedEntityStore:v3 topicStore:v4 spotlightIndex:0 significanceCheckEnabled:1];

  return v5;
}

+ (BOOL)bundleIdIsAllowed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x277D3A658]])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:*MEMORY[0x277D3A648]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sharedCache
{
  if (sharedCache__pasOnceToken6 != -1)
  {
    dispatch_once(&sharedCache__pasOnceToken6, &__block_literal_global_423);
  }

  v3 = sharedCache__pasExprOnceResult;

  return [v3 result];
}

void __44__PPSpotlightWritebackDissector_sharedCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_99 idleTimeout:10.0];
  v2 = sharedCache__pasExprOnceResult;
  sharedCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __44__PPSpotlightWritebackDissector_sharedCache__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:512];
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

@end