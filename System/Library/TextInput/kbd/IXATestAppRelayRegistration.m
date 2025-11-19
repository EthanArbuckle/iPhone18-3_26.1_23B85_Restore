@interface IXATestAppRelayRegistration
- (IXATestAppRelayRegistration)initWithEndpoint:(id)a3 andEntitlement:(id)a4 canReplace:(BOOL)a5;
@end

@implementation IXATestAppRelayRegistration

- (IXATestAppRelayRegistration)initWithEndpoint:(id)a3 andEntitlement:(id)a4 canReplace:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IXATestAppRelayRegistration;
  v11 = [(IXATestAppRelayRegistration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_endpoint, a3);
    objc_storeStrong(&v12->_entitlement, a4);
    v12->_canReplace = a5;
  }

  return v12;
}

@end