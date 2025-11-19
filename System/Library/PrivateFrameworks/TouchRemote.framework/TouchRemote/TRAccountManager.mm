@interface TRAccountManager
+ (id)_idmsAccountForAccountWithUsername:(id)a3 altDSID:(id)a4 DSID:(id)a5;
+ (id)_idmsAccountForGameCenterService;
+ (id)_idmsAccountForICloudService;
+ (id)_idmsAccountForITunesService;
+ (id)_primaryGameCenterAccount;
+ (id)_primaryICloudAccount;
+ (id)_primaryITunesAccount;
+ (id)associatedAccountServicesForIDMSAccount:(id)a3;
+ (id)idmsAccountForAccountService:(unint64_t)a3;
@end

@implementation TRAccountManager

+ (id)idmsAccountForAccountService:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 3uLL:
      v4 = [a1 _idmsAccountForGameCenterService];
      break;
    case 2uLL:
      v4 = [a1 _idmsAccountForITunesService];
      break;
    case 1uLL:
      v4 = [a1 _idmsAccountForICloudService];
      break;
    default:
      if (_TRLogEnabled == 1)
      {
        v5 = TRLogHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = StringFromTRAccountService(a3);
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "Unknown account service: %@", &v9, 0xCu);
        }
      }

      v4 = 0;
      break;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_primaryICloudAccount
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

+ (id)_primaryITunesAccount
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];

  return v3;
}

+ (id)_primaryGameCenterAccount
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C38]];
  v4 = [v2 accountsWithAccountType:v3];
  v5 = [v4 firstObject];

  return v5;
}

+ (id)_idmsAccountForICloudService
{
  v3 = [a1 _primaryICloudAccount];
  v4 = [v3 username];
  v5 = [v3 aa_altDSID];
  v6 = [v3 accountPropertyForKey:@"DSID"];
  v7 = [a1 _idmsAccountForAccountWithUsername:v4 altDSID:v5 DSID:v6];

  return v7;
}

+ (id)_idmsAccountForITunesService
{
  v3 = [a1 _primaryITunesAccount];
  v4 = [v3 accountName];
  v5 = [v3 altDSID];
  v6 = [v3 uniqueIdentifier];
  v7 = [a1 _idmsAccountForAccountWithUsername:v4 altDSID:v5 DSID:v6];

  return v7;
}

+ (id)_idmsAccountForGameCenterService
{
  v3 = [a1 _primaryGameCenterAccount];
  v4 = [v3 username];
  v5 = [v3 aa_altDSID];
  v6 = [v3 accountPropertyForKey:@"DSID"];
  v7 = [a1 _idmsAccountForAccountWithUsername:v4 altDSID:v5 DSID:v6];

  return v7;
}

+ (id)_idmsAccountForAccountWithUsername:(id)a3 altDSID:(id)a4 DSID:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v40 = a4;
  v39 = a5;
  v7 = [MEMORY[0x277CF0130] sharedInstance];
  v8 = [v7 store];
  v9 = [v8 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];

  v49 = 0;
  v10 = [v7 allAuthKitAccountsWithError:&v49];
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

  v37 = v7;
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
        v19 = [v18 accountType];
        v20 = [v19 isEqual:v9];

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
          v27 = [v26 aa_altDSID];
          if (v27 && [v40 isEqualToString:v27])
          {
            v30 = v26;
            goto LABEL_45;
          }

          v28 = [v26 accountPropertyForKey:@"DSID"];
          if (v28 && [v39 isEqualToNumber:v28])
          {
            v30 = v26;
            goto LABEL_44;
          }

          v29 = [v26 username];
          if (v29 && ([v38 isEqualToString:v29] & 1) != 0)
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
    v7 = v37;
    goto LABEL_47;
  }

  v11 = 0;
  v7 = v37;
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

+ (id)associatedAccountServicesForIDMSAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [a1 _idmsAccountForICloudService];
  v7 = [v6 identifier];
  v8 = [v4 identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [v5 addObject:&unk_287F629F0];
  }

  v10 = [a1 _idmsAccountForITunesService];
  v11 = [v10 identifier];
  v12 = [v4 identifier];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    [v5 addObject:&unk_287F62A08];
  }

  v14 = [a1 _idmsAccountForGameCenterService];
  v15 = [v14 identifier];
  v16 = [v4 identifier];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    [v5 addObject:&unk_287F62A20];
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v18;
}

@end