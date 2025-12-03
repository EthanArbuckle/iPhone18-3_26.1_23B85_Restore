@interface IXATestAppRelayRegistration
- (IXATestAppRelayRegistration)initWithEndpoint:(id)endpoint andEntitlement:(id)entitlement canReplace:(BOOL)replace;
@end

@implementation IXATestAppRelayRegistration

- (IXATestAppRelayRegistration)initWithEndpoint:(id)endpoint andEntitlement:(id)entitlement canReplace:(BOOL)replace
{
  endpointCopy = endpoint;
  entitlementCopy = entitlement;
  v14.receiver = self;
  v14.super_class = IXATestAppRelayRegistration;
  v11 = [(IXATestAppRelayRegistration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_endpoint, endpoint);
    objc_storeStrong(&v12->_entitlement, entitlement);
    v12->_canReplace = replace;
  }

  return v12;
}

@end