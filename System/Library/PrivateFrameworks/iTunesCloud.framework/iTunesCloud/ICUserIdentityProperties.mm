@interface ICUserIdentityProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentityProperties:(id)properties;
- (ICUserIdentityProperties)initWithCoder:(id)coder;
- (NSString)carrierBundleDeviceIdentifier;
- (NSString)firstName;
- (NSString)iCloudPersonID;
- (NSString)lastName;
- (NSString)storefrontIdentifier;
- (NSString)username;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICUserIdentityProperties

- (NSString)storefrontIdentifier
{
  if (self->_storefrontIdentifier)
  {
    return self->_storefrontIdentifier;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (void)encodeWithCoder:(id)coder
{
  alternateDSID = self->_alternateDSID;
  coderCopy = coder;
  [coderCopy encodeObject:alternateDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_carrierBundleDeviceIdentifier forKey:@"carrierDeviceID"];
  [coderCopy encodeBool:self->_cloudBackupEnabled forKey:@"cloudBackup"];
  [coderCopy encodeBool:self->_delegated forKey:@"delegated"];
  [coderCopy encodeObject:self->_delegateToken forKey:@"delegateToken"];
  [coderCopy encodeObject:self->_dsid forKey:@"dsid"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_iCloudPersonID forKey:@"iCloudPersonID"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeBool:self->_managedAppleID forKey:@"isManaged"];
  [coderCopy encodeBool:self->_sandboxed forKey:@"sandboxed"];
  [coderCopy encodeObject:self->_storefrontIdentifier forKey:@"storefront"];
  [coderCopy encodeBool:self->_subscriptionStatusEnabled forKey:@"subscriptionStatusEnabled"];
  [coderCopy encodeObject:self->_username forKey:@"username"];
  [coderCopy encodeObject:self->_mergeToCloudLibraryPreference forKey:@"mergeToCloudLibraryPreference"];
  [coderCopy encodeObject:self->_homeUserIdentifiers forKey:@"homeUserIdentifiers"];
  [coderCopy encodeObject:self->_cloudLibraryStateReason forKey:@"cloudLibraryStateReason"];
  [coderCopy encodeObject:self->_privateListeningEnabled forKey:@"privateListeningEnabled"];
  [coderCopy encodeBool:self->_activeLocker forKey:@"activeLocker"];
  [coderCopy encodeBool:self->_active forKey:@"active"];
  [coderCopy encodeObject:self->_privateListeningEnabledForHomeUsers forKey:@"privateListeningEnabledForHomeUsers"];
  [coderCopy encodeObject:self->_privacyAcknowledgementVersions forKey:@"privacyAcknowledgementVersions"];
  [coderCopy encodeBool:self->_u18MinorAccount forKey:@"u18MinorAccount"];
}

- (ICUserIdentityProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = ICUserIdentityProperties;
  v5 = [(ICUserIdentityProperties *)&v48 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierDeviceID"];
    carrierBundleDeviceIdentifier = v5->_carrierBundleDeviceIdentifier;
    v5->_carrierBundleDeviceIdentifier = v8;

    v5->_cloudBackupEnabled = [coderCopy decodeBoolForKey:@"cloudBackup"];
    v5->_delegated = [coderCopy decodeBoolForKey:@"delegated"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delegateToken"];
    delegateToken = v5->_delegateToken;
    v5->_delegateToken = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudPersonID"];
    iCloudPersonID = v5->_iCloudPersonID;
    v5->_iCloudPersonID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v5->_managedAppleID = [coderCopy decodeBoolForKey:@"isManaged"];
    v5->_sandboxed = [coderCopy decodeBoolForKey:@"sandboxed"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefrontIdentifier = v5->_storefrontIdentifier;
    v5->_storefrontIdentifier = v20;

    v5->_subscriptionStatusEnabled = [coderCopy decodeBoolForKey:@"subscriptionStatusEnabled"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    username = v5->_username;
    v5->_username = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mergeToCloudLibraryPreference"];
    mergeToCloudLibraryPreference = v5->_mergeToCloudLibraryPreference;
    v5->_mergeToCloudLibraryPreference = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"homeUserIdentifiers"];
    homeUserIdentifiers = v5->_homeUserIdentifiers;
    v5->_homeUserIdentifiers = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudLibraryStateReason"];
    cloudLibraryStateReason = v5->_cloudLibraryStateReason;
    v5->_cloudLibraryStateReason = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateListeningEnabled"];
    privateListeningEnabled = v5->_privateListeningEnabled;
    v5->_privateListeningEnabled = v33;

    v5->_activeLocker = [coderCopy decodeBoolForKey:@"activeLocker"];
    v5->_active = [coderCopy decodeBoolForKey:@"active"];
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"privateListeningEnabledForHomeUsers"];
    privateListeningEnabledForHomeUsers = v5->_privateListeningEnabledForHomeUsers;
    v5->_privateListeningEnabledForHomeUsers = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"privacyAcknowledgementVersions"];
    privacyAcknowledgementVersions = v5->_privacyAcknowledgementVersions;
    v5->_privacyAcknowledgementVersions = v45;

    v5->_u18MinorAccount = [coderCopy decodeBoolForKey:@"u18MinorAccount"];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  if ([v5 isSubclassOfClass:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [objc_msgSend(v7 allocWithZone:{zone), "init"}];
  if (v8)
  {
    __CopyHelper(self, v8, zone);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  if ([v4 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [[ICUserIdentityProperties allocWithZone:?]];
    if (v5)
    {
      __CopyHelper(self, v5, zone);
    }

    return v5;
  }

  else
  {

    return self;
  }
}

- (BOOL)isEqualToIdentityProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (!propertiesCopy)
  {
    goto LABEL_65;
  }

  if (self == propertiesCopy)
  {
    v10 = 1;
  }

  else
  {
    alternateDSID = [(ICUserIdentityProperties *)self alternateDSID];
    alternateDSID2 = [(ICUserIdentityProperties *)v5 alternateDSID];
    v8 = alternateDSID2;
    if (alternateDSID == alternateDSID2)
    {
    }

    else
    {
      v9 = [alternateDSID isEqual:alternateDSID2];

      if ((v9 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    carrierBundleDeviceIdentifier = [(ICUserIdentityProperties *)self carrierBundleDeviceIdentifier];
    carrierBundleDeviceIdentifier2 = [(ICUserIdentityProperties *)v5 carrierBundleDeviceIdentifier];
    v13 = carrierBundleDeviceIdentifier2;
    if (carrierBundleDeviceIdentifier == carrierBundleDeviceIdentifier2)
    {
    }

    else
    {
      v14 = [carrierBundleDeviceIdentifier isEqual:carrierBundleDeviceIdentifier2];

      if ((v14 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    dSID = [(ICUserIdentityProperties *)self DSID];
    dSID2 = [(ICUserIdentityProperties *)v5 DSID];
    v17 = dSID2;
    if (dSID == dSID2)
    {
    }

    else
    {
      v18 = [dSID isEqual:dSID2];

      if ((v18 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    firstName = [(ICUserIdentityProperties *)self firstName];
    firstName2 = [(ICUserIdentityProperties *)v5 firstName];
    v21 = firstName2;
    if (firstName == firstName2)
    {
    }

    else
    {
      v22 = [firstName isEqual:firstName2];

      if ((v22 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    lastName = [(ICUserIdentityProperties *)self lastName];
    lastName2 = [(ICUserIdentityProperties *)v5 lastName];
    v25 = lastName2;
    if (lastName == lastName2)
    {
    }

    else
    {
      v26 = [lastName isEqual:lastName2];

      if ((v26 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    isManagedAppleID = [(ICUserIdentityProperties *)self isManagedAppleID];
    if (isManagedAppleID != [(ICUserIdentityProperties *)v5 isManagedAppleID])
    {
      goto LABEL_65;
    }

    isSandboxed = [(ICUserIdentityProperties *)self isSandboxed];
    if (isSandboxed != [(ICUserIdentityProperties *)v5 isSandboxed])
    {
      goto LABEL_65;
    }

    storefrontIdentifier = [(ICUserIdentityProperties *)self storefrontIdentifier];
    storefrontIdentifier2 = [(ICUserIdentityProperties *)v5 storefrontIdentifier];
    v31 = storefrontIdentifier2;
    if (storefrontIdentifier == storefrontIdentifier2)
    {
    }

    else
    {
      v32 = [storefrontIdentifier isEqual:storefrontIdentifier2];

      if ((v32 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    isSubscriptionStatusEnabled = [(ICUserIdentityProperties *)self isSubscriptionStatusEnabled];
    if (isSubscriptionStatusEnabled != [(ICUserIdentityProperties *)v5 isSubscriptionStatusEnabled])
    {
      goto LABEL_65;
    }

    username = [(ICUserIdentityProperties *)self username];
    username2 = [(ICUserIdentityProperties *)v5 username];
    v36 = username2;
    if (username == username2)
    {
    }

    else
    {
      v37 = [username isEqual:username2];

      if ((v37 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    mergeToCloudLibraryPreference = [(ICUserIdentityProperties *)self mergeToCloudLibraryPreference];
    mergeToCloudLibraryPreference2 = [(ICUserIdentityProperties *)v5 mergeToCloudLibraryPreference];
    v40 = mergeToCloudLibraryPreference2;
    if (mergeToCloudLibraryPreference == mergeToCloudLibraryPreference2)
    {
    }

    else
    {
      v41 = [mergeToCloudLibraryPreference isEqual:mergeToCloudLibraryPreference2];

      if ((v41 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    homeUserIdentifiers = [(ICUserIdentityProperties *)self homeUserIdentifiers];
    homeUserIdentifiers2 = [(ICUserIdentityProperties *)v5 homeUserIdentifiers];
    v44 = homeUserIdentifiers2;
    if (homeUserIdentifiers == homeUserIdentifiers2)
    {
    }

    else
    {
      v45 = [homeUserIdentifiers isEqual:homeUserIdentifiers2];

      if ((v45 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    cloudLibraryStateReason = [(ICUserIdentityProperties *)self cloudLibraryStateReason];
    cloudLibraryStateReason2 = [(ICUserIdentityProperties *)v5 cloudLibraryStateReason];
    v48 = cloudLibraryStateReason2;
    if (cloudLibraryStateReason == cloudLibraryStateReason2)
    {
    }

    else
    {
      v49 = [cloudLibraryStateReason isEqual:cloudLibraryStateReason2];

      if ((v49 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    privateListeningEnabled = [(ICUserIdentityProperties *)self privateListeningEnabled];
    privateListeningEnabled2 = [(ICUserIdentityProperties *)v5 privateListeningEnabled];
    v52 = privateListeningEnabled2;
    if (privateListeningEnabled == privateListeningEnabled2)
    {
    }

    else
    {
      v53 = [privateListeningEnabled isEqual:privateListeningEnabled2];

      if ((v53 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    isActiveLocker = [(ICUserIdentityProperties *)self isActiveLocker];
    if (isActiveLocker != [(ICUserIdentityProperties *)v5 isActiveLocker])
    {
      goto LABEL_65;
    }

    isActive = [(ICUserIdentityProperties *)self isActive];
    if (isActive != [(ICUserIdentityProperties *)v5 isActive])
    {
      goto LABEL_65;
    }

    privateListeningEnabledForHomeUsers = [(ICUserIdentityProperties *)self privateListeningEnabledForHomeUsers];
    privateListeningEnabledForHomeUsers2 = [(ICUserIdentityProperties *)v5 privateListeningEnabledForHomeUsers];
    v58 = privateListeningEnabledForHomeUsers2;
    if (privateListeningEnabledForHomeUsers == privateListeningEnabledForHomeUsers2)
    {
    }

    else
    {
      v59 = [privateListeningEnabledForHomeUsers isEqual:privateListeningEnabledForHomeUsers2];

      if ((v59 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    isCloudBackupEnabled = [(ICUserIdentityProperties *)self isCloudBackupEnabled];
    if (isCloudBackupEnabled != [(ICUserIdentityProperties *)v5 isCloudBackupEnabled])
    {
      goto LABEL_65;
    }

    iCloudPersonID = [(ICUserIdentityProperties *)self iCloudPersonID];
    iCloudPersonID2 = [(ICUserIdentityProperties *)v5 iCloudPersonID];
    v63 = iCloudPersonID2;
    if (iCloudPersonID == iCloudPersonID2)
    {
    }

    else
    {
      v64 = [iCloudPersonID isEqual:iCloudPersonID2];

      if ((v64 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    isDelegated = [(ICUserIdentityProperties *)self isDelegated];
    if (isDelegated != [(ICUserIdentityProperties *)v5 isDelegated])
    {
LABEL_65:
      v10 = 0;
      goto LABEL_66;
    }

    delegateToken = [(ICUserIdentityProperties *)self delegateToken];
    delegateToken2 = [(ICUserIdentityProperties *)v5 delegateToken];
    v68 = delegateToken2;
    if (delegateToken == delegateToken2)
    {
    }

    else
    {
      v69 = [delegateToken isEqual:delegateToken2];

      if ((v69 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    privacyAcknowledgementVersions = [(ICUserIdentityProperties *)self privacyAcknowledgementVersions];
    privacyAcknowledgementVersions2 = [(ICUserIdentityProperties *)v5 privacyAcknowledgementVersions];
    if (privacyAcknowledgementVersions == privacyAcknowledgementVersions2)
    {
      v10 = 1;
    }

    else
    {
      v10 = [privacyAcknowledgementVersions isEqual:privacyAcknowledgementVersions2];
    }
  }

LABEL_66:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICUserIdentityProperties *)self isEqualToIdentityProperties:equalCopy];
  }

  return v5;
}

- (NSString)username
{
  if (self->_username)
  {
    return self->_username;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)lastName
{
  if (self->_lastName)
  {
    return self->_lastName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)iCloudPersonID
{
  if (self->_iCloudPersonID)
  {
    return self->_iCloudPersonID;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)firstName
{
  if (self->_firstName)
  {
    return self->_firstName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)carrierBundleDeviceIdentifier
{
  if (self->_carrierBundleDeviceIdentifier)
  {
    return self->_carrierBundleDeviceIdentifier;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

@end