@interface PKRemoteNetworkPaymentLoadingViewInterface
- (PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)a3 host:(id)a4;
@end

@implementation PKRemoteNetworkPaymentLoadingViewInterface

- (PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKRemoteNetworkPaymentLoadingViewInterface;
  v8 = [(PKRemoteNetworkPaymentLoadingViewInterface *)&v12 init];
  if (v8)
  {
    v9 = [[_PKRemoteNetworkPaymentLoadingViewInterface alloc] initWithConfiguration:v6 host:v7];
    underlying = v8->_underlying;
    v8->_underlying = v9;
  }

  return v8;
}

@end