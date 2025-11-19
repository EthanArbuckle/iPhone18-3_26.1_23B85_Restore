@interface PKPaymentAuthorizationMinimalInterface
- (PKPaymentAuthorizationMinimalInterface)initWithPrimaryViewController:(id)a3;
@end

@implementation PKPaymentAuthorizationMinimalInterface

- (PKPaymentAuthorizationMinimalInterface)initWithPrimaryViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAuthorizationMinimalInterface;
  v6 = [(PKPaymentAuthorizationMinimalInterface *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryViewController, a3);
  }

  return v7;
}

@end