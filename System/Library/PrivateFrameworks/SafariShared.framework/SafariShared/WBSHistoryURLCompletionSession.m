@interface WBSHistoryURLCompletionSession
- (WBSHistoryURLCompletionSession)initWithHistoryService:(id)a3;
- (id)_matchSnapshotForCompletionMatch:(id)a3;
- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5;
- (void)_ensureDatabaseIsWarmed;
- (void)_getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8;
- (void)enumerateMatchDataForTypedStringHint:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 options:(unint64_t)a5 withBlock:(id)a6;
- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8;
@end

@implementation WBSHistoryURLCompletionSession

- (WBSHistoryURLCompletionSession)initWithHistoryService:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSHistoryURLCompletionSession;
  v6 = [(WBSHistoryURLCompletionSession *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyService, a3);
    v8 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryURLCompletionSession", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = v7;
  }

  return v7;
}

- (id)_matchSnapshotForCompletionMatch:(id)a3
{
  v3 = a3;
  if ([v3 matchLocation] == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v3 originalURLString];
    v7 = [v5 safari_URLWithDataAsString:v6];

    matched = _SSURLCompletionMatchLocationForWBSURLCompletionMatchLocation([v3 matchLocation]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v3 data];
      v10 = MEMORY[0x1E695DF00];
      [v9 lastVisitedTimeInterval];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      if (objc_opt_respondsToSelector())
      {
        v12 = [v9 visitCount];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = [WBSURLCompletionMatchSnapshot alloc];
    v14 = [v3 title];
    v4 = -[WBSURLCompletionMatchSnapshot initWithURL:title:matchLocation:isTopHit:isSynthesizedTopHit:isTopHitDueToTriggerMatch:visitCount:lastVisitTime:](v13, "initWithURL:title:matchLocation:isTopHit:isSynthesizedTopHit:isTopHitDueToTriggerMatch:visitCount:lastVisitTime:", v7, v14, matched, [v3 isTopHit], 0, 0, v12, v11);
  }

  return v4;
}

- (void)_getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  urlCompletionDatabase = self->_urlCompletionDatabase;
  v23 = 0;
  v22 = 0;
  [(WBSURLCompletionDatabase *)urlCompletionDatabase getBestMatchesForTypedString:a3 filterResultsUsingProfileIdentifier:a4 topHits:&v23 matches:&v22 limit:a5 forQueryID:a6 withSearchParameters:a7];
  v16 = v23;
  v17 = v22;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __156__WBSHistoryURLCompletionSession__getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC8440;
  v21[4] = self;
  v18 = [v16 safari_mapObjectsUsingBlock:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __156__WBSHistoryURLCompletionSession__getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7FC8440;
  v20[4] = self;
  v19 = [v17 safari_mapObjectsUsingBlock:v20];
  v14[2](v14, v18, v19, 0);
}

id __156__WBSHistoryURLCompletionSession__getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _matchSnapshotForCompletionMatch:a2];

  return v2;
}

id __156__WBSHistoryURLCompletionSession__getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _matchSnapshotForCompletionMatch:a2];

  return v2;
}

- (void)_ensureDatabaseIsWarmed
{
  v3 = dispatch_semaphore_create(0);
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__WBSHistoryURLCompletionSession__ensureDatabaseIsWarmed__block_invoke;
  v6[3] = &unk_1E7FB78D8;
  v7 = v3;
  v5 = v3;
  [(WBSHistoryServiceDatabase *)database ensureLatestVisitsAreComputed:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = dispatch_group_create();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v18 = [MEMORY[0x1E696B0B8] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke;
  block[3] = &unk_1E7FB8860;
  block[4] = self;
  v38 = v18;
  v40 = v41;
  v20 = v16;
  v39 = v20;
  v21 = v18;
  dispatch_group_async(v17, internalQueue, block);
  v22 = qos_class_self();
  v23 = dispatch_get_global_queue(v22, 0);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_3;
  v29[3] = &unk_1E7FC8490;
  v29[4] = self;
  v30 = v13;
  v35 = a5;
  v36 = a6;
  v31 = v14;
  v32 = v15;
  v33 = v20;
  v34 = v41;
  v24 = v20;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  dispatch_group_notify(v17, v23, v29);

  _Block_object_dispose(v41, 8);
}

void __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {

    [v2 _ensureDatabaseIsWarmed];
  }

  else
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 32);
    v5 = v4[1];
    v6 = [v4 _databaseConnectionOptions];
    v7 = *(a1 + 40);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_2;
    v13 = &unk_1E7FC8468;
    v17 = *(a1 + 56);
    v8 = v3;
    v14 = v8;
    v9 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = v9;
    [v5 connectWithOptions:v6 connection:v7 completionHandler:&v10];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [*(a1 + 32) _ensureDatabaseIsWarmed];
  }
}

void __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (!v10 || v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 32));
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(WBSURLCompletionDatabase);
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    [*(*(a1 + 40) + 32) setDataSource:?];
    objc_storeStrong((*(a1 + 40) + 24), a2);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

uint64_t __155__WBSHistoryURLCompletionSession_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_3(uint64_t result)
{
  if ((*(*(*(result + 72) + 8) + 24) & 1) == 0)
  {
    return [*(result + 32) _getBestMatchesForTypedString:*(result + 40) filterResultsUsingProfileIdentifier:*(result + 48) limit:*(result + 80) forQueryID:*(result + 88) withSearchParameters:*(result + 56) completionHandler:*(result + 64)];
  }

  return result;
}

- (void)enumerateMatchDataForTypedStringHint:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 options:(unint64_t)a5 withBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryURLCompletionSession.enumerateMatchDataForTypedStringHint", 0);
  v12 = dispatch_group_create();
  v13 = [(WBSHistoryServiceDatabase *)self->_database urlCompletion];
  v14 = [MEMORY[0x1E695DF00] date];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __125__WBSHistoryURLCompletionSession_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke;
  v20[3] = &unk_1E7FC84B8;
  v17 = v12;
  v21 = v17;
  v18 = v11;
  v22 = v18;
  v19 = v10;
  v23 = v19;
  [v13 searchForUserTypedString:v9 options:a5 currentTime:v17 enumerationGroup:v20 enumerationBlock:v16];

  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
}

void __125__WBSHistoryURLCompletionSession_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __125__WBSHistoryURLCompletionSession_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2;
  v8[3] = &unk_1E7FB6BC0;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_group_async(v4, v5, v8);
}

- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[WBSHistoryServiceURLCompletionMatchData alloc] initWithLastVisitWasFailure:0 visitWasFromThisDevice:0 visitWasClientError:0];
  v9 = [[WBSHistoryServiceURLCompletionMatchEntry alloc] initWithURLString:v6 title:v7 topSitesScore:0 visitCountScore:0.0];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(WBSHistoryServiceURLCompletionMatchData *)v8 setEntries:v10];

  return v8;
}

@end