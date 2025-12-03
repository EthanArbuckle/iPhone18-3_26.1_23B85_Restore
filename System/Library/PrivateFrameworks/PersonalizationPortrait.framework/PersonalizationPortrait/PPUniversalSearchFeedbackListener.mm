@interface PPUniversalSearchFeedbackListener
- (PPUniversalSearchFeedbackListener)init;
- (id)fetchFeedbackCSSIParsedResults:(id)results feedbackBundleId:(id)id queryId:(int64_t)queryId;
- (id)protectionClassForBundleId:(id)id;
- (void)reportFeedback:(id)feedback queryId:(int64_t)id;
- (void)sendFeedbackWithEngagementStrings:(id)strings rejectionStrings:(id)rejectionStrings store:(id)store;
- (void)sendMetricsFeedback:(unint64_t)feedback engagedCSSICount:(unint64_t)count;
@end

@implementation PPUniversalSearchFeedbackListener

- (PPUniversalSearchFeedbackListener)init
{
  v10.receiver = self;
  v10.super_class = PPUniversalSearchFeedbackListener;
  v2 = [(PPUniversalSearchFeedbackListener *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entityStore = v2->_entityStore;
    v2->_entityStore = v3;

    [(PPNamedEntityStore *)v2->_entityStore setClientIdentifier:@"spotlight"];
    v5 = objc_opt_new();
    topicStore = v2->_topicStore;
    v2->_topicStore = v5;

    [(PPTopicStore *)v2->_topicStore setClientIdentifier:@"spotlight"];
    v7 = objc_opt_new();
    sessionState = v2->_sessionState;
    v2->_sessionState = v7;
  }

  return v2;
}

- (id)protectionClassForBundleId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"com.apple.mobilemail"])
  {
    v4 = MEMORY[0x1E696A378];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([idCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    v4 = MEMORY[0x1E696A388];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)sendMetricsFeedback:(unint64_t)feedback engagedCSSICount:(unint64_t)count
{
  v5 = [[PPUniversalSearchSpotlightFeedback alloc] initWithOfferedCSSICount:feedback engagedCSSICount:count];
  v6 = dispatch_semaphore_create(0);
  v7 = pp_universal_search_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: sending metrics logging feedback to server", buf, 2u);
  }

  topicStore = self->_topicStore;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__PPUniversalSearchFeedbackListener_sendMetricsFeedback_engagedCSSICount___block_invoke;
  v17 = &unk_1E77F6BB8;
  v9 = v5;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  [(PPTopicStore *)topicStore registerUniversalSearchSpotlightFeedback:v9 completion:&v14];
  v11 = [MEMORY[0x1E69C5D10] waitForSemaphore:v10 timeoutSeconds:{20.0, v14, v15, v16, v17}];
  v12 = pp_universal_search_log_handle();
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: registerUniversalSearchSpotlightFeedback timed out on server", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: registerUniversalSearchSpotlightFeedback reply received from server", buf, 2u);
  }
}

void __74__PPUniversalSearchFeedbackListener_sendMetricsFeedback_engagedCSSICount___block_invoke(uint64_t a1, int a2, void *a3)
{
  *&v12[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = pp_universal_search_log_handle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) offeredCSSICount];
      v9 = [*(a1 + 32) engagedCSSICount];
      v11 = 67109376;
      v12[0] = v8;
      LOWORD(v12[1]) = 1024;
      *(&v12[1] + 2) = v9;
      _os_log_debug_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: Successfully sent metrics logging feedback with %u offeredCSSI and %u engagedCSSI", &v11, 0xEu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    *v12 = v5;
    _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: registerUniversalSearchSpotlightFeedback failed to execute on server with error: %@", &v11, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendFeedbackWithEngagementStrings:(id)strings rejectionStrings:(id)rejectionStrings store:(id)store
{
  stringsCopy = strings;
  rejectionStringsCopy = rejectionStrings;
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [PPFeedback alloc];
    v11 = 0;
    v12 = 0;
    v13 = stringsCopy;
    v14 = rejectionStringsCopy;
LABEL_5:
    v15 = [(PPFeedback *)v10 initWithExplicitlyEngagedStrings:v11 explicitlyRejectedStrings:v12 implicitlyEngagedStrings:v13 implicitlyRejectedStrings:v14 offeredStrings:0];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [PPFeedback alloc];
    v11 = stringsCopy;
    v12 = rejectionStringsCopy;
    v13 = 0;
    v14 = 0;
    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:
  feedbackItems = [(PPBaseFeedback *)v15 feedbackItems];
  v17 = [feedbackItems count];

  if (v17)
  {
    v18 = dispatch_semaphore_create(0);
    v19 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A7FD3000, v19, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: sending feedback to server", buf, 2u);
    }

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __94__PPUniversalSearchFeedbackListener_sendFeedbackWithEngagementStrings_rejectionStrings_store___block_invoke;
    v27 = &unk_1E77F6BB8;
    v28 = v15;
    v20 = v18;
    v29 = v20;
    [storeCopy registerFeedback:v28 completion:&v24];
    v21 = [MEMORY[0x1E69C5D10] waitForSemaphore:v20 timeoutSeconds:{20.0, v24, v25, v26, v27}];
    v22 = pp_universal_search_log_handle();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: registerFeedback timed out on server", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reply received from server", buf, 2u);
    }
  }
}

void __94__PPUniversalSearchFeedbackListener_sendFeedbackWithEngagementStrings_rejectionStrings_store___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = pp_universal_search_log_handle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) feedbackItems];
      v10 = 134217984;
      v11 = [v8 count];
      _os_log_debug_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: Successfully sent feedback with %tu feedback items.", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: registerFeedback failed to execute on server with error: %@", &v10, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (id)fetchFeedbackCSSIParsedResults:(id)results feedbackBundleId:(id)id queryId:(int64_t)queryId
{
  v64[3] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  idCopy = id;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3706;
  v56 = __Block_byref_object_dispose__3707;
  v57 = 0;
  v47 = resultsCopy;
  v48 = objc_opt_new();
  [v48 setIdentifiers:resultsCopy];
  if (([idCopy isEqualToString:@"com.apple.mobilemail"] & 1) == 0 && (objc_msgSend(idCopy, "isEqualToString:", @"com.apple.MobileSMS") & 1) == 0)
  {
    v36 = 0;
    goto LABEL_35;
  }

  defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v9 = *MEMORY[0x1E69648B8];
  v64[0] = *MEMORY[0x1E69648B0];
  v64[1] = v9;
  v64[2] = *MEMORY[0x1E69648C0];
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v10 = dispatch_semaphore_create(0);
  v11 = [(PPUniversalSearchFeedbackListener *)self protectionClassForBundleId:idCopy];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __93__PPUniversalSearchFeedbackListener_fetchFeedbackCSSIParsedResults_feedbackBundleId_queryId___block_invoke;
  v49[3] = &unk_1E77F6B90;
  v51 = &v52;
  v44 = v10;
  v50 = v44;
  [defaultSearchableIndex slowFetchAttributes:v45 protectionClass:v11 bundleID:idCopy identifiers:resultsCopy completionHandler:v49];

  v12 = [MEMORY[0x1E69C5D10] waitForSemaphore:v44 timeoutSeconds:20.0];
  v13 = pp_universal_search_log_handle();
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: registerFeedback timed out on server", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reply received from server", buf, 2u);
    }

    v15 = v53[5];
    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = [v15 count];
    if (v16 == [v47 count])
    {
      v17 = pp_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v39 = v53[5];
        *buf = 138739971;
        queryIdCopy2 = v39;
        _os_log_debug_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: CoreSpotlight slow fetch results: %{sensitive}@", buf, 0xCu);
      }

      v18 = 0;
      *&v19 = 134218243;
      v42 = v19;
      while (v18 < [v53[5] count])
      {
        v20 = [v53[5] objectAtIndexedSubscript:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = [v21 objectAtIndexedSubscript:0];
          v23 = [v21 objectAtIndexedSubscript:1];
          v24 = [v21 objectAtIndexedSubscript:2];
          if (v23)
          {
            if (v22)
            {
              null = [MEMORY[0x1E695DFB0] null];
              v26 = v22 == null;

              if (!v26)
              {
                v27 = [PPSpotlightScoringFeatureVector decodeFeatureVectorFromData:v22 version:v23];
                qidStrings = [v27 qidStrings];
                allObjects = [qidStrings allObjects];

                v30 = pp_default_log_handle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v42;
                  queryIdCopy2 = queryId;
                  v60 = 2117;
                  v61 = allObjects;
                  _os_log_debug_impl(&dword_1A7FD3000, v30, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: Topic Qids of feedback of queryId:%lld: %{sensitive}@", buf, 0x16u);
                }

                topicStrings = [v48 topicStrings];
                [topicStrings addObjectsFromArray:allObjects];
              }
            }
          }

          if (v24)
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            v33 = v24 == null2;

            if (!v33)
            {
              v34 = pp_default_log_handle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = v42;
                queryIdCopy2 = queryId;
                v60 = 2117;
                v61 = v24;
                _os_log_debug_impl(&dword_1A7FD3000, v34, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: Portrait NE of feedback of queryId:%lld: %{sensitive}@", buf, 0x16u);
              }

              neStrings = [v48 neStrings];
              [neStrings addObjectsFromArray:v24];
            }
          }
        }

        ++v18;
      }

      v36 = v48;
      goto LABEL_34;
    }

    v14 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v40 = [v53[5] count];
      v41 = [v47 count];
      *buf = 134218496;
      queryIdCopy2 = v40;
      v60 = 2048;
      v61 = v41;
      v62 = 2048;
      queryIdCopy3 = queryId;
      _os_log_error_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_ERROR, "CoreSpotlight returned mis-matching count of fetchedObjects(%lu) when fetching identifiers(%lu) of query %lld", buf, 0x20u);
    }
  }

LABEL_33:
  v36 = 0;
LABEL_34:

LABEL_35:
  _Block_object_dispose(&v52, 8);

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

void __93__PPUniversalSearchFeedbackListener_fetchFeedbackCSSIParsedResults_feedbackBundleId_queryId___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reportFeedback:(id)feedback queryId:(int64_t)id
{
  v100 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v45 = objc_opt_new();
    processName = [v45 processName];
    *buf = 138412546;
    v97 = bundleIdentifier;
    v98 = 2112;
    idCopy4 = processName;
    _os_log_debug_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEBUG, "Feedback from bundleId:%@, process:%@", buf, 0x16u);
  }

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v9 = [bundleIdentifier2 isEqualToString:@"com.apple.Spotlight"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138740227;
        v97 = feedbackCopy;
        v98 = 2048;
        idCopy4 = id;
        _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reportFeedback, visible result feedback:%{sensitive}@, queryId:%lld", buf, 0x16u);
      }

      seenSpotlightIds2 = feedbackCopy;
      for (i = 0; ; ++i)
      {
        results = [seenSpotlightIds2 results];
        v14 = i < [results count];

        if (!v14)
        {
          goto LABEL_62;
        }

        v15 = objc_autoreleasePoolPush();
        results2 = [seenSpotlightIds2 results];
        v17 = [results2 objectAtIndexedSubscript:i];

        resultBundleId = [v17 resultBundleId];
        if ([resultBundleId isEqualToString:@"com.apple.mobilemail"])
        {
        }

        else
        {
          resultBundleId2 = [v17 resultBundleId];
          v20 = [resultBundleId2 isEqualToString:@"com.apple.MobileSMS"];

          if (!v20)
          {
            goto LABEL_17;
          }
        }

        identifier = [v17 identifier];
        v22 = [identifier length] == 0;

        if (v22)
        {
          seenBundleIds = pp_default_log_handle();
          if (os_log_type_enabled(seenBundleIds, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1A7FD3000, seenBundleIds, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: Received Feedback on SFSearchResult with empty or nil identifier", buf, 2u);
          }
        }

        else
        {
          seenSpotlightIds = [(PPSpotlightSessionState *)selfCopy->_sessionState seenSpotlightIds];
          identifier2 = [v17 identifier];
          [seenSpotlightIds addObject:identifier2];

          seenBundleIds = [(PPSpotlightSessionState *)selfCopy->_sessionState seenBundleIds];
          resultBundleId3 = [v17 resultBundleId];
          [seenBundleIds addObject:resultBundleId3];
        }

LABEL_17:
        objc_autoreleasePoolPop(v15);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = pp_default_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138740227;
        v97 = feedbackCopy;
        v98 = 2048;
        idCopy4 = id;
        _os_log_debug_impl(&dword_1A7FD3000, v27, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reportFeedback, clearing intermediates at local search feedback:%{sensitive}@, queryId:%lld", buf, 0x16u);
      }

      seenBundleIds2 = [(PPSpotlightSessionState *)selfCopy->_sessionState seenBundleIds];
      [seenBundleIds2 removeAllObjects];

      seenSpotlightIds2 = [(PPSpotlightSessionState *)selfCopy->_sessionState seenSpotlightIds];
      [seenSpotlightIds2 removeAllObjects];
      goto LABEL_62;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = pp_default_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138740227;
        v97 = feedbackCopy;
        v98 = 2048;
        idCopy4 = id;
        _os_log_debug_impl(&dword_1A7FD3000, v29, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reportFeedback, engagement feedback:%{sensitive}@, queryId:%lld", buf, 0x16u);
      }

      seenSpotlightIds2 = feedbackCopy;
      result = [seenSpotlightIds2 result];
      resultBundleId4 = [result resultBundleId];
      if ([resultBundleId4 isEqualToString:@"com.apple.mobilemail"])
      {
      }

      else
      {
        resultBundleId5 = [result resultBundleId];
        v48 = [resultBundleId5 isEqualToString:@"com.apple.MobileSMS"];

        if (!v48)
        {
LABEL_61:

LABEL_62:
          goto LABEL_63;
        }
      }

      identifier3 = [result identifier];
      v50 = [identifier3 length] == 0;

      if (!v50)
      {
        engagedSpotlightIds = [(PPSpotlightSessionState *)selfCopy->_sessionState engagedSpotlightIds];
        identifier4 = [result identifier];
        [engagedSpotlightIds addObject:identifier4];

        loga = [(PPSpotlightSessionState *)selfCopy->_sessionState engagedBundleIds];
        resultBundleId6 = [result resultBundleId];
        [loga addObject:resultBundleId6];

        goto LABEL_61;
      }

      log = pp_default_log_handle();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1A7FD3000, log, OS_LOG_TYPE_ERROR, "PPUniversalSearchFeedbackListener: Received Feedback on SFSearchResult with empty or nil identifier", buf, 2u);
      }

LABEL_60:

      goto LABEL_61;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = pp_default_log_handle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138740227;
        v97 = feedbackCopy;
        v98 = 2048;
        idCopy4 = id;
        _os_log_debug_impl(&dword_1A7FD3000, v31, OS_LOG_TYPE_DEBUG, "PPUniversalSearchFeedbackListener: reportFeedback, search view disappear feedback:%{sensitive}@, queryId:%lld", buf, 0x16u);
      }

      seenSpotlightIds2 = objc_opt_new();
      result = objc_opt_new();
      log = objc_opt_new();
      v87 = objc_opt_new();
      v86 = objc_opt_new();
      v85 = objc_opt_new();
      v93 = objc_opt_new();
      v32 = objc_autoreleasePoolPush();
      engagedSpotlightIds2 = [(PPSpotlightSessionState *)selfCopy->_sessionState engagedSpotlightIds];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __60__PPUniversalSearchFeedbackListener_reportFeedback_queryId___block_invoke;
      v95[3] = &unk_1E77F6B68;
      v95[4] = selfCopy;
      v95[5] = id;
      v34 = [engagedSpotlightIds2 _pas_mappedArrayWithIndexedTransform:v95];

      objc_autoreleasePoolPop(v32);
      v35 = 0;
      v36 = 0;
      while (v35 < [v34 count])
      {
        v37 = objc_autoreleasePoolPush();
        v38 = [v34 objectAtIndexedSubscript:v35];
        topicStrings = [v38 topicStrings];
        if (topicStrings)
        {
          topicStrings2 = [v38 topicStrings];
        }

        else
        {
          topicStrings2 = 0;
        }

        if ([topicStrings2 count])
        {
          ++v36;
        }

        neStrings = [v38 neStrings];
        if (neStrings)
        {
          neStrings2 = [v38 neStrings];
        }

        else
        {
          neStrings2 = 0;
        }

        [log unionSet:neStrings2];
        [v87 unionSet:topicStrings2];

        objc_autoreleasePoolPop(v37);
        ++v35;
      }

      for (j = 0; ; ++j)
      {
        seenSpotlightIds3 = [(PPSpotlightSessionState *)selfCopy->_sessionState seenSpotlightIds];
        v56 = j < [seenSpotlightIds3 count];

        if (!v56)
        {
          break;
        }

        v57 = objc_autoreleasePoolPush();
        seenSpotlightIds4 = [(PPSpotlightSessionState *)selfCopy->_sessionState seenSpotlightIds];
        v59 = [seenSpotlightIds4 objectAtIndexedSubscript:j];

        seenBundleIds3 = [(PPSpotlightSessionState *)selfCopy->_sessionState seenBundleIds];
        v61 = [seenBundleIds3 objectAtIndexedSubscript:j];

        v62 = [v61 isEqualToString:@"com.apple.mobilemail"];
        v63 = v86;
        if ((v62 & 1) != 0 || (v64 = [v61 isEqualToString:@"com.apple.MobileSMS"], v63 = v85, v64))
        {
          [v63 addObject:v59];
        }

        objc_autoreleasePoolPop(v57);
      }

      v65 = [(PPUniversalSearchFeedbackListener *)selfCopy fetchFeedbackCSSIParsedResults:v86 feedbackBundleId:@"com.apple.mobilemail" queryId:id];
      if (v65)
      {
        [v93 addObject:v65];
      }

      v84 = v65;
      v66 = [(PPUniversalSearchFeedbackListener *)selfCopy fetchFeedbackCSSIParsedResults:v85 feedbackBundleId:@"com.apple.MobileSMS" queryId:id];
      if (v66)
      {
        [v93 addObject:v66];
      }

      v89 = v66;
      v67 = 0;
      for (k = 0; k < [v93 count]; ++k)
      {
        v69 = objc_autoreleasePoolPush();
        v70 = [v93 objectAtIndexedSubscript:k];
        topicStrings3 = [v70 topicStrings];
        v72 = [topicStrings3 count] != 0;

        neStrings3 = [v70 neStrings];
        [seenSpotlightIds2 unionSet:neStrings3];

        topicStrings4 = [v70 topicStrings];
        [result unionSet:topicStrings4];

        objc_autoreleasePoolPop(v69);
        v67 += v72;
      }

      v75 = [seenSpotlightIds2 mutableCopy];
      [v75 minusSet:log];
      v76 = [result mutableCopy];
      [v76 minusSet:v87];
      allObjects = [v87 allObjects];
      allObjects2 = [v76 allObjects];
      [(PPUniversalSearchFeedbackListener *)selfCopy sendFeedbackWithEngagementStrings:allObjects rejectionStrings:allObjects2 store:selfCopy->_topicStore];

      allObjects3 = [log allObjects];
      allObjects4 = [v75 allObjects];
      [(PPUniversalSearchFeedbackListener *)selfCopy sendFeedbackWithEngagementStrings:allObjects3 rejectionStrings:allObjects4 store:selfCopy->_entityStore];

      [(PPUniversalSearchFeedbackListener *)selfCopy sendMetricsFeedback:v67 engagedCSSICount:v36];
      v81 = objc_opt_new();
      sessionState = selfCopy->_sessionState;
      selfCopy->_sessionState = v81;

      goto LABEL_60;
    }
  }

LABEL_63:
  objc_sync_exit(selfCopy);

  v83 = *MEMORY[0x1E69E9840];
}

id __60__PPUniversalSearchFeedbackListener_reportFeedback_queryId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v14 = a2;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a2;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [*(*(a1 + 32) + 24) engagedBundleIds];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v5 fetchFeedbackCSSIParsedResults:v8 feedbackBundleId:v10 queryId:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end