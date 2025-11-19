@interface ICMutableUserIdentityProperties
- (void)setAlternateDSID:(id)a3;
- (void)setCarrierBundleDeviceIdentifier:(id)a3;
- (void)setCloudLibraryStateReason:(id)a3;
- (void)setDSID:(id)a3;
- (void)setDelegateToken:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setHomeUserIdentifiers:(id)a3;
- (void)setICloudPersonID:(id)a3;
- (void)setLastName:(id)a3;
- (void)setMergeToCloudLibraryPreference:(id)a3;
- (void)setPrivacyAcknowledgementVersions:(id)a3;
- (void)setPrivateListeningEnabled:(id)a3;
- (void)setPrivateListeningEnabledForHomeUsers:(id)a3;
- (void)setStorefrontIdentifier:(id)a3;
- (void)setUsername:(id)a3;
@end

@implementation ICMutableUserIdentityProperties

- (void)setICloudPersonID:(id)a3
{
  if (self->super._iCloudPersonID != a3)
  {
    v5 = [a3 copy];
    iCloudPersonID = self->super._iCloudPersonID;
    self->super._iCloudPersonID = v5;

    MEMORY[0x1EEE66BB8](v5, iCloudPersonID);
  }
}

- (void)setPrivacyAcknowledgementVersions:(id)a3
{
  if (self->super._privacyAcknowledgementVersions != a3)
  {
    v5 = [a3 copy];
    privacyAcknowledgementVersions = self->super._privacyAcknowledgementVersions;
    self->super._privacyAcknowledgementVersions = v5;

    MEMORY[0x1EEE66BB8](v5, privacyAcknowledgementVersions);
  }
}

- (void)setPrivateListeningEnabledForHomeUsers:(id)a3
{
  if (self->super._privateListeningEnabledForHomeUsers != a3)
  {
    v5 = [a3 copy];
    privateListeningEnabledForHomeUsers = self->super._privateListeningEnabledForHomeUsers;
    self->super._privateListeningEnabledForHomeUsers = v5;

    MEMORY[0x1EEE66BB8](v5, privateListeningEnabledForHomeUsers);
  }
}

- (void)setPrivateListeningEnabled:(id)a3
{
  if (self->super._privateListeningEnabled != a3)
  {
    v5 = [a3 copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;

    MEMORY[0x1EEE66BB8](v5, privateListeningEnabled);
  }
}

- (void)setCloudLibraryStateReason:(id)a3
{
  if (self->super._cloudLibraryStateReason != a3)
  {
    v5 = [a3 copy];
    cloudLibraryStateReason = self->super._cloudLibraryStateReason;
    self->super._cloudLibraryStateReason = v5;

    MEMORY[0x1EEE66BB8](v5, cloudLibraryStateReason);
  }
}

- (void)setHomeUserIdentifiers:(id)a3
{
  if (self->super._homeUserIdentifiers != a3)
  {
    v5 = [a3 copy];
    homeUserIdentifiers = self->super._homeUserIdentifiers;
    self->super._homeUserIdentifiers = v5;

    MEMORY[0x1EEE66BB8](v5, homeUserIdentifiers);
  }
}

- (void)setMergeToCloudLibraryPreference:(id)a3
{
  if (self->super._mergeToCloudLibraryPreference != a3)
  {
    v5 = [a3 copy];
    mergeToCloudLibraryPreference = self->super._mergeToCloudLibraryPreference;
    self->super._mergeToCloudLibraryPreference = v5;

    MEMORY[0x1EEE66BB8](v5, mergeToCloudLibraryPreference);
  }
}

- (void)setUsername:(id)a3
{
  if (self->super._username != a3)
  {
    v5 = [a3 copy];
    username = self->super._username;
    self->super._username = v5;

    MEMORY[0x1EEE66BB8](v5, username);
  }
}

- (void)setStorefrontIdentifier:(id)a3
{
  if (self->super._storefrontIdentifier != a3)
  {
    v5 = [a3 copy];
    storefrontIdentifier = self->super._storefrontIdentifier;
    self->super._storefrontIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, storefrontIdentifier);
  }
}

- (void)setLastName:(id)a3
{
  if (self->super._lastName != a3)
  {
    v5 = [a3 copy];
    lastName = self->super._lastName;
    self->super._lastName = v5;

    MEMORY[0x1EEE66BB8](v5, lastName);
  }
}

- (void)setFirstName:(id)a3
{
  if (self->super._firstName != a3)
  {
    v5 = [a3 copy];
    firstName = self->super._firstName;
    self->super._firstName = v5;

    MEMORY[0x1EEE66BB8](v5, firstName);
  }
}

- (void)setDSID:(id)a3
{
  if (self->super._dsid != a3)
  {
    v5 = [a3 copy];
    dsid = self->super._dsid;
    self->super._dsid = v5;

    MEMORY[0x1EEE66BB8](v5, dsid);
  }
}

- (void)setDelegateToken:(id)a3
{
  if (self->super._delegateToken != a3)
  {
    v5 = [a3 copy];
    delegateToken = self->super._delegateToken;
    self->super._delegateToken = v5;

    MEMORY[0x1EEE66BB8](v5, delegateToken);
  }
}

- (void)setCarrierBundleDeviceIdentifier:(id)a3
{
  if (self->super._carrierBundleDeviceIdentifier != a3)
  {
    v5 = [a3 copy];
    carrierBundleDeviceIdentifier = self->super._carrierBundleDeviceIdentifier;
    self->super._carrierBundleDeviceIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, carrierBundleDeviceIdentifier);
  }
}

- (void)setAlternateDSID:(id)a3
{
  if (self->super._alternateDSID != a3)
  {
    v5 = [a3 copy];
    alternateDSID = self->super._alternateDSID;
    self->super._alternateDSID = v5;

    MEMORY[0x1EEE66BB8](v5, alternateDSID);
  }
}

@end