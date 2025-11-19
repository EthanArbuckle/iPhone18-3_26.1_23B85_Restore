@interface SBKRequestData
+ (id)propertyListBodyWithTransaction:(id)a3;
- (SBKRequestData)initWithTransaction:(id)a3;
- (id)serializableRequestBodyPropertyList;
@end

@implementation SBKRequestData

- (id)serializableRequestBodyPropertyList
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKRequestData.m" lineNumber:28 description:@"Subclass must implement"];

  return 0;
}

- (SBKRequestData)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBKRequestData;
  v6 = [(SBKRequestData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
  }

  return v7;
}

+ (id)propertyListBodyWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTransaction:v4];

  v6 = [v5 serializableRequestBodyPropertyList];

  return v6;
}

@end