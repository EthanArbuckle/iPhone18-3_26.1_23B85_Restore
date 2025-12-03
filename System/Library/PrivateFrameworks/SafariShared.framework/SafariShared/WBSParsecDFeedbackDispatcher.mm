@interface WBSParsecDFeedbackDispatcher
- (BOOL)_rankingFeedback:(id)feedback isShallowEqual:(id)equal;
- (WBSParsecDFeedbackDispatcher)initWithSession:(id)session;
- (id)_customFeedbackOfType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)_takeStartSearchFeedbackForSearchOfType:(int64_t)type forQuery:(id)query;
- (void)_postFeedbackOnFeedbackQueue:(id)queue forQueryID:(int64_t)d;
- (void)_postPendingVisibleResultsFeedbackEventsForQueryID:(int64_t)d queryString:(id)string;
- (void)_setStartSearchFeedback:(id)feedback forSearchOfType:(int64_t)type withQuery:(id)query;
- (void)dealloc;
- (void)didBeginSearchOfType:(int64_t)type withQuery:(id)query urlString:(id)string endpoint:(unint64_t)endpoint;
- (void)didDisplayCompletionListItems:(id)items forQuery:(id)query forEvent:(int64_t)event;
- (void)didGenerateCompletionListItemsWithRankingObserver:(id)observer forQueryID:(int64_t)d;
- (void)didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:(id)event;
- (void)didRankSections:(id)sections blendingDuration:(double)duration feedbackForHiddenAndDuplicateResults:(id)results forQueryID:(int64_t)d rankingFeedbackConfiguration:(id)configuration;
- (void)didReceiveParsecResultsAfterTimeout:(id)timeout;
- (void)didReceiveResultsForQuery:(id)query searchType:(int64_t)type;
- (void)postFeedback:(id)feedback forQueryID:(int64_t)d;
- (void)searchViewAppearedBecauseOfEvent:(unint64_t)event isSafariReaderAvailable:(BOOL)available forQueryID:(int64_t)d usesLoweredSearchBar:(BOOL)bar;
- (void)searchViewDisappearedBecauseOfEvent:(int64_t)event forQueryID:(int64_t)d;
- (void)sendClearInputFeedbackWithTriggerEvent:(unint64_t)event forQueryID:(int64_t)d;
- (void)sendNewTabFeedback:(BOOL)feedback;
- (void)triggeredExperimentWithTreatmentId:(id)id withQueryID:(int64_t)d;
- (void)triggeredExperimentWithTreatmentId:(id)id withQueryID:(int64_t)d cfDiffered:(BOOL)differed cfUsed:(BOOL)used cfError:(unint64_t)error;
- (void)userDidEngageWithCompletionListItem:(id)item onActionButton:(BOOL)button method:(int64_t)method doesMatchSiriSuggestion:(BOOL)suggestion voiceSearchQueryID:(id)d;
- (void)userDidTapMicKey:(int64_t)key;
- (void)userDidTypeKey:(int64_t)key;
- (void)userTypedGoToSearch:(id)search endpoint:(unint64_t)endpoint triggerEvent:(int64_t)event forQueryID:(int64_t)d;
- (void)userTypedURLDirectlyForQuery:(id)query triggerEvent:(int64_t)event;
@end

@implementation WBSParsecDFeedbackDispatcher

- (WBSParsecDFeedbackDispatcher)initWithSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = WBSParsecDFeedbackDispatcher;
  v5 = [(WBSParsecDFeedbackDispatcher *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v7 = v6;
    if (sessionCopy)
    {
      [(NSArray *)v6 addObject:sessionCopy];
    }

    feedbackListeners = v5->_feedbackListeners;
    v5->_feedbackListeners = v7;
    v9 = v7;

    array = [MEMORY[0x1E695DF70] array];
    visibleResultsFeedbackEventsToBeSent = v5->_visibleResultsFeedbackEventsToBeSent;
    v5->_visibleResultsFeedbackEventsToBeSent = array;

    array2 = [MEMORY[0x1E695DF70] array];
    previousRankingFeedbackEventsSentForCurrentQueryID = v5->_previousRankingFeedbackEventsSentForCurrentQueryID;
    v5->_previousRankingFeedbackEventsSentForCurrentQueryID = array2;

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

- (void)postFeedback:(id)feedback forQueryID:(int64_t)d
{
  feedbackCopy = feedback;
  v7 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Posting feedback to parsecd", buf, 2u);
  }

  v8 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher postFeedback:feedbackCopy forQueryID:v8];
    if (!feedbackCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!feedbackCopy)
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
    v11 = feedbackCopy;
    dCopy = d;
    dispatch_async(feedbackQueue, block);
  }

LABEL_7:
}

- (void)_postFeedbackOnFeedbackQueue:(id)queue forQueryID:(int64_t)d
{
  v17 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
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

        [*(*(&v12 + 1) + 8 * v11++) reportFeedback:queueCopy queryId:{d, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)didDisplayCompletionListItems:(id)items forQuery:(id)query forEvent:(int64_t)event
{
  queryCopy = query;
  v10 = [items safari_mapObjectsUsingBlock:&__block_literal_global_6];
  v11 = objc_alloc(MEMORY[0x1E69CA588]);
  if ((event - 1) > 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = *&asc_1BB9537B0[8 * event - 8];
  }

  v13 = [v11 initWithResults:v10 triggerEvent:v12];
  queryID = [queryCopy queryID];
  v15 = self->_previousQueryForVisibleResultsFeedback;
  objc_storeStrong(&self->_currentQueryForVisibleResultsFeedback, query);
  [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
  if (queryID != [(WBSCompletionQuery *)v15 queryID])
  {
    objc_storeStrong(&self->_previousQueryForVisibleResultsFeedback, query);
    if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
    {
      queryID2 = [(WBSCompletionQuery *)v15 queryID];
      queryString = [(WBSCompletionQuery *)v15 queryString];
      [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:queryID2 queryString:queryString];
    }
  }

  [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent addObject:v13];
  v18 = MEMORY[0x1E695DFF0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__WBSParsecDFeedbackDispatcher_didDisplayCompletionListItems_forQuery_forEvent___block_invoke_2;
  v22[3] = &unk_1E7FCA3B0;
  v23 = queryCopy;
  v24 = queryID;
  v22[4] = self;
  v19 = queryCopy;
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

- (void)_postPendingVisibleResultsFeedbackEventsForQueryID:(int64_t)d queryString:(id)string
{
  v6 = [MEMORY[0x1E695DFA8] set];
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent objectAtIndexedSubscript:v7];
      results = [v8 results];
      [v6 addObjectsFromArray:results];

      if (v7 == [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count]- 1)
      {
        allObjects = [v6 allObjects];
        [v8 setResults:allObjects];
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
      dCopy = d;
      v12 = v8;
      dispatch_async(feedbackQueue, block);

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count]);
  }

  [(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent removeAllObjects];
}

- (void)userDidEngageWithCompletionListItem:(id)item onActionButton:(BOOL)button method:(int64_t)method doesMatchSiriSuggestion:(BOOL)suggestion voiceSearchQueryID:(id)d
{
  suggestionCopy = suggestion;
  buttonCopy = button;
  itemCopy = item;
  dCopy = d;
  sfSearchResultValue = [itemCopy sfSearchResultValue];
  v14 = [sfSearchResultValue copy];

  if (v14)
  {
    if (objc_opt_respondsToSelector())
    {
      title = [v14 title];

      if (!title)
      {
        v16 = MEMORY[0x1E69CA4F0];
        siriSuggestion = [itemCopy siriSuggestion];
        title2 = [siriSuggestion title];
        v19 = [v16 textWithString:title2];
        [v14 setTitle:v19];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      engagementDestination = [itemCopy engagementDestination];
    }

    else
    {
      engagementDestination = 3;
    }

    v21 = 1;
    if (method != 1)
    {
      v21 = 2;
    }

    if (method == 2)
    {
      v22 = 20;
    }

    else
    {
      v22 = v21;
    }

    v23 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:v14 triggerEvent:v22 destination:engagementDestination];
    v24 = v23;
    if (buttonCopy)
    {
      [v23 setActionTarget:4];
    }

    if (objc_opt_respondsToSelector())
    {
      [v24 setMatchesUnengagedSuggestion:suggestionCopy];
    }

    queryID = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryID];
    if (method == 2)
    {
      intValue = [dCopy intValue];
    }

    else
    {
      intValue = queryID;
    }

    if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
    {
      [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
      queryString = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
      [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:intValue queryString:queryString];
    }

    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v24 forQueryID:intValue];
  }
}

- (void)userTypedURLDirectlyForQuery:(id)query triggerEvent:(int64_t)event
{
  queryCopy = query;
  v6 = objc_alloc(MEMORY[0x1E69CA030]);
  queryString = [queryCopy queryString];
  v8 = [v6 initWithInput:queryString];

  if (event == 1)
  {
    [v8 setTriggerEvent:20];
  }

  queryID = [queryCopy queryID];
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    queryString2 = [queryCopy queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:queryID queryString:queryString2];
  }

  -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v8, [queryCopy queryID]);
}

- (void)userTypedGoToSearch:(id)search endpoint:(unint64_t)endpoint triggerEvent:(int64_t)event forQueryID:(int64_t)d
{
  v10 = MEMORY[0x1E69CA028];
  searchCopy = search;
  v13 = [[v10 alloc] initWithInput:searchCopy endpoint:endpoint];

  if (event == 1)
  {
    [v13 setTriggerEvent:20];
  }

  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    queryString = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:d queryString:queryString];
  }

  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v13 forQueryID:d];
}

- (void)didReceiveResultsForQuery:(id)query searchType:(int64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v7 = [(WBSParsecDFeedbackDispatcher *)self _takeStartSearchFeedbackForSearchOfType:type forQuery:queryCopy];
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

      -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v8, [queryCopy queryID]);
    }
  }
}

- (void)didBeginSearchOfType:(int64_t)type withQuery:(id)query urlString:(id)string endpoint:(unint64_t)endpoint
{
  v28 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  stringCopy = string;
  triggerEvent = [queryCopy triggerEvent];
  if ([MEMORY[0x1E69C8880] defaultSearchEngineMatchesExperiment])
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = +[WBSTrialManager shared];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "trialABGroupIdentifier")}];
    stringValue = [v15 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  if (type == 2)
  {
    v23 = objc_alloc(MEMORY[0x1E69CA478]);
    queryString = [queryCopy queryString];
    v20 = [v23 initWithInput:queryString triggerEvent:9 searchType:1 indexType:0 queryId:objc_msgSend(queryCopy originatingApp:{"queryID"), stringValue}];
    v21 = @"recent searches";
  }

  else if (type == 1)
  {
    v22 = objc_alloc(MEMORY[0x1E69CA478]);
    queryString = [queryCopy queryString];
    v20 = [v22 initWithInput:queryString triggerEvent:triggerEvent searchType:2 indexType:5 queryId:objc_msgSend(queryCopy originatingApp:{"queryID"), stringValue}];
    v21 = @"bookmarks/history";
  }

  else
  {
    if (type)
    {
      goto LABEL_16;
    }

    v17 = objc_alloc(MEMORY[0x1E69CA480]);
    queryString = [queryCopy queryString];
    queryID = [queryCopy queryID];
    v20 = [v17 initWithInput:queryString url:stringCopy headers:MEMORY[0x1E695E0F8] triggerEvent:triggerEvent endpoint:endpoint queryId:queryID];
    v21 = @"search engine";
  }

  if (v20)
  {
    [(WBSParsecDFeedbackDispatcher *)self _setStartSearchFeedback:v20 forSearchOfType:type withQuery:queryCopy];
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

    -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v20, [queryCopy queryID]);
  }

LABEL_16:
}

- (void)didGenerateCompletionListItemsWithRankingObserver:(id)observer forQueryID:(int64_t)d
{
  rankingFeedback = [observer rankingFeedback];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:rankingFeedback forQueryID:d];
}

- (void)didRankSections:(id)sections blendingDuration:(double)duration feedbackForHiddenAndDuplicateResults:(id)results forQueryID:(int64_t)d rankingFeedbackConfiguration:(id)configuration
{
  v50[1] = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  resultsCopy = results;
  configurationCopy = configuration;
  if ([sectionsCopy count])
  {
    prefixNavigationalIntent = [configurationCopy prefixNavigationalIntent];
    if (prefixNavigationalIntent)
    {
      v16 = MEMORY[0x1E696AD98];
      [configurationCopy prefixNavigationalIntent];
      v18 = v17 = d;
      [v18 floatValue];
      *&v20 = v19 / 100.0;
      v21 = [v16 numberWithFloat:v20];

      d = v17;
    }

    else
    {
      v21 = &unk_1F3A9B000;
    }

    if ([configurationCopy serverCompletionDidMatchFirstSearchSuggestionFrom3rdParty])
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
    v39 = resultsCopy;
    v47 = resultsCopy;
    v37 = [sectionsCopy safari_mapAndFilterObjectsWithOptions:0 usingBlock:v44];
    v25 = [objc_alloc(MEMORY[0x1E69CA340]) initWithSections:v37 blendingDuration:duration];
    hiddenSiriSuggestedSite = [configurationCopy hiddenSiriSuggestedSite];
    v27 = hiddenSiriSuggestedSite;
    if (hiddenSiriSuggestedSite)
    {
      [hiddenSiriSuggestedSite setThirdPartyNavigationIntentScore:v24];
      [v27 setThirdPartyQueryCompletionMatched:v22];
      v50[0] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      [v25 setHiddenResults:v28];
    }

    if (self->_previousQueryIDForRankedResultsFeedback != d)
    {
      array = [MEMORY[0x1E695DF70] array];
      previousRankingFeedbackEventsSentForCurrentQueryID = self->_previousRankingFeedbackEventsSentForCurrentQueryID;
      self->_previousRankingFeedbackEventsSentForCurrentQueryID = array;

      self->_previousQueryIDForRankedResultsFeedback = d;
    }

    dCopy = d;
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

          if ([(WBSParsecDFeedbackDispatcher *)self _rankingFeedback:v25 isShallowEqual:*(*(&v40 + 1) + 8 * i), dCopy])
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
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v25 forQueryID:dCopy];
LABEL_22:

    resultsCopy = v39;
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

- (BOOL)_rankingFeedback:(id)feedback isShallowEqual:(id)equal
{
  feedbackCopy = feedback;
  equalCopy = equal;
  queryId = [feedbackCopy queryId];
  v54 = equalCopy;
  if (queryId != [equalCopy queryId])
  {
    goto LABEL_4;
  }

  sections = [feedbackCopy sections];
  if ([sections count])
  {
    sections2 = [feedbackCopy sections];
    v10 = [sections2 count];
    sections3 = [v54 sections];
    v12 = [sections3 count];

    if (v10 != v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  sections4 = [feedbackCopy sections];
  v16 = [sections4 count];

  if (!v16)
  {
    v13 = 1;
    goto LABEL_5;
  }

  v17 = 0;
  v53 = feedbackCopy;
  while (1)
  {
    sections5 = [feedbackCopy sections];
    v18 = [sections5 objectAtIndexedSubscript:v17];
    section = [v18 section];
    identifier = [section identifier];
    sections6 = [v54 sections];
    v22 = [sections6 objectAtIndexedSubscript:v17];
    section2 = [v22 section];
    identifier2 = [section2 identifier];
    v25 = [identifier isEqualToString:identifier2];

    if (!v25)
    {
      break;
    }

    sections7 = [feedbackCopy sections];
    v27 = [sections7 objectAtIndexedSubscript:v17];
    results = [v27 results];
    if ([results count])
    {
      sections8 = [feedbackCopy sections];
      v29 = [sections8 objectAtIndexedSubscript:v17];
      results2 = [v29 results];
      v62 = [results2 count];
      sections9 = [v54 sections];
      v32 = [sections9 objectAtIndexedSubscript:v17];
      results3 = [v32 results];
      v57 = [results3 count];

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
      sections10 = [feedbackCopy sections];
      v36 = [sections10 objectAtIndexedSubscript:v17];
      results4 = [v36 results];
      v38 = [results4 count];

      if (v34 >= v38)
      {
        break;
      }

      sections11 = [feedbackCopy sections];
      v60 = [sections11 objectAtIndexedSubscript:v17];
      results5 = [v60 results];
      v56 = [results5 objectAtIndexedSubscript:v34];
      result = [v56 result];
      identifier3 = [result identifier];
      sections12 = [v54 sections];
      v42 = [sections12 objectAtIndexedSubscript:v17];
      [v42 results];
      v44 = v43 = v17;
      v45 = [v44 objectAtIndexedSubscript:v34];
      result2 = [v45 result];
      identifier4 = [result2 identifier];
      v55 = [identifier3 isEqualToString:identifier4];

      v17 = v43;
      feedbackCopy = v53;

      ++v34;
      if ((v55 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v48 = v17 + 1;
    [feedbackCopy sections];
    v50 = v49 = feedbackCopy;
    v51 = [v50 count];

    feedbackCopy = v49;
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

- (void)didReceiveParsecResultsAfterTimeout:(id)timeout
{
  timeoutCopy = timeout;
  if ([timeoutCopy count])
  {
    v4 = [timeoutCopy safari_mapObjectsUsingBlock:&__block_literal_global_47];
    v5 = [objc_alloc(MEMORY[0x1E69CA398]) initWithResults:v4];
    firstObject = [timeoutCopy firstObject];
    -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", v5, [firstObject parsecQueryID]);
  }
}

- (void)didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:(id)event
{
  eventCopy = event;
  -[WBSParsecDFeedbackDispatcher postFeedback:forQueryID:](self, "postFeedback:forQueryID:", eventCopy, [eventCopy queryId]);
}

- (id)_customFeedbackOfType:(unint64_t)type JSONDictionary:(id)dictionary
{
  v10 = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69CA008]) initWithType:type data:v5];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXParsec();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSParsecDFeedbackDispatcher *)v8 _customFeedbackOfType:v6 JSONDictionary:type];
    }

    v7 = 0;
  }

  return v7;
}

- (void)sendNewTabFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  v5 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher sendNewTabFeedback:v5];
  }

  [(WBSParsecDFeedbackDispatcher *)self searchViewAppearedBecauseOfEvent:8 forQueryID:+[WBSCompletionQuery usesLoweredSearchBar:"currentQueryID"], feedbackCopy];
}

- (void)sendClearInputFeedbackWithTriggerEvent:(unint64_t)event forQueryID:(int64_t)d
{
  v7 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBSParsecDFeedbackDispatcher sendClearInputFeedbackWithTriggerEvent:v7 forQueryID:?];
  }

  v8 = [objc_alloc(MEMORY[0x1E69C9F30]) initWithEvent:event];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v8 forQueryID:d];
}

- (void)triggeredExperimentWithTreatmentId:(id)id withQueryID:(int64_t)d cfDiffered:(BOOL)differed cfUsed:(BOOL)used cfError:(unint64_t)error
{
  if (id)
  {
    v9 = [objc_alloc(MEMORY[0x1E69CA098]) initWithCfDiffered:differed cfUsed:used cfError:error];
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v9 forQueryID:d];
  }
}

- (void)triggeredExperimentWithTreatmentId:(id)id withQueryID:(int64_t)d
{
  if (id)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA098]);
    [(WBSParsecDFeedbackDispatcher *)self postFeedback:v6 forQueryID:d];
  }
}

- (void)_setStartSearchFeedback:(id)feedback forSearchOfType:(int64_t)type withQuery:(id)query
{
  feedbackCopy = feedback;
  queryCopy = query;
  queriesToDictionariesMappingQueue = self->_queriesToDictionariesMappingQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__WBSParsecDFeedbackDispatcher__setStartSearchFeedback_forSearchOfType_withQuery___block_invoke;
  v13[3] = &unk_1E7FC6D98;
  v13[4] = self;
  v14 = queryCopy;
  v15 = feedbackCopy;
  typeCopy = type;
  v11 = feedbackCopy;
  v12 = queryCopy;
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

- (id)_takeStartSearchFeedbackForSearchOfType:(int64_t)type forQuery:(id)query
{
  queryCopy = query;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__33;
  v21 = __Block_byref_object_dispose__33;
  v22 = 0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  queriesToDictionariesMappingQueue = self->_queriesToDictionariesMappingQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__WBSParsecDFeedbackDispatcher__takeStartSearchFeedbackForSearchOfType_forQuery___block_invoke;
  v13[3] = &unk_1E7FCA448;
  v13[4] = self;
  v14 = queryCopy;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = queryCopy;
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

- (void)searchViewAppearedBecauseOfEvent:(unint64_t)event isSafariReaderAvailable:(BOOL)available forQueryID:(int64_t)d usesLoweredSearchBar:(BOOL)bar
{
  barCopy = bar;
  availableCopy = available;
  v10 = [objc_alloc(MEMORY[0x1E69CA3F8]) initWithEvent:event];
  [v10 setReaderTextAvailable:availableCopy];
  if (objc_opt_respondsToSelector())
  {
    [v10 setIsUsingLoweredSearchBar:barCopy];
  }

  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v10 forQueryID:d];
}

- (void)searchViewDisappearedBecauseOfEvent:(int64_t)event forQueryID:(int64_t)d
{
  if ([(NSMutableArray *)self->_visibleResultsFeedbackEventsToBeSent count])
  {
    [(NSTimer *)self->_sendPendingVisibleResultsFeedbackFeedbackEventsTimer invalidate];
    queryID = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryID];
    queryString = [(WBSCompletionQuery *)self->_currentQueryForVisibleResultsFeedback queryString];
    [(WBSParsecDFeedbackDispatcher *)self _postPendingVisibleResultsFeedbackEventsForQueryID:queryID queryString:queryString];
  }

  v9 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:event];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v9 forQueryID:d];
}

- (void)userDidTypeKey:(int64_t)key
{
  v5 = [objc_alloc(MEMORY[0x1E69C9F40]) initWithEvent:@"com.apple.safari.keystroke" timeInterval:0 queryId:key];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v5 forQueryID:key];
}

- (void)userDidTapMicKey:(int64_t)key
{
  v5 = [objc_alloc(MEMORY[0x1E69C9F40]) initWithEvent:@"com.apple.safari.mictap" timeInterval:0 queryId:key];
  [(WBSParsecDFeedbackDispatcher *)self postFeedback:v5 forQueryID:key];
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