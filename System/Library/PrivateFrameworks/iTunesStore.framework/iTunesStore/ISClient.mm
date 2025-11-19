@interface ISClient
+ (id)currentClient;
- (ISClient)init;
- (NSDictionary)clientProvidedHeaders;
- (NSString)appleClientApplication;
- (NSString)appleClientVersions;
- (NSString)identifier;
- (NSString)partnerHeader;
- (NSString)userAgent;
- (id)_appleClientVersions;
- (id)localStoreFrontID;
- (void)_softwareMapInvalidatedNotification:(id)a3;
- (void)dealloc;
- (void)setAppleClientApplication:(id)a3;
- (void)setClientProvidedHeaders:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setPartnerHeader:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation ISClient

- (ISClient)init
{
  __ISRecordSPIClassUsage(self);
  v8.receiver = self;
  v8.super_class = ISClient;
  v3 = [(ISClient *)&v8 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v3->_lock;
    v3->_lock = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__softwareMapInvalidatedNotification_ name:@"ISSoftwareMapInvalidatedNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"ISSoftwareMapInvalidatedNotification" object:0];

  v4.receiver = self;
  v4.super_class = ISClient;
  [(ISClient *)&v4 dealloc];
}

+ (id)currentClient
{
  if (currentClient_sOnce != -1)
  {
    +[ISClient currentClient];
  }

  v3 = currentClient_sClient;

  return v3;
}

uint64_t __25__ISClient_currentClient__block_invoke()
{
  currentClient_sClient = objc_alloc_init(ISClient);

  return MEMORY[0x2821F96F8]();
}

- (NSString)appleClientApplication
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSString *)self->_appleClientApplication copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (NSString)appleClientVersions
{
  [(NSLock *)self->_lock lock];
  appleClientVersions = self->_appleClientVersions;
  if (appleClientVersions)
  {
    v4 = [(NSString *)appleClientVersions copy];
    [(NSLock *)self->_lock unlock];
  }

  else
  {
    [(NSLock *)self->_lock unlock];
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ISClient_appleClientVersions__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_async(v5, block);

    v4 = 0;
  }

  return v4;
}

void __31__ISClient_appleClientVersions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _appleClientVersions];
  [*(*(a1 + 32) + 56) lock];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 56) unlock];
}

- (NSDictionary)clientProvidedHeaders
{
  v3 = [(ISClient *)self lock];
  [v3 lock];

  v4 = [(NSDictionary *)self->_clientProvidedHeaders copy];
  v5 = [(ISClient *)self lock];
  [v5 unlock];

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v7 = v6;

  return v7;
}

- (NSString)identifier
{
  [(NSLock *)self->_lock lock];
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = self->_identifier;
    self->_identifier = v5;

    identifier = self->_identifier;
  }

  v7 = [(NSString *)identifier copy];
  [(NSLock *)self->_lock unlock];

  return v7;
}

- (NSString)partnerHeader
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSString *)self->_partnerHeader copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setAppleClientApplication:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_appleClientApplication != v6)
  {
    v4 = [(NSString *)v6 copy];
    appleClientApplication = self->_appleClientApplication;
    self->_appleClientApplication = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setClientProvidedHeaders:(id)a3
{
  v8 = a3;
  v4 = [(ISClient *)self lock];
  [v4 lock];

  if (self->_clientProvidedHeaders != v8)
  {
    v5 = [(NSDictionary *)v8 copy];
    clientProvidedHeaders = self->_clientProvidedHeaders;
    self->_clientProvidedHeaders = v5;
  }

  v7 = [(ISClient *)self lock];
  [v7 unlock];
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_identifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    identifier = self->_identifier;
    self->_identifier = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setPartnerHeader:(id)a3
{
  v12 = a3;
  [(NSLock *)self->_lock lock];
  partnerHeader = self->_partnerHeader;
  if (partnerHeader == v12 || ([(NSString *)partnerHeader isEqual:v12]& 1) != 0)
  {
    [(NSLock *)self->_lock unlock];
  }

  else
  {
    v5 = [(NSString *)v12 copy];
    v6 = self->_partnerHeader;
    self->_partnerHeader = v5;

    [(NSLock *)self->_lock unlock];
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = v7;
    if (v12)
    {
      v9 = [v7 initWithObjectsAndKeys:{@"ISClientValueParameter", 0}];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB68] null];
      v9 = [v8 initWithObjectsAndKeys:{v10, @"ISClientValueParameter", 0}];
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"ISClientPartnerHeaderChangedNotification" object:self userInfo:v9];
  }
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (NSString)userAgent
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSString *)self->_userAgent copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)localStoreFrontID
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v3 = [v2 storeFrontIdentifier];

  return v3;
}

- (void)_softwareMapInvalidatedNotification:(id)a3
{
  [(NSLock *)self->_lock lock];
  appleClientVersions = self->_appleClientVersions;
  self->_appleClientVersions = 0;

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)_appleClientVersions
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [&unk_2884CA9E0 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(&unk_2884CA9E0);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = objc_alloc(MEMORY[0x277CEE620]);
        v9 = [v7 objectAtIndexedSubscript:1];
        v10 = [v8 initWithBundleIdentifier:v9];

        v11 = [v10 clientVersion];
        [(__CFString *)v11 doubleValue];
        if (v12 == 0.0)
        {

          v11 = @"??";
        }

        v13 = MEMORY[0x277CCACA8];
        v14 = [v7 objectAtIndexedSubscript:0];
        v15 = [v13 stringWithFormat:@"%@/%@", v14, v11];
        [v2 addObject:v15];
      }

      v4 = [&unk_2884CA9E0 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = [v2 componentsJoinedByString:@" "];;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end