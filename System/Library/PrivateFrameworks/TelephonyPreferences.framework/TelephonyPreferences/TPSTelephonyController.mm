@interface TPSTelephonyController
- (BOOL)isSubscriptionOrderedSet:(id)a3 equivalentToSubscriptionOrderedSet:(id)a4;
- (BOOL)supportsCellularNetworkSelectionForSubscriptionContext:(id)a3;
- (BOOL)supportsSystemCapabilityWithName:(id)a3 subscriptionContext:(id)a4;
- (NSDictionary)systemCapabilities;
- (NSOrderedSet)activeSubscriptions;
- (NSOrderedSet)subscriptions;
- (TPSTelephonyController)init;
- (id)fetchNonHiddenSubscriptions;
- (id)fetchSubscriptions;
- (id)fetchSubscriptionsInUse;
- (id)fetchSystemCapabilitiesForSubscriptions:(id)a3;
- (id)systemCapabilitiesForSubscriptionContext:(id)a3;
- (id)systemCapabilitiesForSubscriptionContext:(id)a3 error:(id *)a4;
- (void)context:(id)a3 capabilitiesChanged:(id)a4;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)setActiveSubscriptions:(id)a3;
- (void)setSubscriptions:(id)a3;
- (void)setSystemCapabilities:(id)a3;
@end

@implementation TPSTelephonyController

- (TPSTelephonyController)init
{
  v14.receiver = self;
  v14.super_class = TPSTelephonyController;
  v2 = [(TPSController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x277CCACA8];
    v5 = [objc_opt_class() tps_classIdentifier];
    v6 = NSStringFromSelector(sel_serialDispatchQueue);
    v7 = [v4 stringWithFormat:@"%@.%@", v5, v6];

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create([v7 UTF8String], v8);
    serialDispatchQueue = v3->_serialDispatchQueue;
    v3->_serialDispatchQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3->_serialDispatchQueue];
    telephonyClient = v3->_telephonyClient;
    v3->_telephonyClient = v11;

    [(CoreTelephonyClient *)v3->_telephonyClient setDelegate:v3];
  }

  return v3;
}

- (BOOL)isSubscriptionOrderedSet:(id)a3 equivalentToSubscriptionOrderedSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v7 = [v5 count];
    if (v7 == [v6 count])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__TPSTelephonyController_isSubscriptionOrderedSet_equivalentToSubscriptionOrderedSet___block_invoke;
      v10[3] = &unk_2782E3F78;
      v11 = v6;
      v12 = &v13;
      [v5 enumerateObjectsUsingBlock:v10];
      v8 = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void __86__TPSTelephonyController_isSubscriptionOrderedSet_equivalentToSubscriptionOrderedSet___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (!v7 || ([v8 tps_isEquivalentToSubscriptionContext:v7] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (NSOrderedSet)activeSubscriptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TPSTelephonyController_activeSubscriptions__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__TPSTelephonyController_activeSubscriptions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 fetchSubscriptionsInUse];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v3 = *(*(a1 + 32) + 32);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setActiveSubscriptions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __49__TPSTelephonyController_setActiveSubscriptions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1 != *(a1 + 40))
  {
    v3 = v1;
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    if (([*(a1 + 32) isSubscriptionOrderedSet:v3 equivalentToSubscriptionOrderedSet:*(*(a1 + 32) + 32)] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_2;
      v8[3] = &unk_2782E3960;
      v8[4] = v7;
      [v7 performAtomicDelegateBlock:v8];
    }
  }
}

void __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_3;
          v12[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v12[4] = v7;
          v12[5] = v10;
          dispatch_async(v9, v12);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSOrderedSet)subscriptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TPSTelephonyController_subscriptions__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__TPSTelephonyController_subscriptions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    v4 = [v2 fetchSubscriptions];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = *(*(a1 + 32) + 40);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setSubscriptions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __43__TPSTelephonyController_setSubscriptions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1 != *(a1 + 40))
  {
    v3 = v1;
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (([*(a1 + 32) isSubscriptionOrderedSet:v3 equivalentToSubscriptionOrderedSet:*(*(a1 + 32) + 40)] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke_2;
      v8[3] = &unk_2782E3960;
      v8[4] = v7;
      [v7 performAtomicDelegateBlock:v8];
    }
  }
}

void __43__TPSTelephonyController_setSubscriptions___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke_3;
          v12[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v12[4] = v7;
          v12[5] = v10;
          dispatch_async(v9, v12);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)systemCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TPSTelephonyController_systemCapabilities__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__TPSTelephonyController_systemCapabilities__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (!v3)
  {
    v4 = [v2 fetchSystemCapabilitiesForSubscriptions:v2[5]];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v3 = *(*(a1 + 32) + 48);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setSystemCapabilities:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TPSTelephonyController_setSystemCapabilities___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void *__48__TPSTelephonyController_setSystemCapabilities___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 48) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)performAtomicAccessorBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_accessorLock);
    v4[2](v4);

    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (BOOL)supportsCellularNetworkSelectionForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(TPSTelephonyController *)self telephonyClient];
  v12 = 0;
  v6 = [v5 isNetworkSelectionMenuAvailable:v4 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v8 = [v7 domain];

    if (v8)
    {
      v9 = TPSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TPSTelephonyController supportsCellularNetworkSelectionForSubscriptionContext:];
      }
    }
  }

  v10 = [v6 BOOLValue];

  return v10;
}

- (id)fetchNonHiddenSubscriptions
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = TPSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&dword_21B8E9000, v2, OS_LOG_TYPE_DEFAULT, "%@ fetching current CTXPCServiceSubscriptions in use", &buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v5 = getPSSimStatusCacheClass_softClass_0;
  v27 = getPSSimStatusCacheClass_softClass_0;
  if (!getPSSimStatusCacheClass_softClass_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v30 = __getPSSimStatusCacheClass_block_invoke_0;
    v31 = &unk_2782E3900;
    v32 = &v24;
    __getPSSimStatusCacheClass_block_invoke_0(&buf);
    v5 = v25[3];
  }

  v6 = v5;
  _Block_object_dispose(&v24, 8);
  v7 = [v5 sharedInstance];
  v8 = [v7 subscriptionsInUse];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v11 = *v21;
    *&v10 = 138412290;
    v19 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 isSimHidden])
        {
          v14 = TPSLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 uuid];
            LODWORD(buf) = v19;
            *(&buf + 4) = v15;
            _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Subscription: %@ is hidden", &buf, 0xCu);
          }
        }

        else
        {
          [v4 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)fetchSubscriptions
{
  v2 = [(TPSTelephonyController *)self fetchNonHiddenSubscriptions];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB70] orderedSetWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fetchSubscriptionsInUse
{
  v2 = [(TPSTelephonyController *)self fetchNonHiddenSubscriptions];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB70] orderedSetWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fetchSystemCapabilitiesForSubscriptions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:v11, v17];
        if (v12)
        {
          v13 = [v11 uuid];
          [v5 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)supportsSystemCapabilityWithName:(id)a3 subscriptionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TPSTelephonyController *)self systemCapabilities];
  v9 = [v7 uuid];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:v7];
    if (!v11)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v10 = v11;
  }

  v12 = [v10 objectForKeyedSubscript:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

LABEL_8:
  return v13;
}

- (id)systemCapabilitiesForSubscriptionContext:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:v4 error:&v11];
  v6 = v11;
  v7 = v6;
  if (!v5)
  {
    v8 = [v6 domain];

    if (v8)
    {
      v9 = TPSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TPSTelephonyController systemCapabilitiesForSubscriptionContext:];
      }
    }
  }

  return v5;
}

- (id)systemCapabilitiesForSubscriptionContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TPSTelephonyController *)self telephonyClient];
  v8 = [v7 context:v6 getSystemCapabilities:a4];

  return v8;
}

- (void)context:(id)a3 capabilitiesChanged:(id)a4
{
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "System capabilities have changed; updating the cached system capabilities.", v8, 2u);
  }

  v6 = [(TPSTelephonyController *)self subscriptions];
  v7 = [(TPSTelephonyController *)self fetchSystemCapabilitiesForSubscriptions:v6];
  [(TPSTelephonyController *)self setSystemCapabilities:v7];
}

- (void)supportsCellularNetworkSelectionForSubscriptionContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Retrieving cellular network selection information failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)systemCapabilitiesForSubscriptionContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Retrieving system capability information failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end