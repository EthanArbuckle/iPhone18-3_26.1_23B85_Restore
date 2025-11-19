@interface SASProximityCompanionAuthRequestAction
- (id)idmsAccountForiCloud;
- (id)responsePayload;
- (void)setResponseFromData:(id)a3;
@end

@implementation SASProximityCompanionAuthRequestAction

- (id)responsePayload
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [(SASProximityCompanionAuthRequestAction *)self idmsAccountForiCloud];
  v3 = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [v3 transportableAuthKitAccount:v2];

  v5 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v16 = 0;
  v6 = [v5 credentialForAccount:v4 error:&v16];
  v7 = v16;
  if (v6)
  {
    [v4 setCredential:v6];
    v8 = [MEMORY[0x277CF0218] currentDevice];
    [v8 setLinkType:3];
    v17[0] = @"device";
    v17[1] = @"account";
    v18[0] = v8;
    v18[1] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15 = v7;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v15];
    v11 = v15;

    if (!v10)
    {
      v12 = +[SASLogging facility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to archive response: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = +[SASLogging facility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to load credentials for IDMS account: %@ - %@", buf, 0x16u);
    }

    v10 = 0;
    v11 = v7;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setResponseFromData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v17 = 0;
  v11 = [v4 unarchivedObjectOfClasses:v10 fromData:v6 error:&v17];

  v12 = v17;
  if (!v11)
  {
    v13 = +[SASLogging facility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_22E4D7000, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive response: %@", buf, 0xCu);
    }
  }

  v14 = [v11 objectForKeyedSubscript:@"device"];
  [(SASProximityCompanionAuthRequestAction *)self setCompanionDevice:v14];

  v15 = [v11 objectForKeyedSubscript:@"account"];
  [(SASProximityCompanionAuthRequestAction *)self setAccount:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)idmsAccountForiCloud
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v21 = [v3 username];
  v22 = [v3 aa_altDSID];
  v4 = [v3 accountPropertyForKey:@"DSID"];
  v5 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];
  [v2 accountsWithAccountType:v5];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v26 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v19 = v3;
    v20 = v2;
    v18 = v5;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 aa_altDSID];
        if (v12 && [v22 isEqualToString:v12])
        {
          v15 = v11;
          goto LABEL_20;
        }

        v13 = [v11 accountPropertyForKey:@"DSID"];
        if (v13 && [v4 isEqualToNumber:v13])
        {
          v15 = v11;
          goto LABEL_19;
        }

        v14 = [v11 username];
        if (v14 && ([v21 isEqualToString:v14] & 1) != 0)
        {
          v15 = v11;

LABEL_19:
LABEL_20:

          v3 = v19;
          v2 = v20;
          v5 = v18;
          goto LABEL_21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v15 = 0;
      v3 = v19;
      v2 = v20;
      v5 = v18;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end