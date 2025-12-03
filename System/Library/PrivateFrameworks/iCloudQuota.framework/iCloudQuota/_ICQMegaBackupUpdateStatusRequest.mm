@interface _ICQMegaBackupUpdateStatusRequest
+ (id)updateStatusRequestWithAccount:(id)account deviceBackupUUID:(id)d status:(int64_t)status requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error;
- (id)additionalRequestHeaders;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
- (void)addAdditionalRequestHeaders:(id)headers;
@end

@implementation _ICQMegaBackupUpdateStatusRequest

+ (id)updateStatusRequestWithAccount:(id)account deviceBackupUUID:(id)d status:(int64_t)status requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error
{
  accountCopy = account;
  dCopy = d;
  queueCopy = queue;
  sessionCopy = session;
  lCopy = l;
  v21 = [[self alloc] initWithRequestURL:lCopy URLSession:sessionCopy queue:queueCopy];

  if (v21)
  {
    objc_storeStrong((v21 + 56), account);
    objc_storeStrong((v21 + 64), d);
    *(v21 + 72) = status;
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
  v10[2] = *MEMORY[0x277D85DE8];
  status = [(_ICQMegaBackupUpdateStatusRequest *)self status];
  v4 = @"end";
  if (status != 1)
  {
    v4 = 0;
  }

  if (!status)
  {
    v4 = @"start";
  }

  deviceBackupUUID = self->_deviceBackupUUID;
  v9[0] = @"deviceBackupUdid";
  v9[1] = @"status";
  v10[0] = deviceBackupUUID;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addAdditionalRequestHeaders:(id)headers
{
  v7.receiver = self;
  v7.super_class = _ICQMegaBackupUpdateStatusRequest;
  headersCopy = headers;
  [(_ICQMegaBackupNetworkRequest *)&v7 addAdditionalRequestHeaders:headersCopy];
  v5 = [ICQRequestProvider alloc];
  v6 = [(ICQRequestProvider *)v5 initWithAccount:self->_account, v7.receiver, v7.super_class];
  [(ICQRequestProvider *)v6 addBasicAndCloudBackupHeadersToRequest:headersCopy];
}

- (id)handleResponse:(id)response body:(id)body
{
  v5 = [body objectForKeyedSubscript:@"expirationDate"];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v5, "integerValue")}];
    expirationDate = self->_expirationDate;
    self->_expirationDate = v7;
  }

  return 0;
}

@end