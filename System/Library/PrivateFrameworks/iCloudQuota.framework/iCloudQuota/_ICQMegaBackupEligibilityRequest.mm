@interface _ICQMegaBackupEligibilityRequest
+ (id)eligibilityRequestWithAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 entryMethod:(int64_t)a6 deepLinkURL:(id)a7 requestURL:(id)a8 URLSession:(id)a9 queue:(id)a10 error:(id *)a11;
- (id)additionalRequestHeaders;
- (id)bodyJSON;
- (id)handleResponse:(id)a3 body:(id)a4;
- (void)addAdditionalRequestHeaders:(id)a3;
@end

@implementation _ICQMegaBackupEligibilityRequest

+ (id)eligibilityRequestWithAccount:(id)a3 deviceBackupUUID:(id)a4 deviceTotalUsedSpaceInBytes:(id)a5 entryMethod:(int64_t)a6 deepLinkURL:(id)a7 requestURL:(id)a8 URLSession:(id)a9 queue:(id)a10 error:(id *)a11
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v17 = a7;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = [[a1 alloc] initWithRequestURL:v20 URLSession:v19 queue:v18];

  if (v21)
  {
    objc_storeStrong((v21 + 64), a3);
    objc_storeStrong((v21 + 72), a4);
    objc_storeStrong((v21 + 80), a5);
    *(v21 + 88) = a6;
    objc_storeStrong((v21 + 96), a7);
  }

  return v21;
}

- (id)additionalRequestHeaders
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CF0168]);
  v9 = 0;
  v3 = [v2 anisetteDataWithError:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [MEMORY[0x277CCAB70] ak_anisetteHeadersWithData:v3];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get anisette data: %@", buf, 0xCu);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)bodyJSON
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  deviceBackupUUID = self->_deviceBackupUUID;
  v5 = [(NSNumber *)self->_deviceTotalUsedSpaceInBytes stringValue];
  v6 = [v3 initWithObjectsAndKeys:{deviceBackupUUID, @"deviceBackupUdid", v5, @"deviceTotalUsedSpace", 0}];

  if (self->_entryMethod)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setObject:v7 forKeyedSubscript:@"entryMethodType"];

    if (self->_entryMethod == 2)
    {
      deepLinkURL = self->_deepLinkURL;
      if (deepLinkURL)
      {
        [v6 setObject:deepLinkURL forKeyedSubscript:@"entryMethodURL"];
      }

      else
      {
        v9 = _ICQGetLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [(_ICQMegaBackupEligibilityRequest *)v9 bodyJSON];
        }
      }
    }
  }

  return v6;
}

- (void)addAdditionalRequestHeaders:(id)a3
{
  v7.receiver = self;
  v7.super_class = _ICQMegaBackupEligibilityRequest;
  v4 = a3;
  [(_ICQMegaBackupNetworkRequest *)&v7 addAdditionalRequestHeaders:v4];
  v5 = [ICQRequestProvider alloc];
  v6 = [(ICQRequestProvider *)v5 initWithAccount:self->_account, v7.receiver, v7.super_class];
  [(ICQRequestProvider *)v6 addBasicAndCloudBackupHeadersToRequest:v4];
}

- (id)handleResponse:(id)a3 body:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"needsTemporaryStorage"];
  self->_needsTemporaryStorage = [v6 BOOLValue];

  v7 = [v5 objectForKeyedSubscript:@"durationInDays"];
  daysUntilExpiration = self->_daysUntilExpiration;
  self->_daysUntilExpiration = v7;

  v9 = [v5 objectForKeyedSubscript:@"backupStatus"];

  if ((self->_needsTemporaryStorage || v9) && ([v9 isEqualToString:@"ALLOWED"] & 1) == 0)
  {
    if (![v9 isEqualToString:@"NOT_ALLOWED"])
    {
      goto LABEL_6;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  self->_backupAllowed = v10;
LABEL_6:

  return 0;
}

@end