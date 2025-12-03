@interface SPKQuery
- (BOOL)shouldReturnEarly;
- (NSArray)childQueries;
- (NSString)unmodifiedUserQueryString;
- (SFFeedbackListener)feedbackListener;
- (SPKQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context;
- (SPKQuery)parentQuery;
- (SPKQueryDelegate)delegate;
- (id)description;
- (id)responseHandler;
- (void)_queryWillStart;
- (void)addChildQuery:(id)query;
- (void)cancel;
- (void)sendEndLocalSearchFeedback;
- (void)sendStartLocalSearchFeedback;
- (void)start;
@end

@implementation SPKQuery

- (SPKQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context
{
  queryCopy = query;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SPKQuery;
  v13 = [(SPKQuery *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_queryId = ++gQueryId;
    v13->_queryGroupId = id;
    objc_storeStrong(&v13->_userQueryString, query);
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [queryCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    trimmedUserQueryString = v14->_trimmedUserQueryString;
    v14->_trimmedUserQueryString = v16;

    v14->_queryOptions = options;
    v14->_queryStartTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v14->_queryContext, context);
    v14->_wantsSuggestions = [contextCopy queryKind] == 2;
    v14->_queryState = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  queryId = [(SPKQuery *)self queryId];
  queryState = [(SPKQuery *)self queryState];
  if (queryState > 6)
  {
    v8 = @"unknown state";
  }

  else
  {
    v8 = off_1E85954F8[queryState];
  }

  userQueryString = [(SPKQuery *)self userQueryString];
  queryContext = [(SPKQuery *)self queryContext];
  v11 = SSRedactStringClient(userQueryString, 1, [queryContext isSearchToolClient]);
  v12 = [v3 stringWithFormat:@"<%@>[%p] (%lu:%@ - %@)", v5, self, queryId, v8, v11];

  return v12;
}

- (NSString)unmodifiedUserQueryString
{
  internalUnmodifiedUserQueryString = [(SPKQuery *)self internalUnmodifiedUserQueryString];
  v4 = internalUnmodifiedUserQueryString;
  if (internalUnmodifiedUserQueryString)
  {
    userQueryString = internalUnmodifiedUserQueryString;
  }

  else
  {
    userQueryString = [(SPKQuery *)self userQueryString];
  }

  v6 = userQueryString;

  return v6;
}

- (id)responseHandler
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__SPKQuery_responseHandler__block_invoke;
  aBlock[3] = &unk_1E85954D8;
  objc_copyWeak(&v6, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __27__SPKQuery_responseHandler__block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained || ([WeakRetained isCanceled] & 1) != 0)
  {
    goto LABEL_29;
  }

  v6 = [v3 userQueryString];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 userQueryString];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 userQueryString];
      v11 = [v3 userQueryString];
      if (([v10 isEqualToString:v11] & 1) == 0)
      {
        v43 = [v3 isRewrite];

        if ((v43 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v46 = v5;
  v47 = a1;
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = v3;
  v12 = [v3 sections];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = [v19 bundleIdentifier];

        if (v20)
        {
          v21 = MEMORY[0x1E696AD98];
          v22 = [v19 results];
          v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
          v24 = [v19 bundleIdentifier];
          [v48 setObject:v23 forKeyedSubscript:v24];

          v25 = [v19 results];
          v15 += [v25 count];

          ++v16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v49 objects:v71 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v27 = v26;
  [*(v47 + 32) startTime];
  v29 = v28;
  v30 = SSGeneralLog();
  v3 = v45;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v46 queryGroupId];
    v31 = [v46 userQueryString];
    v32 = [v46 queryContext];
    v33 = SSRedactStringClient(v31, 0, [v32 isSearchToolClient]);
    v34 = SPKStringFromSourceKind([v45 sourceKind]);
    v35 = SPKStringFromResponseKind([v45 kind]);
    v36 = [v45 topHitIsIn];
    *buf = 134220034;
    v54 = v44;
    v55 = 2112;
    v56 = v33;
    v57 = 2112;
    v58 = v34;
    v59 = 2112;
    v60 = v35;
    v61 = 2048;
    v62 = (v27 - v29) * 1000.0;
    v63 = 1024;
    v64 = v36;
    v65 = 2048;
    v66 = v15;
    v67 = 2048;
    v68 = v16;
    v69 = 2112;
    v70 = v48;
    _os_log_impl(&dword_1D9F69000, v30, OS_LOG_TYPE_DEFAULT, "[qid=%lu][%@][%@][%@] Sending response (time=%.3fms) with topHitIsIn:%d #(total):%lu #(sections):%lu section:%@", buf, 0x58u);
  }

  v5 = v46;
  v37 = [v46 delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [v46 delegate];
    [v39 delayResponse:v45 forQuery:v46];
  }

  v40 = [v45 kind];
  if (v40)
  {
    if (v40 == 6 || v40 == 4)
    {
      [v46 _queryDidComplete];
    }
  }

  else
  {
    [v46 setQueryState:6];
  }

  [*(v47 + 32) sendEndLocalSearchFeedback];
  v41 = [v46 delegate];
  [v41 queryTask:v46 gotResponse:v45];

LABEL_29:
  v42 = *MEMORY[0x1E69E9840];
}

- (NSArray)childQueries
{
  v2 = [(NSMutableArray *)self->_childQueries copy];

  return v2;
}

- (void)addChildQuery:(id)query
{
  queryCopy = query;
  v7 = queryCopy;
  if (!self->_childQueries)
  {
    v5 = objc_opt_new();
    childQueries = self->_childQueries;
    self->_childQueries = v5;

    queryCopy = v7;
  }

  [queryCopy setParentQuery:self];
  [(NSMutableArray *)self->_childQueries addObject:v7];
}

- (BOOL)shouldReturnEarly
{
  queryContext = [(SPKQuery *)self queryContext];
  searchDomains = [queryContext searchDomains];

  searchDomain = [objc_opt_class() searchDomain];
  if ([searchDomains count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:searchDomain];
    v6 = [searchDomains containsObject:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)sendStartLocalSearchFeedback
{
  feedbackListener = [(SPKQuery *)self feedbackListener];
  if (feedbackListener)
  {
    v32 = feedbackListener;
    queryContext = [(SPKQuery *)self queryContext];
    if ([queryContext isSearchToolClient])
    {
      [(SPKQuery *)self setStartLocalSearchFeedback:0];
LABEL_18:

      feedbackListener = v32;
      goto LABEL_19;
    }

    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];
    command = [firstObject command];
    v8 = [command copy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = v10;
    if (v10)
    {
      [v10 setSearchString:0];
      [v11 setTokenString:0];
      v12 = objc_alloc(MEMORY[0x1E69CA478]);
      whyQuery = [queryContext whyQuery];
      queryContext2 = [(SPKQuery *)self queryContext];
      queryIdent = [queryContext2 queryIdent];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v18 = [v12 initWithEntityQueryCommand:v11 triggerEvent:whyQuery searchType:3 indexType:1 queryId:queryIdent originatingApp:bundleIdentifier];
      [(SPKQuery *)self setStartLocalSearchFeedback:v18];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E69CA478]);
      queryContext2 = [queryContext searchString];
      mainBundle = [v19 initWithInput:queryContext2 triggerEvent:objc_msgSend(queryContext indexType:{"whyQuery"), 1}];
      [(SPKQuery *)self setStartLocalSearchFeedback:mainBundle];
    }

    queryIdent2 = [queryContext queryIdent];
    startLocalSearchFeedback = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback setQueryId:queryIdent2];

    v22 = SPQueryKindToSFSpotlightBrowsingSearchScope([queryContext queryKind]);
    startLocalSearchFeedback2 = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback2 setSpotlightBrowsingSearchScope:v22];

    searchString = [queryContext searchString];
    startLocalSearchFeedback3 = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback3 setInput:searchString];

    queryKind = [queryContext queryKind];
    startLocalSearchFeedback4 = [(SPKQuery *)self startLocalSearchFeedback];
    input = [startLocalSearchFeedback4 input];
    if ([input length])
    {
      searchEntities2 = [queryContext searchEntities];
      v30 = [searchEntities2 count];

      if (!v30 && (queryKind > 0x11 || ((1 << queryKind) & 0x27000) == 0))
      {
        goto LABEL_17;
      }

      startLocalSearchFeedback4 = [(SPKQuery *)self startLocalSearchFeedback];
      [startLocalSearchFeedback4 setInput:@"(redacted)"];
    }

    else
    {
    }

LABEL_17:
    startLocalSearchFeedback5 = [(SPKQuery *)self startLocalSearchFeedback];
    [v32 didStartSearch:startLocalSearchFeedback5];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)sendEndLocalSearchFeedback
{
  startLocalSearchFeedback = [(SPKQuery *)self startLocalSearchFeedback];

  if (startLocalSearchFeedback)
  {
    v4 = objc_alloc(MEMORY[0x1E69CA058]);
    startLocalSearchFeedback2 = [(SPKQuery *)self startLocalSearchFeedback];
    v7 = [v4 initWithStartSearch:startLocalSearchFeedback2];

    [(SPKQuery *)self setStartLocalSearchFeedback:0];
    feedbackListener = [(SPKQuery *)self feedbackListener];
    [feedbackListener didEndSearch:v7];
  }
}

- (void)start
{
  if (![(SPKQuery *)self isStarted])
  {
    [(SPKQuery *)self _queryWillStart];
    if (![(SPKQuery *)self isParsecQuery])
    {

      [(SPKQuery *)self sendStartLocalSearchFeedback];
    }
  }
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  [(SPKQuery *)self setQueryState:5];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childQueries = [(SPKQuery *)self childQueries];
  v4 = [childQueries countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childQueries);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [childQueries countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(SPKQuery *)self sendEndLocalSearchFeedback];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queryWillStart
{
  [(SPKQuery *)self setQueryState:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_startTime = v3;
}

- (SFFeedbackListener)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

- (SPKQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SPKQuery)parentQuery
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuery);

  return WeakRetained;
}

@end