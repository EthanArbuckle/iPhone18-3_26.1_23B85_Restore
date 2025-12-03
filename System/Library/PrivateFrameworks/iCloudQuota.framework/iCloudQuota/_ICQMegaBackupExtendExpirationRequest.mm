@interface _ICQMegaBackupExtendExpirationRequest
+ (id)extendExpirationRequestWithAccount:(id)account deviceBackupUUID:(id)d requestedExpirationDate:(id)date requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error;
- (id)additionalRequestHeaders;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
- (void)addAdditionalRequestHeaders:(id)headers;
@end

@implementation _ICQMegaBackupExtendExpirationRequest

+ (id)extendExpirationRequestWithAccount:(id)account deviceBackupUUID:(id)d requestedExpirationDate:(id)date requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error
{
  accountCopy = account;
  dCopy = d;
  dateCopy = date;
  queueCopy = queue;
  sessionCopy = session;
  lCopy = l;
  v21 = [[self alloc] initWithRequestURL:lCopy URLSession:sessionCopy queue:queueCopy];

  if (v21)
  {
    objc_storeStrong(v21 + 8, account);
    objc_storeStrong(v21 + 9, d);
    objc_storeStrong(v21 + 10, date);
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
  v13[2] = *MEMORY[0x277D85DE8];
  requestedExpirationDate = self->_requestedExpirationDate;
  if (requestedExpirationDate)
  {
    deviceBackupUUID = self->_deviceBackupUUID;
    v12[0] = @"deviceBackupUdid";
    v12[1] = @"newExpirationDate";
    v13[0] = deviceBackupUUID;
    v4 = MEMORY[0x277CCABB0];
    [(NSDate *)requestedExpirationDate timeIntervalSince1970];
    v5 = [v4 numberWithDouble:?];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v7 = self->_deviceBackupUUID;
    v10 = @"deviceBackupUdid";
    v11 = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addAdditionalRequestHeaders:(id)headers
{
  v7.receiver = self;
  v7.super_class = _ICQMegaBackupExtendExpirationRequest;
  headersCopy = headers;
  [(_ICQMegaBackupNetworkRequest *)&v7 addAdditionalRequestHeaders:headersCopy];
  v5 = [ICQRequestProvider alloc];
  v6 = [(ICQRequestProvider *)v5 initWithAccount:self->_account, v7.receiver, v7.super_class];
  [(ICQRequestProvider *)v6 addBasicAndCloudBackupHeadersToRequest:headersCopy];
}

- (id)handleResponse:(id)response body:(id)body
{
  bodyCopy = body;
  v6 = [bodyCopy objectForKeyedSubscript:@"extensionAllowed"];
  self->_extensionAllowed = [v6 BOOLValue];

  v7 = [bodyCopy objectForKeyedSubscript:@"newExpirationDate"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSince1970:?];
    updatedExpirationDate = self->_updatedExpirationDate;
    self->_updatedExpirationDate = v9;
  }

  return 0;
}

@end