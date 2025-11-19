@interface PurchaseActionsDatabaseTransaction
- (PurchaseActionsDatabaseTransaction)initWithDatabase:(id)a3;
@end

@implementation PurchaseActionsDatabaseTransaction

- (PurchaseActionsDatabaseTransaction)initWithDatabase:(id)a3
{
  v5 = a3;
  v6 = [(PurchaseActionsDatabaseTransaction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

@end