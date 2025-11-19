@interface RTTNanoSettings
+ (id)sharedInstance;
- (RTTNanoSettings)init;
- (id)currentLocale;
- (id)valueForPreferenceKey:(id)a3 andContext:(id)a4;
- (void)_setValue:(id)a3 forPreferenceKey:(id)a4;
@end

@implementation RTTNanoSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_364 != -1)
  {
    +[RTTNanoSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_363;

  return v3;
}

uint64_t __33__RTTNanoSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings_363 = objc_alloc_init(RTTNanoSettings);

  return MEMORY[0x2821F96F8]();
}

- (RTTNanoSettings)init
{
  v9.receiver = self;
  v9.super_class = RTTNanoSettings;
  v2 = [(RTTSettings *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2BA58]);
    v4 = [v3 initWithDomain:*MEMORY[0x277D81E48]];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v4;

    v6 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@".GlobalPreferences"];
    globalDomainAccessor = v2->_globalDomainAccessor;
    v2->_globalDomainAccessor = v6;

    if (([MEMORY[0x277D12B60] currentProcessIsHeard] & 1) == 0 && (objc_msgSend(MEMORY[0x277D12B60], "currentProcessIsPreferences") & 1) == 0)
    {
      [(RTTNanoSettings *)v2 _setValue:MEMORY[0x277CBEC38] forPreferenceKey:@"TTYNanoIndependencePreference"];
    }
  }

  return v2;
}

- (id)currentLocale
{
  v3 = [(NPSDomainAccessor *)self->_globalDomainAccessor synchronize];
  globalDomainAccessor = self->_globalDomainAccessor;

  return [(NPSDomainAccessor *)globalDomainAccessor objectForKey:@"AppleLocale"];
}

- (void)_setValue:(id)a3 forPreferenceKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Setting value '%@' for key: '%@'", buf, 0x16u);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:v6 forKey:v7];
  v9 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v10 = objc_opt_new();
  v11 = *MEMORY[0x277D81E48];
  v12 = MEMORY[0x277CBEB98];
  v16 = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14 = [v12 setWithArray:v13];
  [v10 synchronizeNanoDomain:v11 keys:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)valueForPreferenceKey:(id)a3 andContext:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:v5];
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Retrieved value '%@' for key: '%@'", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

@end