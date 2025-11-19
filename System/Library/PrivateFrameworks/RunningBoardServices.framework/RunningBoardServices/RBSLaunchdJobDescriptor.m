@interface RBSLaunchdJobDescriptor
- (NSSet)managedEndpointLaunchIdentifiers;
- (RBSLaunchdJobDescriptor)initWithExecutableURL:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation RBSLaunchdJobDescriptor

- (RBSLaunchdJobDescriptor)initWithExecutableURL:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = RBSLaunchdJobDescriptor;
  v9 = [(RBSLaunchdJobDescriptor *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_executableURL, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
    attributes = v10->_attributes;
    v10->_attributes = MEMORY[0x1E695E0F0];

    v12 = objc_opt_new();
    jobProperties = v10->_jobProperties;
    v10->_jobProperties = v12;

    v14 = objc_opt_new();
    launchRequestEndpointIdentifiers = v10->_launchRequestEndpointIdentifiers;
    v10->_launchRequestEndpointIdentifiers = v14;

    v10->_backoff = 0;
    clientRestriction = v10->_clientRestriction;
    v10->_clientRestriction = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (NSSet)managedEndpointLaunchIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSDictionary *)self->_launchRequestEndpointIdentifiers allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end