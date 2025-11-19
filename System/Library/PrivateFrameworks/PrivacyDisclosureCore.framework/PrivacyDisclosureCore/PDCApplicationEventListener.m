@interface PDCApplicationEventListener
+ (id)sharedInstance;
- (PDCApplicationEventListener)initWithConsentStore:(id)a3 applicationEnvironment:(id)a4 targetQueue:(id)a5;
- (void)activate;
- (void)applicationDidUninstall:(id)a3;
- (void)checkForStaleConsentRecords;
- (void)invalidate;
@end

@implementation PDCApplicationEventListener

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[PDCApplicationEventListener sharedInstance];
  }

  v3 = sharedInstance_result;

  return v3;
}

void __45__PDCApplicationEventListener_sharedInstance__block_invoke()
{
  v5 = PDCGlobalConsentStoreInstance();
  v0 = PDCGlobalApplicationEnvironment();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.PrivacyDisclosure.PDCApplicationEventListener", v1);

  v3 = [[PDCApplicationEventListener alloc] initWithConsentStore:v5 applicationEnvironment:v0 targetQueue:v2];
  v4 = sharedInstance_result;
  sharedInstance_result = v3;
}

- (PDCApplicationEventListener)initWithConsentStore:(id)a3 applicationEnvironment:(id)a4 targetQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PDCApplicationEventListener;
  v12 = [(PDCApplicationEventListener *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_consentStore, a3);
    objc_storeStrong(&v13->_applicationEnvironment, a4);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PDCApplicationEventListener.0x%p", v13];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create_with_target_V2(v15, v16, v11);
    queue = v13->_queue;
    v13->_queue = v17;

    v13->_activated._Value = 0;
    v19 = v13;
  }

  return v13;
}

- (void)activate
{
  if (+[PDCPreflightManager isPreflightFeatureEnabled])
  {
    if ((atomic_exchange(&self->_activated._Value, 1u) & 1) == 0)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PDCApplicationEventListener_activate__block_invoke;
      block[3] = &unk_279AA1F00;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {

    [(PDCApplicationEventListener *)self invalidate];
  }
}

uint64_t __39__PDCApplicationEventListener_activate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 24))
  {
    result = [result cancelled];
    if ((result & 1) == 0)
    {
      v3 = [*(*(a1 + 32) + 16) monitorAppEventsWithDelegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 32)];
      v4 = *(a1 + 32);
      v5 = *(v4 + 24);
      *(v4 + 24) = v3;

      v6 = *(a1 + 32);

      return [v6 checkForStaleConsentRecords];
    }
  }

  return result;
}

- (void)invalidate
{
  [(PDCApplicationEventListener *)self setCancelled:1];
  environmentMonitoringHandle = self->_environmentMonitoringHandle;

  [(PDCApplicationEnvironmentMonitoringHandle *)environmentMonitoringHandle invalidate];
}

- (void)checkForStaleConsentRecords
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(PDCConsentStore *)self->_consentStore consentedBundleIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(PDCApplicationEnvironment *)self->_applicationEnvironment applicationRecordForBundleIdentifier:v8];

        if (!v9)
        {
          v10 = [(PDCConsentStore *)self->_consentStore writeUserConsentedRegulatoryDisclosureVersion:0 forBundleIdentifier:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidUninstall:(id)a3
{
  v4 = a3;
  if (![(PDCApplicationEventListener *)self cancelled])
  {
    v5 = [(PDCConsentStore *)self->_consentStore writeUserConsentedRegulatoryDisclosureVersion:0 forBundleIdentifier:v4];
    if (v5)
    {
      v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(PDCApplicationEventListener *)v4 applicationDidUninstall:v5, v6];
      }
    }
  }
}

- (void)applicationDidUninstall:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25F701000, log, OS_LOG_TYPE_ERROR, "Error while deleting consent record for removed app %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end