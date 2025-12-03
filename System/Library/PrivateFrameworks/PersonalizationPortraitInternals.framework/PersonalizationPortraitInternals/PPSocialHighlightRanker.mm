@interface PPSocialHighlightRanker
- (PPSocialHighlightRanker)init;
- (PPSocialHighlightRanker)initWithFirstPassScorer:(id)scorer topKScorer:(id)kScorer topKCount:(unsigned int)count;
- (id)rankSocialHighlights:(id)highlights client:(id)client performRerank:(BOOL)rerank;
- (id)rerankSocialHighlightsForTopOneResult:(id)result client:(id)client;
@end

@implementation PPSocialHighlightRanker

- (PPSocialHighlightRanker)init
{
  v3 = +[PPSocialHighlightMLScorer sharedFirstPassInstance];
  v4 = +[PPSocialHighlightMLScorer sharedTopKInstance];
  v5 = +[PPConfiguration sharedInstance];
  v6 = -[PPSocialHighlightRanker initWithFirstPassScorer:topKScorer:topKCount:](self, "initWithFirstPassScorer:topKScorer:topKCount:", v3, v4, [v5 socialHighlightTopKCount]);

  return v6;
}

- (id)rerankSocialHighlightsForTopOneResult:(id)result client:(id)client
{
  v66 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v39 = objc_autoreleasePoolPush();
  _pas_stringBackedByUTF8CString = [client _pas_stringBackedByUTF8CString];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_topKCount];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __72__PPSocialHighlightRanker_rerankSocialHighlightsForTopOneResult_client___block_invoke;
  v55[3] = &unk_278976D68;
  v9 = v8;
  v56 = v9;
  selfCopy = self;
  [resultCopy enumerateObjectsUsingBlock:v55];
  v43 = resultCopy;
  v44 = [resultCopy mutableCopy];
  v10 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        second = [*(*(&v51 + 1) + 8 * i) second];
        [v10 addIndex:{objc_msgSend(second, "unsignedIntegerValue")}];
      }

      v13 = [v11 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v13);
  }

  v37 = v10;
  [v44 removeObjectsAtIndexes:v10];
  v17 = [v11 count];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = v11;
  obj = [v11 reverseObjectEnumerator];
  v45 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
  if (v45)
  {
    v42 = *v48;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * j);
        context = objc_autoreleasePoolPush();
        first = [v19 first];
        v62[0] = @"oldRank";
        second2 = [v19 second];
        v63[0] = second2;
        v62[1] = @"newRank";
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
        v63[1] = v22;
        v62[2] = @"clientIdentifier";
        v23 = _pas_stringBackedByUTF8CString;
        v24 = _pas_stringBackedByUTF8CString;
        if (!_pas_stringBackedByUTF8CString)
        {
          null = [MEMORY[0x277CBEB68] null];
          v23 = null;
        }

        v63[2] = v23;
        v62[3] = @"isStarred";
        v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(first, "highlightType") == 2}];
        v63[3] = v25;
        v63[4] = MEMORY[0x277CBEC38];
        v62[4] = @"didUprank";
        v62[5] = @"batchSize";
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
        v63[5] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:6];
        [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.ItemUpranked" payload:v27 inBackground:0];

        _pas_stringBackedByUTF8CString = v24;
        if (!v24)
        {
        }

        [first setIsTopKResult:1];
        [first topKScore];
        [first setScore:?];
        [v44 insertObject:first atIndex:0];
        --v17;

        objc_autoreleasePoolPop(context);
      }

      v45 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
    }

    while (v45);
  }

  if (![v38 count])
  {
    v28 = objc_autoreleasePoolPush();
    v60[0] = @"clientIdentifier";
    null2 = _pas_stringBackedByUTF8CString;
    if (!_pas_stringBackedByUTF8CString)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v61[0] = null2;
    v61[1] = MEMORY[0x277CBEC28];
    v60[1] = @"didUprank";
    v60[2] = @"batchSize";
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
    v61[2] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.ItemUpranked" payload:v31 inBackground:0];

    if (!_pas_stringBackedByUTF8CString)
    {
    }

    v32 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v43 count];
      *buf = 134217984;
      v59 = v33;
      _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightRanker: none of the %tu highlights were eligible to be upranked.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
  }

  v34 = [v44 copy];

  objc_autoreleasePoolPop(v39);
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __72__PPSocialHighlightRanker_rerankSocialHighlightsForTopOneResult_client___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  [v13 firstPassScore];
  [v13 setScore:?];
  [v13 setIsTopKResult:0];
  [v13 topKScore];
  if (v5 > 0.0)
  {
    [v13 firstPassScore];
    if (v6 >= 0.0)
    {
      v7 = objc_alloc(MEMORY[0x277D42648]);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v9 = [v7 initWithFirst:v13 second:v8];

      v10 = [*(a1 + 32) indexOfObject:v9 inSortedRange:0 options:objc_msgSend(*(a1 + 32) usingComparator:{"count"), 1024, &__block_literal_global_81_19338}];
      v11 = [*(a1 + 32) count];
      v12 = *(*(a1 + 40) + 24);
      if (v11 < v12 || v10 < v12)
      {
        [*(a1 + 32) insertObject:v9 atIndex:v10];
      }
    }
  }
}

uint64_t __72__PPSocialHighlightRanker_rerankSocialHighlightsForTopOneResult_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277D3A578];
  v7 = [v4 first];
  [v7 topKScore];
  v9 = v8;
  v10 = [v5 first];
  [v10 topKScore];
  v12 = [v6 reverseCompareDouble:v9 withDouble:v11];

  if (!v12)
  {
    v13 = MEMORY[0x277D3A578];
    v14 = [v4 first];
    [v14 score];
    v16 = v15;
    v17 = [v5 first];
    [v17 score];
    v12 = [v13 reverseCompareDouble:v16 withDouble:v18];
  }

  return v12;
}

- (id)rankSocialHighlights:(id)highlights client:(id)client performRerank:(BOOL)rerank
{
  rerankCopy = rerank;
  v49 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  clientCopy = client;
  v9 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v46 = [highlightsCopy count];
    v47 = 2112;
    v48 = clientCopy;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPSocialHighlightRanker: ranking %tu social highlights for '%@'", buf, 0x16u);
  }

  v10 = pp_social_highlights_signpost_handle();
  v11 = os_signpost_id_generate(v10);

  v12 = pp_social_highlights_signpost_handle();
  v13 = v12;
  v34 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Ranker.scoreSocialHighlights", "", buf, 2u);
  }

  spid = v11;
  v36 = clientCopy;

  v14 = highlightsCopy;
  v15 = v14;
  if (self)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [v14 countByEnumeratingWithState:&v37 objects:buf count:{16, v11}];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          v21 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            highlightIdentifier = [v20 highlightIdentifier];
            calculatedFeatures = [v20 calculatedFeatures];
            *v41 = 138740227;
            v42 = highlightIdentifier;
            v43 = 2117;
            v44 = calculatedFeatures;
            _os_log_debug_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEBUG, "PPSocialHighlightRanker: %{sensitive}@ - ranking features %{sensitive}@", v41, 0x16u);
          }

          [(PPSocialHighlightScorer *)self->_firstPassScorer scoreSocialHighlight:v20];
          [v20 setFirstPassScore:?];
          [(PPSocialHighlightScorer *)self->_topKScorer scoreSocialHighlight:v20];
          [v20 setTopKScore:?];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v37 objects:buf count:16];
      }

      while (v17);
    }

    v24 = v15;
  }

  else
  {
    v24 = 0;
  }

  v25 = pp_social_highlights_signpost_handle();
  v26 = v25;
  if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v26, OS_SIGNPOST_INTERVAL_END, spid, "Ranker.scoreSocialHighlights", " enableTelemetry=YES ", buf, 2u);
  }

  v27 = [v24 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_19347];
  v28 = v27;
  if (rerankCopy)
  {
    v29 = [(PPSocialHighlightRanker *)self rerankSocialHighlightsForTopOneResult:v27 client:v36];
  }

  else
  {
    v29 = v27;
  }

  v30 = v29;

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __69__PPSocialHighlightRanker_rankSocialHighlights_client_performRerank___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 firstPassScore];
  v7 = v6;
  [v5 firstPassScore];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

- (PPSocialHighlightRanker)initWithFirstPassScorer:(id)scorer topKScorer:(id)kScorer topKCount:(unsigned int)count
{
  scorerCopy = scorer;
  kScorerCopy = kScorer;
  v14.receiver = self;
  v14.super_class = PPSocialHighlightRanker;
  v11 = [(PPSocialHighlightRanker *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_firstPassScorer, scorer);
    objc_storeStrong(&v12->_topKScorer, kScorer);
    v12->_topKCount = count;
  }

  return v12;
}

@end