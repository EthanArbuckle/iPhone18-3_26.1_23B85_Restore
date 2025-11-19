@interface WBSHistoryItemToTagPairsPredicate
- (WBSHistoryItemToTagPairsPredicate)initWithCoder:(id)a3;
- (WBSHistoryItemToTagPairsPredicate)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryItemToTagPairsPredicate

- (WBSHistoryItemToTagPairsPredicate)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSHistoryItemToTagPairsPredicate;
  v9 = [(WBSHistoryItemToTagPairsPredicate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
    v11 = v10;
  }

  return v10;
}

- (WBSHistoryItemToTagPairsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSHistoryItemToTagPairsPredicate;
  v5 = [(WBSHistoryItemToTagPairsPredicate *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v8 query:@"SELECT * FROM history_items_to_tags WHERE timestamp > ? AND timestamp < ?"];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  [v9 bindDouble:1 atParameterIndex:?];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  [v9 bindDouble:2 atParameterIndex:?];
  if (!a6 || v9)
  {
    v10 = v9;
  }

  else
  {
    [v8 lastErrorWithMethodName:"-[WBSHistoryItemToTagPairsPredicate statementForDatabase:cache:fetchOptions:error:]"];
    *a6 = v10 = 0;
  }

  return v10;
}

@end