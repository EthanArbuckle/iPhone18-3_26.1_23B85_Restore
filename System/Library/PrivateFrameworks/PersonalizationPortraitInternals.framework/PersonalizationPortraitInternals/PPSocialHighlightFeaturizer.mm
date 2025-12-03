@interface PPSocialHighlightFeaturizer
+ (double)_intervalForBucketedString:(uint64_t)string;
+ (id)_feedbackFeaturesForPublisher:(void *)publisher highlights:(void *)highlights features:;
+ (id)_flattenArraysInDictionary:(void *)dictionary keyPath:;
+ (id)_lastInteractionsByContactForHighlights:(void *)highlights bundlePredicate:(void *)predicate mechanismPredicate:(void *)mechanismPredicate interactionStore:;
+ (id)trialSpecifiedFeatures;
- (PPSocialHighlightFeaturizer)initWithFeatureValues:(id)values;
- (PPSocialHighlightFeaturizer)initWithFeedbackPublisher:(id)publisher topicStore:(id)store interactionStore:(id)interactionStore significantContactHandles:(id)handles features:(id)features highlights:(id)highlights;
- (id)featurizeHighlights:(id)highlights;
@end

@implementation PPSocialHighlightFeaturizer

+ (id)trialSpecifiedFeatures
{
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [v2 plistForFactorName:@"social_highlight_ranker.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];

  v4 = [v3 objectForKeyedSubscript:@"*"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  }

  else
  {
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPSocialHighlightFeaturizer: unable to load ranker from Trial.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)featurizeHighlights:(id)highlights
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPSocialHighlightFeaturizer_featurizeHighlights___block_invoke;
  v5[3] = &unk_278974FB0;
  v5[4] = self;
  v3 = [highlights _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __51__PPSocialHighlightFeaturizer_featurizeHighlights___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 highlightIdentifier];

  if (v4)
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(*(a1 + 32) + 8);
    v6 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
          v12 = [v11 valueForHighlight:v3];

          v13 = objc_opt_new();
          [v13 setName:v10];
          [v12 doubleValue];
          [v13 setValue:?];
          [v5 addObject:v13];
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setCalculatedFeatures:v5];
    v14 = v3;
  }

  else
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: encountered highlight without an identifier.", buf, 2u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PPSocialHighlightFeaturizer)initWithFeedbackPublisher:(id)publisher topicStore:(id)store interactionStore:(id)interactionStore significantContactHandles:(id)handles features:(id)features highlights:(id)highlights
{
  v377 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  storeCopy = store;
  interactionStoreCopy = interactionStore;
  featuresCopy = features;
  highlightsCopy = highlights;
  handlesCopy = handles;
  v284 = objc_opt_new();
  v281 = publisherCopy;
  if (publisherCopy)
  {
    v16 = publisherCopy;
  }

  else
  {
    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no feedback publisher provided.", buf, 2u);
    }

    v16 = 0;
  }

  v18 = [PPSocialHighlightFeaturizer _feedbackFeaturesForPublisher:v16 highlights:highlightsCopy features:featuresCopy];
  [v284 addEntriesFromDictionary:v18];

  v290 = featuresCopy;
  v291 = highlightsCopy;
  if (interactionStoreCopy)
  {
    v316 = interactionStoreCopy;
    v311 = highlightsCopy;
    v19 = featuresCopy;
    v20 = 0x27896F000uLL;
    objc_opt_self();
    v21 = objc_opt_new();
    *v362 = 0u;
    v363 = 0u;
    v364 = 0u;
    v365 = 0u;
    obj = v19;
    v326 = [obj countByEnumeratingWithState:v362 objects:&v370 count:16];
    if (!v326)
    {
      goto LABEL_28;
    }

    v321 = *v363;
    v301 = *MEMORY[0x277D3A658];
    v306 = v21;
    while (1)
    {
      for (i = 0; i != v326; ++i)
      {
        if (*v363 != v321)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*&v362[8] + 8 * i);
        v24 = objc_autoreleasePoolPush();
        if ([v23 isEqualToString:@"lastMessagesInteractionWithSenderSecondsBeforeNow"])
        {
          context = v24;
          v25 = *(v20 + 3448);
          v26 = v311;
          v27 = v316;
          objc_opt_self();
          v28 = objc_autoreleasePoolPush();
          v29 = MEMORY[0x277CCAC30];
          *buf = v301;
          [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v31 = v30 = v20;
          v32 = [v29 predicateWithFormat:@"bundleId == %@" argumentArray:v31];

          objc_autoreleasePoolPop(v28);
          v33 = [(PPSocialHighlightFeaturizer *)*(v30 + 3448) _lastInteractionsByContactForHighlights:v26 bundlePredicate:v32 mechanismPredicate:0 interactionStore:v27];
        }

        else
        {
          if (![v23 isEqualToString:@"lastNonMessagesInteractionWithSenderSecondsBeforeNow"])
          {
            goto LABEL_26;
          }

          context = v24;
          v30 = v20;
          v34 = *(v20 + 3448);
          v292 = v311;
          v35 = v316;
          objc_opt_self();
          v36 = objc_autoreleasePoolPush();
          v37 = MEMORY[0x277CCAC30];
          *buf = &unk_2847855F8;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v39 = [v37 predicateWithFormat:@"mechanism in %@" argumentArray:v38];

          objc_autoreleasePoolPop(v36);
          v40 = objc_autoreleasePoolPush();
          v41 = MEMORY[0x277CCAC30];
          *&aBlock = v301;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&aBlock count:1];
          v43 = [v41 predicateWithFormat:@"bundleId != %@" argumentArray:v42];

          objc_autoreleasePoolPop(v40);
          v33 = [(PPSocialHighlightFeaturizer *)*(v30 + 3448) _lastInteractionsByContactForHighlights:v292 bundlePredicate:v43 mechanismPredicate:v39 interactionStore:v35];
        }

        v44 = MEMORY[0x277CBEC10];
        if (v33)
        {
          v44 = v33;
        }

        v45 = v44;

        v46 = *(v30 + 3448);
        v47 = v45;
        objc_opt_self();
        v48 = objc_opt_new();
        aBlock = 0u;
        v367 = 0u;
        v368 = 0u;
        v369 = 0u;
        v49 = v47;
        v50 = [v49 countByEnumeratingWithState:&aBlock objects:buf count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v367;
          do
          {
            for (j = 0; j != v51; ++j)
            {
              if (*v367 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&aBlock + 1) + 8 * j);
              v55 = MEMORY[0x277CCABB0];
              v56 = [v49 objectForKeyedSubscript:v54];
              [v56 timeIntervalSinceNow];
              v58 = [v55 numberWithDouble:-v57];
              [v48 setObject:v58 forKeyedSubscript:v54];
            }

            v51 = [v49 countByEnumeratingWithState:&aBlock objects:buf count:16];
          }

          while (v51);
        }

        v59 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v48 highlightKeyBlock:&__block_literal_global_18];
        v21 = v306;
        [v306 setObject:v59 forKeyedSubscript:v23];

        v20 = 0x27896F000;
        v24 = context;
LABEL_26:
        objc_autoreleasePoolPop(v24);
      }

      v326 = [obj countByEnumeratingWithState:v362 objects:&v370 count:16];
      if (!v326)
      {
LABEL_28:

        [v284 addEntriesFromDictionary:v21];
        featuresCopy = v290;
        goto LABEL_31;
      }
    }
  }

  v21 = pp_social_highlights_log_handle();
  v20 = 0x27896F000uLL;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no interaction store provided.", buf, 2u);
  }

LABEL_31:

  if (!storeCopy)
  {
    v103 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v103, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no topic store provided.", buf, 2u);
    }

    v104 = v291;
    goto LABEL_153;
  }

  v60 = v20;
  v61 = *(v20 + 3448);
  v62 = storeCopy;
  v63 = v291;
  v64 = featuresCopy;
  objc_opt_self();
  v65 = objc_autoreleasePoolPush();
  v66 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"meanTopicScore", @"medianTopicScore", @"topicCount", @"maxTopicScore", @"minTopicScore", 0}];
  objc_autoreleasePoolPop(v65);
  v277 = v66;
  v278 = v64;
  if (![v66 intersectsSet:v64])
  {
    v103 = MEMORY[0x277CBEC10];
    v20 = v60;
    v104 = v291;
    goto LABEL_152;
  }

  v67 = *(v60 + 3448);
  v68 = v63;
  v287 = v62;
  v274 = objc_opt_self();
  v69 = objc_opt_new();
  v276 = objc_opt_new();
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 0u;
  v70 = v68;
  v71 = [v70 countByEnumeratingWithState:&v349 objects:&v370 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v350;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v350 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v349 + 1) + 8 * k);
        v76 = objc_autoreleasePoolPush();
        attributionIdentifier = [v75 attributionIdentifier];

        if (attributionIdentifier)
        {
          highlightIdentifier = [v75 highlightIdentifier];
          attributionIdentifier2 = [v75 attributionIdentifier];
          [v69 setObject:highlightIdentifier forKeyedSubscript:attributionIdentifier2];
        }

        objc_autoreleasePoolPop(v76);
      }

      v72 = [v70 countByEnumeratingWithState:&v349 objects:&v370 count:16];
    }

    while (v72);
  }

  v285 = v63;
  v286 = v62;
  if ([v69 count])
  {
    v80 = objc_opt_new();
    v81 = objc_opt_new();
    v82 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [v69 allKeys];
    v84 = [v82 initWithArray:allKeys];
    [v81 setMatchingDocumentIds:v84];

    [v81 setLimit:50];
    v375 = 0;
    *&v353 = MEMORY[0x277D85DD0];
    *(&v353 + 1) = 3221225472;
    *&v354 = __79__PPSocialHighlightFeaturizer__topicScoresMatchingSocialHighlights_topicStore___block_invoke;
    *(&v354 + 1) = &unk_278974FF8;
    v85 = v80;
    *&v355 = v85;
    v307 = v276;
    *(&v355 + 1) = v307;
    v86 = v69;
    *&v356 = v86;
    *(&v356 + 1) = sel__topicScoresMatchingSocialHighlights_topicStore_;
    v357 = v274;
    v272 = v81;
    LOBYTE(v84) = [v287 iterTopicRecordsWithQuery:v81 error:&v375 block:&v353];
    v273 = v375;
    featuresCopy = v290;
    v275 = v85;
    if (v84)
    {
      if ([v85 count])
      {
        v312 = v70;
        v302 = v69;
        v87 = v85;
        v88 = v287;
        objc_opt_self();
        v89 = objc_autoreleasePoolPush();
        v90 = v88;
        cachedTopicScores = [v88 cachedTopicScores];
        objc_autoreleasePoolPop(v89);
        v92 = objc_opt_new();
        aBlock = 0u;
        v367 = 0u;
        v368 = 0u;
        v369 = 0u;
        v93 = v87;
        v94 = [v93 countByEnumeratingWithState:&aBlock objects:buf count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v367;
          while (2)
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v367 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&aBlock + 1) + 8 * m);
              v99 = [cachedTopicScores objectForKeyedSubscript:v98];

              if (!v99)
              {
                v107 = pp_social_highlights_log_handle();
                v102 = v90;
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                {
                  *v362 = 0;
                  _os_log_impl(&dword_23224A000, v107, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: missing QID overlap with the cache, will rerank.", v362, 2u);
                }

                v101 = 0;
                v69 = v302;
                goto LABEL_67;
              }

              v100 = [cachedTopicScores objectForKeyedSubscript:v98];
              [v92 setObject:v100 forKeyedSubscript:v98];
            }

            v95 = [v93 countByEnumeratingWithState:&aBlock objects:buf count:16];
            if (v95)
            {
              continue;
            }

            break;
          }
        }

        v101 = v92;
        v69 = v302;
        v102 = v90;
LABEL_67:

        if (v101)
        {
          v63 = v285;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v108 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v108, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: topic cache is invalid, performing reranking", buf, 2u);
          }

          v101 = objc_opt_new();
          v109 = objc_opt_new();
          [v272 setMatchingTopicIds:v93];
          [v272 setLimit:50];
          v374 = v273;
          v327 = v109;
          v110 = [v102 rankedTopicsWithQuery:v109 error:&v374];
          v323 = v374;

          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          v111 = v110;
          v112 = [v111 countByEnumeratingWithState:&v345 objects:buf count:16];
          v63 = v285;
          if (v112)
          {
            v113 = v112;
            v114 = *v346;
            do
            {
              for (n = 0; n != v113; ++n)
              {
                if (*v346 != v114)
                {
                  objc_enumerationMutation(v111);
                }

                v116 = *(*(&v345 + 1) + 8 * n);
                v117 = MEMORY[0x277CCABB0];
                [v116 score];
                v118 = [v117 numberWithDouble:?];
                item = [v116 item];
                topicIdentifier = [item topicIdentifier];
                [v101 setObject:v118 forKeyedSubscript:topicIdentifier];
              }

              v113 = [v111 countByEnumeratingWithState:&v345 objects:buf count:16];
            }

            while (v113);
          }

          objc_autoreleasePoolPop(contexta);
          v273 = v323;
          v69 = v302;
        }

        v121 = MEMORY[0x277CBEA60];
        v122 = [v86 count];
        v123 = [v121 _pas_proxyArrayWithObject:MEMORY[0x277CBEBF8] repetitions:v122];
        v124 = objc_alloc(MEMORY[0x277CBEB38]);
        allValues = [v86 allValues];
        v271 = v123;
        v322 = [v124 initWithObjects:v123 forKeys:allValues];

        v343 = 0u;
        v344 = 0u;
        v341 = 0u;
        v342 = 0u;
        v106 = v101;
        v104 = v291;
        v62 = v286;
        v126 = v307;
        v70 = v312;
        v317 = [v106 countByEnumeratingWithState:&v341 objects:&aBlock count:16];
        if (v317)
        {
          v127 = *v342;
          v293 = *v342;
          obja = v106;
          do
          {
            v128 = 0;
            do
            {
              if (*v342 != v127)
              {
                objc_enumerationMutation(v106);
              }

              v328 = v128;
              v129 = *(*(&v341 + 1) + 8 * v128);
              v130 = [v126 objectForKeyedSubscript:v129];
              v131 = [v106 objectForKeyedSubscript:v129];
              contextb = v130;
              if (v131)
              {
                if (v130)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:sel__topicScoresMatchingSocialHighlights_topicStore_ object:v274 file:@"PPSocialHighlightFeaturizer.m" lineNumber:525 description:@"Iterating through keys should always result in a value"];

                v130 = contextb;
                if (contextb)
                {
LABEL_89:
                  v339 = 0u;
                  v340 = 0u;
                  v337 = 0u;
                  v338 = 0u;
                  v132 = v130;
                  v133 = [v132 countByEnumeratingWithState:&v337 objects:v362 count:16];
                  if (v133)
                  {
                    v134 = v133;
                    v135 = *v338;
                    do
                    {
                      for (ii = 0; ii != v134; ++ii)
                      {
                        if (*v338 != v135)
                        {
                          objc_enumerationMutation(v132);
                        }

                        v137 = *(*(&v337 + 1) + 8 * ii);
                        v138 = objc_autoreleasePoolPush();
                        v139 = [v322 objectForKeyedSubscript:v137];
                        v140 = [v139 arrayByAddingObject:v131];
                        [v322 setObject:v140 forKeyedSubscript:v137];

                        objc_autoreleasePoolPop(v138);
                      }

                      v134 = [v132 countByEnumeratingWithState:&v337 objects:v362 count:16];
                    }

                    while (v134);
                    v104 = v291;
                    v127 = v293;
                    v63 = v285;
                    v62 = v286;
                    v69 = v302;
                    v126 = v307;
                    v106 = obja;
                  }

                  goto LABEL_100;
                }
              }

              v132 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
              {
                *v358 = 138739971;
                *&v358[4] = v129;
                _os_log_debug_impl(&dword_23224A000, v132, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: no highlights found for QID: %{sensitive}@", v358, 0xCu);
              }

LABEL_100:

              v128 = v328 + 1;
              v70 = v312;
            }

            while (v328 + 1 != v317);
            v317 = [v106 countByEnumeratingWithState:&v341 objects:&aBlock count:16];
          }

          while (v317);
        }

        v20 = 0x27896F000uLL;
        featuresCopy = v290;
      }

      else
      {
        v106 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v106, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightRanker: found no QIDs from any highlight.", buf, 2u);
        }

        v322 = MEMORY[0x277CBEC10];
        v20 = 0x27896F000;
        v104 = v291;
      }
    }

    else
    {
      v106 = pp_social_highlights_log_handle();
      v20 = 0x27896F000;
      v104 = v291;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v273;
        _os_log_error_impl(&dword_23224A000, v106, OS_LOG_TYPE_ERROR, "PPSocialHighlightRanker: error querying topic store: %@", buf, 0xCu);
      }

      v322 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v105 = pp_social_highlights_log_handle();
    featuresCopy = v290;
    v275 = v105;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v105, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: not performing topic scoring features due to no highlights", buf, 2u);
    }

    v322 = MEMORY[0x277CBEC10];
    v20 = 0x27896F000;
    v104 = v291;
  }

  v103 = objc_opt_new();
  *v362 = 0u;
  v363 = 0u;
  v364 = 0u;
  v365 = 0u;
  v288 = v278;
  objb = [v288 countByEnumeratingWithState:v362 objects:buf count:16];
  if (!objb)
  {
    goto LABEL_151;
  }

  v294 = *v363;
  v289 = v103;
  do
  {
    v142 = 0;
    do
    {
      if (*v363 != v294)
      {
        objc_enumerationMutation(v288);
      }

      v143 = *(*&v362[8] + 8 * v142);
      v144 = objc_autoreleasePoolPush();
      v308 = v144;
      v313 = v142;
      v303 = v143;
      if ([v143 isEqualToString:@"topicCount"])
      {
        v145 = objc_opt_new();
        v353 = 0u;
        v354 = 0u;
        v355 = 0u;
        v356 = 0u;
        v146 = v322;
        v147 = [v146 countByEnumeratingWithState:&v353 objects:&v370 count:16];
        if (v147)
        {
          v148 = v147;
          v149 = *v354;
          do
          {
            for (jj = 0; jj != v148; ++jj)
            {
              if (*v354 != v149)
              {
                objc_enumerationMutation(v146);
              }

              v151 = *(*(&v353 + 1) + 8 * jj);
              v152 = MEMORY[0x277CCABB0];
              v153 = [v146 objectForKeyedSubscript:v151];
              v154 = [v152 numberWithUnsignedInteger:{objc_msgSend(v153, "count")}];
              [v145 setObject:v154 forKeyedSubscript:v151];
            }

            v148 = [v146 countByEnumeratingWithState:&v353 objects:&v370 count:16];
          }

          while (v148);
        }

        featuresCopy = v290;
        v104 = v291;
        v103 = v289;
        goto LABEL_143;
      }

      if ([v143 isEqualToString:@"meanTopicScore"])
      {
        v155 = *(v20 + 3448);
        v156 = v322;
        v157 = @"@avg.self";
        goto LABEL_120;
      }

      if ([v143 isEqualToString:@"medianTopicScore"])
      {
        v145 = objc_opt_new();
        v349 = 0u;
        v350 = 0u;
        v351 = 0u;
        v352 = 0u;
        v158 = v322;
        contextc = [v158 countByEnumeratingWithState:&v349 objects:&aBlock count:16];
        if (contextc)
        {
          v329 = *v350;
          do
          {
            for (kk = 0; kk != contextc; kk = kk + 1)
            {
              if (*v350 != v329)
              {
                objc_enumerationMutation(v158);
              }

              v160 = *(*(&v349 + 1) + 8 * kk);
              v161 = *(v20 + 3448);
              v162 = [v158 objectForKeyedSubscript:v160];
              objc_opt_self();
              v163 = objc_autoreleasePoolPush();
              if ([v162 count])
              {
                if ([v162 count] == 1)
                {
                  v164 = [v162 objectAtIndexedSubscript:0];
                }

                else if ([v162 count] == 2)
                {
                  v165 = MEMORY[0x277CCABB0];
                  v166 = [v162 objectAtIndexedSubscript:0];
                  [v166 doubleValue];
                  v168 = v167;
                  v169 = [v162 objectAtIndexedSubscript:1];
                  [v169 doubleValue];
                  v164 = [v165 numberWithDouble:(v168 + v170) * 0.5];

                  v20 = 0x27896F000;
                }

                else
                {
                  v171 = [v162 sortedArrayUsingComparator:&__block_literal_global_33];
                  v172 = [v171 count] >> 1;
                  if ([v171 count])
                  {
                    v164 = [v171 objectAtIndexedSubscript:v172];
                  }

                  else
                  {
                    v318 = MEMORY[0x277CCABB0];
                    v173 = [v171 objectAtIndexedSubscript:v172];
                    [v173 doubleValue];
                    v175 = v174;
                    v176 = [v171 objectAtIndexedSubscript:v172 - 1];
                    [v176 doubleValue];
                    v164 = [v318 numberWithDouble:(v175 + v177) * 0.5];

                    v20 = 0x27896F000;
                  }
                }
              }

              else
              {
                v164 = 0;
              }

              objc_autoreleasePoolPop(v163);

              if (v164)
              {
                v178 = v164;
              }

              else
              {
                v178 = &unk_284784110;
              }

              [v145 setObject:v178 forKeyedSubscript:v160];
            }

            contextc = [v158 countByEnumeratingWithState:&v349 objects:&aBlock count:16];
          }

          while (contextc);
        }

        featuresCopy = v290;
        v104 = v291;
        v63 = v285;
        v62 = v286;
        v103 = v289;
        goto LABEL_143;
      }

      if ([v143 isEqualToString:@"maxTopicScore"])
      {
        v155 = *(v20 + 3448);
        v156 = v322;
        v157 = @"@max.self";
        goto LABEL_120;
      }

      if ([v143 isEqualToString:@"minTopicScore"])
      {
        v155 = *(v20 + 3448);
        v156 = v322;
        v157 = @"@min.self";
LABEL_120:
        v145 = [(PPSocialHighlightFeaturizer *)v155 _flattenArraysInDictionary:v156 keyPath:v157];
LABEL_143:
        v179 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v145 highlightKeyBlock:&__block_literal_global_13183];
        [v103 setObject:v179 forKeyedSubscript:v303];

        v20 = 0x27896F000uLL;
        v144 = v308;
        v142 = v313;
      }

      objc_autoreleasePoolPop(v144);
      v142 = v142 + 1;
    }

    while (v142 != objb);
    v180 = [v288 countByEnumeratingWithState:v362 objects:buf count:16];
    objb = v180;
  }

  while (v180);
LABEL_151:

LABEL_152:
  [v284 addEntriesFromDictionary:v103];
LABEL_153:

  v181 = *(v20 + 3448);
  objc = v104;
  contextd = handlesCopy;
  v182 = featuresCopy;
  objc_opt_self();
  v319 = objc_opt_new();
  v370 = 0u;
  v371 = 0u;
  v372 = 0u;
  v373 = 0u;
  v314 = v182;
  v183 = [v314 countByEnumeratingWithState:&v370 objects:buf count:16];
  if (!v183)
  {
    goto LABEL_189;
  }

  v184 = v183;
  v185 = *v371;
  while (2)
  {
    v186 = 0;
    while (2)
    {
      if (*v371 != v185)
      {
        objc_enumerationMutation(v314);
      }

      v187 = *(*(&v370 + 1) + 8 * v186);
      v188 = objc_autoreleasePoolPush();
      v189 = v187;
      v190 = contextd;
      objc_opt_self();
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 3221225472;
      *&v367 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke;
      *(&v367 + 1) = &unk_278975138;
      v191 = v189;
      *&v368 = v191;
      v192 = _Block_copy(&aBlock);
      *v362 = MEMORY[0x277D85DD0];
      *&v362[8] = 3221225472;
      *&v363 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_2;
      *(&v363 + 1) = &unk_278975138;
      v193 = v191;
      *&v364 = v193;
      v194 = _Block_copy(v362);
      if ([v193 isEqualToString:@"creationDateSecondsBeforeNow"])
      {
        v195 = [PPSocialHighlightPropertyValueProvider alloc];
        v196 = &__block_literal_global_159;
        goto LABEL_168;
      }

      if ([v193 isEqualToString:@"highlightDateSecondsBeforeNow"])
      {
        v195 = [PPSocialHighlightPropertyValueProvider alloc];
        v196 = &__block_literal_global_162;
        goto LABEL_168;
      }

      if ([v193 isEqualToString:@"isManuallySyndicated"])
      {
        v195 = [PPSocialHighlightPropertyValueProvider alloc];
        v196 = &__block_literal_global_164_13190;
        goto LABEL_168;
      }

      if ([v193 hasPrefix:@"creationDateInInterval"])
      {
        v195 = [PPSocialHighlightPropertyValueProvider alloc];
        v196 = v192;
        goto LABEL_168;
      }

      if (![v193 hasPrefix:@"highlightDateInInterval"])
      {
        *&v353 = MEMORY[0x277D85DD0];
        *(&v353 + 1) = 3221225472;
        *&v354 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_172;
        *(&v354 + 1) = &unk_278975138;
        *&v355 = v190;
        v198 = _Block_copy(&v353);
        v309 = v198;
        if ([v193 isEqualToString:@"messagesThreadHasDisplayName"])
        {
          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = &__block_literal_global_167_13191;
        }

        else if ([v193 isEqualToString:@"messagesThreadHasGroupPhoto"])
        {
          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = &__block_literal_global_169_13192;
        }

        else if ([v193 isEqualToString:@"messagesConversationAutoDonating"])
        {
          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = &__block_literal_global_171;
        }

        else if ([v193 isEqualToString:@"isContactSignificant"])
        {
          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = v198;
        }

        else if ([v193 isEqualToString:@"sentFromMe"])
        {
          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = &__block_literal_global_174;
        }

        else
        {
          if (![v193 isEqualToString:@"isCollaboration"])
          {
            v197 = 0;
            goto LABEL_186;
          }

          v199 = [PPSocialHighlightPropertyValueProvider alloc];
          v200 = &__block_literal_global_176;
        }

        v197 = [(PPSocialHighlightPropertyValueProvider *)v199 initWithProvidingBlock:v200];
LABEL_186:

        goto LABEL_169;
      }

      v195 = [PPSocialHighlightPropertyValueProvider alloc];
      v196 = v194;
LABEL_168:
      v197 = [(PPSocialHighlightPropertyValueProvider *)v195 initWithProvidingBlock:v196];
LABEL_169:

      if (v197)
      {
        [v319 setObject:v197 forKeyedSubscript:v193];
      }

      objc_autoreleasePoolPop(v188);
      if (v184 != ++v186)
      {
        continue;
      }

      break;
    }

    v201 = [v314 countByEnumeratingWithState:&v370 objects:buf count:16];
    v184 = v201;
    if (v201)
    {
      continue;
    }

    break;
  }

LABEL_189:

  [v284 addEntriesFromDictionary:v319];
  v202 = objc;
  v203 = v314;
  objc_opt_self();
  v320 = objc_opt_new();
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 0u;
  objd = v203;
  v315 = [objd countByEnumeratingWithState:&v349 objects:buf count:16];
  if (v315)
  {
    v310 = *v350;
    v295 = v202;
    do
    {
      for (mm = 0; mm != v315; mm = mm + 1)
      {
        if (*v350 != v310)
        {
          objc_enumerationMutation(objd);
        }

        v205 = *(*(&v349 + 1) + 8 * mm);
        v206 = objc_autoreleasePoolPush();
        if ([v205 isEqualToString:@"countDistinctHighlights"])
        {
          v207 = objc_alloc(MEMORY[0x277CBEB98]);
          v208 = [v202 _pas_mappedArrayWithTransform:&__block_literal_global_68];
          v209 = [v207 initWithArray:v208];

          v210 = [PPSocialHighlightStaticFeatureProvider alloc];
          v374 = &stru_284759D38;
          v211 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v209, "count")}];
          v375 = v211;
          v212 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
          v213 = [(PPSocialHighlightStaticFeatureProvider *)v210 initWithComputedFeatures:v212 highlightKeyBlock:&__block_literal_global_11_13181];
          [v320 setObject:v213 forKeyedSubscript:v205];
        }

        if ([v205 isEqualToString:@"countThreadsWithHighlightIdentifier"])
        {
          v324 = mm;
          v330 = v206;
          v214 = objc_opt_new();
          v345 = 0u;
          v346 = 0u;
          v347 = 0u;
          v348 = 0u;
          v215 = v202;
          v216 = v202;
          v217 = [v216 countByEnumeratingWithState:&v345 objects:&v370 count:16];
          if (v217)
          {
            v218 = v217;
            v219 = *v346;
            do
            {
              for (nn = 0; nn != v218; ++nn)
              {
                if (*v346 != v219)
                {
                  objc_enumerationMutation(v216);
                }

                v221 = *(*(&v345 + 1) + 8 * nn);
                highlightIdentifier2 = [v221 highlightIdentifier];

                if (highlightIdentifier2)
                {
                  highlightIdentifier3 = [v221 highlightIdentifier];
                  v224 = [v214 objectForKeyedSubscript:highlightIdentifier3];

                  if (!v224)
                  {
                    v225 = objc_opt_new();
                    highlightIdentifier4 = [v221 highlightIdentifier];
                    [v214 setObject:v225 forKeyedSubscript:highlightIdentifier4];
                  }

                  domainIdentifier = [v221 domainIdentifier];

                  if (domainIdentifier)
                  {
                    highlightIdentifier5 = [v221 highlightIdentifier];
                    v229 = [v214 objectForKeyedSubscript:highlightIdentifier5];
                    domainIdentifier2 = [v221 domainIdentifier];
                    [v229 addObject:domainIdentifier2];
                  }
                }
              }

              v218 = [v216 countByEnumeratingWithState:&v345 objects:&v370 count:16];
            }

            while (v218);
          }

          v231 = objc_opt_new();
          v341 = 0u;
          v342 = 0u;
          v343 = 0u;
          v344 = 0u;
          v232 = v214;
          v233 = [v232 countByEnumeratingWithState:&v341 objects:&aBlock count:16];
          if (v233)
          {
            v234 = v233;
            v235 = *v342;
            do
            {
              for (i1 = 0; i1 != v234; ++i1)
              {
                if (*v342 != v235)
                {
                  objc_enumerationMutation(v232);
                }

                v237 = *(*(&v341 + 1) + 8 * i1);
                v238 = MEMORY[0x277CCABB0];
                v239 = [v232 objectForKeyedSubscript:v237];
                v240 = [v238 numberWithUnsignedInteger:{objc_msgSend(v239, "count")}];
                [v231 setObject:v240 forKeyedSubscript:v237];
              }

              v234 = [v232 countByEnumeratingWithState:&v341 objects:&aBlock count:16];
            }

            while (v234);
          }

          v241 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v231 highlightKeyBlock:&__block_literal_global_13183];
          [v320 setObject:v241 forKeyedSubscript:v205];

          mm = v324;
          v202 = v215;
        }

        else if ([v205 isEqualToString:@"countManualHighlightsFromSender"])
        {
          v304 = v205;
          v325 = mm;
          v330 = v206;
          v232 = objc_opt_new();
          v337 = 0u;
          v338 = 0u;
          v339 = 0u;
          v340 = 0u;
          contexte = v202;
          v242 = [contexte countByEnumeratingWithState:&v337 objects:v362 count:16];
          if (v242)
          {
            v243 = v242;
            v244 = *v338;
            do
            {
              for (i2 = 0; i2 != v243; ++i2)
              {
                if (*v338 != v244)
                {
                  objc_enumerationMutation(contexte);
                }

                v246 = *(*(&v337 + 1) + 8 * i2);
                if ([v246 highlightType] == 2)
                {
                  sender = [v246 sender];
                  handle = [sender handle];

                  if (handle)
                  {
                    v249 = MEMORY[0x277CCABB0];
                    sender2 = [v246 sender];
                    handle2 = [sender2 handle];
                    v252 = [v232 objectForKeyedSubscript:handle2];
                    v253 = [v249 numberWithInteger:{objc_msgSend(v252, "integerValue") + 1}];
                    sender3 = [v246 sender];
                    handle3 = [sender3 handle];
                    [v232 setObject:v253 forKeyedSubscript:handle3];
                  }
                }
              }

              v243 = [contexte countByEnumeratingWithState:&v337 objects:v362 count:16];
            }

            while (v243);
          }

          v231 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v232 highlightKeyBlock:&__block_literal_global_18];
          [v320 setObject:v231 forKeyedSubscript:v304];
          v202 = v295;
          mm = v325;
        }

        else
        {
          if (![v205 isEqualToString:@"countManualHighlightsFromThread"])
          {
            goto LABEL_242;
          }

          v305 = v205;
          v330 = v206;
          v232 = objc_opt_new();
          *v358 = 0u;
          v359 = 0u;
          v360 = 0u;
          v361 = 0u;
          v256 = v202;
          v257 = [v256 countByEnumeratingWithState:v358 objects:&v353 count:16];
          if (v257)
          {
            v258 = v257;
            v259 = *v359;
            do
            {
              for (i3 = 0; i3 != v258; ++i3)
              {
                if (*v359 != v259)
                {
                  objc_enumerationMutation(v256);
                }

                v261 = *(*&v358[8] + 8 * i3);
                if ([v261 highlightType] == 2)
                {
                  domainIdentifier3 = [v261 domainIdentifier];

                  if (domainIdentifier3)
                  {
                    v263 = MEMORY[0x277CCABB0];
                    domainIdentifier4 = [v261 domainIdentifier];
                    v265 = [v232 objectForKeyedSubscript:domainIdentifier4];
                    v266 = [v263 numberWithInteger:{objc_msgSend(v265, "integerValue") + 1}];
                    domainIdentifier5 = [v261 domainIdentifier];
                    [v232 setObject:v266 forKeyedSubscript:domainIdentifier5];
                  }
                }
              }

              v258 = [v256 countByEnumeratingWithState:v358 objects:&v353 count:16];
            }

            while (v258);
          }

          v231 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v232 highlightKeyBlock:&__block_literal_global_16];
          [v320 setObject:v231 forKeyedSubscript:v305];
          v202 = v295;
        }

        v206 = v330;
LABEL_242:
        objc_autoreleasePoolPop(v206);
      }

      v315 = [objd countByEnumeratingWithState:&v349 objects:buf count:16];
    }

    while (v315);
  }

  [v284 addEntriesFromDictionary:v320];
  v268 = [(PPSocialHighlightFeaturizer *)self initWithFeatureValues:v284];

  v269 = *MEMORY[0x277D85DE8];
  return v268;
}

+ (id)_feedbackFeaturesForPublisher:(void *)publisher highlights:(void *)highlights features:
{
  v59 = *MEMORY[0x277D85DE8];
  v42 = a2;
  publisherCopy = publisher;
  highlightsCopy = highlights;
  v41 = objc_opt_self();
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__13267;
  v56 = __Block_byref_object_dispose__13268;
  v57 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = highlightsCopy;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v8)
  {
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = v11;
        v14 = publisherCopy;
        objc_opt_self();
        if ([v13 isEqualToString:@"countHiddenFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countEngagedFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countOfferedFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countEngagedAppFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 3;
LABEL_14:
          v17 = &__block_literal_global_147;
          v18 = &__block_literal_global_16;
LABEL_15:
          v19 = [(PPSocialHighlightEngagementProvider *)v15 initWithFeedbackType:v16 feedbackGroupByBlock:v17 highlightKeyBlock:v18 highlights:v14];
LABEL_16:
          v20 = v19;
          goto LABEL_17;
        }

        if ([v13 isEqualToString:@"countHiddenFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_31:
          v17 = &__block_literal_global_149;
          v18 = &__block_literal_global_18;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countOfferedFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countEngagedAppFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 3;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countHiddenMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_38:
          v17 = &__block_literal_global_151;
          v18 = &__block_literal_global_20;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_38;
        }

        if ([v13 isEqualToString:@"countOfferedMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_38;
        }

        if ([v13 isEqualToString:@"countHiddenMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_45:
          v17 = &__block_literal_global_153;
          v18 = &__block_literal_global_22;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_45;
        }

        if ([v13 isEqualToString:@"countOfferedMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_45;
        }

        if ([v13 hasPrefix:@"countHiddenInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 2;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countEngagedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 1;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countOfferedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 0;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countStartedConsumptionInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 5;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countFinishedConsumptionInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 6;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countItemDetailViewedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 7;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countParentViewedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 8;
LABEL_60:
          v25 = &__block_literal_global_143;
          v26 = &__block_literal_global_13183;
LABEL_61:
          v19 = [(PPSocialHighlightEngagementProvider *)v22 initWithFeedbackType:v24 feedbackGroupByBlock:v25 highlightKeyBlock:v26 intervalSinceNow:v14 highlights:v23];
          goto LABEL_16;
        }

        if ([v13 hasPrefix:@"countAppButtonInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 3;
LABEL_66:
          v25 = &__block_literal_global_145;
          v26 = &__block_literal_global_9;
          goto LABEL_61;
        }

        if ([v13 hasPrefix:@"countActivityButtonInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 4;
          goto LABEL_66;
        }

        v27 = [v13 isEqualToString:@"mostRecentEngagementSecondsBeforeNow"];
        if ((v27 & 1) != 0 || [v13 isEqualToString:@"earliestEngagementSecondsBeforeNow"])
        {
          v19 = [[PPSocialHighlightTimeSinceEngagementProvider alloc] initWithFeedbackType:1 feedbackGroupByBlock:&__block_literal_global_143 highlightKeyBlock:&__block_literal_global_13183 mostRecent:v27 highlights:v14];
          goto LABEL_16;
        }

        if ([v13 isEqualToString:@"fractionEngagedToOfferedFromSender"])
        {
          v28 = [PPSocialHighlightFractionalEngagementProvider alloc];
          v29 = &__block_literal_global_149;
          v30 = &__block_literal_global_18;
LABEL_74:
          v19 = [(PPSocialHighlightFractionalEngagementProvider *)v28 initWithFeedbackGroupByBlock:v29 highlightKeyBlock:v30 highlights:v14];
          goto LABEL_16;
        }

        if ([v13 isEqualToString:@"fractionEngagedToOfferedFromThread"])
        {
          v28 = [PPSocialHighlightFractionalEngagementProvider alloc];
          v29 = &__block_literal_global_147;
          v30 = &__block_literal_global_16;
          goto LABEL_74;
        }

        v20 = 0;
LABEL_17:

        if (v20)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:sel__feedbackFeaturesForPublisher_highlights_features_ object:v41 file:@"PPSocialHighlightFeaturizer.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"[featureProvider respondsToSelector:@selector(applyFeedback:)]"}];
          }

          [v53[5] setObject:v20 forKeyedSubscript:v13];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v31 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      v8 = v31;
    }

    while (v31);
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v32 = objc_alloc(MEMORY[0x277CF17B0]);
  v33 = v53[5];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke;
  v46[3] = &unk_278974F40;
  v46[4] = v47;
  v34 = [v32 initWithAccumulator:v33 closure:v46];
  v35 = objc_autoreleasePoolPush();
  v36 = [v42 reduce:v34];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_2;
  v45[3] = &unk_278978248;
  v45[4] = v47;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_65;
  v44[3] = &unk_278974F68;
  v44[4] = &v52;
  v37 = [v36 sinkWithCompletion:v45 receiveInput:v44];

  objc_autoreleasePoolPop(v35);
  v38 = v53[5];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v52, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [PPSocialHighlightFeaturizer _intervalForBucketedString:v2];
  domainAndSenderKey_block_invoke_14(v4, v3);
}

void __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [PPSocialHighlightFeaturizer _intervalForBucketedString:v2];
  domainAndSenderKey_block_invoke_15(v4, v3);
}

double __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sender];
  v5 = [v4 handle];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 sender];
    v8 = [v7 handle];
    if ([v6 containsObject:v8])
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

+ (double)_intervalForBucketedString:(uint64_t)string
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@":"];

  lastObject = [v3 lastObject];
  [lastObject doubleValue];
  v6 = v5 * 3600.0;

  return v6;
}

+ (id)_flattenArraysInDictionary:(void *)dictionary keyPath:
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  dictionaryCopy = dictionary;
  objc_opt_self();
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v19}];
        v14 = [v13 valueForKeyPath:dictionaryCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &unk_284784110;
        }

        [v6 setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

void __79__PPSocialHighlightFeaturizer__topicScoresMatchingSocialHighlights_topicStore___block_invoke(void *a1, void *a2)
{
  v24 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = [v24 topic];
  v6 = [v5 topicIdentifier];
  [v4 addObject:v6];

  v7 = a1[5];
  v8 = [v24 topic];
  v9 = [v8 topicIdentifier];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = a1[5];
    v13 = [v24 topic];
    v14 = [v13 topicIdentifier];
    [v12 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = a1[6];
  v16 = [v24 source];
  v17 = [v16 documentId];
  v18 = [v15 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a1[7] object:a1[8] file:@"PPSocialHighlightFeaturizer.m" lineNumber:495 description:@"Querying for a documents matching the keys of a dictionary should always return topics complying with those keys."];
  }

  v19 = a1[5];
  v20 = [v24 topic];
  v21 = [v20 topicIdentifier];
  v22 = [v19 objectForKeyedSubscript:v21];
  [v22 addObject:v18];

  objc_autoreleasePoolPop(v3);
}

+ (id)_lastInteractionsByContactForHighlights:(void *)highlights bundlePredicate:(void *)predicate mechanismPredicate:(void *)mechanismPredicate interactionStore:
{
  v100 = *MEMORY[0x277D85DE8];
  v8 = a2;
  highlightsCopy = highlights;
  predicateCopy = predicate;
  mechanismPredicateCopy = mechanismPredicate;
  objc_opt_self();
  v9 = v8;
  objc_opt_self();
  v10 = objc_opt_new();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v89;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v89 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v88 + 1) + 8 * i);
        v16 = MEMORY[0x277CFE080];
        sender = [v15 sender];
        handle = [sender handle];
        v19 = [v16 normalizedStringFromContactString:handle];

        if (v19)
        {
          [v10 addObject:v19];
        }

        else
        {
          v20 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            highlightIdentifier = [v15 highlightIdentifier];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = highlightIdentifier;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: no contact for highlight %@, will be unresponsive to recency.", &buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
    }

    while (v12);
  }

  allObjects = [v10 allObjects];

  if ([allObjects count])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = MEMORY[0x277CCAC30];
    v87 = allObjects;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    v26 = [v24 predicateWithFormat:@"sender.identifier in %@" argumentArray:v25];

    v27 = MEMORY[0x277CCAC30];
    v86 = allObjects;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v29 = [v27 predicateWithFormat:@"ANY recipients.identifier in %@" argumentArray:v28];

    v30 = objc_alloc(MEMORY[0x277CCA920]);
    v85[0] = v26;
    v85[1] = v29;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    v32 = [v30 initWithType:2 subpredicates:v31];

    v84[0] = highlightsCopy;
    v84[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v34 = [v33 mutableCopy];

    if (predicateCopy)
    {
      [v34 addObject:?];
    }

    v35 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v34];

    objc_autoreleasePoolPop(v23);
    v36 = objc_autoreleasePoolPush();
    v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v83 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];

    v78 = 0;
    v70 = v35;
    v39 = [mechanismPredicateCopy queryInteractionsUsingPredicate:v35 sortDescriptors:v38 limit:50 error:&v78];
    v40 = v78;
    v41 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v39 count];
      *v92 = 134218243;
      v93 = v42;
      v94 = 2117;
      v95 = v39;
      _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: found %tu results: %{sensitive}@", v92, 0x16u);
    }

    if (v39)
    {
      if (![obj count] || -[NSObject count](v39, "count"))
      {
        v69 = allObjects;

        objc_autoreleasePoolPop(v36);
        v68 = v39;
        v43 = v39;
        objc_opt_self();
        v44 = objc_opt_new();
        buf = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v74 = v43;
        v76 = [v74 countByEnumeratingWithState:&buf objects:v92 count:16];
        if (v76)
        {
          v75 = *v97;
          do
          {
            for (j = 0; j != v76; ++j)
            {
              if (*v97 != v75)
              {
                objc_enumerationMutation(v74);
              }

              v46 = *(*(&buf + 1) + 8 * j);
              startDate = [v46 startDate];

              if (startDate)
              {
                sender2 = [v46 sender];
                identifier = [sender2 identifier];

                recipients = [v46 recipients];
                v51 = [recipients _pas_mappedArrayWithTransform:&__block_literal_global_87];

                if (identifier)
                {
                  v52 = [v44 objectForKeyedSubscript:identifier];

                  if (!v52)
                  {
                    startDate2 = [v46 startDate];
                    [v44 setObject:startDate2 forKeyedSubscript:identifier];
                  }
                }

                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v54 = v51;
                v55 = [v54 countByEnumeratingWithState:&v79 objects:&v88 count:16];
                if (v55)
                {
                  v56 = v55;
                  v57 = *v80;
                  do
                  {
                    for (k = 0; k != v56; ++k)
                    {
                      if (*v80 != v57)
                      {
                        objc_enumerationMutation(v54);
                      }

                      v59 = *(*(&v79 + 1) + 8 * k);
                      v60 = [v44 objectForKeyedSubscript:v59];

                      if (!v60)
                      {
                        startDate3 = [v46 startDate];
                        [v44 setObject:startDate3 forKeyedSubscript:v59];
                      }
                    }

                    v56 = [v54 countByEnumeratingWithState:&v79 objects:&v88 count:16];
                  }

                  while (v56);
                }
              }
            }

            v76 = [v74 countByEnumeratingWithState:&buf objects:v92 count:16];
          }

          while (v76);
        }

        v39 = v68;
        allObjects = v69;
        goto LABEL_50;
      }

      v62 = pp_social_highlights_log_handle();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
LABEL_49:

        objc_autoreleasePoolPop(v36);
        v44 = 0;
LABEL_50:

        goto LABEL_51;
      }

      *v92 = 0;
      v63 = "PPSocialHighlightFeaturizer: interaction store returned no interactions, but highlights should be included in interactions.";
      v64 = v62;
      v65 = 2;
    }

    else
    {
      v62 = pp_social_highlights_log_handle();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *v92 = 138412290;
      v93 = v40;
      v63 = "PPSocialHighlightFeaturizer: interaction store query failed %@";
      v64 = v62;
      v65 = 12;
    }

    _os_log_error_impl(&dword_23224A000, v64, OS_LOG_TYPE_ERROR, v63, v92, v65);
    goto LABEL_49;
  }

  v39 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v92 = 0;
    _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no handles found.", v92, 2u);
  }

  v44 = 0;
LABEL_51:

  v66 = *MEMORY[0x277D85DE8];

  return v44;
}

id __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v7 objectForKeyedSubscript:v12];
        v15 = [v14 applyFeedback:v5];
        [v6 setObject:v15 forKeyedSubscript:v12];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

void __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = pp_social_highlights_log_handle();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPSocialHighlightFeaturizer: failed to process feedback: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: successfully processed entire feedback stream.", &v11, 2u);
  }

  v8 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: completed processing with %tu items passed to aggregator.", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (PPSocialHighlightFeaturizer)initWithFeatureValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = PPSocialHighlightFeaturizer;
  v6 = [(PPSocialHighlightFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureValues, values);
  }

  return v7;
}

@end