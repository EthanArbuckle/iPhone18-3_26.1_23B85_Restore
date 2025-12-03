@interface PSUICoreTelephonySubscriberCache
+ (id)sharedInstance;
- (PSUICoreTelephonySubscriberCache)init;
- (PSUICoreTelephonySubscriberCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache;
- (id)initPrivate;
- (id)isoCountryCode:(id)code;
- (id)mobileEquipmentInfo:(id)info;
- (id)shortLabel:(id)label;
- (unint64_t)mobileEquipmentInfoLength;
- (void)fetchCountryCodes;
- (void)fetchMobileEquipmentInfo;
- (void)fetchShortLabels;
- (void)prlVersionDidChange:(id)change version:(id)version;
- (void)shortLabelsDidChange;
- (void)simStatusDidChange:(id)change status:(id)status;
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
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUICoreTelephonySubscriberCache *)self initWithCoreTelephonyClient:v5 simStatusCache:mEMORY[0x277D4D868]];

  return v7;
}

- (PSUICoreTelephonySubscriberCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache
{
  clientCopy = client;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PSUICoreTelephonySubscriberCache;
  v9 = [(PSUICoreTelephonySubscriberCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simStatusCache, cache);
    [(PSUICoreTelephonySubscriberCache *)v10 setMobileEquipmentInfoDict:0];
    [(PSUICoreTelephonySubscriberCache *)v10 setIsoCountryCodesDict:0];
    [(PSUICoreTelephonySubscriberCache *)v10 setShortLabelDict:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v10;
}

- (PSUICoreTelephonySubscriberCache)init
{
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
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
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "fetchMobileEquipmentInfo executing", buf, 2u);
  }

  client = self->_client;
  v21 = 0;
  v16 = [(CoreTelephonyClient *)client getMobileEquipmentInfo:&v21];
  v5 = v21;
  getLogger2 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  v7 = getLogger2;
  if (v5)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "fetchMobileEquipmentInfo failed: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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
    meInfoList = [v16 meInfoList];
    v9 = [meInfoList countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(meInfoList);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "slotId")}];
          [v7 setObject:v12 forKeyedSubscript:v13];
        }

        v9 = [meInfoList countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(PSUICoreTelephonySubscriberCache *)selfCopy setMobileEquipmentInfoDict:v7];
    objc_sync_exit(selfCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)mobileEquipmentInfo:(id)info
{
  infoCopy = info;
  mobileEquipmentInfoDict = [(PSUICoreTelephonySubscriberCache *)self mobileEquipmentInfoDict];

  if (!mobileEquipmentInfoDict)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchMobileEquipmentInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mobileEquipmentInfoDict2 = [(PSUICoreTelephonySubscriberCache *)selfCopy mobileEquipmentInfoDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(infoCopy, "slotID")}];
  v9 = [mobileEquipmentInfoDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (unint64_t)mobileEquipmentInfoLength
{
  mobileEquipmentInfoDict = [(PSUICoreTelephonySubscriberCache *)self mobileEquipmentInfoDict];

  if (!mobileEquipmentInfoDict)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchMobileEquipmentInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mobileEquipmentInfoDict2 = [(PSUICoreTelephonySubscriberCache *)selfCopy mobileEquipmentInfoDict];
  v6 = [mobileEquipmentInfoDict2 count];

  objc_sync_exit(selfCopy);
  return v6;
}

- (void)fetchCountryCodes
{
  v30 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "fetchCountryCodes executing", buf, 2u);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v5 = [subscriptionContexts countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(subscriptionContexts);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        client = self->_client;
        v20 = 0;
        v11 = [(CoreTelephonyClient *)client getMobileSubscriberHomeCountryList:v9 error:&v20, v18];
        v12 = v20;
        getLogger2 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
        firstObject = getLogger2;
        if (v12)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = v9;
            v27 = 2112;
            v28 = v12;
            _os_log_error_impl(&dword_2658DE000, firstObject, OS_LOG_TYPE_ERROR, "fetchCountryCodes failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v26 = v9;
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_2658DE000, firstObject, OS_LOG_TYPE_DEFAULT, "fetchCountryCodes succeeded: %@, %@", buf, 0x16u);
          }

          firstObject = [v11 firstObject];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "slotID")}];
          [v19 setObject:firstObject forKeyedSubscript:v15];
        }
      }

      v5 = [subscriptionContexts countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonySubscriberCache *)selfCopy setIsoCountryCodesDict:v19];
  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)isoCountryCode:(id)code
{
  codeCopy = code;
  isoCountryCodesDict = [(PSUICoreTelephonySubscriberCache *)self isoCountryCodesDict];

  if (!isoCountryCodesDict)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchCountryCodes];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isoCountryCodesDict2 = [(PSUICoreTelephonySubscriberCache *)selfCopy isoCountryCodesDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(codeCopy, "slotID")}];
  v9 = [isoCountryCodesDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)shortLabel:(id)label
{
  labelCopy = label;
  shortLabelDict = [(PSUICoreTelephonySubscriberCache *)self shortLabelDict];

  if (!shortLabelDict)
  {
    [(PSUICoreTelephonySubscriberCache *)self fetchShortLabels];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  shortLabelDict2 = [(PSUICoreTelephonySubscriberCache *)selfCopy shortLabelDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(labelCopy, "slotID")}];
  v9 = [shortLabelDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)fetchShortLabels
{
  v29 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "fetchShortLabels executing", buf, 2u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v5 = [subscriptionContexts countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(subscriptionContexts);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        client = self->_client;
        v19 = 0;
        v11 = [(CoreTelephonyClient *)client getShortLabel:v9 error:&v19, v17];
        v12 = v19;
        getLogger2 = [(PSUICoreTelephonySubscriberCache *)self getLogger];
        v14 = getLogger2;
        if (v12)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
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
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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

      v5 = [subscriptionContexts countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonySubscriberCache *)selfCopy setShortLabelDict:v18];
  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)shortLabelsDidChange
{
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Short labels did change, clearing short label cache", v4, 2u);
  }

  [(PSUICoreTelephonySubscriberCache *)self setShortLabelDict:0];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  [(PSUICoreTelephonySubscriberCache *)self setMobileEquipmentInfoDict:0, status];

  [(PSUICoreTelephonySubscriberCache *)self setIsoCountryCodesDict:0];
}

- (void)prlVersionDidChange:(id)change version:(id)version
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PSUICoreTelephonySubscriberCache *)self setMobileEquipmentInfoDict:0];
  getLogger = [(PSUICoreTelephonySubscriberCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PSUICoreTelephonySubscriberCache prlVersionDidChange:version:]";
    v14 = 2112;
    v15 = @"PSUIPRLVersionChanged";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", buf, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SubscriptionContext";
  v11 = changeCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  [defaultCenter postNotificationName:@"PSUIPRLVersionChanged" object:0 userInfo:v8];
  v9 = *MEMORY[0x277D85DE8];
}

@end