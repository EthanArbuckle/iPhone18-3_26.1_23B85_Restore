@interface ICMutableUserIdentityProperties
- (void)setAlternateDSID:(id)d;
- (void)setCarrierBundleDeviceIdentifier:(id)identifier;
- (void)setCloudLibraryStateReason:(id)reason;
- (void)setDSID:(id)d;
- (void)setDelegateToken:(id)token;
- (void)setFirstName:(id)name;
- (void)setHomeUserIdentifiers:(id)identifiers;
- (void)setICloudPersonID:(id)d;
- (void)setLastName:(id)name;
- (void)setMergeToCloudLibraryPreference:(id)preference;
- (void)setPrivacyAcknowledgementVersions:(id)versions;
- (void)setPrivateListeningEnabled:(id)enabled;
- (void)setPrivateListeningEnabledForHomeUsers:(id)users;
- (void)setStorefrontIdentifier:(id)identifier;
- (void)setUsername:(id)username;
@end

@implementation ICMutableUserIdentityProperties

- (void)setICloudPersonID:(id)d
{
  if (self->super._iCloudPersonID != d)
  {
    v5 = [d copy];
    iCloudPersonID = self->super._iCloudPersonID;
    self->super._iCloudPersonID = v5;

    MEMORY[0x1EEE66BB8](v5, iCloudPersonID);
  }
}

- (void)setPrivacyAcknowledgementVersions:(id)versions
{
  if (self->super._privacyAcknowledgementVersions != versions)
  {
    v5 = [versions copy];
    privacyAcknowledgementVersions = self->super._privacyAcknowledgementVersions;
    self->super._privacyAcknowledgementVersions = v5;

    MEMORY[0x1EEE66BB8](v5, privacyAcknowledgementVersions);
  }
}

- (void)setPrivateListeningEnabledForHomeUsers:(id)users
{
  if (self->super._privateListeningEnabledForHomeUsers != users)
  {
    v5 = [users copy];
    privateListeningEnabledForHomeUsers = self->super._privateListeningEnabledForHomeUsers;
    self->super._privateListeningEnabledForHomeUsers = v5;

    MEMORY[0x1EEE66BB8](v5, privateListeningEnabledForHomeUsers);
  }
}

- (void)setPrivateListeningEnabled:(id)enabled
{
  if (self->super._privateListeningEnabled != enabled)
  {
    v5 = [enabled copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;

    MEMORY[0x1EEE66BB8](v5, privateListeningEnabled);
  }
}

- (void)setCloudLibraryStateReason:(id)reason
{
  if (self->super._cloudLibraryStateReason != reason)
  {
    v5 = [reason copy];
    cloudLibraryStateReason = self->super._cloudLibraryStateReason;
    self->super._cloudLibraryStateReason = v5;

    MEMORY[0x1EEE66BB8](v5, cloudLibraryStateReason);
  }
}

- (void)setHomeUserIdentifiers:(id)identifiers
{
  if (self->super._homeUserIdentifiers != identifiers)
  {
    v5 = [identifiers copy];
    homeUserIdentifiers = self->super._homeUserIdentifiers;
    self->super._homeUserIdentifiers = v5;

    MEMORY[0x1EEE66BB8](v5, homeUserIdentifiers);
  }
}

- (void)setMergeToCloudLibraryPreference:(id)preference
{
  if (self->super._mergeToCloudLibraryPreference != preference)
  {
    v5 = [preference copy];
    mergeToCloudLibraryPreference = self->super._mergeToCloudLibraryPreference;
    self->super._mergeToCloudLibraryPreference = v5;

    MEMORY[0x1EEE66BB8](v5, mergeToCloudLibraryPreference);
  }
}

- (void)setUsername:(id)username
{
  if (self->super._username != username)
  {
    v5 = [username copy];
    username = self->super._username;
    self->super._username = v5;

    MEMORY[0x1EEE66BB8](v5, username);
  }
}

- (void)setStorefrontIdentifier:(id)identifier
{
  if (self->super._storefrontIdentifier != identifier)
  {
    v5 = [identifier copy];
    storefrontIdentifier = self->super._storefrontIdentifier;
    self->super._storefrontIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, storefrontIdentifier);
  }
}

- (void)setLastName:(id)name
{
  if (self->super._lastName != name)
  {
    v5 = [name copy];
    lastName = self->super._lastName;
    self->super._lastName = v5;

    MEMORY[0x1EEE66BB8](v5, lastName);
  }
}

- (void)setFirstName:(id)name
{
  if (self->super._firstName != name)
  {
    v5 = [name copy];
    firstName = self->super._firstName;
    self->super._firstName = v5;

    MEMORY[0x1EEE66BB8](v5, firstName);
  }
}

- (void)setDSID:(id)d
{
  if (self->super._dsid != d)
  {
    v5 = [d copy];
    dsid = self->super._dsid;
    self->super._dsid = v5;

    MEMORY[0x1EEE66BB8](v5, dsid);
  }
}

- (void)setDelegateToken:(id)token
{
  if (self->super._delegateToken != token)
  {
    v5 = [token copy];
    delegateToken = self->super._delegateToken;
    self->super._delegateToken = v5;

    MEMORY[0x1EEE66BB8](v5, delegateToken);
  }
}

- (void)setCarrierBundleDeviceIdentifier:(id)identifier
{
  if (self->super._carrierBundleDeviceIdentifier != identifier)
  {
    v5 = [identifier copy];
    carrierBundleDeviceIdentifier = self->super._carrierBundleDeviceIdentifier;
    self->super._carrierBundleDeviceIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, carrierBundleDeviceIdentifier);
  }
}

- (void)setAlternateDSID:(id)d
{
  if (self->super._alternateDSID != d)
  {
    v5 = [d copy];
    alternateDSID = self->super._alternateDSID;
    self->super._alternateDSID = v5;

    MEMORY[0x1EEE66BB8](v5, alternateDSID);
  }
}

@end