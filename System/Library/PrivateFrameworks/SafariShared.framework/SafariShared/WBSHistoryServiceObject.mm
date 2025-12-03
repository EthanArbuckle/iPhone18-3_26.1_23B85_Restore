@interface WBSHistoryServiceObject
- (WBSHistoryServiceObject)initWithCoder:(id)coder;
- (WBSHistoryServiceObject)initWithDatabaseID:(int64_t)d;
@end

@implementation WBSHistoryServiceObject

- (WBSHistoryServiceObject)initWithDatabaseID:(int64_t)d
{
  v8.receiver = self;
  v8.super_class = WBSHistoryServiceObject;
  v4 = [(WBSHistoryServiceObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_databaseID = d;
    v6 = v4;
  }

  return v5;
}

- (WBSHistoryServiceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WBSHistoryServiceObject;
  v5 = [(WBSHistoryServiceObject *)&v8 init];
  if (v5)
  {
    v5->_databaseID = [coderCopy decodeInt64ForKey:@"databaseID"];
    v6 = v5;
  }

  return v5;
}

@end