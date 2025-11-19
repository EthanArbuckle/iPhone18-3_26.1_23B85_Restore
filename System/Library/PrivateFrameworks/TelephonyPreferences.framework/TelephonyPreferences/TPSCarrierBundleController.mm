@interface TPSCarrierBundleController
- (id)localizedStringForKey:(id)a3 subscriptionContext:(id)a4;
- (id)localizedStringForKey:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (id)objectForKey:(id)a3 subscriptionContext:(id)a4;
- (id)objectForKey:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4;
- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (void)carrierBundleChange:(id)a3;
- (void)operatorBundleChange:(id)a3;
@end

@implementation TPSCarrierBundleController

- (id)localizedStringForKey:(id)a3 subscriptionContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [(TPSCarrierBundleController *)self localizedStringForKey:a3 subscriptionContext:a4 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)localizedStringForKey:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TPSTelephonyController *)self telephonyClient];
  v11 = [v10 localizedCarrierBundleStringForKey:v9 subscription:v8 error:a5];

  return v11;
}

- (id)objectForKey:(id)a3 subscriptionContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [(TPSCarrierBundleController *)self objectForKey:a3 subscriptionContext:a4 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)objectForKey:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CC3620];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithBundleType:1];
  v12 = [(TPSTelephonyController *)self telephonyClient];
  v13 = [v12 copyCarrierBundleValue:v9 key:v10 bundleType:v11 error:a5];

  return v13;
}

- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [(TPSCarrierBundleController *)self objectForKeyHierarchy:a3 subscriptionContext:a4 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CC3620];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithBundleType:1];
  v12 = [(TPSTelephonyController *)self telephonyClient];
  v13 = [v12 copyCarrierBundleValueWithDefault:v9 keyHierarchy:v10 bundleType:v11 error:a5];

  return v13;
}

- (void)carrierBundleChange:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed for subscription context %@.", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__TPSCarrierBundleController_carrierBundleChange___block_invoke;
  v8[3] = &unk_2782E39D0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(TPSController *)self performAtomicDelegateBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __50__TPSCarrierBundleController_carrierBundleChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__TPSCarrierBundleController_carrierBundleChange___block_invoke_2;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v14 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)operatorBundleChange:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Operator bundle changed for subscription context %@.", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__TPSCarrierBundleController_operatorBundleChange___block_invoke;
  v8[3] = &unk_2782E39D0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(TPSController *)self performAtomicDelegateBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __51__TPSCarrierBundleController_operatorBundleChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__TPSCarrierBundleController_operatorBundleChange___block_invoke_2;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v14 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end