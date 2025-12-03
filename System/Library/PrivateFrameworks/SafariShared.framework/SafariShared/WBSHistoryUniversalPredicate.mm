@interface WBSHistoryUniversalPredicate
- (WBSHistoryUniversalPredicate)initWithCoder:(id)coder;
- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error;
@end

@implementation WBSHistoryUniversalPredicate

- (WBSHistoryUniversalPredicate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WBSHistoryUniversalPredicate;
  return [(WBSHistoryUniversalPredicate *)&v4 init];
}

- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error
{
  if (options == 11)
  {
    v8 = [cache statementForQuery:@"SELECT history_items.* error:{history_visits.* FROM history_visits INNER JOIN history_items ON history_items.id = history_visits.history_item AND history_visits.id = safari_latest_visit_for (history_items.id)", error, v6}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end