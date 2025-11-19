@interface XPCCallerInformation
- (XPCCallerInformation)initWithProcessIdentifier:(int)a3 credentialIdentityStoreIdentifier:(id)a4 associatedExtensionEnabled:(BOOL)a5;
@end

@implementation XPCCallerInformation

- (XPCCallerInformation)initWithProcessIdentifier:(int)a3 credentialIdentityStoreIdentifier:(id)a4 associatedExtensionEnabled:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = XPCCallerInformation;
  v10 = [(XPCCallerInformation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_processIdentifier = a3;
    objc_storeStrong(&v10->_credentialIdentityStoreIdentifier, a4);
    v11->_associatedExtensionEnabled = a5;
    v12 = v11;
  }

  return v11;
}

@end