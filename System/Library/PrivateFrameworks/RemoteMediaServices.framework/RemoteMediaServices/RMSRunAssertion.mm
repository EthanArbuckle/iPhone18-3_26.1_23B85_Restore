@interface RMSRunAssertion
- (RMSRunAssertion)initWithDescription:(id)a3;
@end

@implementation RMSRunAssertion

- (RMSRunAssertion)initWithDescription:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RMSRunAssertion;
  v5 = [(RMSRunAssertion *)&v10 init];
  if (v5)
  {
    v6 = [@"com.apple.RemoteMediaServices.RMSRunAssertion." stringByAppendingString:v4];
    [v6 UTF8String];
    v7 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v7;
  }

  return v5;
}

@end