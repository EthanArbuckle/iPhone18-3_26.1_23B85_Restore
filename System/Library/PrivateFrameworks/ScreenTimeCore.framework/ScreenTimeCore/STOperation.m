@interface STOperation
- (STOperation)init;
@end

@implementation STOperation

- (STOperation)init
{
  v7.receiver = self;
  v7.super_class = STOperation;
  v2 = [(STOperation *)&v7 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.ScreenTimeAgent.%@", objc_opt_class()];
    [v3 UTF8String];
    v4 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v4;
  }

  return v2;
}

@end