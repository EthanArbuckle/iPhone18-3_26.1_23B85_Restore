@interface SFCredentialProviderExtensionState
+ (id)credentialProviderExtensionWithDisabledState;
- (SFCredentialProviderExtensionState)initWithCoder:(id)coder;
- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)state supportsIncrementalUpdates:(BOOL)updates localizedDisplayName:(id)name credentialIdentityStoreIdentifier:(id)identifier providerBundleID:(id)d;
- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)state supportsIncrementalUpdates:(BOOL)updates localizedDisplayName:(id)name providerBundleID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCredentialProviderExtensionState

+ (id)credentialProviderExtensionWithDisabledState
{
  v2 = [[self alloc] initWithEnabledState:0 supportsIncrementalUpdates:0];

  return v2;
}

- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)state supportsIncrementalUpdates:(BOOL)updates localizedDisplayName:(id)name providerBundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = SFCredentialProviderExtensionState;
  v12 = [(SFCredentialProviderExtensionState *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_enabled = state;
    v12->_supportsIncrementalUpdates = updates;
    v14 = [nameCopy copy];
    localizedDisplayName = v13->_localizedDisplayName;
    v13->_localizedDisplayName = v14;

    v16 = [dCopy copy];
    providerBundleID = v13->_providerBundleID;
    v13->_providerBundleID = v16;

    v18 = v13;
  }

  return v13;
}

- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)state supportsIncrementalUpdates:(BOOL)updates localizedDisplayName:(id)name credentialIdentityStoreIdentifier:(id)identifier providerBundleID:(id)d
{
  nameCopy = name;
  identifierCopy = identifier;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = SFCredentialProviderExtensionState;
  v15 = [(SFCredentialProviderExtensionState *)&v25 init];
  v16 = v15;
  if (v15)
  {
    v15->_enabled = state;
    v15->_supportsIncrementalUpdates = updates;
    v17 = [nameCopy copy];
    localizedDisplayName = v16->_localizedDisplayName;
    v16->_localizedDisplayName = v17;

    v19 = [identifierCopy copy];
    credentialIdentityStoreIdentifier = v16->_credentialIdentityStoreIdentifier;
    v16->_credentialIdentityStoreIdentifier = v19;

    v21 = [dCopy copy];
    providerBundleID = v16->_providerBundleID;
    v16->_providerBundleID = v21;

    v23 = v16;
  }

  return v16;
}

- (SFCredentialProviderExtensionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"enabled"];
  v6 = [coderCopy decodeBoolForKey:@"supportsIncrementalUpdates"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"localizedDisplayName"];
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"credentialIdentityStoreIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleID"];

  v11 = [(SFCredentialProviderExtensionState *)self initWithEnabledState:v5 supportsIncrementalUpdates:v6 localizedDisplayName:v8 credentialIdentityStoreIdentifier:v9 providerBundleID:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  enabled = self->_enabled;
  coderCopy = coder;
  [coderCopy encodeBool:enabled forKey:@"enabled"];
  [coderCopy encodeBool:self->_supportsIncrementalUpdates forKey:@"supportsIncrementalUpdates"];
  [coderCopy encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [coderCopy encodeObject:self->_credentialIdentityStoreIdentifier forKey:@"credentialIdentityStoreIdentifier"];
  [coderCopy encodeObject:self->_providerBundleID forKey:@"providerBundleID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  enabled = self->_enabled;
  supportsIncrementalUpdates = self->_supportsIncrementalUpdates;
  localizedDisplayName = self->_localizedDisplayName;
  credentialIdentityStoreIdentifier = self->_credentialIdentityStoreIdentifier;
  providerBundleID = self->_providerBundleID;

  return [v4 initWithEnabledState:enabled supportsIncrementalUpdates:supportsIncrementalUpdates localizedDisplayName:localizedDisplayName credentialIdentityStoreIdentifier:credentialIdentityStoreIdentifier providerBundleID:providerBundleID];
}

@end