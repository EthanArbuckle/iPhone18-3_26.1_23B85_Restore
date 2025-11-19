@interface PHCallBlockingServiceProviderController
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3;
- (NSArray)serviceProviders;
- (NSArray)serviceProvidersSupportingSpamBlocking;
- (PHCallBlockingServiceProviderController)init;
- (PHCallBlockingServiceProviderControllerDelegate)delegate;
- (id)fetchServiceProviders;
- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (void)carrierBundleController:(id)a3 carrierBundleDidChangeForSubscriptionContext:(id)a4;
- (void)setServiceProviders:(id)a3;
@end

@implementation PHCallBlockingServiceProviderController

- (PHCallBlockingServiceProviderController)init
{
  v11.receiver = self;
  v11.super_class = PHCallBlockingServiceProviderController;
  v2 = [(PHCallBlockingServiceProviderController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PHCallBlockingServiceProviderController", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v2->_carrierBundleController;
    v2->_carrierBundleController = v5;

    [(TPSController *)v2->_carrierBundleController addDelegate:v2 queue:v2->_queue];
    v7 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PHCallBlockingServiceProviderController_init__block_invoke;
    block[3] = &unk_2782E3960;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

void __47__PHCallBlockingServiceProviderController_init__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchServiceProviders];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

- (NSArray)serviceProviders
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(PHCallBlockingServiceProviderController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PHCallBlockingServiceProviderController_serviceProviders__block_invoke;
  v6[3] = &unk_2782E3988;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)serviceProvidersSupportingSpamBlocking
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(PHCallBlockingServiceProviderController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__PHCallBlockingServiceProviderController_serviceProvidersSupportingSpamBlocking__block_invoke;
  v6[3] = &unk_2782E3988;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __81__PHCallBlockingServiceProviderController_serviceProvidersSupportingSpamBlocking__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
  v3 = [v2 filteredArrayUsingPredicate:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setServiceProviders:(id)a3
{
  v4 = a3;
  v5 = [(PHCallBlockingServiceProviderController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PHCallBlockingServiceProviderController_setServiceProviders___block_invoke;
  v7[3] = &unk_2782E39D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__PHCallBlockingServiceProviderController_setServiceProviders___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (v2 != v1)
  {
    v4 = v2;
    v5 = [v1 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PHCallBlockingServiceProviderController_setServiceProviders___block_invoke_2;
    block[3] = &unk_2782E3960;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__PHCallBlockingServiceProviderController_setServiceProviders___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didChangeServiceProvidersForCallBlockingServiceProviderController:*(a1 + 32)];
}

- (id)fetchServiceProviders
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PHCallBlockingServiceProviderController *)self carrierBundleController];
  v5 = [v4 activeSubscriptions];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
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
            *v17 = 0;
            _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Subscription is hidden", v17, 2u);
          }
        }

        else
        {
          v13 = [(PHCallBlockingServiceProviderController *)self carrierBundleController];
          v12 = [v13 localizedCarrierNameForSubscriptionContext:v11];

          if ([v12 length])
          {
            v14 = [[PHCallBlockingServiceProvider alloc] initWithLocalizedName:v12 supportsSpamBlocking:[(PHCallBlockingServiceProviderController *)self supportsCallBlockingForSubscriptionContext:v11]];
            [v3 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v5 = [(PHCallBlockingServiceProviderController *)self stringForKeyHierarchy:&unk_282D5D660 subscriptionContext:v4 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v4;
      v9 = "Retrieved call blocking value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v7;
      v9 = "Retrieving call blocking value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  if ([v5 isEqualToIgnoringCase:@"Enabled"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 isEqualToIgnoringCase:@"Dynamic"];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CC3620];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithBundleType:1];
  v12 = [(PHCallBlockingServiceProviderController *)self carrierBundleController];
  v13 = [v12 telephonyClient];
  v14 = [v13 copyCarrierBundleValue:v9 keyHierarchy:v10 bundleType:v11 error:a5];

  return v14;
}

- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v5 = [(PHCallBlockingServiceProviderController *)self objectForKeyHierarchy:a3 subscriptionContext:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)carrierBundleController:(id)a3 carrierBundleDidChangeForSubscriptionContext:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed for subscription context %@", buf, 0xCu);
  }

  v7 = [(PHCallBlockingServiceProviderController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__PHCallBlockingServiceProviderController_carrierBundleController_carrierBundleDidChangeForSubscriptionContext___block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __112__PHCallBlockingServiceProviderController_carrierBundleController_carrierBundleDidChangeForSubscriptionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchServiceProviders];
  [*(a1 + 32) setServiceProviders:v2];
}

- (PHCallBlockingServiceProviderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end