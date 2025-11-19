@interface PPCollaborativeFilteringSampler
- (BOOL)constructAndSendMessageForSamplingRate:(double)a3 shouldContinueBlock:(id)a4 error:(id *)a5;
- (PPCollaborativeFilteringSampler)init;
- (PPCollaborativeFilteringSampler)initWithSamplingWeightTrie:(id)a3;
- (id)_weightedSampleFeedbackItems:(id)a3;
- (unsigned)_probabilityForItemString:(id)a3 clientIdentifier:(id)a4;
@end

@implementation PPCollaborativeFilteringSampler

- (BOOL)constructAndSendMessageForSamplingRate:(double)a3 shouldContinueBlock:(id)a4 error:(id *)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v72 = a4;
  if ([MEMORY[0x277D3A578] yesWithProbability:a3])
  {
    v8 = +[PPLocalTopicStore defaultStore];
    v9 = objc_opt_new();
    v10 = [v8 rankedTopicsWithQuery:v9 error:a5];

    if (v10)
    {
      v73 = [v10 _pas_shuffledArrayUsingRng:0];

      if ((v72[2]() & 1) == 0)
      {
        v46 = pp_default_log_handle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring snapshot", buf, 2u);
        }

        v71 = 0;
        goto LABEL_50;
      }

      v11 = objc_opt_new();
      v69 = [v11 pendingTopicFeedback];

      v74 = [(PPCollaborativeFilteringSampler *)self _weightedSampleFeedbackItems:v69];
      v12 = +[PPTrialWrapper sharedInstance];
      v13 = [v12 concatenatedTreatmentNames];
      v70 = [v13 _pas_stringBackedByUTF8CString];

      v14 = +[PPConfiguration sharedInstance];
      LODWORD(v13) = [v14 portraitAnalyticsMaximumNumberOfRecords];

      if (v13)
      {
        v15 = 0;
        while (1)
        {
          v16 = objc_autoreleasePoolPush();
          if ((v72[2]() & 1) == 0)
          {
            break;
          }

          if (v15 == [v73 count])
          {
            objc_autoreleasePoolPop(v16);
            goto LABEL_29;
          }

          v17 = objc_opt_new();
          if (v74)
          {
            v18 = [v74 clientIdentifier];

            if (v18)
            {
              v19 = [v74 clientIdentifier];
              v20 = [v19 _pas_stringBackedByUTF8CString];
              [v17 setObject:v20 forKeyedSubscript:@"clientIdentifier"];
            }

            v21 = [v74 feedbackItems];
            v22 = [v21 firstObject];
            v23 = [v22 itemString];

            if (v23)
            {
              v24 = [v74 feedbackItems];
              v25 = [v24 firstObject];
              v26 = [v25 itemString];
              v27 = [v26 _pas_stringBackedByUTF8CString];
              [v17 setObject:v27 forKeyedSubscript:@"clientTopic"];
            }

            v28 = [v74 feedbackItems];
            v29 = [v28 firstObject];
            v30 = [v29 itemFeedbackType];

            if (v30)
            {
              v31 = MEMORY[0x277CCABB0];
              v32 = [v74 feedbackItems];
              v33 = [v32 firstObject];
              v34 = [v31 numberWithUnsignedInt:{objc_msgSend(v33, "itemFeedbackType")}];
              [v17 setObject:v34 forKeyedSubscript:@"engagementType"];
            }
          }

          [v17 setObject:v70 forKeyedSubscript:@"activeTreatments"];
          v35 = [v73 objectAtIndexedSubscript:v15];
          v36 = [v35 item];
          v37 = [v36 topicIdentifier];
          v38 = [v37 _pas_stringBackedByUTF8CString];
          [v17 setObject:v38 forKeyedSubscript:@"topic"];

          v39 = MEMORY[0x277CCABB0];
          v40 = [v73 objectAtIndexedSubscript:v15];
          [v40 score];
          LODWORD(v42) = vcvtmd_s64_f64(v41 * 5.0);
          v43 = [v39 numberWithInt:v42];
          [v17 setObject:v43 forKeyedSubscript:@"score"];

          AnalyticsSendEvent();
          objc_autoreleasePoolPop(v16);
          v44 = +[PPConfiguration sharedInstance];
          ++v15;
          LODWORD(v43) = [v44 portraitAnalyticsMaximumNumberOfRecords];

          if (v15 >= v43)
          {
            goto LABEL_29;
          }
        }

        v47 = pp_default_log_handle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring snapshot in loop.", buf, 2u);
        }

        objc_autoreleasePoolPop(v16);
        v71 = 0;
        goto LABEL_49;
      }

LABEL_29:
      v48 = objc_opt_new();
      v49 = [@"PersonalizationPortrait" copy];
      [v48 setCaller:v49];

      v50 = dispatch_group_create();
      dispatch_group_enter(v50);
      *buf = 0;
      v83 = buf;
      v84 = 0x3032000000;
      v85 = __Block_byref_object_copy__6825;
      v86 = __Block_byref_object_dispose__6826;
      v87 = 0;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __100__PPCollaborativeFilteringSampler_constructAndSendMessageForSamplingRate_shouldContinueBlock_error___block_invoke;
      v79[3] = &unk_2789760B8;
      v81 = buf;
      v51 = v50;
      v80 = v51;
      v67 = v48;
      [v48 makeRequestWithCompletion:v79];
      v68 = v51;
      v52 = [MEMORY[0x277D425A0] waitForGroup:v51 timeoutSeconds:8.0];
      v71 = v72[2]();
      if (v71)
      {
        if (v52 == 1 || !*(v83 + 5))
        {
          v71 = 0;
          goto LABEL_48;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v53 = *(v83 + 5);
        v54 = [v53 countByEnumeratingWithState:&v75 objects:v94 count:16];
        if (v54)
        {
          v55 = *v76;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v76 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v75 + 1) + 8 * i);
              v58 = objc_autoreleasePoolPush();
              v59 = pp_default_log_handle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                v63 = [v57 ID];
                v64 = [v57 name];
                *v90 = 138740227;
                v91 = v63;
                v92 = 2117;
                v93 = v64;
                _os_log_debug_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEBUG, "PPMaintenance: TV app favorite: %{sensitive}@: \t\t %{sensitive}@", v90, 0x16u);
              }

              v60 = [v57 ID];

              if (v60)
              {
                v88 = @"sportsFavorite";
                v61 = [v57 ID];
                v89 = v61;
                v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                AnalyticsSendEvent();
              }

              objc_autoreleasePoolPop(v58);
            }

            v54 = [v53 countByEnumeratingWithState:&v75 objects:v94 count:16];
          }

          while (v54);
        }
      }

      else
      {
        v53 = pp_default_log_handle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *v90 = 0;
          _os_log_debug_impl(&dword_23224A000, v53, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring WLKFavorite request for snapshot.", v90, 2u);
        }
      }

LABEL_48:
      _Block_object_dispose(buf, 8);

LABEL_49:
LABEL_50:
      v45 = v73;
      goto LABEL_51;
    }

    v45 = pp_default_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v45, OS_LOG_TYPE_ERROR, "PPMaintenance: unable to fetch ranked topics.", buf, 2u);
    }

    v71 = 0;
  }

  else
  {
    pp_default_log_handle();
    v45 = v71 = 1;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v71 = 1;
      _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_INFO, "Skipping snapshot sampling.", buf, 2u);
    }
  }

LABEL_51:

  v65 = *MEMORY[0x277D85DE8];
  return v71;
}

void __100__PPCollaborativeFilteringSampler_constructAndSendMessageForSamplingRate_shouldContinueBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Enters favRequest completion block.", &v12, 2u);
  }

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to make WLKFavoritesRequest: %@", &v12, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_weightedSampleFeedbackItems:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 count])
  {
    v25 = 0;
    goto LABEL_26;
  }

  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = v3;
    obj = v5;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 feedbackItems];
        v14 = [v13 firstObject];
        v15 = [v14 itemString];

        if (v15)
        {
          v16 = [v11 clientIdentifier];
          v17 = [(PPCollaborativeFilteringSampler *)self _probabilityForItemString:v15 clientIdentifier:v16];

          v8 += v17;
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
          [v4 addObject:v18];
        }

        else
        {
          [v4 addObject:&unk_284783C60];
          v18 = pp_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPCollaborativeFilteringSampler: found feedback without item string.", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);

    if (!v8)
    {
      v25 = 0;
LABEL_24:
      v3 = v28;
      goto LABEL_25;
    }

    v19 = objc_opt_new();
    v20 = [v19 next];

    if ([v4 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = v20 % v8;
      while (1)
      {
        v24 = [v4 objectAtIndexedSubscript:v21];
        v22 += [v24 intValue];

        if (v22 >= v23)
        {
          break;
        }

        if (++v21 >= [v4 count])
        {
          goto LABEL_18;
        }
      }

      v25 = [obj objectAtIndexedSubscript:v21];
      goto LABEL_24;
    }

LABEL_18:
    v5 = pp_default_log_handle();
    v3 = v28;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPCollaborativeFilteringSampler: sampling identified no items", buf, 2u);
    }
  }

  v25 = 0;
LABEL_25:

LABEL_26:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (unsigned)_probabilityForItemString:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  samplingWeightTrie = self->_samplingWeightTrie;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [[v8 alloc] initWithFormat:@"%@:%@", v6, v9];

  v11 = [(_PASCFBurstTrie *)samplingWeightTrie payloadForString:v10];
  if (!v11)
  {
    v12 = self->_samplingWeightTrie;
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:*", v6];
    v14 = [(_PASCFBurstTrie *)v12 payloadForString:v13];

    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = 100;
    }
  }

  return v11;
}

- (PPCollaborativeFilteringSampler)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [v3 filepathForFactor:@"collaborativeFilteringWeights.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v4];
    self = [(PPCollaborativeFilteringSampler *)self initWithSamplingWeightTrie:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PPCollaborativeFilteringSampler)initWithSamplingWeightTrie:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPCollaborativeFilteringSampler;
  v6 = [(PPCollaborativeFilteringSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_samplingWeightTrie, a3);
  }

  return v7;
}

@end