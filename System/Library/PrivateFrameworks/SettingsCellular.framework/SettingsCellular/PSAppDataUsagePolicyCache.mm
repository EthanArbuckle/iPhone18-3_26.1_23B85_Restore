@interface PSAppDataUsagePolicyCache
+ (id)sharedInstance;
- (PSAppDataUsagePolicyCache)init;
- (id)initPrivate;
- (id)policiesFor:(id)a3;
- (void)addPoliciesToCache:(id)a3;
- (void)clearCache;
- (void)dealloc;
- (void)fetchUsagePoliciesFor:(id)a3;
- (void)fetchUsagePolicyFor:(id)a3;
- (void)handlePolicyChangedNotification;
- (void)managedConfigurationProfileListDidChange;
- (void)managedConfigurationSettingsDidChange;
- (void)setPolicies:(id)a3 completion:(id)a4;
- (void)willEnterForeground;
@end

@implementation PSAppDataUsagePolicyCache

+ (id)sharedInstance
{
  if (qword_280F75D80 != -1)
  {
    dispatch_once(&qword_280F75D80, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_8;

  return v3;
}

uint64_t __43__PSAppDataUsagePolicyCache_sharedInstance__block_invoke()
{
  _MergedGlobals_8 = [[PSAppDataUsagePolicyCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v24.receiver = self;
  v24.super_class = PSAppDataUsagePolicyCache;
  v2 = [(PSAppDataUsagePolicyCache *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    policyCache = v2->_policyCache;
    v2->_policyCache = v3;

    [(NSCache *)v2->_policyCache setCountLimit:1000];
    v5 = objc_alloc(MEMORY[0x277CC37B0]);
    v6 = [SettingsCellularSharedUtils createCTClientSerialQueue:@"app_data_policy_usage_cache"];
    v7 = [v5 initWithQueue:v6];
    ctClient = v2->_ctClient;
    v2->_ctClient = v7;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
    objc_initWeak(&location, v2);
    v9 = *MEMORY[0x277CBECE8];
    v10 = MEMORY[0x277D85CD0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __40__PSAppDataUsagePolicyCache_initPrivate__block_invoke;
    v21 = &unk_279BA8600;
    objc_copyWeak(&v22, &location);
    v2->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    if (!v2->_ctServerConnection)
    {
      v16 = [(PSAppDataUsagePolicyCache *)v2 getLogger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_2658CA000, v16, OS_LOG_TYPE_ERROR, "Failed to create CT server connection", v17, 2u);
      }

      objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"CT server connection error" reason:@"Failed to create CT server connection" userInfo:0]);
    }

    v11 = *MEMORY[0x277CC3B50];
    _CTServerConnectionRegisterForNotification();
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_managedConfigurationSettingsDidChange name:*MEMORY[0x277D25CA0] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v2 selector:sel_managedConfigurationProfileListDidChange name:*MEMORY[0x277D26148] object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__PSAppDataUsagePolicyCache_initPrivate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePolicyChangedNotification];
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = PSAppDataUsagePolicyCache;
  [(PSAppDataUsagePolicyCache *)&v4 dealloc];
}

- (void)clearCache
{
  v3 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing policy cache", v4, 2u);
  }

  [(NSCache *)self->_policyCache removeAllObjects];
}

- (void)handlePolicyChangedNotification
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CC3B50];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received notification %@", &v9, 0xCu);
  }

  [(PSAppDataUsagePolicyCache *)self clearCache];
  v5 = [MEMORY[0x277CCAB88] notificationWithName:@"PSPerAppNetworkDataAccessPolicyChangedNotification" object:0];
  v6 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSAppDataUsagePolicyCache handlePolicyChangedNotification]";
    v11 = 2112;
    v12 = @"PSPerAppNetworkDataAccessPolicyChangedNotification";
    _os_log_impl(&dword_2658CA000, v6, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v9, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 performSelectorOnMainThread:sel_postNotification_ withObject:v5 waitUntilDone:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)willEnterForeground
{
  v3 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received willEnterForeground notification", v4, 2u);
  }

  [(PSAppDataUsagePolicyCache *)self clearCache];
}

- (void)managedConfigurationSettingsDidChange
{
  v3 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationSettingsDidChange notification", v4, 2u);
  }

  [(PSAppDataUsagePolicyCache *)self clearCache];
}

- (void)managedConfigurationProfileListDidChange
{
  v3 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationProfileListDidChange notification", v4, 2u);
  }

  [(PSAppDataUsagePolicyCache *)self clearCache];
}

- (PSAppDataUsagePolicyCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSAppDataUsagePolicyCache init]";
    _os_log_error_impl(&dword_2658CA000, v2, OS_LOG_TYPE_ERROR, "Unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)addPoliciesToCache:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PSAppDataUsagePolicyCache_addPoliciesToCache___block_invoke;
  v5[3] = &unk_279BA8628;
  objc_copyWeak(&v6, &location);
  [v4 enumerateObjectsUsingBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__PSAppDataUsagePolicyCache_addPoliciesToCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 policyCache];
    v8 = [v9 bundleId];
    [v7 setObject:v9 forKey:v8];
  }

  else
  {
    *a3 = 1;
  }
}

- (void)fetchUsagePoliciesFor:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v4 count];
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_DEFAULT, "Fetching usage policies for %lu apps.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  ctClient = self->_ctClient;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__PSAppDataUsagePolicyCache_fetchUsagePoliciesFor___block_invoke;
  v10[3] = &unk_279BA8650;
  v10[4] = self;
  v8 = v4;
  v11 = v8;
  objc_copyWeak(&v12, buf);
  [(CoreTelephonyClient *)ctClient getLocalPolicies:v7 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __51__PSAppDataUsagePolicyCache_fetchUsagePoliciesFor___block_invoke(id *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] getLogger];
  WeakRetained = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_2658CA000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to fetch policies, error: %@", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[5] count];
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_2658CA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Policies fetch success for %lu apps.", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained addPoliciesToCache:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchUsagePolicyFor:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_DEFAULT, "Fetching usage policies for %{public}@", buf, 0xCu);
  }

  ctClient = self->_ctClient;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v13 = 0;
  v8 = [(CoreTelephonyClient *)ctClient getLocalPolicies:v7 error:&v13];
  v9 = v13;

  v10 = [(PSAppDataUsagePolicyCache *)self getLogger];
  v11 = v10;
  if (v9 || !v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_2658CA000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch policies for %{public}@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_2658CA000, v11, OS_LOG_TYPE_DEFAULT, "Policies fetch success for %{public}@", buf, 0xCu);
    }

    [(PSAppDataUsagePolicyCache *)self addPoliciesToCache:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)policiesFor:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSAppDataUsagePolicyCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_INFO, "Requested usage policies for %{public}@", &v11, 0xCu);
  }

  v6 = [(NSCache *)self->_policyCache objectForKey:v4];

  if (!v6)
  {
    v7 = [(PSAppDataUsagePolicyCache *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_2658CA000, v7, OS_LOG_TYPE_INFO, "Cache did not have usage policies for %{public}@", &v11, 0xCu);
    }

    [(PSAppDataUsagePolicyCache *)self fetchUsagePolicyFor:v4];
  }

  v8 = [(NSCache *)self->_policyCache objectForKey:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setPolicies:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(location, self);
    ctClient = self->_ctClient;
    v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__PSAppDataUsagePolicyCache_setPolicies_completion___block_invoke;
    v12[3] = &unk_279BA8678;
    objc_copyWeak(&v15, location);
    v13 = v6;
    v14 = v7;
    [(CoreTelephonyClient *)ctClient setLocalPolicies:v9 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = [(PSAppDataUsagePolicyCache *)self getLogger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2658CA000, v10, OS_LOG_TYPE_ERROR, "Attempted to set nil policies", location, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:103 userInfo:0];
    (*(v7 + 2))(v7, v11);
  }
}

void __52__PSAppDataUsagePolicyCache_setPolicies_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (v3)
  {
    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained((a1 + 48));
      v6 = [v5 getLogger];

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        goto LABEL_11;
      }

      v7 = [*(a1 + 32) bundleId];
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_2658CA000, v6, OS_LOG_TYPE_ERROR, "Set policy failed for %{public}@, error: %@", &v14, 0x16u);
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 getLogger];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) bundleId];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2658CA000, v9, OS_LOG_TYPE_DEFAULT, "Set policy success for %{public}@", &v14, 0xCu);
    }

    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 policyCache];
    v11 = *(a1 + 32);
    v12 = [v11 bundleId];
    [v7 setObject:v11 forKey:v12];

    goto LABEL_9;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

@end