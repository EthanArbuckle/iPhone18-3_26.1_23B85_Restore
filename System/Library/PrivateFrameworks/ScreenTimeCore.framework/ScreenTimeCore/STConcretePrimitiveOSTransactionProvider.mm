@interface STConcretePrimitiveOSTransactionProvider
- (id)transactionWithDescription:(const char *)description;
@end

@implementation STConcretePrimitiveOSTransactionProvider

- (id)transactionWithDescription:(const char *)description
{
  v3 = [[STConcretePrimitiveOSTransaction alloc] initWithDescription:description];

  return v3;
}

@end