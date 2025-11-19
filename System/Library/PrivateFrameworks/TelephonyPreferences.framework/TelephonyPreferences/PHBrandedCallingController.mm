@interface PHBrandedCallingController
- (BOOL)featureEnabledForAtLeastOneContext;
- (BOOL)getBrandedCallingCapabilityEnabledForContext:(id)a3;
- (BOOL)getBrandedCallingStateForContext:(id)a3;
- (PHBrandedCallingController)initWithCoreTelephonyClient:(id)a3 parentListController:(id)a4;
- (PSListController)parentListController;
- (id)fetchCarrierBundleValue:(id)a3 context:(id)a4;
- (id)fetchSubscriptionsInUse;
- (id)getBrandedCallingEnabled;
- (void)configurationChanged;
- (void)setBrandedCallingEnabled:(id)a3;
- (void)updateBrandedCallingState;
@end

@implementation PHBrandedCallingController

- (PHBrandedCallingController)initWithCoreTelephonyClient:(id)a3 parentListController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PHBrandedCallingController;
  v9 = [(PHBrandedCallingController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ctClient, a3);
    v11 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    if ([(TUFeatureFlags *)v10->_featureFlags deviceExpertMigrationEnabled])
    {
      v13 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v10->_configurationProvider;
      v10->_configurationProvider = v13;

      [(TUConfigurationProvider *)v10->_configurationProvider setDelegate:v10];
    }

    objc_storeWeak(&v10->_parentListController, v8);
    [(PHBrandedCallingController *)v10 updateBrandedCallingState];
  }

  return v10;
}

- (id)getBrandedCallingEnabled
{
  ctClient = self->_ctClient;
  v8 = 0;
  v3 = [(CoreTelephonyClient *)ctClient shouldShowBrandedCallingInfo:&v8];
  v4 = v3;
  if (v8)
  {
    v5 = TPSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PHBrandedCallingController *)v5 getBrandedCallingEnabled];
    }

    v6 = MEMORY[0x277CBEC28];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (BOOL)getBrandedCallingStateForContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    v5 = [v4 slotID] == 1;
    v6 = [(PHBrandedCallingController *)self configurationProvider];
    v7 = [v6 isBrandedCallingEnabled:v5];
  }

  else
  {
    v18 = 0;
    ctClient = self->_ctClient;
    v9 = *MEMORY[0x277CC3808];
    v17 = 0;
    v10 = [(CoreTelephonyClient *)ctClient context:v4 getCapability:v9 status:&v18 with:&v17];
    v11 = v17;
    v12 = TPSLog();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PHBrandedCallingController *)v4 getBrandedCallingStateForContext:v13];
      }

      v7 = 0;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"Off";
        if (v18)
        {
          v14 = @"On";
        }

        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Fetched state of branded calling for context: %@, state: %@", buf, 0x16u);
      }

      v7 = v18;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)featureEnabledForAtLeastOneContext
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(PHBrandedCallingController *)self fetchSubscriptionsInUse];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [(PHBrandedCallingController *)self getBrandedCallingStateForContext:*(*(&v11 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)setBrandedCallingEnabled:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 BOOLValue];
    v7 = @"Disabled";
    if (v6)
    {
      v7 = @"Enabled";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "User set branded calling to: %@", &v10, 0xCu);
  }

  v8 = -[CoreTelephonyClient setShouldShowBrandedCallingInfo:](self->_ctClient, "setShouldShowBrandedCallingInfo:", [v4 BOOLValue]);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetchSubscriptionsInUse
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v3 = getPSSimStatusCacheClass_softClass;
  v25 = getPSSimStatusCacheClass_softClass;
  if (!getPSSimStatusCacheClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v28 = __getPSSimStatusCacheClass_block_invoke;
    v29 = &unk_2782E3900;
    v30 = &v22;
    __getPSSimStatusCacheClass_block_invoke(&buf);
    v3 = v23[3];
  }

  v4 = v3;
  _Block_object_dispose(&v22, 8);
  v5 = [v3 sharedInstance];
  v6 = [v5 subscriptionsInUse];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isSimHidden])
        {
          v12 = TPSLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 uuid];
            LODWORD(buf) = v17;
            *(&buf + 4) = v13;
            _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Subscription: %@ is hidden", &buf, 0xCu);
          }
        }

        else
        {
          [v2 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)getBrandedCallingCapabilityEnabledForContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  ctClient = self->_ctClient;
  v6 = *MEMORY[0x277CC3808];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)ctClient context:v4 canSetCapability:v6 allowed:&v16 with:&v15];
  v8 = v15;
  v9 = TPSLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PHBrandedCallingController getBrandedCallingCapabilityEnabledForContext:];
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"No";
      if (v16)
      {
        v12 = @"Yes";
      }

      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "kCTCapabilityBrandedCallingInfo fetched for context: %@, capability enabled: %@", buf, 0x16u);
    }

    v11 = v16;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (id)fetchCarrierBundleValue:(id)a3 context:(id)a4
{
  v6 = a3;
  ctClient = self->_ctClient;
  v12 = 0;
  v8 = [(CoreTelephonyClient *)ctClient context:a4 getCarrierBundleValue:v6 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PHBrandedCallingController fetchCarrierBundleValue:context:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateBrandedCallingState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PHBrandedCallingController *)self fetchSubscriptionsInUse];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([(PHBrandedCallingController *)self getBrandedCallingCapabilityEnabledForContext:v10, v17])
        {
          v11 = objc_alloc_init(PHBrandedCallingContext);
          [(PHBrandedCallingContext *)v11 setContext:v10];
          v12 = [(PHBrandedCallingController *)self fetchCarrierBundleValue:&unk_282D5D600 context:v10];
          [(PHBrandedCallingContext *)v11 setCarrierName:v12];

          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_contexts, v4);
  v13 = TPSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NSArray *)self->_contexts count];
    v15 = @"Yes";
    if (!v14)
    {
      v15 = @"No";
    }

    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Should show branded calling switch(es) to user: %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configurationChanged
{
  v2 = [(PHBrandedCallingController *)self parentListController];
  [v2 reloadSpecifiers];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

- (void)getBrandedCallingStateForContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch state of branded calling for context: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getBrandedCallingCapabilityEnabledForContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Failed to fetch kCTCapabilityBrandedCallingInfo for context:%@ , error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchCarrierBundleValue:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Failed to fetch carrier bundle value for key hierarchy: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end