@interface SFCredentialProviderExtensionState
+ (id)credentialProviderExtensionWithDisabledState;
- (SFCredentialProviderExtensionState)initWithCoder:(id)a3;
- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4 localizedDisplayName:(id)a5 credentialIdentityStoreIdentifier:(id)a6 providerBundleID:(id)a7;
- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4 localizedDisplayName:(id)a5 providerBundleID:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCredentialProviderExtensionState

+ (id)credentialProviderExtensionWithDisabledState
{
  v2 = [[a1 alloc] initWithEnabledState:0 supportsIncrementalUpdates:0];

  return v2;
}

- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4 localizedDisplayName:(id)a5 providerBundleID:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = SFCredentialProviderExtensionState;
  v12 = [(SFCredentialProviderExtensionState *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_enabled = a3;
    v12->_supportsIncrementalUpdates = a4;
    v14 = [v10 copy];
    localizedDisplayName = v13->_localizedDisplayName;
    v13->_localizedDisplayName = v14;

    v16 = [v11 copy];
    providerBundleID = v13->_providerBundleID;
    v13->_providerBundleID = v16;

    v18 = v13;
  }

  return v13;
}

- (SFCredentialProviderExtensionState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4 localizedDisplayName:(id)a5 credentialIdentityStoreIdentifier:(id)a6 providerBundleID:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v25.receiver = self;
  v25.super_class = SFCredentialProviderExtensionState;
  v15 = [(SFCredentialProviderExtensionState *)&v25 init];
  v16 = v15;
  if (v15)
  {
    v15->_enabled = a3;
    v15->_supportsIncrementalUpdates = a4;
    v17 = [v12 copy];
    localizedDisplayName = v16->_localizedDisplayName;
    v16->_localizedDisplayName = v17;

    v19 = [v13 copy];
    credentialIdentityStoreIdentifier = v16->_credentialIdentityStoreIdentifier;
    v16->_credentialIdentityStoreIdentifier = v19;

    v21 = [v14 copy];
    providerBundleID = v16->_providerBundleID;
    v16->_providerBundleID = v21;

    v23 = v16;
  }

  return v16;
}

- (SFCredentialProviderExtensionState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"enabled"];
  v6 = [v4 decodeBoolForKey:@"supportsIncrementalUpdates"];
  v7 = objc_opt_class();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"localizedDisplayName"];
  v9 = [v4 decodeObjectOfClass:v7 forKey:@"credentialIdentityStoreIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleID"];

  v11 = [(SFCredentialProviderExtensionState *)self initWithEnabledState:v5 supportsIncrementalUpdates:v6 localizedDisplayName:v8 credentialIdentityStoreIdentifier:v9 providerBundleID:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  enabled = self->_enabled;
  v5 = a3;
  [v5 encodeBool:enabled forKey:@"enabled"];
  [v5 encodeBool:self->_supportsIncrementalUpdates forKey:@"supportsIncrementalUpdates"];
  [v5 encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [v5 encodeObject:self->_credentialIdentityStoreIdentifier forKey:@"credentialIdentityStoreIdentifier"];
  [v5 encodeObject:self->_providerBundleID forKey:@"providerBundleID"];
}

- (id)copyWithZone:(_NSZone *)a3
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