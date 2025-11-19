@interface STPersistenceOperation
- (STPersistenceOperation)initWithPersistenceController:(id)a3;
@end

@implementation STPersistenceOperation

- (STPersistenceOperation)initWithPersistenceController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STPersistenceOperation;
  v6 = [(STOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, a3);
  }

  return v7;
}

@end