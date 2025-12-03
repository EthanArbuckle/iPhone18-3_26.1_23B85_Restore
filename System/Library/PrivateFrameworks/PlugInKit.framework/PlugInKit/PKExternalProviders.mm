@interface PKExternalProviders
- (PKExternalProviders)init;
- (PKExternalProviders)initWithLaunchServicesProvider:(id)provider;
@end

@implementation PKExternalProviders

- (PKExternalProviders)init
{
  v16.receiver = self;
  v16.super_class = PKExternalProviders;
  v2 = [(PKExternalProviders *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    ls = v2->_ls;
    v2->_ls = v3;

    v5 = objc_opt_new();
    filesystem = v2->_filesystem;
    v2->_filesystem = v5;

    v7 = objc_opt_new();
    launch = v2->_launch;
    v2->_launch = v7;

    v9 = objc_opt_new();
    sandbox = v2->_sandbox;
    v2->_sandbox = v9;

    v11 = objc_opt_new();
    runningboard = v2->_runningboard;
    v2->_runningboard = v11;

    v13 = objc_opt_new();
    sys = v2->_sys;
    v2->_sys = v13;
  }

  return v2;
}

- (PKExternalProviders)initWithLaunchServicesProvider:(id)provider
{
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = PKExternalProviders;
  v6 = [(PKExternalProviders *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ls, provider);
    v8 = objc_opt_new();
    filesystem = v7->_filesystem;
    v7->_filesystem = v8;

    v10 = objc_opt_new();
    launch = v7->_launch;
    v7->_launch = v10;

    v12 = objc_opt_new();
    sandbox = v7->_sandbox;
    v7->_sandbox = v12;

    v14 = objc_opt_new();
    runningboard = v7->_runningboard;
    v7->_runningboard = v14;

    v16 = objc_opt_new();
    sys = v7->_sys;
    v7->_sys = v16;
  }

  return v7;
}

@end