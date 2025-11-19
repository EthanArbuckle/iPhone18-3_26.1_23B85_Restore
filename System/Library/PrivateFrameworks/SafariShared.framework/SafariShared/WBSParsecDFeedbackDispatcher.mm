@interface WBSParsecDFeedbackDispatcher
- (BOOL)_rankingFeedback:(id)a3 isShallowEqual:(id)a4;
- (WBSParsecDFeedbackDispatcher)initWithSession:(id)a3;
- (id)_customFeedbackOfType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)_takeStartSearchFeedbackForSearchOfType:(int64_t)a3 forQuery:(id)a4;
- (void)_postFeedbackOnFeedbackQueue:(id)a3 forQueryID:(int64_t)a4;
- (void)_postPendingVisibleResultsFeedbackEventsForQueryID:(int64_t)a3 queryString:(id)a4;
- (void)_setStartSearchFeedback:(id)a3 forSearchOfType:(int64_t)a4 withQuery:(id)a5;
- (void)dealloc;
- (void)didBeginSearchOfType:(int64_t)a3 withQuery:(id)a4 urlString:(id)a5 endpoint:(unint64_t)a6;
- (void)didDisplayCompletionListItems:(id)a3 forQuery:(id)a4 forEvent:(int64_t)a5;
- (void)didGenerateCompletionListItemsWithRankingObserver:(id)a3 forQueryID:(int64_t)a4;
- (void)didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:(id)a3;
- (void)didRankSections:(id)a3 blendingDuration:(double)a4 feedbackForHiddenAndDuplicateResults:(id)a5 forQueryID:(int64_t)a6 rankingFeedbackConfiguration:(id)a7;
- (void)didReceiveParsecResultsAfterTimeout:(id)a3;
- (void)didReceiveResultsForQuery:(id)a3 searchType:(int64_t)a4;
- (void)postFeedback:(id)a3 forQueryID:(int64_t)a4;
- (void)searchViewAppearedBecauseOfEvent:(unint64_t)a3 isSafariReaderAvailable:(BOOL)a4 forQueryID:(int64_t)a5 usesLoweredSearchBar:(BOOL)a6;
- (void)searchViewDisappearedBecauseOfEvent:(int64_t)a3 forQueryID:(int64_t)a4;
- (void)sendClearInputFeedbackWithTriggerEvent:(unint64_t)a3 forQueryID:(int64_t)a4;
- (void)sendNewTabFeedback:(BOOL)a3;
- (void)triggeredExperimentWithTreatmentId:(id)a3 withQueryID:(int64_t)a4;
- (void)triggeredExperimentWithTreatmentId:(id)a3 withQueryID:(int64_t)a4 cfDiffered:(BOOL)a5 cfUsed:(BOOL)a6 cfError:(unint64_t)a7;
- (void)userDidEngageWithCompletionListItem:(id)a3 onActionButton:(BOOL)a4 method:(int64_t)a5 doesMatchSiriSuggestion:(BOOL)a6 voiceSearchQueryID:(id)a7;
- (void)userDidTapMicKey:(int64_t)a3;
- (void)userDidTypeKey:(int64_t)a3;
- (void)userTypedGoToSearch:(id)a3 endpoint:(unint64_t)a4 triggerEvent:(int64_t)a5 forQueryID:(int64_t)a6;
- (void)userTypedURLDirectlyForQuery:(id)a3 triggerEvent:(int64_t)a4;
@end

@implementation WBSParsecDFeedbackDispatcher

- (WBSParsecDFeedbackDispatcher)initWithSession:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = WBSParsecDFeedbackDispatcher;
  v5 = [(WBSParsecDFeedbackDispatcher *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v7 = v6;
    if (v4)
    {
      [(NSArray *)v6 addObject:v4];
    }

    feedbackListeners = v5->_feedbackListeners;
    v5->_feedbackListeners = v7;
    v9 = v7;

    v10 = [MEMORY[0x1E695DF70] array];
    visibleResultsFeedbackEventsToBeSent = v5->_visibleResultsFeedbackEventsToBeSent;
    v5->_visibleResultsFeedbackEventsToBeSent = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    previousRankingFeedbackEventsSentForCurrentQueryID = v5->_previousRankingFeedbackEventsSentForCurrentQueryID;
    v5->_previousRankingFeedbackEventsSentForCurrentQueryID = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.apple.SafariShared.WBSParsecDFeedbackDispatcher", v14);
    feedbackQueue = v5->_feedbackQueue;
    v5->_feedbackQueue = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);

    v18 = dispatch_queue_create("com.apple.SafariShared.WBSParsecDFeedbackDispatcher", v17);
    queriesToDictionariesMappingQueue = v5->_queriesToDictionariesMappingQueue;
    v5->_queriesToDictionariesMappingQueue = v18;

    v20 = v5;
  }

  return v5;
}

- (void)dealloc
{
  if ([(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer isValid])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer fire];
  }

  [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
  sendPendingVisibleResultsFeedbackFeedbackEventsTimer = self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer;
  self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer = 0;

  v4.receiver = self;
  v4.super_class = WBSParsecDFeedbackDispatcher;
  [(WBSParsecDFeedbackDispatcher *)&v4 dealloc];
}

- (void)postFeedback:(id)a3 forQueryID:(int64_t)a4
{
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Posting feedback to parsecd", buf, 2u);
  }

  v8 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher postFeedback:v6 forQueryID:v8];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  if (WBSParsecGlobalFeedbackIsEnabled())
  {
    feedbackQueue = self->_feedbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__WBSParsecDFeedbackDispatcher_postFeedback_forQueryID___block_invoke;
    block[3] = &unk_1E7FC9E88;
    block[4] = self;
    v11 = v6;
    v12 = a4;
    dispatch_async(feedbackQueue, block);
  }

LABEL_7:
}

- (void)_postFeedbackOnFeedbackQueue:(id)a3 forQueryID:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_feedbackListeners;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) reportFeedback:v6 queryId:{a4, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)didDisplayCompletionListItems:(id)a3 forQuery:(id)a4 forEvent:(int64_t)a5
{
  v9 = a4;
  v10 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_6];
  v11 = objc_alloc(MEMORY[0x1E69CA588]);
  if ((a5 - 1) > 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = *&asc_1BB9537B0[8 * a5 - 8];
  }

  v13 = [v11 initWithResults:v10 triggerEvent:v12];
  v14 = [v9 queryID];
  v15 = self->_previousQueryForVisibleResultsFeedback;
  objc_storeStrong(&self->_currentQueryForVisibleResultsFeedback, a4);
  [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
  if (v14 != [(WBSCompletionQuery *)v15 queryID])
  {
    objc_storeStrong(&self->_previousQueryForVisibleResultsFeedback, a4);
    if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
    {
      v16 = [(WBSCompletionQuery *)v15 queryID];
      v17 = [(WBSCompletionQuery *)v15 queryString];
      [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:v16 queryString:v17];
    }
  }

  [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent addObject:v13];
  v18 = MEMORY[0x1E695DFF0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__WBSParsecDFeedbackDispatcher_didDisplayCompletionListItems_forQuery_forEvent___block_invoke_2;
  v22[3] = &unk_1E7FCA3B0;
  v23 = v9;
  v24 = v14;
  v22[4] = self;
  v19 = v9;
  v20 = [v18 scheduledTimerWithTimeInterval:0 repeats:v22 block:0.5];
  sendPendingVisibleResultsFeedbackFeedbackEventsTimer = self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer;
  self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer = v20;
}

void __80__WBSParsecDFeedbackDispatcher_didDisplayCompletionListItems_forQuery_forEvent___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) count])
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) queryString];
    [v3 _postPendingVisibleResultsFeedbackEventsForQueryID:v2 queryString:v4];
  }
}

- (void)_postPendingVisibleResultsFeedbackEventsForQueryID:(int64_t)a3 queryString:(id)a4
{
  v6 = [MEMORY[0x1E695DFA8] set];
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent objectAtIndexedSubscript:v7];
      v9 = [v8 results];
      [v6 addObjectsFromArray:v9];

      if (v7 == [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count]- 1)
      {
        v10 = [v6 allObjects];
        [v8 setResults:v10];
      }

      else
      {
        [v8 setResults:0];
      }

      feedbackQueue = self->_feedbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__WBSParsecDFeedbackDispatcher__postPendingVisibleResultsFeedbackEventsForQueryID_queryString___block_invoke;
      block[3] = &unk_1E7FC9E88;
      block[4] = self;
      v14 = v8;
      v15 = a3;
      v12 = v8;
      dispatch_async(feedbackQueue, block);

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count]);
  }

  [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent removeAllObjects];
}

- (void)userDidEngageWithCompletionListItem:(id)a3 onActionButton:(BOOL)a4 method:(int64_t)a5 doesMatchSiriSuggestion:(BOOL)a6 voiceSearchQueryID:(id)a7
{
  v8 = a6;
  v10 = a4;
  v28 = a3;
  v12 = a7;
  v13 = [v28 sfSearchResultValue];
  v14 = [v13 copy];

  if (v14)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 title];

      if (!v15)
      {
        v16 = MEMORY[0x1E69CA4F0];
        v17 = [v28 siriSuggestion];
        v18 = [v17 title];
        v19 = [v16 textWithString:v18];
        [v14 setTitle:v19];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v28 engagementDestination];
    }

    else
    {
      v20 = 3;
    }

    v21 = 1;
    if (a5 != 1)
    {
      v21 = 2;
    }

    if (a5 == 2)
    {
      v22 = 20;
    }

    else
    {
      v22 = v21;
    }

    v23 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:v14 triggerEvent:v22 destination:v20];
    v24 = v23;
    if (v10)
    {
      [v23 setActionTarget:4];
    }

    if (objc_opt_respondsToSelector())
    {
      [v24 setMatchesUnengagedSuggestion:v8];
    }

    v25 = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryID];
    if (a5 == 2)
    {
      v26 = [v12 intValue];
    }

    else
    {
      v26 = v25;
    }

    if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
    {
      [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
      v27 = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
      [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:v26 queryString:v27];
    }

    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v24 forQueryID:v26];
  }
}

- (void)userTypedURLDirectlyForQuery:(id)a3 triggerEvent:(int64_t)a4
{
  v11 = a3;
  v6 = objc_alloc(MEMORY[0x1E69CA030]);
  v7 = [v11 queryString];
  v8 = [v6 initWithInput:v7];

  if (a4 == 1)
  {
    [v8 setTriggerEvent:20];
  }

  v9 = [v11 queryID];
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    v10 = [v11 queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:v9 queryString:v10];
  }

  -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v8, [v11 queryID]);
}

- (void)userTypedGoToSearch:(id)a3 endpoint:(unint64_t)a4 triggerEvent:(int64_t)a5 forQueryID:(int64_t)a6
{
  v10 = MEMORY[0x1E69CA028];
  v11 = a3;
  v13 = [[v10 alloc] initWithInput:v11 endpoint:a4];

  if (a5 == 1)
  {
    [v13 setTriggerEvent:20];
  }

  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    v12 = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:a6 queryString:v12];
  }

  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v13 forQueryID:a6];
}

- (void)didReceiveResultsForQuery:(id)a3 searchType:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WBSParsecDFeedbackDispatcher *)self _takeStartSearchFeedbackForSearchOfType:a4 forQuery:v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69CA058]) initWithStartSearch:v7];
    if (v8)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 134218240;
        v12 = v8;
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Sending search end feedback to parsecd: %p (paired with search start feedback: %p)", &v11, 0x16u);
      }

      v10 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [WBSParsecDFeedbackDispatcher didReceiveResultsForQuery:searchType:];
      }

      -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v8, [v6 queryID]);
    }
  }
}

- (void)didBeginSearchOfType:(int64_t)a3 withQuery:(id)a4 urlString:(id)a5 endpoint:(unint64_t)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [v10 triggerEvent];
  if ([MEMORY[0x1E69C8880] defaultSearchEngineMatchesExperiment])
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = +[WBSTrialManager shared];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "trialABGroupIdentifier")}];
    v16 = [v15 stringValue];
  }

  else
  {
    v16 = 0;
  }

  if (a3 == 2)
  {
    v23 = objc_alloc(MEMORY[0x1E69CA478]);
    v18 = [v10 queryString];
    v20 = [v23 initWithInput:v18 triggerEvent:9 searchType:1 indexType:0 queryId:objc_msgSend(v10 originatingApp:{"queryID"), v16}];
    v21 = @"recent searches";
  }

  else if (a3 == 1)
  {
    v22 = objc_alloc(MEMORY[0x1E69CA478]);
    v18 = [v10 queryString];
    v20 = [v22 initWithInput:v18 triggerEvent:v12 searchType:2 indexType:5 queryId:objc_msgSend(v10 originatingApp:{"queryID"), v16}];
    v21 = @"bookmarks/history";
  }

  else
  {
    if (a3)
    {
      goto LABEL_16;
    }

    v17 = objc_alloc(MEMORY[0x1E69CA480]);
    v18 = [v10 queryString];
    v19 = [v10 queryID];
    v20 = [v17 initWithInput:v18 url:v11 headers:MEMORY[0x1E695E0F8] triggerEvent:v12 endpoint:a6 queryId:v19];
    v21 = @"search engine";
  }

  if (v20)
  {
    [(WBSParsecDFeedbackDispatcher *)self _setStartSearchFeedback:v20 forSearchOfType:a3 withQuery:v10];
    v24 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = 138543362;
      v27 = v21;
      _os_log_impl(&dword_1BB6F3000, v24, OS_LOG_TYPE_INFO, "Sending %{public}@ search start feedback to parsecd.", &v26, 0xCu);
    }

    v25 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [WBSParsecDFeedbackDispatcher didBeginSearchOfType:withQuery:urlString:endpoint:];
    }

    -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v20, [v10 queryID]);
  }

LABEL_16:
}

- (void)didGenerateCompletionListItemsWithRankingObserver:(id)a3 forQueryID:(int64_t)a4
{
  v6 = [a3 rankingFeedback];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v6 forQueryID:a4];
}

- (void)didRankSections:(id)a3 blendingDuration:(double)a4 feedbackForHiddenAndDuplicateResults:(id)a5 forQueryID:(int64_t)a6 rankingFeedbackConfiguration:(id)a7
{
  v50[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if ([v12 count])
  {
    v15 = [v14 prefixNavigationalIntent];
    if (v15)
    {
      v16 = MEMORY[0x1E696AD98];
      [v14 prefixNavigationalIntent];
      v18 = v17 = a6;
      [v18 floatValue];
      *&v20 = v19 / 100.0;
      v21 = [v16 numberWithFloat:v20];

      a6 = v17;
    }

    else
    {
      v21 = &unk_1F3A9B000;
    }

    if ([v14 serverCompletionDidMatchFirstSearchSuggestionFrom3rdParty])
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = [MEMORY[0x1E695DFA8] set];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __142__WBSParsecDFeedbackDispatcher_didRankSections_blendingDuration_feedbackForHiddenAndDuplicateResults_forQueryID_rankingFeedbackConfiguration___block_invoke;
    v44[3] = &unk_1E7FCA400;
    v38 = v23;
    v45 = v38;
    v24 = v21;
    v46 = v24;
    v48 = v22;
    v39 = v13;
    v47 = v13;
    v37 = [v12 safari_mapAndFilterObjectsWithOptions:0 usingBlock:v44];
    v25 = [objc_alloc(MEMORY[0x1E69CA340]) initWithSections:v37 blendingDuration:a4];
    v26 = [v14 hiddenSiriSuggestedSite];
    v27 = v26;
    if (v26)
    {
      [v26 setThirdPartyNavigationIntentScore:v24];
      [v27 setThirdPartyQueryCompletionMatched:v22];
      v50[0] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      [v25 setHiddenResults:v28];
    }

    if (self->_previousQueryIDForRankedResultsFeedback != a6)
    {
      v29 = [MEMORY[0x1E695DF70] array];
      previousRankingFeedbackEventsSentForCurrentQueryID = self->_previousRankingFeedbackEventsSentForCurrentQueryID;
      self->_previousRankingFeedbackEventsSentForCurrentQueryID = v29;

      self->_previousQueryIDForRankedResultsFeedback = a6;
    }

    v36 = a6;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = self->_previousRankingFeedbackEventsSentForCurrentQueryID;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v41;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v31);
          }

          if ([(WBSParsecDFeedbackDispatcher *)self _rankingFeedback:v25 isShallowEqual:*(*(&v40 + 1) + 8 * i), v36])
          {

            goto LABEL_22;
          }
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_previousRankingFeedbackEventsSentForCurrentQueryID addObject:v25];
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v25 forQueryID:v36];
LABEL_22:

    v13 = v39;
  }
}

id __142__WBSParsecDFeedbackDispatcher_didRankSections_blendingDuration_feedbackForHiddenAndDuplicateResults_forQueryID_rankingFeedbackConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 results];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __142__WBSParsecDFeedbackDispatcher_didRankSections_blendingDuration_feedbackForHiddenAndDuplicateResults_forQueryID_rankingFeedbackConfiguration___block_invoke_2;
  v13 = &unk_1E7FCA3D8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(a1 + 56);
  v16 = *(a1 + 48);
  v7 = [v6 safari_mapAndFilterObjectsWithOptions:0 usingBlock:&v10];
  [v5 setResults:{0, v10, v11, v12, v13}];
  v8 = [objc_alloc(MEMORY[0x1E69CA418]) initWithResults:v7 section:v5 localSectionPosition:a3 personalizationScore:0.0];

  return v8;
}

id __142__WBSParsecDFeedbackDispatcher_didRankSections_blendingDuration_feedbackForHiddenAndDuplicateResults_forQueryID_rankingFeedbackConfiguration___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v5 setThirdPartyNavigationIntentScore:*(a1 + 40)];
      [v5 setThirdPartyQueryCompletionMatched:*(a1 + 56)];
    }

    [*(a1 + 32) addObject:v5];
    v7 = [v5 identifier];

    if (!v7 || (v8 = *(a1 + 48), [v5 identifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v9), v6 = objc_claimAutoreleasedReturnValue(), v9, !v6))
    {
      v6 = [objc_alloc(MEMORY[0x1E69CA388]) initWithResult:v5 hiddenResults:0 duplicateResults:0 localResultPosition:a3];
    }
  }

  return v6;
}

- (BOOL)_rankingFeedback:(id)a3 isShallowEqual:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 queryId];
  v54 = v6;
  if (v7 != [v6 queryId])
  {
    goto LABEL_4;
  }

  v8 = [v5 sections];
  if ([v8 count])
  {
    v9 = [v5 sections];
    v10 = [v9 count];
    v11 = [v54 sections];
    v12 = [v11 count];

    if (v10 != v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v15 = [v5 sections];
  v16 = [v15 count];

  if (!v16)
  {
    v13 = 1;
    goto LABEL_5;
  }

  v17 = 0;
  v53 = v5;
  while (1)
  {
    v61 = [v5 sections];
    v18 = [v61 objectAtIndexedSubscript:v17];
    v19 = [v18 section];
    v20 = [v19 identifier];
    v21 = [v54 sections];
    v22 = [v21 objectAtIndexedSubscript:v17];
    v23 = [v22 section];
    v24 = [v23 identifier];
    v25 = [v20 isEqualToString:v24];

    if (!v25)
    {
      break;
    }

    v26 = [v5 sections];
    v27 = [v26 objectAtIndexedSubscript:v17];
    v28 = [v27 results];
    if ([v28 count])
    {
      v59 = [v5 sections];
      v29 = [v59 objectAtIndexedSubscript:v17];
      v30 = [v29 results];
      v62 = [v30 count];
      v31 = [v54 sections];
      v32 = [v31 objectAtIndexedSubscript:v17];
      v33 = [v32 results];
      v57 = [v33 count];

      if (v62 != v57)
      {
        break;
      }
    }

    else
    {
    }

    v34 = 0;
    while (1)
    {
      v35 = [v5 sections];
      v36 = [v35 objectAtIndexedSubscript:v17];
      v37 = [v36 results];
      v38 = [v37 count];

      if (v34 >= v38)
      {
        break;
      }

      v63 = [v5 sections];
      v60 = [v63 objectAtIndexedSubscript:v17];
      v58 = [v60 results];
      v56 = [v58 objectAtIndexedSubscript:v34];
      v39 = [v56 result];
      v40 = [v39 identifier];
      v41 = [v54 sections];
      v42 = [v41 objectAtIndexedSubscript:v17];
      [v42 results];
      v44 = v43 = v17;
      v45 = [v44 objectAtIndexedSubscript:v34];
      v46 = [v45 result];
      v47 = [v46 identifier];
      v55 = [v40 isEqualToString:v47];

      v17 = v43;
      v5 = v53;

      ++v34;
      if ((v55 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v48 = v17 + 1;
    [v5 sections];
    v50 = v49 = v5;
    v51 = [v50 count];

    v5 = v49;
    v13 = 1;
    v52 = v48 >= v51;
    v17 = v48;
    if (v52)
    {
      goto LABEL_5;
    }
  }

LABEL_4:
  v13 = 0;
LABEL_5:

  return v13;
}

- (void)didReceiveParsecResultsAfterTimeout:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_47];
    v5 = [objc_alloc(MEMORY[0x1E69CA398]) initWithResults:v4];
    v6 = [v7 firstObject];
    -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v5, [v6 parsecQueryID]);
  }
}

- (void)didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:(id)a3
{
  v4 = a3;
  -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v4, [v4 queryId]);
}

- (id)_customFeedbackOfType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v10 = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a4 options:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69CA008]) initWithType:a3 data:v5];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXParsec();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSParsecDFeedbackDispatcher *)v8 _customFeedbackOfType:v6 JSONDictionary:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (void)sendNewTabFeedback:(BOOL)a3
{
  v3 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher sendNewTabFeedback:v5];
  }

  [(WBSParsecDFeedbackDispatcher *)self searchViewAppearedBecauseOfEvent:8 forQueryID:+[WBSCompletionQuery usesLoweredSearchBar:"currentQueryID"], v3];
}

- (void)sendClearInputFeedbackWithTriggerEvent:(unint64_t)a3 forQueryID:(int64_t)a4
{
  v7 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher sendClearInputFeedbackWithTriggerEvent:v7 forQueryID:?];
  }

  v8 = [objc_alloc(MEMORY[0x1E69C9F30]) initWithEvent:a3];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v8 forQueryID:a4];
}

- (void)triggeredExperimentWithTreatmentId:(id)a3 withQueryID:(int64_t)a4 cfDiffered:(BOOL)a5 cfUsed:(BOOL)a6 cfError:(unint64_t)a7
{
  if (a3)
  {
    v9 = [objc_alloc(MEMORY[0x1E69CA098]) initWithCfDiffered:a5 cfUsed:a6 cfError:a7];
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v9 forQueryID:a4];
  }
}

- (void)triggeredExperimentWithTreatmentId:(id)a3 withQueryID:(int64_t)a4
{
  if (a3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA098]);
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v6 forQueryID:a4];
  }
}

- (void)_setStartSearchFeedback:(id)a3 forSearchOfType:(int64_t)a4 withQuery:(id)a5
{
  v8 = a3;
  v9 = a5;
  queriesToDictionariesMappingQueue = self->_queriesToDictionariesMappingQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__WBSParsecDFeedbackDispatcher__setStartSearchFeedback_forSearchOfType_withQuery___block_invoke;
  v13[3] = &unk_1E7FC6D98;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(queriesToDictionariesMappingQueue, v13);
}

void __82__WBSParsecDFeedbackDispatcher__setStartSearchFeedback_forSearchOfType_withQuery___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v4 = a1[4];
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(a1[4] + 8);
  }

  v6 = [v2 objectForKey:a1[5]];

  if (!v6)
  {
    v7 = *(a1[4] + 8);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v8 forKey:a1[5]];
  }

  v9 = a1[6];
  v11 = [*(a1[4] + 8) objectForKey:a1[5]];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  [v11 setObject:v9 forKeyedSubscript:v10];
}

- (id)_takeStartSearchFeedbackForSearchOfType:(int64_t)a3 forQuery:(id)a4
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__33;
  v21 = __Block_byref_object_dispose__33;
  v22 = 0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  queriesToDictionariesMappingQueue = self->_queriesToDictionariesMappingQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__WBSParsecDFeedbackDispatcher__takeStartSearchFeedbackForSearchOfType_forQuery___block_invoke;
  v13[3] = &unk_1E7FCA448;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queriesToDictionariesMappingQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __81__WBSParsecDFeedbackDispatcher__takeStartSearchFeedbackForSearchOfType_forQuery___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKey:a1[5]];
  v2 = [v5 objectForKeyedSubscript:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [v5 removeObjectForKey:a1[6]];
}

- (void)searchViewAppearedBecauseOfEvent:(unint64_t)a3 isSafariReaderAvailable:(BOOL)a4 forQueryID:(int64_t)a5 usesLoweredSearchBar:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = [objc_alloc(MEMORY[0x1E69CA3F8]) initWithEvent:a3];
  [v10 setReaderTextAvailable:v8];
  if (objc_opt_respondsToSelector())
  {
    [v10 setIsUsingLoweredSearchBar:v6];
  }

  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v10 forQueryID:a5];
}

- (void)searchViewDisappearedBecauseOfEvent:(int64_t)a3 forQueryID:(int64_t)a4
{
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    v7 = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryID];
    v8 = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:v7 queryString:v8];
  }

  v9 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:a3];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v9 forQueryID:a4];
}

- (void)userDidTypeKey:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69C9F40]) initWithEvent:@"com.apple.safari.keystroke" timeInterval:0 queryId:a3];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v5 forQueryID:a3];
}

- (void)userDidTapMicKey:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69C9F40]) initWithEvent:@"com.apple.safari.mictap" timeInterval:0 queryId:a3];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v5 forQueryID:a3];
}

- (void)postFeedback:(uint64_t)a1 forQueryID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Posting feedback to parsecd: %{private}@", &v2, 0xCu);
}

- (void)_customFeedbackOfType:(uint64_t)a3 JSONDictionary:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v7 = 134218242;
  v8 = a3;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to serialize feedback of type %lu with error %{public}@", &v7, 0x16u);
}

@end