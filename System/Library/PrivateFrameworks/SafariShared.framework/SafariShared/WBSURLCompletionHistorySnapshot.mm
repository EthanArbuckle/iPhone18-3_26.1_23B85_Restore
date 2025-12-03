@interface WBSURLCompletionHistorySnapshot
- (WBSURLCompletionHistorySnapshot)initWithItems:()unique_ptr<std:(std::default_delete<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>>>)std :vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>;
- (id)_matchSnapshotForCompletionMatch:(id)match;
- (id)fakeBookmarkMatchDataWithURLString:(id)string title:(id)title shouldPreload:(BOOL)preload;
- (void)getBestMatchesForTypedString:(id)string limit:(unint64_t)limit forQueryID:(int64_t)d withSearchParameters:(id)parameters filterResultsUsingProfileIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation WBSURLCompletionHistorySnapshot

- (WBSURLCompletionHistorySnapshot)initWithItems:()unique_ptr<std:(std::default_delete<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>>>)std :vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem>>
{
  v13.receiver = self;
  v13.super_class = WBSURLCompletionHistorySnapshot;
  v4 = [(WBSURLCompletionHistorySnapshot *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = *std.__ptr_;
    *std.__ptr_ = 0;
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

- (id)_matchSnapshotForCompletionMatch:(id)match
{
  matchCopy = match;
  if ([matchCopy matchLocation] == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E695DFF8];
    originalURLString = [matchCopy originalURLString];
    v7 = [v5 safari_URLWithDataAsString:originalURLString];

    matched = _SSURLCompletionMatchLocationForWBSURLCompletionMatchLocation([matchCopy matchLocation]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      data = [matchCopy data];
      v10 = MEMORY[0x1E695DF00];
      [data lastVisitedTimeInterval];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      if (objc_opt_respondsToSelector())
      {
        visitCount = [data visitCount];
      }

      else
      {
        visitCount = 0;
      }
    }

    else
    {
      visitCount = 0;
      v11 = 0;
    }

    v13 = [WBSURLCompletionMatchSnapshot alloc];
    title = [matchCopy title];
    v4 = -[WBSURLCompletionMatchSnapshot initWithURL:title:matchLocation:isTopHit:isSynthesizedTopHit:isTopHitDueToTriggerMatch:visitCount:lastVisitTime:](v13, "initWithURL:title:matchLocation:isTopHit:isSynthesizedTopHit:isTopHitDueToTriggerMatch:visitCount:lastVisitTime:", v7, title, matched, [matchCopy isTopHit], 0, 0, visitCount, v11);
  }

  return v4;
}

- (void)getBestMatchesForTypedString:(id)string limit:(unint64_t)limit forQueryID:(int64_t)d withSearchParameters:(id)parameters filterResultsUsingProfileIdentifier:(id)identifier completionHandler:(id)handler
{
  stringCopy = string;
  parametersCopy = parameters;
  identifierCopy = identifier;
  handlerCopy = handler;
  completionDatabaseQueue = self->_completionDatabaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__WBSURLCompletionHistorySnapshot_getBestMatchesForTypedString_limit_forQueryID_withSearchParameters_filterResultsUsingProfileIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FCB258;
  block[4] = self;
  v24 = stringCopy;
  limitCopy = limit;
  dCopy = d;
  v25 = identifierCopy;
  v26 = parametersCopy;
  v27 = handlerCopy;
  v19 = handlerCopy;
  v20 = parametersCopy;
  v21 = identifierCopy;
  v22 = stringCopy;
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

- (id)fakeBookmarkMatchDataWithURLString:(id)string title:(id)title shouldPreload:(BOOL)preload
{
  SafariShared::HistoryURLCompletionItem::create(string, title, 1, &v8);
  v5 = v8;
  v6 = [[WBSHistoryURLCompletionMatchData alloc] initWithCompletionItem:v8];
  if (v5)
  {
    WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(v5);
  }

  return v6;
}

@end