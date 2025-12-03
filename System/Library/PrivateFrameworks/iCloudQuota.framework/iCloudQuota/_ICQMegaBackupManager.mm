@interface _ICQMegaBackupManager
- (id)_extendExpirationURLForAccount:(id)account;
- (id)_quotaBackupCheckURLForAccount:(id)account;
- (id)_updateStatusURLForAccount:(id)account;
- (void)extendExpirationForAccount:(id)account deviceBackupUUID:(id)d requestedExpirationDate:(id)date queue:(id)queue completion:(id)completion;
- (void)requestMegaBackupForAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes entryMethod:(int64_t)method deepLinkURL:(id)l queue:(id)queue completion:(id)completion;
- (void)requestMegaBackupForAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes queue:(id)queue completion:(id)completion;
- (void)updateMegaBackupStatusForAccount:(id)account deviceBackupUUID:(id)d status:(int64_t)status queue:(id)queue completion:(id)completion;
@end

@implementation _ICQMegaBackupManager

- (void)requestMegaBackupForAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_queue_completion___block_invoke;
  v14[3] = &unk_27A651880;
  v15 = completionCopy;
  v13 = completionCopy;
  [(_ICQMegaBackupManager *)self requestMegaBackupForAccount:account deviceBackupUUID:d deviceTotalUsedSpaceInBytes:bytes entryMethod:0 deepLinkURL:0 queue:queue completion:v14];
}

- (void)requestMegaBackupForAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes entryMethod:(int64_t)method deepLinkURL:(id)l queue:(id)queue completion:(id)completion
{
  accountCopy = account;
  dCopy = d;
  bytesCopy = bytes;
  lCopy = l;
  queueCopy = queue;
  completionCopy = completion;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __139___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_entryMethod_deepLinkURL_queue_completion___block_invoke;
  v27[3] = &unk_27A6518D0;
  v27[4] = self;
  v28 = accountCopy;
  v29 = dCopy;
  v30 = bytesCopy;
  v33 = completionCopy;
  methodCopy = method;
  v31 = lCopy;
  v32 = queueCopy;
  v21 = queueCopy;
  v22 = lCopy;
  v23 = bytesCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = accountCopy;
  dispatch_async(v21, v27);
}

- (id)_quotaBackupCheckURLForAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [accountCopy propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupCheckURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    aa_altDSID = [accountCopy aa_altDSID];
    v8 = [v6 stringWithFormat:v5, aa_altDSID];

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
        v18 = accountCopy;
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
      v16 = accountCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing quotaBackupCheckURL for account %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateMegaBackupStatusForAccount:(id)account deviceBackupUUID:(id)d status:(int64_t)status queue:(id)queue completion:(id)completion
{
  accountCopy = account;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99___ICQMegaBackupManager_updateMegaBackupStatusForAccount_deviceBackupUUID_status_queue_completion___block_invoke;
  v20[3] = &unk_27A651920;
  v20[4] = self;
  v21 = accountCopy;
  v24 = completionCopy;
  statusCopy = status;
  v22 = dCopy;
  v23 = queueCopy;
  v16 = queueCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v19 = accountCopy;
  dispatch_async(v16, v20);
}

- (id)_updateStatusURLForAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [accountCopy propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupUpdateStatusURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    aa_altDSID = [accountCopy aa_altDSID];
    v8 = [v6 stringWithFormat:v5, aa_altDSID];

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
        v18 = accountCopy;
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
      v16 = accountCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing updateStatusURL for account %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)extendExpirationForAccount:(id)account deviceBackupUUID:(id)d requestedExpirationDate:(id)date queue:(id)queue completion:(id)completion
{
  accountCopy = account;
  dCopy = d;
  dateCopy = date;
  queueCopy = queue;
  completionCopy = completion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __110___ICQMegaBackupManager_extendExpirationForAccount_deviceBackupUUID_requestedExpirationDate_queue_completion___block_invoke;
  v22[3] = &unk_27A651970;
  v22[4] = self;
  v23 = accountCopy;
  v24 = dCopy;
  v25 = dateCopy;
  v26 = queueCopy;
  v27 = completionCopy;
  v17 = queueCopy;
  v18 = dateCopy;
  v19 = dCopy;
  v20 = completionCopy;
  v21 = accountCopy;
  dispatch_async(v17, v22);
}

- (id)_extendExpirationURLForAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [accountCopy propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v5 = [v4 objectForKey:@"quotaBackupExtensionURL"];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    aa_altDSID = [accountCopy aa_altDSID];
    v8 = [v6 stringWithFormat:v5, aa_altDSID];

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
        v18 = accountCopy;
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
      v16 = accountCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing extendExpirationURL for account: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

@end