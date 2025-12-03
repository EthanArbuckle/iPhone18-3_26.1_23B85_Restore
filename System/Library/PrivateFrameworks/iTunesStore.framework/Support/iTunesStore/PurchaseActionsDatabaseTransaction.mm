@interface PurchaseActionsDatabaseTransaction
- (PurchaseActionsDatabaseTransaction)initWithDatabase:(id)database;
@end

@implementation PurchaseActionsDatabaseTransaction

- (PurchaseActionsDatabaseTransaction)initWithDatabase:(id)database
{
  databaseCopy = database;
  v6 = [(PurchaseActionsDatabaseTransaction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

@end