@interface SSAppPurchaseHistoryTransaction
- (SSAppPurchaseHistoryTransaction)initWithDatabase:(id)database;
- (void)dealloc;
@end

@implementation SSAppPurchaseHistoryTransaction

- (SSAppPurchaseHistoryTransaction)initWithDatabase:(id)database
{
  v4 = [(SSAppPurchaseHistoryTransaction *)self init];
  if (v4)
  {
    v4->_database = database;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSAppPurchaseHistoryTransaction;
  [(SSAppPurchaseHistoryTransaction *)&v3 dealloc];
}

@end