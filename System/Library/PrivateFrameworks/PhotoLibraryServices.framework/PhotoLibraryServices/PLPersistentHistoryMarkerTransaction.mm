@interface PLPersistentHistoryMarkerTransaction
- (PLPersistentHistoryMarkerTransaction)initWithTransaction:(id)transaction;
@end

@implementation PLPersistentHistoryMarkerTransaction

- (PLPersistentHistoryMarkerTransaction)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10.receiver = self;
  v10.super_class = PLPersistentHistoryMarkerTransaction;
  v6 = [(PLPersistentHistoryMarkerTransaction *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    v8 = v7;
  }

  return v7;
}

@end