@interface _ICQMegaBackupEligibilityRequest
+ (id)eligibilityRequestWithAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes entryMethod:(int64_t)method deepLinkURL:(id)l requestURL:(id)rL URLSession:(id)session queue:(id)self0 error:(id *)self1;
- (id)additionalRequestHeaders;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
- (void)addAdditionalRequestHeaders:(id)headers;
@end

@implementation _ICQMegaBackupEligibilityRequest

+ (id)eligibilityRequestWithAccount:(id)account deviceBackupUUID:(id)d deviceTotalUsedSpaceInBytes:(id)bytes entryMethod:(int64_t)method deepLinkURL:(id)l requestURL:(id)rL URLSession:(id)session queue:(id)self0 error:(id *)self1
{
  accountCopy = account;
  dCopy = d;
  bytesCopy = bytes;
  lCopy = l;
  queueCopy = queue;
  sessionCopy = session;
  rLCopy = rL;
  v21 = [[self alloc] initWithRequestURL:rLCopy URLSession:sessionCopy queue:queueCopy];

  if (v21)
  {
    objc_storeStrong((v21 + 64), account);
    objc_storeStrong((v21 + 72), d);
    objc_storeStrong((v21 + 80), bytes);
    *(v21 + 88) = method;
    objc_storeStrong((v21 + 96), l);
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
  stringValue = [(NSNumber *)self->_deviceTotalUsedSpaceInBytes stringValue];
  v6 = [v3 initWithObjectsAndKeys:{deviceBackupUUID, @"deviceBackupUdid", stringValue, @"deviceTotalUsedSpace", 0}];

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

- (void)addAdditionalRequestHeaders:(id)headers
{
  v7.receiver = self;
  v7.super_class = _ICQMegaBackupEligibilityRequest;
  headersCopy = headers;
  [(_ICQMegaBackupNetworkRequest *)&v7 addAdditionalRequestHeaders:headersCopy];
  v5 = [ICQRequestProvider alloc];
  v6 = [(ICQRequestProvider *)v5 initWithAccount:self->_account, v7.receiver, v7.super_class];
  [(ICQRequestProvider *)v6 addBasicAndCloudBackupHeadersToRequest:headersCopy];
}

- (id)handleResponse:(id)response body:(id)body
{
  bodyCopy = body;
  v6 = [bodyCopy objectForKeyedSubscript:@"needsTemporaryStorage"];
  self->_needsTemporaryStorage = [v6 BOOLValue];

  v7 = [bodyCopy objectForKeyedSubscript:@"durationInDays"];
  daysUntilExpiration = self->_daysUntilExpiration;
  self->_daysUntilExpiration = v7;

  v9 = [bodyCopy objectForKeyedSubscript:@"backupStatus"];

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