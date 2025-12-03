@interface PKPaymentAuthorizationMinimalInterface
- (PKPaymentAuthorizationMinimalInterface)initWithPrimaryViewController:(id)controller;
@end

@implementation PKPaymentAuthorizationMinimalInterface

- (PKPaymentAuthorizationMinimalInterface)initWithPrimaryViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKPaymentAuthorizationMinimalInterface;
  v6 = [(PKPaymentAuthorizationMinimalInterface *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryViewController, controller);
  }

  return v7;
}

@end