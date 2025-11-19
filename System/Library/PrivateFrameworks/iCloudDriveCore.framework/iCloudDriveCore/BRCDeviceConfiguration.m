@interface BRCDeviceConfiguration
- (BOOL)_isTesting;
- (BOOL)_primeMMCSCacheWithFacade:(id)a3;
- (BRCDeviceConfiguration)initWithAccountFacade:(id)a3;
- (NSDictionary)getConfiguration;
- (id)getDeviceConfigurationString;
@end

@implementation BRCDeviceConfiguration

- (id)getDeviceConfigurationString
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@::", @"1.1"];
  v4 = [(BRCDeviceConfiguration *)self getConfiguration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__BRCDeviceConfiguration_getDeviceConfigurationString__block_invoke;
  v7[3] = &unk_278503368;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (NSDictionary)getConfiguration
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  configuration = v2->_configuration;
  if (!configuration)
  {
    v4 = [MEMORY[0x277D77BF8] sharedManager];
    v5 = [(BRCDeviceConfiguration *)v2 _isSharedIPad:v4];
    v6 = [(BRCDeviceConfiguration *)v2 _isIsSycBubble];
    v7 = [(BRCDeviceConfiguration *)v2 _isTesting];
    v8 = [v4 currentPersona];
    v9 = [v8 isDataSeparatedPersona];

    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v25[0] = MEMORY[0x277CBEC38];
    v24[0] = @"FPFS";
    v24[1] = @"TESTING";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v25[1] = v11;
    v24[2] = @"EDS";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v25[2] = v12;
    v24[3] = @"SHARED_IPAD";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v25[3] = v13;
    v24[4] = @"SYNC_BUBBLE";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v25[4] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
    v16 = [v10 initWithDictionary:v15];

    if (v2->_accountFacade)
    {
      v17 = [(BRCDeviceConfiguration *)v2 _primeMMCSCacheWithFacade:?];
      v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
      [v16 setObject:v18 forKeyedSubscript:@"PRIME_CACHE"];
    }

    v19 = [v16 copy];
    v20 = v2->_configuration;
    v2->_configuration = v19;

    configuration = v2->_configuration;
  }

  v21 = configuration;
  objc_sync_exit(v2);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_isTesting
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [v2 testDevice];

  return v3;
}

- (BRCDeviceConfiguration)initWithAccountFacade:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCDeviceConfiguration;
  v6 = [(BRCDeviceConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountFacade, a3);
  }

  return v7;
}

- (BOOL)_primeMMCSCacheWithFacade:(id)a3
{
  v3 = a3;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 shouldPrimeMMCSCacheBeforeDownloadWithAccountFacade:v3];

  return v5;
}

@end