@interface WBSHistoryUniversalPredicate
- (WBSHistoryUniversalPredicate)initWithCoder:(id)a3;
- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6;
@end

@implementation WBSHistoryUniversalPredicate

- (WBSHistoryUniversalPredicate)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WBSHistoryUniversalPredicate;
  return [(WBSHistoryUniversalPredicate *)&v4 init];
}

- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6
{
  if (a5 == 11)
  {
    v8 = [a4 statementForQuery:@"SELECT history_items.* error:{history_visits.* FROM history_visits INNER JOIN history_items ON history_items.id = history_visits.history_item AND history_visits.id = safari_latest_visit_for (history_items.id)", a6, v6}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end