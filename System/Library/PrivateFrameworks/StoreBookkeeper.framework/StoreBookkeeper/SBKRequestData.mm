@interface SBKRequestData
+ (id)propertyListBodyWithTransaction:(id)transaction;
- (SBKRequestData)initWithTransaction:(id)transaction;
- (id)serializableRequestBodyPropertyList;
@end

@implementation SBKRequestData

- (id)serializableRequestBodyPropertyList
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKRequestData.m" lineNumber:28 description:@"Subclass must implement"];

  return 0;
}

- (SBKRequestData)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = SBKRequestData;
  v6 = [(SBKRequestData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
  }

  return v7;
}

+ (id)propertyListBodyWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [[self alloc] initWithTransaction:transactionCopy];

  serializableRequestBodyPropertyList = [v5 serializableRequestBodyPropertyList];

  return serializableRequestBodyPropertyList;
}

@end