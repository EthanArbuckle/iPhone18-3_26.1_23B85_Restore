@interface SUServerConfigurationManager
+ (id)sharedInstance;
- (BOOL)_queue_didNumberValueChange:(id)a3 oldConfig:(id)a4 newConfig:(id)a5 valueRemoved:(BOOL *)a6;
- (BOOL)_queue_didValueChange:(id)a3 oldConfig:(id)a4 newConfig:(id)a5 type:(unint64_t)a6 valueRemoved:(BOOL *)a7;
- (BOOL)defaultToOldInactivityPredictor;
- (NSNumber)softwareUpdateAutoScanInterval;
- (SUServerConfigurationManager)init;
- (void)addListener:(id)a3;
- (void)coreConfigServerSettingsUpdated:(id)a3 error:(id)a4;
- (void)removeListener:(id)a3;
@end

@implementation SUServerConfigurationManager

- (SUServerConfigurationManager)init
{
  v16.receiver = self;
  v16.super_class = SUServerConfigurationManager;
  v2 = [(SUServerConfigurationManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.softwareupdateservicesd.serverConfigStateQueue", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v6 = [MEMORY[0x277D64168] sharedServerSettings];
    suCoreServerConfig = v2->_suCoreServerConfig;
    v2->_suCoreServerConfig = v6;

    v8 = *MEMORY[0x277D64558];
    [(SUCoreConfigServer *)v2->_suCoreServerConfig listenForConfigChanges:v2 withName:*MEMORY[0x277D64558]];
    v9 = [objc_alloc(MEMORY[0x277D64410]) initWithProjectName:v8];
    projectConfig = v2->_projectConfig;
    v2->_projectConfig = v9;

    v11 = [(SUCoreConfig *)v2->_projectConfig getConfig];
    config = v2->_config;
    v2->_config = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    listeners = v2->_listeners;
    v2->_listeners = v13;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred_1 != -1)
  {
    +[SUServerConfigurationManager sharedInstance];
  }

  v3 = sharedInstance___instance_4;

  return v3;
}

uint64_t __46__SUServerConfigurationManager_sharedInstance__block_invoke()
{
  sharedInstance___instance_4 = objc_alloc_init(SUServerConfigurationManager);

  return MEMORY[0x2821F96F8]();
}

- (void)addListener:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SUServerConfigurationManager_addListener___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUServerConfigurationManager_removeListener___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (NSNumber)softwareUpdateAutoScanInterval
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SUServerConfigurationManager_softwareUpdateAutoScanInterval__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __62__SUServerConfigurationManager_softwareUpdateAutoScanInterval__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) getNumberConfigForKey:*MEMORY[0x277D64518]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)defaultToOldInactivityPredictor
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = v2->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SUServerConfigurationManager_defaultToOldInactivityPredictor__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __63__SUServerConfigurationManager_defaultToOldInactivityPredictor__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) getNumberConfigForKey:@"FallbackToCoreDuetInactivityPredictor"];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)_queue_didValueChange:(id)a3 oldConfig:(id)a4 newConfig:(id)a5 type:(unint64_t)a6 valueRemoved:(BOOL *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a6)
  {
    SULogInfo(@"Unknown SUServerConfigValueType %lu", v15, v16, v17, v18, v19, v20, v21, a6);
    v22 = 0;
  }

  else
  {
    v22 = [(SUServerConfigurationManager *)self _queue_didNumberValueChange:v12 oldConfig:v13 newConfig:v14 valueRemoved:a7];
  }

  return v22;
}

- (BOOL)_queue_didNumberValueChange:(id)a3 oldConfig:(id)a4 newConfig:(id)a5 valueRemoved:(BOOL *)a6
{
  stateQueue = self->_stateQueue;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v13 = [v11 objectForKeyedSubscript:v12];

  v14 = [v10 objectForKeyedSubscript:v12];

  if (!v13 || v14)
  {
    v15 = 1;
    if (v13 || !v14)
    {
      if (!v13 || !v14 || (v16 = [v13 intValue], v16 == objc_msgSend(v14, "intValue")))
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
    if (a6)
    {
      *a6 = 1;
    }
  }

  return v15;
}

- (void)coreConfigServerSettingsUpdated:(id)a3 error:(id)a4
{
  v5 = a3;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SUServerConfigurationManager_coreConfigServerSettingsUpdated_error___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

void __70__SUServerConfigurationManager_coreConfigServerSettingsUpdated_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"Projects"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D64558]];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v4 setObject:v5 forKeyedSubscript:@"Changed"];
    [v4 setObject:v6 forKeyedSubscript:@"Removed"];
    v7 = *MEMORY[0x277D64518];
    if ([*(a1 + 40) _queue_didNumberValueChange:*MEMORY[0x277D64518] oldConfig:*(*(a1 + 40) + 32) newConfig:v3 valueRemoved:&v24])
    {
      if (v24 == 1)
      {
        [v6 addObject:v7];
      }

      else
      {
        v11 = [v3 objectForKeyedSubscript:v7];
        [v5 setObject:v11 forKeyedSubscript:v7];
      }

      objc_storeStrong((*(a1 + 40) + 32), v3);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = *(*(a1 + 40) + 24);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v19 = v6;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (v16)
            {
              v17 = *(*(&v20 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v16 serverConfigManager:*(a1 + 40) configValuesChanged:v4];
              }
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v13);
        v6 = v19;
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = v3;
      v10 = *(v8 + 32);
      *(v8 + 32) = v9;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end