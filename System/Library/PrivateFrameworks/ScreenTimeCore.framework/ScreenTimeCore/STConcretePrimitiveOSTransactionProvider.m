@interface STConcretePrimitiveOSTransactionProvider
- (id)transactionWithDescription:(const char *)a3;
@end

@implementation STConcretePrimitiveOSTransactionProvider

- (id)transactionWithDescription:(const char *)a3
{
  v3 = [[STConcretePrimitiveOSTransaction alloc] initWithDescription:a3];

  return v3;
}

@end