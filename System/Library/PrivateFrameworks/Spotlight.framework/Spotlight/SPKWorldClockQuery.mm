@interface SPKWorldClockQuery
- (void)start;
@end

@implementation SPKWorldClockQuery

- (void)start
{
  v22.receiver = self;
  v22.super_class = SPKWorldClockQuery;
  [(SPKQuery *)&v22 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:7])
  {
    userQueryString = [(SPKQuery *)self userQueryString];
    v4 = [userQueryString mutableCopy];

    if (v4)
    {
      queryContext = [(SPKQuery *)self queryContext];
      delegate = [(SPKQuery *)self delegate];
      queryIdent = [delegate queryIdent];
      clientBundleID = [delegate clientBundleID];
      searchString = [queryContext searchString];
      v10 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:searchString triggerEvent:objc_msgSend(queryContext indexType:"whyQuery") queryId:{1, queryIdent}];
      mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
      [mEMORY[0x277D4BEC0] sendFeedbackType:5 feedback:v10 queryId:queryIdent clientID:clientBundleID];

      v12 = MEMORY[0x277D659D0];
      queryGroupId = [(SPKQuery *)self queryGroupId];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __27__SPKWorldClockQuery_start__block_invoke;
      v18[3] = &unk_279CFE718;
      v18[4] = self;
      v19 = v10;
      v20 = clientBundleID;
      v21 = queryIdent;
      v14 = clientBundleID;
      v15 = v10;
      [v12 getWorldClockResultsForQuery:v4 queryID:queryGroupId completionHandler:v18];
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D65860]);
      queryGroupId2 = [(SPKQuery *)self queryGroupId];
      queryContext = [v16 initWithQueryID:queryGroupId2 sourceKind:7 sections:MEMORY[0x277CBEBF8]];
      delegate = [(SPKQuery *)self responseHandler];
      (delegate)[2](delegate, queryContext);
    }
  }
}

void __27__SPKWorldClockQuery_start__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v3 results];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v17 + 1) + 8 * v8++) setQueryId:{objc_msgSend(*(a1 + 32), "queryGroupId")}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v6);
    }

    v9 = objc_alloc(MEMORY[0x277D65860]);
    v10 = [*(a1 + 32) queryGroupId];
    if (v3)
    {
      v21 = v3;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v12 = [v9 initWithQueryID:v10 sourceKind:7 sections:v11];
    }

    else
    {
      v12 = [v9 initWithQueryID:v10 sourceKind:7 sections:MEMORY[0x277CBEBF8]];
    }

    [v12 setTopHitIsIn:1];
    v13 = [*(a1 + 32) responseHandler];
    (v13)[2](v13, v12);

    v14 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:*(a1 + 40)];
    v15 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v15 sendFeedbackType:6 feedback:v14 queryId:*(a1 + 56) clientID:*(a1 + 48)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end