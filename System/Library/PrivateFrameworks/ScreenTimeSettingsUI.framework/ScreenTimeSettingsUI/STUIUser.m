@interface STUIUser
+ (unint64_t)userTypeFromUser:(id)a3;
- (BOOL)canRecoveryAuthenticate;
- (BOOL)hasPasscode;
- (BOOL)needsRecoveryAppleID;
- (NSString)givenName;
- (STUIUser)initWithUser:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)regionU18;
@end

@implementation STUIUser

- (STUIUser)initWithUser:(id)a3
{
  v4 = a3;
  v5 = [(STUIUser *)self init];
  if (v5)
  {
    v6 = [v4 objectID];
    userObjectID = v5->_userObjectID;
    v5->_userObjectID = v6;

    v5->_type = [STUIUser userTypeFromUser:v4];
    v8 = [v4 localUserDeviceState];
    v5->_remoteUser = v8 == 0;

    if (v5->_remoteUser)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v4 familySettings];
      v11 = [v10 isManaged];

      v9 = v11;
    }

    v5->_source = v9;
    v12 = objc_opt_new();
    v13 = [v4 givenName];
    [v12 setGivenName:v13];

    v14 = [v4 familyName];
    [v12 setFamilyName:v14];

    v15 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:0 options:0];
    name = v5->_name;
    v5->_name = v15;

    v17 = [v4 dsid];
    dsid = v5->_dsid;
    v5->_dsid = v17;

    v19 = [v4 altDSID];
    altDSID = v5->_altDSID;
    v5->_altDSID = v19;

    v21 = [v4 effectivePasscode];
    passcode = v5->_passcode;
    v5->_passcode = v21;

    v23 = [v4 effectiveRecoveryAltDSID];
    v24 = [v23 copy];
    recoveryAltDSID = v5->_recoveryAltDSID;
    v5->_recoveryAltDSID = v24;

    v5->_screenTimeEnabled = [v4 screenTimeEnabled];
    v5->_webUsageEnabled = [v4 shareWebUsage];
    v5->_managed = [v4 isManaged];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(STUIUser *)self name];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(STUIUser *)self dsid];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(STUIUser *)self altDSID];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  *(v4 + 11) = [(STUIUser *)self isRemoteUser];
  *(v4 + 8) = [(STUIUser *)self isScreenTimeEnabled];
  *(v4 + 10) = [(STUIUser *)self isWebUsageEnabled];
  *(v4 + 48) = [(STUIUser *)self type];
  v11 = [(STUIUser *)self passcode];
  v12 = [v11 copy];
  v13 = *(v4 + 56);
  *(v4 + 56) = v12;

  v14 = [(STUIUser *)self recoveryAltDSID];
  v15 = [v14 copy];
  v16 = *(v4 + 64);
  *(v4 + 64) = v15;

  *(v4 + 12) = [(STUIUser *)self hasAllowances];
  *(v4 + 16) = [(STUIUser *)self source];
  v17 = [(STUIUser *)self userObjectID];
  v18 = *(v4 + 72);
  *(v4 + 72) = v17;

  *(v4 + 9) = [(STUIUser *)self isManaged];
  return v4;
}

- (BOOL)hasPasscode
{
  v2 = [(STUIUser *)self passcode];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)needsRecoveryAppleID
{
  if ([(STUIUser *)self type]- 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  v3 = [(STUIUser *)self recoveryAltDSID];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)canRecoveryAuthenticate
{
  v3 = [(STUIUser *)self recoveryAltDSID];

  if ([(STUIUser *)self isChild]|| ![(STUIUser *)self type])
  {
    v5 = 0;
  }

  else
  {
    v4 = [(STUIUser *)self altDSID];
    v5 = v4 != 0;
  }

  return v3 != 0 || v5;
}

+ (unint64_t)userTypeFromUser:(id)a3
{
  v3 = a3;
  v4 = [v3 dsid];
  if (v4 && (v5 = v4, [v3 dsid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_28769D388), v6, v5, (v7 & 1) == 0))
  {
    v9 = [v3 familyMemberType];
    if ([v9 isEqualToString:*MEMORY[0x277D4BBE8]])
    {
      v10 = [v3 familySettings];
      v11 = [v10 isManaged];

      if (v11)
      {
        v8 = 5;
      }

      else if ([v3 isFamilyOrganizer])
      {
        v8 = 2;
      }

      else if ([v3 isParent])
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }
    }

    else if ([v9 isEqualToString:*MEMORY[0x277D4BBF8]])
    {
      v8 = 6;
    }

    else if ([v9 isEqualToString:*MEMORY[0x277D4BBF0]])
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
  v2 = [(STUIUser *)self name];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [v3 personNameComponentsFromString:v2];

    v5 = [v4 givenName];
    if (![v5 length])
    {

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)regionU18
{
  v2 = objc_alloc_init(MEMORY[0x277CF0148]);
  v3 = [v2 ageRangeCache];
  v4 = [v3 ageRangeSettings];

  if (v4)
  {
    v5 = ([v4 u18Limit] - 1);
  }

  else
  {
    v5 = 17;
  }

  return v5;
}

@end