@interface STUIUser
+ (unint64_t)userTypeFromUser:(id)user;
- (BOOL)canRecoveryAuthenticate;
- (BOOL)hasPasscode;
- (BOOL)needsRecoveryAppleID;
- (NSString)givenName;
- (STUIUser)initWithUser:(id)user;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)regionU18;
@end

@implementation STUIUser

- (STUIUser)initWithUser:(id)user
{
  userCopy = user;
  v5 = [(STUIUser *)self init];
  if (v5)
  {
    objectID = [userCopy objectID];
    userObjectID = v5->_userObjectID;
    v5->_userObjectID = objectID;

    v5->_type = [STUIUser userTypeFromUser:userCopy];
    localUserDeviceState = [userCopy localUserDeviceState];
    v5->_remoteUser = localUserDeviceState == 0;

    if (v5->_remoteUser)
    {
      v9 = 1;
    }

    else
    {
      familySettings = [userCopy familySettings];
      isManaged = [familySettings isManaged];

      v9 = isManaged;
    }

    v5->_source = v9;
    v12 = objc_opt_new();
    givenName = [userCopy givenName];
    [v12 setGivenName:givenName];

    familyName = [userCopy familyName];
    [v12 setFamilyName:familyName];

    v15 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:0 options:0];
    name = v5->_name;
    v5->_name = v15;

    dsid = [userCopy dsid];
    dsid = v5->_dsid;
    v5->_dsid = dsid;

    altDSID = [userCopy altDSID];
    altDSID = v5->_altDSID;
    v5->_altDSID = altDSID;

    effectivePasscode = [userCopy effectivePasscode];
    passcode = v5->_passcode;
    v5->_passcode = effectivePasscode;

    effectiveRecoveryAltDSID = [userCopy effectiveRecoveryAltDSID];
    v24 = [effectiveRecoveryAltDSID copy];
    recoveryAltDSID = v5->_recoveryAltDSID;
    v5->_recoveryAltDSID = v24;

    v5->_screenTimeEnabled = [userCopy screenTimeEnabled];
    v5->_webUsageEnabled = [userCopy shareWebUsage];
    v5->_managed = [userCopy isManaged];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(STUIUser *)self name];
  v6 = *(v4 + 24);
  *(v4 + 24) = name;

  dsid = [(STUIUser *)self dsid];
  v8 = *(v4 + 32);
  *(v4 + 32) = dsid;

  altDSID = [(STUIUser *)self altDSID];
  v10 = *(v4 + 40);
  *(v4 + 40) = altDSID;

  *(v4 + 11) = [(STUIUser *)self isRemoteUser];
  *(v4 + 8) = [(STUIUser *)self isScreenTimeEnabled];
  *(v4 + 10) = [(STUIUser *)self isWebUsageEnabled];
  *(v4 + 48) = [(STUIUser *)self type];
  passcode = [(STUIUser *)self passcode];
  v12 = [passcode copy];
  v13 = *(v4 + 56);
  *(v4 + 56) = v12;

  recoveryAltDSID = [(STUIUser *)self recoveryAltDSID];
  v15 = [recoveryAltDSID copy];
  v16 = *(v4 + 64);
  *(v4 + 64) = v15;

  *(v4 + 12) = [(STUIUser *)self hasAllowances];
  *(v4 + 16) = [(STUIUser *)self source];
  userObjectID = [(STUIUser *)self userObjectID];
  v18 = *(v4 + 72);
  *(v4 + 72) = userObjectID;

  *(v4 + 9) = [(STUIUser *)self isManaged];
  return v4;
}

- (BOOL)hasPasscode
{
  passcode = [(STUIUser *)self passcode];
  v3 = [passcode length] != 0;

  return v3;
}

- (BOOL)needsRecoveryAppleID
{
  if ([(STUIUser *)self type]- 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  recoveryAltDSID = [(STUIUser *)self recoveryAltDSID];
  v4 = recoveryAltDSID == 0;

  return v4;
}

- (BOOL)canRecoveryAuthenticate
{
  recoveryAltDSID = [(STUIUser *)self recoveryAltDSID];

  if ([(STUIUser *)self isChild]|| ![(STUIUser *)self type])
  {
    v5 = 0;
  }

  else
  {
    altDSID = [(STUIUser *)self altDSID];
    v5 = altDSID != 0;
  }

  return recoveryAltDSID != 0 || v5;
}

+ (unint64_t)userTypeFromUser:(id)user
{
  userCopy = user;
  dsid = [userCopy dsid];
  if (dsid && (v5 = dsid, [userCopy dsid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_28769D388), v6, v5, (v7 & 1) == 0))
  {
    familyMemberType = [userCopy familyMemberType];
    if ([familyMemberType isEqualToString:*MEMORY[0x277D4BBE8]])
    {
      familySettings = [userCopy familySettings];
      isManaged = [familySettings isManaged];

      if (isManaged)
      {
        v8 = 5;
      }

      else if ([userCopy isFamilyOrganizer])
      {
        v8 = 2;
      }

      else if ([userCopy isParent])
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }
    }

    else if ([familyMemberType isEqualToString:*MEMORY[0x277D4BBF8]])
    {
      v8 = 6;
    }

    else if ([familyMemberType isEqualToString:*MEMORY[0x277D4BBF0]])
    {
      v8 = 7;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)givenName
{
  name = [(STUIUser *)self name];
  if (name)
  {
    v3 = objc_opt_new();
    v4 = [v3 personNameComponentsFromString:name];

    givenName = [v4 givenName];
    if (![givenName length])
    {

      givenName = 0;
    }
  }

  else
  {
    givenName = 0;
  }

  return givenName;
}

- (int64_t)regionU18
{
  v2 = objc_alloc_init(MEMORY[0x277CF0148]);
  ageRangeCache = [v2 ageRangeCache];
  ageRangeSettings = [ageRangeCache ageRangeSettings];

  if (ageRangeSettings)
  {
    v5 = ([ageRangeSettings u18Limit] - 1);
  }

  else
  {
    v5 = 17;
  }

  return v5;
}

@end