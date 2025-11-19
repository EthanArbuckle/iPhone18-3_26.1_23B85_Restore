@interface STConcretePrimitiveOSTransaction
- (STConcretePrimitiveOSTransaction)initWithDescription:(const char *)a3;
@end

@implementation STConcretePrimitiveOSTransaction

- (STConcretePrimitiveOSTransaction)initWithDescription:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = STConcretePrimitiveOSTransaction;
  v3 = [(STConcretePrimitiveOSTransaction *)&v7 init];
  v4 = os_transaction_create();
  underlyingTransaction = v3->_underlyingTransaction;
  v3->_underlyingTransaction = v4;

  return v3;
}

@end