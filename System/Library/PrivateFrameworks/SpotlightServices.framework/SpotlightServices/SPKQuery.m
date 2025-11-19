@interface SPKQuery
- (BOOL)shouldReturnEarly;
- (NSArray)childQueries;
- (NSString)unmodifiedUserQueryString;
- (SFFeedbackListener)feedbackListener;
- (SPKQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6;
- (SPKQuery)parentQuery;
- (SPKQueryDelegate)delegate;
- (id)description;
- (id)responseHandler;
- (void)_queryWillStart;
- (void)addChildQuery:(id)a3;
- (void)cancel;
- (void)sendEndLocalSearchFeedback;
- (void)sendStartLocalSearchFeedback;
- (void)start;
@end

@implementation SPKQuery

- (SPKQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6
{
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = SPKQuery;
  v13 = [(SPKQuery *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_queryId = ++gQueryId;
    v13->_queryGroupId = a4;
    objc_storeStrong(&v13->_userQueryString, a3);
    v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [v11 stringByTrimmingCharactersInSet:v15];
    trimmedUserQueryString = v14->_trimmedUserQueryString;
    v14->_trimmedUserQueryString = v16;

    v14->_queryOptions = a5;
    v14->_queryStartTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v14->_queryContext, a6);
    v14->_wantsSuggestions = [v12 queryKind] == 2;
    v14->_queryState = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SPKQuery *)self queryId];
  v7 = [(SPKQuery *)self queryState];
  if (v7 > 6)
  {
    v8 = @"unknown state";
  }

  else
  {
    v8 = off_1E85954F8[v7];
  }

  v9 = [(SPKQuery *)self userQueryString];
  v10 = [(SPKQuery *)self queryContext];
  v11 = SSRedactStringClient(v9, 1, [v10 isSearchToolClient]);
  v12 = [v3 stringWithFormat:@"<%@>[%p] (%lu:%@ - %@)", v5, self, v6, v8, v11];

  return v12;
}

- (NSString)unmodifiedUserQueryString
{
  v3 = [(SPKQuery *)self internalUnmodifiedUserQueryString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SPKQuery *)self userQueryString];
  }

  v6 = v5;

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

- (void)addChildQuery:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!self->_childQueries)
  {
    v5 = objc_opt_new();
    childQueries = self->_childQueries;
    self->_childQueries = v5;

    v4 = v7;
  }

  [v4 setParentQuery:self];
  [(NSMutableArray *)self->_childQueries addObject:v7];
}

- (BOOL)shouldReturnEarly
{
  v2 = [(SPKQuery *)self queryContext];
  v3 = [v2 searchDomains];

  v4 = [objc_opt_class() searchDomain];
  if ([v3 count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v6 = [v3 containsObject:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)sendStartLocalSearchFeedback
{
  v3 = [(SPKQuery *)self feedbackListener];
  if (v3)
  {
    v32 = v3;
    v4 = [(SPKQuery *)self queryContext];
    if ([v4 isSearchToolClient])
    {
      [(SPKQuery *)self setStartLocalSearchFeedback:0];
LABEL_18:

      v3 = v32;
      goto LABEL_19;
    }

    v5 = [v4 searchEntities];
    v6 = [v5 firstObject];
    v7 = [v6 command];
    v8 = [v7 copy];

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
      v13 = [v4 whyQuery];
      v14 = [(SPKQuery *)self queryContext];
      v15 = [v14 queryIdent];
      v16 = [MEMORY[0x1E696AAE8] mainBundle];
      v17 = [v16 bundleIdentifier];
      v18 = [v12 initWithEntityQueryCommand:v11 triggerEvent:v13 searchType:3 indexType:1 queryId:v15 originatingApp:v17];
      [(SPKQuery *)self setStartLocalSearchFeedback:v18];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E69CA478]);
      v14 = [v4 searchString];
      v16 = [v19 initWithInput:v14 triggerEvent:objc_msgSend(v4 indexType:{"whyQuery"), 1}];
      [(SPKQuery *)self setStartLocalSearchFeedback:v16];
    }

    v20 = [v4 queryIdent];
    v21 = [(SPKQuery *)self startLocalSearchFeedback];
    [v21 setQueryId:v20];

    v22 = SPQueryKindToSFSpotlightBrowsingSearchScope([v4 queryKind]);
    v23 = [(SPKQuery *)self startLocalSearchFeedback];
    [v23 setSpotlightBrowsingSearchScope:v22];

    v24 = [v4 searchString];
    v25 = [(SPKQuery *)self startLocalSearchFeedback];
    [v25 setInput:v24];

    v26 = [v4 queryKind];
    v27 = [(SPKQuery *)self startLocalSearchFeedback];
    v28 = [v27 input];
    if ([v28 length])
    {
      v29 = [v4 searchEntities];
      v30 = [v29 count];

      if (!v30 && (v26 > 0x11 || ((1 << v26) & 0x27000) == 0))
      {
        goto LABEL_17;
      }

      v27 = [(SPKQuery *)self startLocalSearchFeedback];
      [v27 setInput:@"(redacted)"];
    }

    else
    {
    }

LABEL_17:
    v31 = [(SPKQuery *)self startLocalSearchFeedback];
    [v32 didStartSearch:v31];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)sendEndLocalSearchFeedback
{
  v3 = [(SPKQuery *)self startLocalSearchFeedback];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69CA058]);
    v5 = [(SPKQuery *)self startLocalSearchFeedback];
    v7 = [v4 initWithStartSearch:v5];

    [(SPKQuery *)self setStartLocalSearchFeedback:0];
    v6 = [(SPKQuery *)self feedbackListener];
    [v6 didEndSearch:v7];
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
  v3 = [(SPKQuery *)self childQueries];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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