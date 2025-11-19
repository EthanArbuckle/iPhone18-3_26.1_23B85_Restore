@interface ICUserIdentityProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentityProperties:(id)a3;
- (ICUserIdentityProperties)initWithCoder:(id)a3;
- (NSString)carrierBundleDeviceIdentifier;
- (NSString)firstName;
- (NSString)iCloudPersonID;
- (NSString)lastName;
- (NSString)storefrontIdentifier;
- (NSString)username;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  alternateDSID = self->_alternateDSID;
  v5 = a3;
  [v5 encodeObject:alternateDSID forKey:@"altDSID"];
  [v5 encodeObject:self->_carrierBundleDeviceIdentifier forKey:@"carrierDeviceID"];
  [v5 encodeBool:self->_cloudBackupEnabled forKey:@"cloudBackup"];
  [v5 encodeBool:self->_delegated forKey:@"delegated"];
  [v5 encodeObject:self->_delegateToken forKey:@"delegateToken"];
  [v5 encodeObject:self->_dsid forKey:@"dsid"];
  [v5 encodeObject:self->_firstName forKey:@"firstName"];
  [v5 encodeObject:self->_iCloudPersonID forKey:@"iCloudPersonID"];
  [v5 encodeObject:self->_lastName forKey:@"lastName"];
  [v5 encodeBool:self->_managedAppleID forKey:@"isManaged"];
  [v5 encodeBool:self->_sandboxed forKey:@"sandboxed"];
  [v5 encodeObject:self->_storefrontIdentifier forKey:@"storefront"];
  [v5 encodeBool:self->_subscriptionStatusEnabled forKey:@"subscriptionStatusEnabled"];
  [v5 encodeObject:self->_username forKey:@"username"];
  [v5 encodeObject:self->_mergeToCloudLibraryPreference forKey:@"mergeToCloudLibraryPreference"];
  [v5 encodeObject:self->_homeUserIdentifiers forKey:@"homeUserIdentifiers"];
  [v5 encodeObject:self->_cloudLibraryStateReason forKey:@"cloudLibraryStateReason"];
  [v5 encodeObject:self->_privateListeningEnabled forKey:@"privateListeningEnabled"];
  [v5 encodeBool:self->_activeLocker forKey:@"activeLocker"];
  [v5 encodeBool:self->_active forKey:@"active"];
  [v5 encodeObject:self->_privateListeningEnabledForHomeUsers forKey:@"privateListeningEnabledForHomeUsers"];
  [v5 encodeObject:self->_privacyAcknowledgementVersions forKey:@"privacyAcknowledgementVersions"];
  [v5 encodeBool:self->_u18MinorAccount forKey:@"u18MinorAccount"];
}

- (ICUserIdentityProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = ICUserIdentityProperties;
  v5 = [(ICUserIdentityProperties *)&v48 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierDeviceID"];
    carrierBundleDeviceIdentifier = v5->_carrierBundleDeviceIdentifier;
    v5->_carrierBundleDeviceIdentifier = v8;

    v5->_cloudBackupEnabled = [v4 decodeBoolForKey:@"cloudBackup"];
    v5->_delegated = [v4 decodeBoolForKey:@"delegated"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delegateToken"];
    delegateToken = v5->_delegateToken;
    v5->_delegateToken = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudPersonID"];
    iCloudPersonID = v5->_iCloudPersonID;
    v5->_iCloudPersonID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v5->_managedAppleID = [v4 decodeBoolForKey:@"isManaged"];
    v5->_sandboxed = [v4 decodeBoolForKey:@"sandboxed"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefrontIdentifier = v5->_storefrontIdentifier;
    v5->_storefrontIdentifier = v20;

    v5->_subscriptionStatusEnabled = [v4 decodeBoolForKey:@"subscriptionStatusEnabled"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    username = v5->_username;
    v5->_username = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mergeToCloudLibraryPreference"];
    mergeToCloudLibraryPreference = v5->_mergeToCloudLibraryPreference;
    v5->_mergeToCloudLibraryPreference = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"homeUserIdentifiers"];
    homeUserIdentifiers = v5->_homeUserIdentifiers;
    v5->_homeUserIdentifiers = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudLibraryStateReason"];
    cloudLibraryStateReason = v5->_cloudLibraryStateReason;
    v5->_cloudLibraryStateReason = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateListeningEnabled"];
    privateListeningEnabled = v5->_privateListeningEnabled;
    v5->_privateListeningEnabled = v33;

    v5->_activeLocker = [v4 decodeBoolForKey:@"activeLocker"];
    v5->_active = [v4 decodeBoolForKey:@"active"];
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"privateListeningEnabledForHomeUsers"];
    privateListeningEnabledForHomeUsers = v5->_privateListeningEnabledForHomeUsers;
    v5->_privateListeningEnabledForHomeUsers = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"privacyAcknowledgementVersions"];
    privacyAcknowledgementVersions = v5->_privacyAcknowledgementVersions;
    v5->_privacyAcknowledgementVersions = v45;

    v5->_u18MinorAccount = [v4 decodeBoolForKey:@"u18MinorAccount"];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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

  v8 = [objc_msgSend(v7 allocWithZone:{a3), "init"}];
  if (v8)
  {
    __CopyHelper(self, v8, a3);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  if ([v4 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [[ICUserIdentityProperties allocWithZone:?]];
    if (v5)
    {
      __CopyHelper(self, v5, a3);
    }

    return v5;
  }

  else
  {

    return self;
  }
}

- (BOOL)isEqualToIdentityProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_65;
  }

  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v6 = [(ICUserIdentityProperties *)self alternateDSID];
    v7 = [(ICUserIdentityProperties *)v5 alternateDSID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v6 isEqual:v7];

      if ((v9 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v11 = [(ICUserIdentityProperties *)self carrierBundleDeviceIdentifier];
    v12 = [(ICUserIdentityProperties *)v5 carrierBundleDeviceIdentifier];
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v15 = [(ICUserIdentityProperties *)self DSID];
    v16 = [(ICUserIdentityProperties *)v5 DSID];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [v15 isEqual:v16];

      if ((v18 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v19 = [(ICUserIdentityProperties *)self firstName];
    v20 = [(ICUserIdentityProperties *)v5 firstName];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [v19 isEqual:v20];

      if ((v22 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v23 = [(ICUserIdentityProperties *)self lastName];
    v24 = [(ICUserIdentityProperties *)v5 lastName];
    v25 = v24;
    if (v23 == v24)
    {
    }

    else
    {
      v26 = [v23 isEqual:v24];

      if ((v26 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v27 = [(ICUserIdentityProperties *)self isManagedAppleID];
    if (v27 != [(ICUserIdentityProperties *)v5 isManagedAppleID])
    {
      goto LABEL_65;
    }

    v28 = [(ICUserIdentityProperties *)self isSandboxed];
    if (v28 != [(ICUserIdentityProperties *)v5 isSandboxed])
    {
      goto LABEL_65;
    }

    v29 = [(ICUserIdentityProperties *)self storefrontIdentifier];
    v30 = [(ICUserIdentityProperties *)v5 storefrontIdentifier];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [v29 isEqual:v30];

      if ((v32 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v33 = [(ICUserIdentityProperties *)self isSubscriptionStatusEnabled];
    if (v33 != [(ICUserIdentityProperties *)v5 isSubscriptionStatusEnabled])
    {
      goto LABEL_65;
    }

    v34 = [(ICUserIdentityProperties *)self username];
    v35 = [(ICUserIdentityProperties *)v5 username];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [v34 isEqual:v35];

      if ((v37 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v38 = [(ICUserIdentityProperties *)self mergeToCloudLibraryPreference];
    v39 = [(ICUserIdentityProperties *)v5 mergeToCloudLibraryPreference];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [v38 isEqual:v39];

      if ((v41 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v42 = [(ICUserIdentityProperties *)self homeUserIdentifiers];
    v43 = [(ICUserIdentityProperties *)v5 homeUserIdentifiers];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [v42 isEqual:v43];

      if ((v45 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v46 = [(ICUserIdentityProperties *)self cloudLibraryStateReason];
    v47 = [(ICUserIdentityProperties *)v5 cloudLibraryStateReason];
    v48 = v47;
    if (v46 == v47)
    {
    }

    else
    {
      v49 = [v46 isEqual:v47];

      if ((v49 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v50 = [(ICUserIdentityProperties *)self privateListeningEnabled];
    v51 = [(ICUserIdentityProperties *)v5 privateListeningEnabled];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [v50 isEqual:v51];

      if ((v53 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v54 = [(ICUserIdentityProperties *)self isActiveLocker];
    if (v54 != [(ICUserIdentityProperties *)v5 isActiveLocker])
    {
      goto LABEL_65;
    }

    v55 = [(ICUserIdentityProperties *)self isActive];
    if (v55 != [(ICUserIdentityProperties *)v5 isActive])
    {
      goto LABEL_65;
    }

    v56 = [(ICUserIdentityProperties *)self privateListeningEnabledForHomeUsers];
    v57 = [(ICUserIdentityProperties *)v5 privateListeningEnabledForHomeUsers];
    v58 = v57;
    if (v56 == v57)
    {
    }

    else
    {
      v59 = [v56 isEqual:v57];

      if ((v59 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v60 = [(ICUserIdentityProperties *)self isCloudBackupEnabled];
    if (v60 != [(ICUserIdentityProperties *)v5 isCloudBackupEnabled])
    {
      goto LABEL_65;
    }

    v61 = [(ICUserIdentityProperties *)self iCloudPersonID];
    v62 = [(ICUserIdentityProperties *)v5 iCloudPersonID];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [v61 isEqual:v62];

      if ((v64 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v65 = [(ICUserIdentityProperties *)self isDelegated];
    if (v65 != [(ICUserIdentityProperties *)v5 isDelegated])
    {
LABEL_65:
      v10 = 0;
      goto LABEL_66;
    }

    v66 = [(ICUserIdentityProperties *)self delegateToken];
    v67 = [(ICUserIdentityProperties *)v5 delegateToken];
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      v69 = [v66 isEqual:v67];

      if ((v69 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v71 = [(ICUserIdentityProperties *)self privacyAcknowledgementVersions];
    v72 = [(ICUserIdentityProperties *)v5 privacyAcknowledgementVersions];
    if (v71 == v72)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v71 isEqual:v72];
    }
  }

LABEL_66:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICUserIdentityProperties *)self isEqualToIdentityProperties:v4];
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