@interface TRAccountManager
+ (id)_idmsAccountForAccountWithUsername:(id)username altDSID:(id)d DSID:(id)iD;
+ (id)_idmsAccountForGameCenterService;
+ (id)_idmsAccountForICloudService;
+ (id)_idmsAccountForITunesService;
+ (id)_primaryGameCenterAccount;
+ (id)_primaryICloudAccount;
+ (id)_primaryITunesAccount;
+ (id)associatedAccountServicesForIDMSAccount:(id)account;
+ (id)idmsAccountForAccountService:(unint64_t)service;
@end

@implementation TRAccountManager

+ (id)idmsAccountForAccountService:(unint64_t)service
{
  v11 = *MEMORY[0x277D85DE8];
  switch(service)
  {
    case 3uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForGameCenterService];
      break;
    case 2uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForITunesService];
      break;
    case 1uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForICloudService];
      break;
    default:
      if (_TRLogEnabled == 1)
      {
        v5 = TRLogHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = StringFromTRAccountService(service);
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "Unknown account service: %@", &v9, 0xCu);
        }
      }

      _idmsAccountForGameCenterService = 0;
      break;
  }

  v7 = *MEMORY[0x277D85DE8];

  return _idmsAccountForGameCenterService;
}

+ (id)_primaryICloudAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

+ (id)_primaryITunesAccount
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  return activeAccount;
}

+ (id)_primaryGameCenterAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C38]];
  v4 = [defaultStore accountsWithAccountType:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)_idmsAccountForICloudService
{
  _primaryICloudAccount = [self _primaryICloudAccount];
  username = [_primaryICloudAccount username];
  aa_altDSID = [_primaryICloudAccount aa_altDSID];
  v6 = [_primaryICloudAccount accountPropertyForKey:@"DSID"];
  v7 = [self _idmsAccountForAccountWithUsername:username altDSID:aa_altDSID DSID:v6];

  return v7;
}

+ (id)_idmsAccountForITunesService
{
  _primaryITunesAccount = [self _primaryITunesAccount];
  accountName = [_primaryITunesAccount accountName];
  altDSID = [_primaryITunesAccount altDSID];
  uniqueIdentifier = [_primaryITunesAccount uniqueIdentifier];
  v7 = [self _idmsAccountForAccountWithUsername:accountName altDSID:altDSID DSID:uniqueIdentifier];

  return v7;
}

+ (id)_idmsAccountForGameCenterService
{
  _primaryGameCenterAccount = [self _primaryGameCenterAccount];
  username = [_primaryGameCenterAccount username];
  aa_altDSID = [_primaryGameCenterAccount aa_altDSID];
  v6 = [_primaryGameCenterAccount accountPropertyForKey:@"DSID"];
  v7 = [self _idmsAccountForAccountWithUsername:username altDSID:aa_altDSID DSID:v6];

  return v7;
}

+ (id)_idmsAccountForAccountWithUsername:(id)username altDSID:(id)d DSID:(id)iD
{
  v56 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  store = [mEMORY[0x277CF0130] store];
  v9 = [store accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];

  v49 = 0;
  v10 = [mEMORY[0x277CF0130] allAuthKitAccountsWithError:&v49];
  v11 = v49;
  if (v11)
  {
    if (_TRLogEnabled != 1)
    {
      v31 = 0;
      goto LABEL_49;
    }

    v12 = TRLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
      _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "%s [ERROR] accounts could not be fetched.", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v37 = mEMORY[0x277CF0130];
  v12 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = v10;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        accountType = [v18 accountType];
        v20 = [accountType isEqual:v9];

        if (v20)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v15);
  }

  if (_TRLogEnabled == 1)
  {
    v21 = TRLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v52 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_26F2A2000, v21, OS_LOG_TYPE_DEFAULT, "%s accounts: %@.", buf, 0x16u);
    }
  }

  if ([v12 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v12;
    v22 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v12);
          }

          v26 = *(*(&v41 + 1) + 8 * j);
          aa_altDSID = [v26 aa_altDSID];
          if (aa_altDSID && [dCopy isEqualToString:aa_altDSID])
          {
            v30 = v26;
            goto LABEL_45;
          }

          v28 = [v26 accountPropertyForKey:@"DSID"];
          if (v28 && [iDCopy isEqualToNumber:v28])
          {
            v30 = v26;
            goto LABEL_44;
          }

          username = [v26 username];
          if (username && ([usernameCopy isEqualToString:username] & 1) != 0)
          {
            v30 = v26;

LABEL_44:
LABEL_45:

            goto LABEL_46;
          }
        }

        v23 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
        v30 = 0;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_46:

    v31 = v30;
    v11 = 0;
    mEMORY[0x277CF0130] = v37;
    goto LABEL_47;
  }

  v11 = 0;
  mEMORY[0x277CF0130] = v37;
  if (_TRLogEnabled != 1)
  {
    v31 = 0;
LABEL_47:
    v10 = v36;
    goto LABEL_48;
  }

  v32 = TRLogHandle();
  v10 = v36;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
    _os_log_impl(&dword_26F2A2000, v32, OS_LOG_TYPE_DEFAULT, "%s No IDMS accounts found.", buf, 0xCu);
  }

LABEL_38:
  v31 = 0;
LABEL_48:

LABEL_49:
  v33 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)associatedAccountServicesForIDMSAccount:(id)account
{
  accountCopy = account;
  v5 = [MEMORY[0x277CBEB58] set];
  _idmsAccountForICloudService = [self _idmsAccountForICloudService];
  identifier = [_idmsAccountForICloudService identifier];
  identifier2 = [accountCopy identifier];
  v9 = [identifier isEqualToString:identifier2];

  if (v9)
  {
    [v5 addObject:&unk_287F629F0];
  }

  _idmsAccountForITunesService = [self _idmsAccountForITunesService];
  identifier3 = [_idmsAccountForITunesService identifier];
  identifier4 = [accountCopy identifier];
  v13 = [identifier3 isEqualToString:identifier4];

  if (v13)
  {
    [v5 addObject:&unk_287F62A08];
  }

  _idmsAccountForGameCenterService = [self _idmsAccountForGameCenterService];
  identifier5 = [_idmsAccountForGameCenterService identifier];
  identifier6 = [accountCopy identifier];
  v17 = [identifier5 isEqualToString:identifier6];

  if (v17)
  {
    [v5 addObject:&unk_287F62A20];
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v18;
}

@end