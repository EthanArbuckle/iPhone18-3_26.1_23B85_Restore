@interface PSUICarrierServicesSpecifierCache
+ (id)sharedInstance;
- (PSUICarrierServicesSpecifierCache)init;
- (id)initPrivate;
- (id)mmsInfoSpecifierWithTarget:(id)target context:(id)context;
- (id)newMMSInfoSpecifierWithTarget:(id)target context:(id)context;
- (id)specifiers:(id)specifiers;
- (void)carrierBundleChange:(id)change;
- (void)clearCache;
- (void)dealloc;
- (void)dialCarrierServiceNumber:(id)number;
- (void)fetchSpecifiers;
- (void)openURLWithSpecifier:(id)specifier;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation PSUICarrierServicesSpecifierCache

+ (id)sharedInstance
{
  if (qword_28156A690 != -1)
  {
    dispatch_once(&qword_28156A690, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_58;

  return v3;
}

uint64_t __51__PSUICarrierServicesSpecifierCache_sharedInstance__block_invoke()
{
  _MergedGlobals_58 = [[PSUICarrierServicesSpecifierCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v11.receiver = self;
  v11.super_class = PSUICarrierServicesSpecifierCache;
  v2 = [(PSUICarrierServicesSpecifierCache *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"carrier_services_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    [(PSUICarrierServicesSpecifierCache *)v2 clearCache];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_clearCache name:0x287737B98 object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_clearCache name:@"PSNewCarrierNotification" object:0];
  }

  return v2;
}

- (PSUICarrierServicesSpecifierCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierServicesSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICarrierServicesSpecifierCache init]";
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = PSUICarrierServicesSpecifierCache;
  [(PSUICarrierServicesSpecifierCache *)&v4 dealloc];
}

- (void)clearCache
{
  getLogger = [(PSUICarrierServicesSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing carrier services cache", v6, 2u);
  }

  specifiersDict = self->_specifiersDict;
  self->_specifiersDict = 0;

  mmsInfoSpecifiersDict = self->_mmsInfoSpecifiersDict;
  self->_mmsInfoSpecifiersDict = 0;
}

- (id)mmsInfoSpecifierWithTarget:(id)target context:(id)context
{
  targetCopy = target;
  contextCopy = context;
  v8 = contextCopy;
  mmsInfoSpecifiersDict = self->_mmsInfoSpecifiersDict;
  if (!mmsInfoSpecifiersDict)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = self->_mmsInfoSpecifiersDict;
    self->_mmsInfoSpecifiersDict = v14;

    v11 = 0;
LABEL_6:
    v13 = [(PSUICarrierServicesSpecifierCache *)self newMMSInfoSpecifierWithTarget:targetCopy context:v8];

    v16 = self->_mmsInfoSpecifiersDict;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "slotID")}];
    [(NSMutableDictionary *)v16 setObject:v13 forKeyedSubscript:v17];

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  v11 = [(NSMutableDictionary *)mmsInfoSpecifiersDict objectForKeyedSubscript:v10];

  if (!v11)
  {
    goto LABEL_6;
  }

  target = [v11 target];

  v13 = v11;
  if (target != targetCopy)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v13;
}

- (id)newMMSInfoSpecifierWithTarget:(id)target context:(id)context
{
  targetCopy = target;
  contextCopy = context;
  v7 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v8 = [v7 mmsInfoUrl:contextCopy];

  if ([v8 length])
  {
    v9 = objc_alloc_init(MEMORY[0x277D3FAD8]);
    [v9 setButtonAction:sel_openURLWithSpecifier_];
    *&v9[*MEMORY[0x277D3FC90]] = 13;
    objc_storeWeak(&v9[*MEMORY[0x277D3FCB8]], targetCopy);
    [v9 setIdentifier:@"MMS_INFO"];
    v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v11 = [v10 mmsInfoTitle:contextCopy];
    [v9 setName:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)fetchSpecifiers
{
  v65 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierServicesSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v58 = "[PSUICarrierServicesSpecifierCache fetchSpecifiers]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = subscriptionContexts;
  v41 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v41)
  {
    v39 = *v54;
    v44 = *MEMORY[0x277D40128];
    v45 = *MEMORY[0x277D401A8];
    do
    {
      v5 = 0;
      do
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v53 + 1) + 8 * v5);
        v7 = objc_alloc(MEMORY[0x277CBEB18]);
        emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v9 = [v7 initWithObjects:{emptyGroupSpecifier, 0}];

        v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
        v11 = [v10 carrierServices:v6];

        v12 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
        v48 = v6;
        v46 = [v12 showServiceCodes:v6];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = v11;
        v13 = [v43 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v50;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v50 != v15)
              {
                objc_enumerationMutation(v43);
              }

              v17 = *(*(&v49 + 1) + 8 * i);
              v18 = objc_alloc_init(MEMORY[0x277D3FAD8]);
              [v18 setButtonAction:sel_dialCarrierServiceNumber_];
              *&v18[*MEMORY[0x277D3FC90]] = 4;
              v19 = sel_readPreference_;
              if (!v46)
              {
                v19 = 0;
              }

              *&v18[*MEMORY[0x277D3FCA8]] = v19;
              objc_storeWeak(&v18[*MEMORY[0x277D3FCB8]], self);
              v20 = [v17 objectForKey:@"ServiceName"];
              if (v20)
              {
                v21 = v9;
                v22 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
                v23 = [v22 carrierServiceNameForServiceName:v20 context:v48];

                if ([v23 length])
                {
                  v24 = v23;

                  v20 = v24;
                }

                v9 = v21;
              }

              [v18 setName:v20];
              v25 = [v17 objectForKey:@"ServiceCode"];
              [v18 setProperty:v25 forKey:v45];

              [v18 setProperty:v48 forKey:v44];
              [v9 addObject:v18];
            }

            v14 = [v43 countByEnumeratingWithState:&v49 objects:v63 count:16];
          }

          while (v14);
        }

        if ([v43 count])
        {
          emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
          [v9 addObject:emptyGroupSpecifier2];
        }

        v27 = [PSUIMyAccountSpecifier alloc];
        v28 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
        v29 = [(PSUIMyAccountSpecifier *)v27 initWithContext:v48 cbCache:v28];

        if (v29)
        {
          [v9 addObject:v29];
        }

        v30 = [(PSUICarrierServicesSpecifierCache *)self mmsInfoSpecifierWithTarget:self context:v48];
        if (v30)
        {
          if (v29)
          {
            emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
            [v9 addObject:emptyGroupSpecifier3];
          }

          [v9 addObject:v30];
        }

        getLogger2 = [(PSUICarrierServicesSpecifierCache *)self getLogger];
        if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v9 count];
          *buf = 136315650;
          v58 = "[PSUICarrierServicesSpecifierCache fetchSpecifiers]";
          v59 = 2112;
          v60 = v48;
          v61 = 2048;
          v62 = v33;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %lu", buf, 0x20u);
        }

        v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v48, "slotID")}];
        [(NSMutableDictionary *)v40 setObject:v9 forKeyedSubscript:v34];

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v41);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiersDict = selfCopy->_specifiersDict;
  selfCopy->_specifiersDict = v40;

  objc_sync_exit(selfCopy);
  v37 = *MEMORY[0x277D85DE8];
}

- (id)specifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  specifiersDict = [(PSUICarrierServicesSpecifierCache *)self specifiersDict];

  if (!specifiersDict)
  {
    [(PSUICarrierServicesSpecifierCache *)self fetchSpecifiers];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiersDict2 = [(PSUICarrierServicesSpecifierCache *)selfCopy specifiersDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(specifiersCopy, "slotID")}];
  v9 = [specifiersDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)dialCarrierServiceNumber:(id)number
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D40128];
  numberCopy = number;
  v6 = [numberCopy propertyForKey:v4];
  v7 = [numberCopy propertyForKey:*MEMORY[0x277D401A8]];

  getLogger = [(PSUICarrierServicesSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Dialing carrier service number %@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v10 = objc_alloc(MEMORY[0x277D6EED0]);
  telephonyProvider = [v9 telephonyProvider];
  v12 = [v10 initWithProvider:telephonyProvider];

  v13 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:v7];
  [v12 setHandle:v13];

  uuid = [v6 uuid];
  [v12 setLocalSenderIdentityUUID:uuid];

  [v12 setPerformDialAssist:0];
  [v12 setPerformLocalDialAssist:0];
  [v12 setPreferDefaultApp:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__PSUICarrierServicesSpecifierCache_dialCarrierServiceNumber___block_invoke;
  v17[3] = &unk_279BA9EF0;
  v17[4] = self;
  v18 = v12;
  v15 = v12;
  [v9 launchAppForDialRequest:v15 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __62__PSUICarrierServicesSpecifierCache_dialCarrierServiceNumber___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2658DE000, v4, OS_LOG_TYPE_ERROR, "Error launching app for service number dial request %@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)openURLWithSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [specifier propertyForKey:@"url"];
  v7 = [v3 URLWithString:v4];

  v5 = *MEMORY[0x277D76620];
  v6 = objc_opt_new();
  [v5 openURL:v7 options:v6 completionHandler:0];
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICarrierServicesSpecifierCache *)selfCopy clearCache];
  objc_sync_exit(selfCopy);
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICarrierServicesSpecifierCache *)selfCopy clearCache];
  objc_sync_exit(selfCopy);
}

@end