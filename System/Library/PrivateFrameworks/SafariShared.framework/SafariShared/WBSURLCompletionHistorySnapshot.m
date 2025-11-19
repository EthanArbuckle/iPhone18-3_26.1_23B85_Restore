@interface WBSURLCompletionHistorySnapshot
- (WBSURLCompletionHistorySnapshot)initWithItems:()unique_ptr<std:(std::default_delete<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>>>)a3 :vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>;
- (id)_matchSnapshotForCompletionMatch:(id)a3;
- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5;
- (void)getBestMatchesForTypedString:(id)a3 limit:(unint64_t)a4 forQueryID:(int64_t)a5 withSearchParameters:(id)a6 filterResultsUsingProfileIdentifier:(id)a7 completionHandler:(id)a8;
@end

@implementation WBSURLCompletionHistorySnapshot

- (WBSURLCompletionHistorySnapshot)initWithItems:()unique_ptr<std:(std::default_delete<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>>>)a3 :vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>
{
  v13.receiver = self;
  v13.super_class = WBSURLCompletionHistorySnapshot;
  v4 = [(WBSURLCompletionHistorySnapshot *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    std::unique_ptr<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>>::reset[abi:sn200100](v4 + 3, v6);
    v7 = objc_alloc_init(WBSURLCompletionDatabase);
    completionDatabase = v5->_completionDatabase;
    v5->_completionDatabase = v7;

    [(WBSURLCompletionDatabase *)v5->_completionDatabase setDataSource:v5];
    v9 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryURLCompletionSnapshot", 0);
    completionDatabaseQueue = v5->_completionDatabaseQueue;
    v5->_completionDatabaseQueue = v9;

    v11 = v5;
  }

  return v5;
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

- (void)getBestMatchesForTypedString:(id)a3 limit:(unint64_t)a4 forQueryID:(int64_t)a5 withSearchParameters:(id)a6 filterResultsUsingProfileIdentifier:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  completionDatabaseQueue = self->_completionDatabaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FCB258;
  block[4] = self;
  v24 = v14;
  v28 = a4;
  v29 = a5;
  v25 = v16;
  v26 = v15;
  v27 = v17;
  v19 = v17;
  v20 = v15;
  v21 = v16;
  v22 = v14;
  dispatch_async(completionDatabaseQueue, block);
}

void __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v10 = 0;
  v11 = 0;
  [v3 getBestMatchesForTypedString:v2 filterResultsUsingProfileIdentifier:a1[6] topHits:&v11 matches:&v10 limit:a1[9] forQueryID:a1[10] withSearchParameters:a1[7]];
  v4 = v11;
  v5 = v10;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7FC8440;
  v9[4] = a1[4];
  v6 = [v4 safari_mapObjectsUsingBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke_3;
  v8[3] = &unk_1E7FC8440;
  v8[4] = a1[4];
  v7 = [v5 safari_mapObjectsUsingBlock:v8];
  (*(a1[8] + 16))();
}

id __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _matchSnapshotForCompletionMatch:a2];

  return v2;
}

id __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _matchSnapshotForCompletionMatch:a2];

  return v2;
}

- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5
{
  SafariShared::HistoryURLCompletionItem::create(a3, a4, 1, &v8);
  v5 = v8;
  v6 = [[WBSHistoryURLCompletionMatchData alloc] initWithCompletionItem:v8];
  if (v5)
  {
    WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(v5);
  }

  return v6;
}

@end