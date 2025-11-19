@interface PSUICoreTelephonySubscriberCache
+ (id)sharedInstance;
- (PSUICoreTelephonySubscriberCache)init;
- (PSUICoreTelephonySubscriberCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4;
- (id)initPrivate;
- (id)isoCountryCode:(id)a3;
- (id)mobileEquipmentInfo:(id)a3;
- (id)shortLabel:(id)a3;
- (unint64_t)mobileEquipmentInfoLength;
- (void)fetchCountryCodes;
- (void)fetchMobileEquipmentInfo;
- (void)fetchShortLabels;
- (void)prlVersionDidChange:(id)a3 version:(id)a4;
- (void)shortLabelsDidChange;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonySubscriberCache

+ (id)sharedInstance
{
  if (qword_28156A700 != -1)
  {
    dispatch_once(&qword_28156A700, &__block_literal_global_9);
  }

  v3 = _MergedGlobals_64;

  return v3;
}

uint64_t __50__PSUICoreTelephonySubscriberCache_sharedInstance__block_invoke()
{
  _MergedGlobals_64 = [[PSUICoreTelephonySubscriberCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"subscriber_cache"];
  v5 = [v3 initWithQueue:v4];
  v6 = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUICoreTelephonySubscriberCache *)self initWithCoreTelephonyClient:v5 simStatusCache:v6];

  return v7;
}

- (PSUICoreTelephonySubscriberCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PSUICoreTelephonySubscriberCache;
  v9 = [(PSUICoreTelephonySubscriberCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simStatusCache, a4);
    [(PSUICoreTelephonySubscriberCache *)v10 setMobileEquipmentInfoDict:0];
    [(PSUICoreTelephonySubscriberCache *)v10 setIsoCountryCodesDict:0];
    [(PSUICoreTelephonySubscriberCache *)v10 setShortLabelDict:0];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v10;
}

- (PSUICoreTelephonySubscriberCache)init
{
  v2 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonySubscriberCache *)self setMobileEquipmentInfoDict:0];
  [(PSUICoreTelephonySubscriberCache *)self setIsoCountryCodesDict:0];

  [(PSUICoreTelephonySubscriberCache *)self setShortLabelDict:0];
}

- (void)fetchMobileEquipmentInfo
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "fetchMobileEquipmentInfo executing", buf, 2u);
  }

  client = self->_client;
  v21 = 0;
  v16 = [(CoreTelephonyClient *)client getMobileEquipmentInfo:&v21];
  v5 = v21;
  v6 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "fetchMobileEquipmentInfo failed: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "fetchMobileEquipmentInfo succeeded: %@", buf, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v16 meInfoList];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "slotId")}];
          [v7 setObject:v12 forKeyedSubscript:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = self;
    objc_sync_enter(v14);
    [(PSUICoreTelephonySubscriberCache *)v14 setMobileEquipmentInfoDict:v7];
    objc_sync_exit(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)mobileEquipmentInfo:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonySubscriberCache *)self mobileEquipmentInfoDict];

  if (!v5)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchMobileEquipmentInfo];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonySubscriberCache *)v6 mobileEquipmentInfoDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (unint64_t)mobileEquipmentInfoLength
{
  v3 = [(PSUICoreTelephonySubscriberCache *)self mobileEquipmentInfoDict];

  if (!v3)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchMobileEquipmentInfo];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSUICoreTelephonySubscriberCache *)v4 mobileEquipmentInfoDict];
  v6 = [v5 count];

  objc_sync_exit(v4);
  return v6;
}

- (void)fetchCountryCodes
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "fetchCountryCodes executing", buf, 2u);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = *v22;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        client = self->_client;
        v20 = 0;
        v11 = [(CoreTelephonyClient *)client getMobileSubscriberHomeCountryList:v9 error:&v20, v18];
        v12 = v20;
        v13 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = v9;
            v27 = 2112;
            v28 = v12;
            _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "fetchCountryCodes failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v26 = v9;
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "fetchCountryCodes succeeded: %@, %@", buf, 0x16u);
          }

          v14 = [v11 firstObject];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "slotID")}];
          [v19 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v16 = self;
  objc_sync_enter(v16);
  [(PSUICoreTelephonySubscriberCache *)v16 setIsoCountryCodesDict:v19];
  objc_sync_exit(v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)isoCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonySubscriberCache *)self isoCountryCodesDict];

  if (!v5)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchCountryCodes];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonySubscriberCache *)v6 isoCountryCodesDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (id)shortLabel:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonySubscriberCache *)self shortLabelDict];

  if (!v5)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchShortLabels];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonySubscriberCache *)v6 shortLabelDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (void)fetchShortLabels
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "fetchShortLabels executing", buf, 2u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = *v21;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        client = self->_client;
        v19 = 0;
        v11 = [(CoreTelephonyClient *)client getShortLabel:v9 error:&v19, v17];
        v12 = v19;
        v13 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v25 = v9;
            v26 = 2112;
            v27 = v12;
            _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "fetchShortLabels failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v25 = v9;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "fetchShortLabels succeeded: %@, %@", buf, 0x16u);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "slotID")}];
          [v18 setObject:v11 forKeyedSubscript:v14];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v15 = self;
  objc_sync_enter(v15);
  [(PSUICoreTelephonySubscriberCache *)v15 setShortLabelDict:v18];
  objc_sync_exit(v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)shortLabelsDidChange
{
  v3 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Short labels did change, clearing short label cache", v4, 2u);
  }

  [(PSUICoreTelephonySubscriberCache *)self setShortLabelDict:0];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  [(PSUICoreTelephonySubscriberCache *)self setMobileEquipmentInfoDict:0, a4];

  [(PSUICoreTelephonySubscriberCache *)self setIsoCountryCodesDict:0];
}

- (void)prlVersionDidChange:(id)a3 version:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(PSUICoreTelephonySubscriberCache *)self setMobileEquipmentInfoDict:0];
  v6 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PSUICoreTelephonySubscriberCache prlVersionDidChange:version:]";
    v14 = 2112;
    v15 = @"PSUIPRLVersionChanged";
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SubscriptionContext";
  v11 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  [v7 postNotificationName:@"PSUIPRLVersionChanged" object:0 userInfo:v8];
  v9 = *MEMORY[0x277D85DE8];
}

@end