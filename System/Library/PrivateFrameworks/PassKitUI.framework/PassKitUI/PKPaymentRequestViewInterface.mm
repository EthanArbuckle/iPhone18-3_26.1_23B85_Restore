@interface PKPaymentRequestViewInterface
- (PKPaymentRequestViewInterface)initWithConfiguration:(id)a3 delegate:(id)a4;
@end

@implementation PKPaymentRequestViewInterface

- (PKPaymentRequestViewInterface)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKPaymentRequestViewInterface;
  v8 = [(PKPaymentRequestViewInterface *)&v13 init];
  if (v8 && ([_TtC9PassKitUI34PaymentRequestViewInterfaceFactory interfaceForConfiguration:v6 withDelegate:v7], v9 = objc_claimAutoreleasedReturnValue(), wrappedInterface = v8->_wrappedInterface, v8->_wrappedInterface = v9, wrappedInterface, !v8->_wrappedInterface))
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

@end