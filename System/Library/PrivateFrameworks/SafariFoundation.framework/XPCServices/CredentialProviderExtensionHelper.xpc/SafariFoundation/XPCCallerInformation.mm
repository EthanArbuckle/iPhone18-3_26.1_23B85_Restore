@interface XPCCallerInformation
- (XPCCallerInformation)initWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled;
@end

@implementation XPCCallerInformation

- (XPCCallerInformation)initWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled
{
  storeIdentifierCopy = storeIdentifier;
  v14.receiver = self;
  v14.super_class = XPCCallerInformation;
  v10 = [(XPCCallerInformation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_processIdentifier = identifier;
    objc_storeStrong(&v10->_credentialIdentityStoreIdentifier, storeIdentifier);
    v11->_associatedExtensionEnabled = enabled;
    v12 = v11;
  }

  return v11;
}

@end