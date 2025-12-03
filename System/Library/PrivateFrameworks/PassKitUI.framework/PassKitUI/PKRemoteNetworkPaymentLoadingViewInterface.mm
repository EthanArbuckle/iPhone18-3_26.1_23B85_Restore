@interface PKRemoteNetworkPaymentLoadingViewInterface
- (PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)configuration host:(id)host;
@end

@implementation PKRemoteNetworkPaymentLoadingViewInterface

- (PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)configuration host:(id)host
{
  configurationCopy = configuration;
  hostCopy = host;
  v12.receiver = self;
  v12.super_class = PKRemoteNetworkPaymentLoadingViewInterface;
  v8 = [(PKRemoteNetworkPaymentLoadingViewInterface *)&v12 init];
  if (v8)
  {
    v9 = [[_PKRemoteNetworkPaymentLoadingViewInterface alloc] initWithConfiguration:configurationCopy host:hostCopy];
    underlying = v8->_underlying;
    v8->_underlying = v9;
  }

  return v8;
}

@end