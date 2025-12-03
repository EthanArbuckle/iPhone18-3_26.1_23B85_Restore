@interface STPersistenceOperation
- (STPersistenceOperation)initWithPersistenceController:(id)controller;
@end

@implementation STPersistenceOperation

- (STPersistenceOperation)initWithPersistenceController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = STPersistenceOperation;
  v6 = [(STOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, controller);
  }

  return v7;
}

@end