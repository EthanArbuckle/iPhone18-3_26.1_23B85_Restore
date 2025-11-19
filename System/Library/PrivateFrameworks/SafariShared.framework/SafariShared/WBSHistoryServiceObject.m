@interface WBSHistoryServiceObject
- (WBSHistoryServiceObject)initWithCoder:(id)a3;
- (WBSHistoryServiceObject)initWithDatabaseID:(int64_t)a3;
@end

@implementation WBSHistoryServiceObject

- (WBSHistoryServiceObject)initWithDatabaseID:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WBSHistoryServiceObject;
  v4 = [(WBSHistoryServiceObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_databaseID = a3;
    v6 = v4;
  }

  return v5;
}

- (WBSHistoryServiceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WBSHistoryServiceObject;
  v5 = [(WBSHistoryServiceObject *)&v8 init];
  if (v5)
  {
    v5->_databaseID = [v4 decodeInt64ForKey:@"databaseID"];
    v6 = v5;
  }

  return v5;
}

@end