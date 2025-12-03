@interface PKDExternalProviders
- (PKDExternalProviders)init;
- (PKDExternalProviders)initWithLaunchServicesProvider:(id)provider;
- (PKDExternalProviders)initWithUserManagementProvider:(id)provider;
@end

@implementation PKDExternalProviders

- (PKDExternalProviders)init
{
  v10.receiver = self;
  v10.super_class = PKDExternalProviders;
  v2 = [(PKDExternalProviders *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    security = v2->_security;
    v2->_security = v3;

    v5 = objc_opt_new();
    container = v2->_container;
    v2->_container = v5;

    v7 = objc_opt_new();
    um = v2->_um;
    v2->_um = v7;
  }

  return v2;
}

- (PKDExternalProviders)initWithLaunchServicesProvider:(id)provider
{
  v11.receiver = self;
  v11.super_class = PKDExternalProviders;
  v3 = [(PKDExternalProviders *)&v11 initWithLaunchServicesProvider:provider];
  if (v3)
  {
    v4 = objc_opt_new();
    security = v3->_security;
    v3->_security = v4;

    v6 = objc_opt_new();
    container = v3->_container;
    v3->_container = v6;

    v8 = objc_opt_new();
    um = v3->_um;
    v3->_um = v8;
  }

  return v3;
}

- (PKDExternalProviders)initWithUserManagementProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PKDExternalProviders;
  v6 = [(PKDExternalProviders *)&v12 init];
  if (v6)
  {
    v7 = objc_opt_new();
    security = v6->_security;
    v6->_security = v7;

    v9 = objc_opt_new();
    container = v6->_container;
    v6->_container = v9;

    objc_storeStrong(&v6->_um, provider);
  }

  return v6;
}

@end