@interface WLDTransactionBlockOperation
- (WLDTransactionBlockOperation)init;
- (void)dealloc;
@end

@implementation WLDTransactionBlockOperation

- (WLDTransactionBlockOperation)init
{
  v6.receiver = self;
  v6.super_class = WLDTransactionBlockOperation;
  v2 = [(WLDTransactionBlockOperation *)&v6 init];
  if (v2)
  {
    v3 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDTransactionBlockOperation.init"];
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = WLDTransactionBlockOperation;
  [(WLDTransactionBlockOperation *)&v4 dealloc];
}

@end