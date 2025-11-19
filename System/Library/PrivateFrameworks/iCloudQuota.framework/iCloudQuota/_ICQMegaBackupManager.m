@interface _ICQMegaBackupManager
- (id)_extendExpirationURLForAccount:(id)a3;
- (id)_quotaBackupCheckURLForAccount:(id)a3;
- (id)_updateStatusURLForAccount:(id)a3;
- (void)extendExpirationForAccount:(id)a3 deviceBackupUUID:(id)a4 requestedExpirationDate:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)requestMegaBackupForAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 entryMethod:(int64_t)a6 deepLinkURL:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)requestMegaBackupForAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)updateMegaBackupStatusForAccount:(id)a3 deviceBackupUUID:(id)a4 status:(int64_t)a5 queue:(id)a6 completion:(id)a7;
@end

@implementation _ICQMegaBackupManager

- (void)requestMegaBackupForAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_queue_completion___block_invoke;
  v14[3] = &unk_27A651880;
  v15 = v12;
  v13 = v12;
  [(_ICQMegaBackupManager *)self requestMegaBackupForAccount:a3 deviceBackupUUID:a4 deviceTotalUsedSpaceInBytes:a5 entryMethod:0 deepLinkURL:0 queue:a6 completion:v14];
}

- (void)requestMegaBackupForAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 entryMethod:(int64_t)a6 deepLinkURL:(id)a7 queue:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __139___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_entryMethod_deepLinkURL_queue_completion___block_invoke;
  v27[3] = &unk_27A6518D0;
  v27[4] = self;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v33 = v20;
  v34 = a6;
  v31 = v18;
  v32 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v20;
  v26 = v15;
  dispatch_async(v21, v27);
}

- (id)_quotaBackupCheckURLForAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupCheckURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 aa_altDSID];
    v8 = [v6 stringWithFormat:v5, v7];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "invalid URL string %@ for quotaBackupCheckURL account %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing quotaBackupCheckURL for account %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateMegaBackupStatusForAccount:(id)a3 deviceBackupUUID:(id)a4 status:(int64_t)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99___ICQMegaBackupManager_updateMegaBackupStatusForAccount_deviceBackupUUID_status_queue_completion___block_invoke;
  v20[3] = &unk_27A651920;
  v20[4] = self;
  v21 = v12;
  v24 = v15;
  v25 = a5;
  v22 = v13;
  v23 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v15;
  v19 = v12;
  dispatch_async(v16, v20);
}

- (id)_updateStatusURLForAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupUpdateStatusURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 aa_altDSID];
    v8 = [v6 stringWithFormat:v5, v7];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Invalid URL string for update status: %@, account %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing updateStatusURL for account %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)extendExpirationForAccount:(id)a3 deviceBackupUUID:(id)a4 requestedExpirationDate:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __110___ICQMegaBackupManager_extendExpirationForAccount_deviceBackupUUID_requestedExpirationDate_queue_completion___block_invoke;
  v22[3] = &unk_27A651970;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v16;
  v21 = v12;
  dispatch_async(v17, v22);
}

- (id)_extendExpirationURLForAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupExtensionURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 aa_altDSID];
    v8 = [v6 stringWithFormat:v5, v7];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Invalid URL string for extend expiration: %@, account %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing extendExpirationURL for account: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

@end