@interface TRICellularParameterManager
+ (id)sharedInstance;
- (NSString)carrierBundleIdentifier;
- (NSString)carrierCountryIsoCode;
- (TRICellularParameterManager)init;
- (id)_dispatchQueueForCarrierInfoGathering;
- (id)_fetchCarrierBundleIdentifier:(id)a3;
- (id)_fetchCarrierCountryIsoCode:(id)a3;
- (void)_updateSystemInfo;
- (void)carrierBundleChange:(id)a3;
- (void)preferredDataSimChanged:(id)a3;
- (void)subscriberCountryCodeDidChange:(id)a3;
@end

@implementation TRICellularParameterManager

- (TRICellularParameterManager)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TRICellularParameterManager;
  v2 = [(TRICellularParameterManager *)&v24 init];
  if (v2)
  {
    gotLoadHelper_x8__OBJC_CLASS___CoreTelephonyClient(v3);
    v5 = objc_alloc(*(v4 + 1968));
    v6 = [(TRICellularParameterManager *)v2 _dispatchQueueForCarrierInfoGathering];
    v7 = [v5 initWithQueue:v6];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v7;

    v9 = v2->_telephonyClient;
    v23 = 0;
    v10 = [(CoreTelephonyClient *)v9 getPreferredDataSubscriptionContextSync:&v23];
    v11 = v23;
    if (!v10)
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v11;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Unable to get preferred data subscription context: %{public}@", buf, 0xCu);
      }
    }

    v13 = objc_opt_new();
    v14 = [(TRICellularParameterManager *)v2 _fetchCarrierBundleIdentifier:v10];
    v15 = v13[1];
    v13[1] = v14;

    v16 = [(TRICellularParameterManager *)v2 _fetchCarrierCountryIsoCode:v10];
    v17 = v13[2];
    v13[2] = v16;

    v18 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v13];
    lock = v2->_lock;
    v2->_lock = v18;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    v20 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Set up TRICellularParameterManager", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)sharedInstance
{
  if (qword_281597720 != -1)
  {
    dispatch_once(&qword_281597720, &__block_literal_global_14);
  }

  v3 = _MergedGlobals_33;

  return v3;
}

void __45__TRICellularParameterManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(TRICellularParameterManager);
  v2 = _MergedGlobals_33;
  _MergedGlobals_33 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_dispatchQueueForCarrierInfoGathering
{
  if (qword_281597730 != -1)
  {
    dispatch_once(&qword_281597730, &__block_literal_global_24);
  }

  v3 = qword_281597728;

  return v3;
}

void __68__TRICellularParameterManager__dispatchQueueForCarrierInfoGathering__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.system-config.carrier" qosClass:17];
  v2 = qword_281597728;
  qword_281597728 = v1;

  objc_autoreleasePoolPop(v0);
}

- (NSString)carrierBundleIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = &stru_287FA0430;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__TRICellularParameterManager_carrierBundleIdentifier__block_invoke;
  v5[3] = &unk_279DE1178;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)carrierCountryIsoCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = &stru_287FA0430;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TRICellularParameterManager_carrierCountryIsoCode__block_invoke;
  v5[3] = &unk_279DE1178;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_fetchCarrierBundleIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    gotLoadHelper_x8__OBJC_CLASS___CTBundle(v5);
    v7 = [objc_alloc(*(v6 + 1568)) initWithBundleType:1];
    telephonyClient = self->_telephonyClient;
    v17 = 0;
    v9 = [(CoreTelephonyClient *)telephonyClient copyBundleIdentifier:v4 bundleType:v7 error:&v17];
    v10 = v17;
    v11 = TRILogCategory_ClientFramework();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v10;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Unable to get carrier bundle identifier: %{public}@", buf, 0xCu);
      }

      v13 = &stru_287FA0430;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v9;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Fetched Carrier bundle identifier from CoreTelephony: %{public}@", buf, 0xCu);
      }

      v14 = &stru_287FA0430;
      if (v9)
      {
        v14 = v9;
      }

      v13 = v14;
    }
  }

  else
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Unable to get preferred data subscription context", buf, 2u);
    }

    v13 = &stru_287FA0430;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_fetchCarrierCountryIsoCode:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    telephonyClient = self->_telephonyClient;
    v17 = 0;
    v5 = [(CoreTelephonyClient *)telephonyClient copyLastKnownMobileSubscriberCountryCode:a3 error:&v17];
    v6 = v17;
    if (v5)
    {
      v7 = self->_telephonyClient;
      v16 = v6;
      v8 = [(CoreTelephonyClient *)v7 copyMobileSubscriberIsoCountryCode:v5 error:&v16];
      v9 = v16;

      v10 = TRILogCategory_ClientFramework();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v9;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to get carrier country code: %{public}@", buf, 0xCu);
        }

        v12 = &stru_287FA0430;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v8;
          _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Fetched Carrier country code from CoreTelephony: %{public}@", buf, 0xCu);
        }

        v13 = &stru_287FA0430;
        if (v8)
        {
          v13 = v8;
        }

        v12 = v13;
        v9 = 0;
      }
    }

    else
    {
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to get last known mobile subscriber country code: %{public}@", buf, 0xCu);
      }

      v12 = &stru_287FA0430;
      v9 = v6;
    }
  }

  else
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to get preferred data subscription context", buf, 2u);
    }

    v12 = &stru_287FA0430;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)preferredDataSimChanged:(id)a3
{
  v5 = a3;
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Received delegate callback: preferredDataSimChanged", buf, 2u);
  }

  objc_storeStrong(&self->_subscriptionContext, a3);
  lock = self->_lock;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__TRICellularParameterManager_preferredDataSimChanged___block_invoke;
  v12 = &unk_279DE11A0;
  v13 = self;
  v14 = v5;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:&v9];
  [(TRICellularParameterManager *)self _updateSystemInfo:v9];
}

void __55__TRICellularParameterManager_preferredDataSimChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _fetchCarrierBundleIdentifier:v3];
  v6 = v4[1];
  v4[1] = v5;
}

- (void)subscriberCountryCodeDidChange:(id)a3
{
  v5 = a3;
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Received delegate callback: subscriberCountryCodeDidChange", buf, 2u);
  }

  objc_storeStrong(&self->_subscriptionContext, a3);
  lock = self->_lock;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __62__TRICellularParameterManager_subscriberCountryCodeDidChange___block_invoke;
  v12 = &unk_279DE11A0;
  v13 = self;
  v14 = v5;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:&v9];
  [(TRICellularParameterManager *)self _updateSystemInfo:v9];
}

void __62__TRICellularParameterManager_subscriberCountryCodeDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _fetchCarrierCountryIsoCode:v3];
  v6 = v4[2];
  v4[2] = v5;
}

- (void)carrierBundleChange:(id)a3
{
  v5 = a3;
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Received delegate callback: carrierBundleChange", buf, 2u);
  }

  objc_storeStrong(&self->_subscriptionContext, a3);
  lock = self->_lock;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__TRICellularParameterManager_carrierBundleChange___block_invoke;
  v12 = &unk_279DE11A0;
  v13 = self;
  v14 = v5;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:&v9];
  [(TRICellularParameterManager *)self _updateSystemInfo:v9];
}

void __51__TRICellularParameterManager_carrierBundleChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _fetchCarrierBundleIdentifier:v3];
  v6 = v4[1];
  v4[1] = v5;
}

- (void)_updateSystemInfo
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
  {
    v2 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to update System info due to cellular parameter change", &v11, 2u);
    }

    v3 = [MEMORY[0x277D73660] client];
    v4 = [TRISystemInfo createSystemInfoWithFactorProvider:v3];
    v5 = v4;
    if (v4 && ([v4 save] & 1) != 0)
    {
      v6 = [MEMORY[0x277D737E0] sharedPaths];
      v7 = [[TRISystemConfiguration alloc] initWithPaths:v6];
      v8 = [(TRISystemConfiguration *)v7 reloadSystemInfo];

      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "System info update successful", &v11, 2u);
      }
    }

    else
    {
      v6 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = @"TRICellularParameterManager failed to update system info";
        _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end