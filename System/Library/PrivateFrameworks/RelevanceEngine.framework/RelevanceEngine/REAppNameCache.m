@interface REAppNameCache
- (id)_init;
- (id)localizedNameForApplicationWithIdentifier:(id)a3;
@end

@implementation REAppNameCache

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REAppNameCache;
  v2 = [(RESingleton *)&v8 _init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = v2[1];
    v2[1] = v3;

    v5 = objc_opt_new();
    v6 = v2[2];
    v2[2] = v5;
  }

  return v2;
}

- (id)localizedNameForApplicationWithIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  IsRemote = REApplicationIsRemote(v4);
  v6 = [[_REAppKey alloc] initWithIdentifier:v4 remote:IsRemote];
  [(NSLock *)self->_lock lock];
  v7 = [(NSMutableDictionary *)self->_nameCache objectForKeyedSubscript:v6];
  [(NSLock *)self->_lock unlock];
  if (!v7)
  {
    if (IsRemote)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v8 = getCSLPRFDefaultAppDataProviderClass_softClass_0;
      v23 = getCSLPRFDefaultAppDataProviderClass_softClass_0;
      if (!getCSLPRFDefaultAppDataProviderClass_softClass_0)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCSLPRFDefaultAppDataProviderClass_block_invoke_0;
        v25 = &unk_2785F9BC0;
        v26 = &v20;
        __getCSLPRFDefaultAppDataProviderClass_block_invoke_0(buf);
        v8 = v21[3];
      }

      v9 = v8;
      _Block_object_dispose(&v20, 8);
      v10 = objc_alloc_init(v8);
      v11 = dispatch_get_global_queue(33, 0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v25 = v11;
        _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ is loading apps using %@, completionQueue %@", buf, 0x20u);
      }

      v12 = dispatch_semaphore_create(0);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__REAppNameCache_localizedNameForApplicationWithIdentifier___block_invoke;
      v18[3] = &unk_2785FC788;
      v18[4] = self;
      v19 = v12;
      v13 = v12;
      [v10 loadAppsWithCompletion:v18 completionQueue:v11];
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      [(NSLock *)self->_lock lock];
      v7 = [(NSMutableDictionary *)self->_nameCache objectForKeyedSubscript:v6];
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      v17 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v17];
      v11 = v17;
      v7 = [v10 localizedName];
      [(NSLock *)self->_lock lock];
      [(NSMutableDictionary *)self->_nameCache setObject:v7 forKeyedSubscript:v6];
      [(NSLock *)self->_lock unlock];
    }
  }

  v14 = v7;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __60__REAppNameCache_localizedNameForApplicationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v24 = v4;
    v25 = 1024;
    v26 = [v3 count];
    _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ loaded %d apps, processing", buf, 0x12u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v3 allValues];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 name];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &stru_283B97458;
        }

        v12 = [_REAppKey alloc];
        v13 = [v9 bundleID];
        v14 = [(_REAppKey *)v12 initWithIdentifier:v13 remote:1];

        [*(*(a1 + 32) + 16) lock];
        [*(*(a1 + 32) + 8) setObject:v11 forKeyedSubscript:v14];
        [*(*(a1 + 32) + 16) unlock];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

@end