@interface TSRecommendedCarrierAppsFlow
- (TSRecommendedCarrierAppsFlow)init;
- (id)_createFirstViewController;
- (id)_getValueFromCountryBunbleByKey:(id)a3;
- (id)firstViewController;
- (void)_requestCarrierAppsWithCompletion:(id)a3;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
@end

@implementation TSRecommendedCarrierAppsFlow

- (TSRecommendedCarrierAppsFlow)init
{
  v9.receiver = self;
  v9.super_class = TSRecommendedCarrierAppsFlow;
  v2 = [(TSSIMSetupFlow *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    carrierApps = v2->_carrierApps;
    v2->_carrierApps = v3;

    v5 = objc_alloc(MEMORY[0x277CC37B0]);
    v6 = [v5 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v6;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
  }

  return v2;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSRecommendedCarrierAppsFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__TSRecommendedCarrierAppsFlow_firstViewController___block_invoke;
    v10[3] = &unk_279B44C30;
    v11 = v4;
    v5 = MEMORY[0x2667315D0](v10);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__TSRecommendedCarrierAppsFlow_firstViewController___block_invoke_2;
    v7[3] = &unk_279B44C58;
    objc_copyWeak(&v9, &location);
    v6 = v5;
    v8 = v6;
    [(TSRecommendedCarrierAppsFlow *)self _requestCarrierAppsWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __52__TSRecommendedCarrierAppsFlow_firstViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _createFirstViewController];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__TSRecommendedCarrierAppsFlow_firstViewController___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_requestCarrierAppsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    if (_requestCarrierAppsWithCompletion__onceToken != -1)
    {
      [TSRecommendedCarrierAppsFlow _requestCarrierAppsWithCompletion:];
    }

    v6 = objc_alloc(MEMORY[0x277CEC270]);
    v7 = [(TSRecommendedCarrierAppsFlow *)self _getValueFromCountryBunbleByKey:@"AppStoreCollectionCountryID"];
    v8 = [v6 initWithID:v7 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC218] limit:0x7FFFFFFFFFFFFFFFLL];

    v9 = _requestCarrierAppsWithCompletion__sLockupViewGroup;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_2;
    v19[3] = &unk_279B44CA8;
    objc_copyWeak(&v21, &location);
    v10 = v5;
    v20 = v10;
    [v9 _cacheLockupsWithCollectionRequest:v8 withCompletionBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TSRecommendedCarrierAppsFlow *)v11 _requestCarrierAppsWithCompletion:v12, v13, v14, v15, v16, v17, v18];
    }
  }
}

uint64_t __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke()
{
  _requestCarrierAppsWithCompletion__sLockupViewGroup = objc_alloc_init(MEMORY[0x277CEC2A0]);

  return MEMORY[0x2821F96F8]();
}

void __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3;
  v10[3] = &unk_279B44C80;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v14);
}

void __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = _TSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3_cold_1((a1 + 32), v3);
      }
    }

    else if ([*(a1 + 40) count])
    {
      [WeakRetained[12] removeAllObjects];
      v12 = [*(a1 + 40) mutableCopy];
      v13 = WeakRetained[12];
      WeakRetained[12] = v12;
    }
  }

  else
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_createFirstViewController
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_carrierApps count])
  {
    v3 = [SSCellularPlanCarrierAppsViewController alloc];
    carrierApps = self->_carrierApps;
    v5 = [(TSRecommendedCarrierAppsFlow *)self _getValueFromCountryBunbleByKey:@"CountryName"];
    v6 = [(SSCellularPlanCarrierAppsViewController *)v3 initWithCarrierApps:carrierApps country:v5];
  }

  else
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[TSRecommendedCarrierAppsFlow _createFirstViewController]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Empty carrier apps list @%s", &v12, 0xCu);
    }

    v6 = 0;
  }

  [(TSSIMSetupFlow *)self setTopViewController:v6];
  [(SSCellularPlanCarrierAppsViewController *)v6 setDelegate:self];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v12 = 138412546;
    v13 = v9;
    v14 = 2080;
    v15 = "[TSRecommendedCarrierAppsFlow _createFirstViewController]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_getValueFromCountryBunbleByKey:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  client = self->_client;
  v26 = 0;
  v6 = [(CoreTelephonyClient *)client getSubscriptionInfoWithError:&v26];
  v7 = v26;
  if (!v7)
  {
    v9 = [v6 subscriptions];
    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:6];
      memset(v25, 0, sizeof(v25));
      if ([v9 countByEnumeratingWithState:v25 objects:v27 count:16])
      {
        v12 = **(&v25[0] + 1);
        v13 = self->_client;
        v24 = 0;
        v14 = [(CoreTelephonyClient *)v13 copyCarrierBundleValue:v12 key:v4 bundleType:v11 error:&v24];
        v8 = v24;
        v10 = v14;

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TSRecommendedCarrierAppsFlow *)v11 _getValueFromCountryBunbleByKey:v15, v16, v17, v18, v19, v20, v21];
      }
    }

    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = _TSLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(TSRecommendedCarrierAppsFlow *)v8 _getValueFromCountryBunbleByKey:v9];
  }

  v10 = 0;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)firstViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__TSRecommendedCarrierAppsFlow_firstViewController___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestCarrierAppsWithCompletion:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412546;
  v5 = v2;
  v6 = 2080;
  v7 = "[TSRecommendedCarrierAppsFlow _requestCarrierAppsWithCompletion:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]_cacheLockupsWithCollectionRequest returned error: %@ @%s", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __66__TSRecommendedCarrierAppsFlow__requestCarrierAppsWithCompletion___block_invoke_3_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getValueFromCountryBunbleByKey:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412546;
  v6 = v3;
  v7 = 2080;
  v8 = "[TSRecommendedCarrierAppsFlow _getValueFromCountryBunbleByKey:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Failed to get subcription info,  %@ @%s", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getValueFromCountryBunbleByKey:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Failed to get the local subscription @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end