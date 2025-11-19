@interface SSBLookupContext
+ (id)sharedLookupContext;
- (SSBLookupContext)init;
- (id).cxx_construct;
- (id)init;
- (uint64_t)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:;
- (void)_deleteAllDatabasesWithCompletionHandler:(id)a3;
- (void)_fetchCellularDataPlanWithCompletionHandler:(id)a3;
- (void)_forceDatabaseUpdateWithCompletionHandler:(id)a3;
- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:(id)a3;
- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:(id)a3;
- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:(id)a3;
- (void)_getDatabaseStatusWithCompletionHandler:(id)a3;
- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:(id)a3;
- (void)_getSafeBrowsingEnabledState:(id)a3;
- (void)_getServiceStatusWithCompletionHandler:(id)a3;
- (void)_lookUpURL:(id)a3 isMainFrame:(BOOL)a4 hasHighConfidenceOfSafety:(BOOL)a5 ignoreEnableState:(int)a6 completionHandler:(id)a7;
- (void)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:;
- (void)_lookUpURLs:(id)a3 forProtectionType:(int64_t)a4 completionHandler:(id)a5;
- (void)_setSafeBrowsingEnabledStateNeedsUpdate;
- (void)dealloc;
- (void)init;
@end

@implementation SSBLookupContext

+ (id)sharedLookupContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __39__SSBLookupContext_sharedLookupContext__block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c52_ZTSKZ39__SSBLookupContext_sharedLookupContext_E3__2_e5_v8__0l;
  if (+[SSBLookupContext sharedLookupContext]::onceToken != -1)
  {
    dispatch_once(&+[SSBLookupContext sharedLookupContext]::onceToken, block);
  }

  v2 = +[SSBLookupContext sharedLookupContext]::lookupContext;

  return v2;
}

uint64_t __39__SSBLookupContext_sharedLookupContext__block_invoke()
{
  +[SSBLookupContext sharedLookupContext]::lookupContext = objc_alloc_init(SSBLookupContext);

  return MEMORY[0x2821F96F8]();
}

- (SSBLookupContext)init
{
  v17 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SSBLookupContext;
  v2 = [(SSBLookupContext *)&v13 init];
  if (v2)
  {
    _ZNSt3__115allocate_sharedB8sn200100IN12SafeBrowsing13LookupContextENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(location);
    v3 = *location;
    location[0] = 0;
    location[1] = 0;
    v4 = *(v2 + 2);
    *(v2 + 8) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](location[1]);
      }
    }

    objc_initWeak(location, v2);
    v5 = *(v2 + 1);
    objc_copyWeak(&to, location);
    v16 = 0;
    v14 = &unk_2838CF3E0;
    objc_moveWeak(&v15, &to);
    v16 = &v14;
    objc_destroyWeak(&to);
    *(v2 + 6) = SafeBrowsing::LookupContext::addDatabaseUpdateObserver(v5, &v14);
    std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](&v14);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, safeBrowsingEnabledStateChanged, @"SafeBrowsingEnabledStateDidChangeNotification", 0, 1028);
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    [v7 addObserver:v2];

    v8 = v2;
    objc_destroyWeak(location);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  SafeBrowsing::LookupContext::removeDatabaseUpdateObserver(self->_lookupContext.__ptr_, self->_observerToken);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SafeBrowsingEnabledStateDidChangeNotification", 0);
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SSBLookupContext;
  [(SSBLookupContext *)&v5 dealloc];
}

- (void)_lookUpURL:(id)a3 isMainFrame:(BOOL)a4 hasHighConfidenceOfSafety:(BOOL)a5 ignoreEnableState:(int)a6 completionHandler:(id)a7
{
  v9 = a5;
  v10 = a4;
  v21[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = SSBOSLogLookup();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_2255EE000, v14, OS_LOG_TYPE_INFO, "Look up a url", v20, 2u);
  }

  v15 = SSBOSLogLookup();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SSBLookupContext _lookUpURL:v12 isMainFrame:v15 hasHighConfidenceOfSafety:? ignoreEnableState:? completionHandler:?];
  }

  ptr = self->_lookupContext.__ptr_;
  v17 = v12;
  v18 = MEMORY[0x22AA67A70](v13);
  v21[0] = &unk_2838CF458;
  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v21;
  SafeBrowsing::LookupContext::lookUpURL(ptr, v17, !v10, v9, a6, v21);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v21);

  v19 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_forceDatabaseUpdateWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF4A0;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::forceDatabaseUpdate(ptr, v5);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF4E8;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(ptr, v5);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getDatabaseStatusWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF530;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::getDatabaseStatus(ptr, v5);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getServiceStatusWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF578;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::getServiceStatus(ptr, v5);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF5C0;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::forceLoadRemoteConfigurationFromDisk(ptr, v5);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF608;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::forceUpdateRemoteConfigurationFromServer(ptr, v5);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllDatabasesWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF650;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::deleteAllDatabases(ptr, v5);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCellularDataPlanWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF698;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::fetchCellularDataPlan(ptr, v5);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF6E0;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::getLastDatabaseUpdateTime(ptr, v5);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_lookUpURLs:(id)a3 forProtectionType:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  if (a4 == 1)
  {
    v8 = v6;
    v7 = objc_alloc_init(SSBLookupResult);
    v8[2](v8, v7, 0);

    v6 = v8;
  }
}

- (void)_setSafeBrowsingEnabledStateNeedsUpdate
{
  v3 = SSBOSLogEnabledState();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_INFO, "Set safe browsing enabled state needs update", v4, 2u);
  }

  SafeBrowsing::LookupContext::setSafeBrowsingEnabledStateNeedsUpdate(self->_lookupContext.__ptr_);
}

- (void)_getSafeBrowsingEnabledState:(id)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v5[0] = &unk_2838CF728;
  v5[1] = MEMORY[0x22AA67A70](a3, a2);
  v5[3] = v5;
  SafeBrowsing::LookupContext::getSafeBrowsingEnabledState(ptr, v5);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v2 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZ24__SSBLookupContext_init_ENK3__0clEN7Backend6Google21DatabaseConfigurationE_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c89_ZTSKZZ24__SSBLookupContext_init_ENK3__0clEN7Backend6Google21DatabaseConfigurationEEUlvE__e5_v8__0l;
  v3 = v2;
  objc_copyWeak(&v4, (a1 + 8));
  block[4] = v3;
  objc_copyWeak(&v6, &v4);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
}

- (id)init
{
  v2 = operator new(0x10uLL);
  *v2 = &unk_2838CF3E0;
  objc_copyWeak(v2 + 1, (a1 + 8));
  return v2;
}

- (void)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (*&a3->__val_)
  {
    v6 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB18] array];
  if (v4 != v5)
  {
    v8 = v4;
    do
    {
      v9 = [[SSBServiceLookupResult alloc] _initWithLookupResult:*v8];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 != v5);
  }

  v10 = -[SSBLookupResult _initWithServiceLookUpResults:URLContainsUserInfo:]([SSBLookupResult alloc], "_initWithServiceLookUpResults:URLContainsUserInfo:", v7, [*(a1 + 8) ssb_hasUserInfo]);
  (*(*(a1 + 16) + 16))();

  if (v4)
  {

    operator delete(v4);
  }
}

- (uint64_t)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:
{
  *a2 = &unk_2838CF458;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x22AA67A70](*(a1 + 16));
  a2[2] = result;
  return result;
}

- (void)_lookUpURL:(uint64_t)a1 isMainFrame:(NSObject *)a2 hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "Look up a url %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end