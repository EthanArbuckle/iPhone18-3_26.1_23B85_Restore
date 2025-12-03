@interface STRootViewModel
- (BOOL)canEditScreenTimePasscode;
- (BOOL)canSetUpFamily;
- (BOOL)canSignIn;
- (BOOL)canStartScreenTime;
- (BOOL)canStopScreenTime;
- (BOOL)canStopSharingScreenTime;
- (BOOL)canToggleCloudSyncData;
- (BOOL)canToggleWebsiteData;
- (BOOL)canViewAskForTimeRequests;
- (BOOL)forceParentalControls;
- (BOOL)isLocalOrRemotelyManagedUser;
- (BOOL)isLocalOrRemotelyManagedUserWithScreenTimeDisabled;
- (BOOL)isRemoteUnmanagedChild;
- (BOOL)isRemotelyManagedUserWithPasscode;
- (BOOL)isScreenTimeEnabled;
- (BOOL)isSharingUsageData;
- (BOOL)isWebUsageEnabled;
- (BOOL)shouldShowCompatibilityAlerts;
- (BOOL)shouldShowMisconfiguredAdultPrompt;
- (STRootViewModel)init;
- (STUIDevice)lastPasscodeUseDevice;
@end

@implementation STRootViewModel

- (STRootViewModel)init
{
  v10.receiver = self;
  v10.super_class = STRootViewModel;
  v2 = [(STRootViewModel *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    me = v2->_me;
    v2->_me = v3;

    children = v2->_children;
    v2->_children = MEMORY[0x277CBEBF8];

    v6 = objc_opt_new();
    installedBundleIDs = v2->_installedBundleIDs;
    v2->_installedBundleIDs = v6;

    installedBundleIDsByCategoryIdentifier = v2->_installedBundleIDsByCategoryIdentifier;
    v2->_installedBundleIDsByCategoryIdentifier = MEMORY[0x277CBEC10];
  }

  return v2;
}

- (BOOL)isScreenTimeEnabled
{
  v2 = [(STRootViewModel *)self me];
  isScreenTimeEnabled = [v2 isScreenTimeEnabled];

  return isScreenTimeEnabled;
}

- (BOOL)canStartScreenTime
{
  v3 = [(STRootViewModel *)self me];
  if (([v3 isRemoteUser] & 1) != 0 || objc_msgSend(v3, "type") <= 7)
  {
    v2 = [v3 isScreenTimeEnabled] ^ 1;
  }

  return v2 & 1;
}

- (BOOL)canStopScreenTime
{
  v3 = [(STRootViewModel *)self me];
  if ([v3 isRemoteUser] || (v4 = objc_msgSend(v3, "type"), v4 < 5))
  {
    isScreenTimeEnabled = [v3 isScreenTimeEnabled];
  }

  else if (v4 - 5 < 3)
  {
    if ([v3 isScreenTimeEnabled])
    {
      isScreenTimeEnabled = [v3 isManaged] ^ 1;
    }

    else
    {
      isScreenTimeEnabled = 0;
    }
  }

  return isScreenTimeEnabled & 1;
}

- (BOOL)canStopSharingScreenTime
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isManaged])
  {
    type = [v2 type];
    isRemoteUser = 1;
    if (type <= 7 && type != 5)
    {
      isRemoteUser = [v2 isRemoteUser];
    }
  }

  else
  {
    isRemoteUser = 0;
  }

  return isRemoteUser;
}

- (BOOL)isSharingUsageData
{
  v2 = [(STRootViewModel *)self me];
  if (![v2 isScreenTimeEnabled] || (objc_msgSend(v2, "isRemoteUser") & 1) != 0 || (objc_msgSend(v2, "type") - 5) > 2)
  {
    isManaged = 0;
  }

  else
  {
    isManaged = [v2 isManaged];
  }

  return isManaged;
}

- (BOOL)isWebUsageEnabled
{
  v2 = [(STRootViewModel *)self me];
  isWebUsageEnabled = [v2 isWebUsageEnabled];

  return isWebUsageEnabled;
}

- (BOOL)isRemoteUnmanagedChild
{
  v2 = [(STRootViewModel *)self me];
  if (([v2 type] & 0xFFFFFFFFFFFFFFFELL) == 6 && objc_msgSend(v2, "isRemoteUser"))
  {
    v3 = [v2 isManaged] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isLocalOrRemotelyManagedUser
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isRemoteUser])
  {
    if ([v2 isRemoteUser])
    {
      isManaged = [v2 isManaged];
    }

    else
    {
      isManaged = 0;
    }
  }

  else
  {
    isManaged = 1;
  }

  return isManaged;
}

- (BOOL)isLocalOrRemotelyManagedUserWithScreenTimeDisabled
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isScreenTimeEnabled])
  {
    goto LABEL_2;
  }

  if (![v2 isRemoteUser])
  {
    isManaged = 1;
    goto LABEL_7;
  }

  if (![v2 isRemoteUser])
  {
LABEL_2:
    isManaged = 0;
  }

  else
  {
    isManaged = [v2 isManaged];
  }

LABEL_7:

  return isManaged;
}

- (BOOL)isRemotelyManagedUserWithPasscode
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isRemoteUser] && (objc_msgSend(v2, "type") - 5) <= 2 && objc_msgSend(v2, "isManaged"))
  {
    hasPasscode = [v2 hasPasscode];
  }

  else
  {
    hasPasscode = 0;
  }

  return hasPasscode;
}

- (BOOL)canSignIn
{
  v2 = [(STRootViewModel *)self me];
  v3 = ([v2 isRemoteUser] & 1) == 0 && (objc_msgSend(v2, "type") - 8) < 0xFFFFFFFFFFFFFFF9;

  return v3;
}

- (BOOL)canToggleCloudSyncData
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isRemoteUser])
  {
    v3 = 0;
  }

  else
  {
    type = [v2 type];
    if (type <= 7)
    {
      v3 = 0xFEu >> type;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

- (BOOL)canEditScreenTimePasscode
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isRemoteUser])
  {
    LOBYTE(v3) = [v2 isManaged];
  }

  else if (([v2 type] - 5) > 2)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [v2 isManaged] ^ 1;
  }

  return v3;
}

- (BOOL)canSetUpFamily
{
  v2 = [(STRootViewModel *)self me];
  v3 = ([v2 isRemoteUser] & 1) == 0 && objc_msgSend(v2, "type") == 1;

  return v3;
}

- (BOOL)canViewAskForTimeRequests
{
  isScreenTimeEnabled = [(STRootViewModel *)self isScreenTimeEnabled];
  if (isScreenTimeEnabled)
  {
    v4 = [(STRootViewModel *)self me];
    isRemoteUser = [v4 isRemoteUser];

    LOBYTE(isScreenTimeEnabled) = isRemoteUser;
  }

  return isScreenTimeEnabled;
}

- (BOOL)forceParentalControls
{
  v2 = [(STRootViewModel *)self me];
  if ([v2 isRemoteUser])
  {
    v3 = ([v2 type] & 0xFFFFFFFFFFFFFFFELL) == 6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canToggleWebsiteData
{
  v2 = [(STRootViewModel *)self me];
  v3 = [v2 isScreenTimeEnabled] && objc_msgSend(v2, "isRemoteUser") && (objc_msgSend(v2, "type") - 5) < 3;

  return v3;
}

- (BOOL)shouldShowCompatibilityAlerts
{
  v3 = [(STRootViewModel *)self me];
  if (-[STRootViewModel isCloudSyncEnabled](self, "isCloudSyncEnabled") || [v3 isRemoteUser])
  {
    dsid = [v3 dsid];
    v5 = dsid != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (STUIDevice)lastPasscodeUseDevice
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastPasscodeUseDate" ascending:0];
  devices = [(STRootViewModel *)self devices];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [devices sortedArrayUsingDescriptors:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)shouldShowMisconfiguredAdultPrompt
{
  v18 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
    if (primaryAuthKitAccount)
    {
      v5 = [mEMORY[0x277CF0130] isEligibleToMigrateToChildForAccount:primaryAuthKitAccount];
      bOOLValue = [v5 BOOLValue];

      if (bOOLValue)
      {
        v7 = [(STRootViewModel *)self me];
        altDSID = [v7 altDSID];
        if (([mEMORY[0x277CF0130] hasPrimaryiCloudAccountForAltDSID:altDSID]& 1) != 0)
        {
          if (([v7 shouldConfirmAge]& 1) != 0)
          {
            v9 = 1;
LABEL_22:

            goto LABEL_23;
          }

          v13 = +[STUILog ageMigrationTip];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16) = 0;
            v14 = "Skip showing age migration tip since user type not supported for feature";
            goto LABEL_20;
          }
        }

        else
        {
          v13 = +[STUILog ageMigrationTip];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16) = 0;
            v14 = "There's no apple account signed in, not showing tip";
LABEL_20:
            _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
          }
        }

        v9 = 0;
        goto LABEL_22;
      }

      v7 = +[STUILog ageMigrationTip];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = @"No";
        v10 = "Is this account eligible to migrate? %@";
        v11 = v7;
        v12 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = +[STUILog ageMigrationTip];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v10 = "We need a authkit account to determine if account is eligible to migrate. Bail and return false";
        v11 = v7;
        v12 = 2;
LABEL_14:
        _os_log_impl(&dword_264BA2000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
      }
    }

    v9 = 0;
LABEL_23:

    goto LABEL_24;
  }

  mEMORY[0x277CF0130] = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(mEMORY[0x277CF0130], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_264BA2000, mEMORY[0x277CF0130], OS_LOG_TYPE_DEFAULT, "Age migration tip feature is not enabled.", &v16, 2u);
  }

  v9 = 0;
LABEL_24:

  return v9;
}

@end