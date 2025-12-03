@interface WBSHistoryItemToTagPairsPredicate
- (WBSHistoryItemToTagPairsPredicate)initWithCoder:(id)coder;
- (WBSHistoryItemToTagPairsPredicate)initWithStartDate:(id)date endDate:(id)endDate;
- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryItemToTagPairsPredicate

- (WBSHistoryItemToTagPairsPredicate)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v13.receiver = self;
  v13.super_class = WBSHistoryItemToTagPairsPredicate;
  v9 = [(WBSHistoryItemToTagPairsPredicate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
    v11 = v10;
  }

  return v10;
}

- (WBSHistoryItemToTagPairsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WBSHistoryItemToTagPairsPredicate;
  v5 = [(WBSHistoryItemToTagPairsPredicate *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error
{
  databaseCopy = database;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:databaseCopy query:@"SELECT * FROM history_items_to_tags WHERE timestamp > ? AND timestamp < ?"];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  [v9 bindDouble:1 atParameterIndex:?];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  [v9 bindDouble:2 atParameterIndex:?];
  if (!error || v9)
  {
    v10 = v9;
  }

  else
  {
    [databaseCopy lastErrorWithMethodName:"-[WBSHistoryItemToTagPairsPredicate statementForDatabase:cache:fetchOptions:error:]"];
    *error = v10 = 0;
  }

  return v10;
}

@end