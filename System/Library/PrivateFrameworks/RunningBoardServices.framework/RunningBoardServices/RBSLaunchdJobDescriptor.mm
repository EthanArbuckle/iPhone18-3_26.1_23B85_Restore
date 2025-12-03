@interface RBSLaunchdJobDescriptor
- (NSSet)managedEndpointLaunchIdentifiers;
- (RBSLaunchdJobDescriptor)initWithExecutableURL:(id)l bundleIdentifier:(id)identifier;
@end

@implementation RBSLaunchdJobDescriptor

- (RBSLaunchdJobDescriptor)initWithExecutableURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = RBSLaunchdJobDescriptor;
  v9 = [(RBSLaunchdJobDescriptor *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_executableURL, l);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
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
  allKeys = [(NSDictionary *)self->_launchRequestEndpointIdentifiers allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

@end