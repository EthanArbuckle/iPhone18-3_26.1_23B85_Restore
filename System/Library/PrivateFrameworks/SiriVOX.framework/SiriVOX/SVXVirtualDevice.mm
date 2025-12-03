@interface SVXVirtualDevice
+ (BOOL)_instanceContextIsEndpoint:(id)endpoint;
- (SVXVirtualDevice)initWithInstanceContext:(id)context;
- (SVXVirtualDevice)initWithInstanceContext:(id)context preferences:(id)preferences analytics:(id)analytics moduleFactory:(id)factory;
- (id)_createBuiltInModules:(id)modules preferences:(id)preferences analytics:(id)analytics moduleFactory:(id)factory;
- (id)description;
- (void)_startWithModuleInstanceMap:(id)map platformDependencies:(id)dependencies;
- (void)_stopWithModuleInstanceMap:(id)map;
- (void)startWithPlatformDependencies:(id)dependencies;
- (void)stop;
@end

@implementation SVXVirtualDevice

- (id)_createBuiltInModules:(id)modules preferences:(id)preferences analytics:(id)analytics moduleFactory:(id)factory
{
  v38[6] = *MEMORY[0x277D85DE8];
  modulesCopy = modules;
  factoryCopy = factory;
  v9 = [[SVXQueuePerformer alloc] initWithIdentifier:@"com.apple.SiriVOXService.session-manager" qosClass:33 relativePriority:0 options:2];
  v10 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.client-service" class:objc_opt_class() qos:33];
  v38[0] = v10;
  v11 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.service-command" class:objc_opt_class() performer:v9];
  v38[1] = v11;
  v31 = v9;
  v12 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.session-manager" class:objc_opt_class() performer:v9];
  v38[2] = v12;
  v13 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.speech-synthesis" class:objc_opt_class() qos:33];
  v38[3] = v13;
  v14 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.synthesis-manager" class:objc_opt_class() qos:33];
  v38[4] = v14;
  v15 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.system-observation" class:objc_opt_class() qos:17];
  v38[5] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];

  if ([modulesCopy isDefault])
  {
    v17 = [factoryCopy createModuleWithIdentifier:@"com.apple.SiriVOXService.device-setup" class:objc_opt_class() qos:21];
    v37 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v19 = [v16 arrayByAddingObjectsFromArray:v18];

    v16 = v19;
  }

  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v16;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        identifier = [v26 identifier];
        [v20 setObject:v26 forKey:identifier];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }

  v28 = [v20 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_stopWithModuleInstanceMap:(id)map
{
  v26 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSDictionary *)self->_modulesByIdentifier allKeys];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [mapCopy moduleInstanceWithIdentifier:v9];
        v11 = [(NSDictionary *)self->_modulesByIdentifier objectForKeyedSubscript:v9];
        performer = [v11 performer];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __47__SVXVirtualDevice__stopWithModuleInstanceMap___block_invoke;
        v17[3] = &unk_279C68ED0;
        v18 = v10;
        v19 = mapCopy;
        v20 = v11;
        v13 = v11;
        v14 = v10;
        [performer performBlock:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SVXVirtualDevice__stopWithModuleInstanceMap___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopWithModuleInstanceProvider:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 setIsActive:0];
}

- (void)_startWithModuleInstanceMap:(id)map platformDependencies:(id)dependencies
{
  v30 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dependenciesCopy = dependencies;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSDictionary *)self->_modulesByIdentifier allKeys];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [mapCopy moduleInstanceWithIdentifier:v12];
        v14 = [(NSDictionary *)self->_modulesByIdentifier objectForKeyedSubscript:v12];
        performer = [v14 performer];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __69__SVXVirtualDevice__startWithModuleInstanceMap_platformDependencies___block_invoke;
        v20[3] = &unk_279C68930;
        v21 = v13;
        v22 = mapCopy;
        v23 = dependenciesCopy;
        v24 = v14;
        v16 = v14;
        v17 = v13;
        [performer performBlock:v20];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __69__SVXVirtualDevice__startWithModuleInstanceMap_platformDependencies___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startWithModuleInstanceProvider:*(a1 + 40) platformDependencies:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 setIsActive:1];
}

- (void)stop
{
  [(SVXVirtualDevice *)self _stopWithModuleInstanceMap:self->_moduleInstanceMap];
  moduleInstanceMap = self->_moduleInstanceMap;
  self->_moduleInstanceMap = 0;
}

- (void)startWithPlatformDependencies:(id)dependencies
{
  v4 = MEMORY[0x277CBEB38];
  dependenciesCopy = dependencies;
  v6 = [[v4 alloc] initWithCapacity:{-[NSDictionary count](self->_modulesByIdentifier, "count")}];
  modulesByIdentifier = self->_modulesByIdentifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SVXVirtualDevice_startWithPlatformDependencies___block_invoke;
  v11[3] = &unk_279C68908;
  v12 = v6;
  v8 = v6;
  [(NSDictionary *)modulesByIdentifier enumerateKeysAndObjectsUsingBlock:v11];
  v9 = [[SVXModuleInstanceMap alloc] initWithDictionaryRepresentation:v8];
  moduleInstanceMap = self->_moduleInstanceMap;
  self->_moduleInstanceMap = v9;

  [(SVXVirtualDevice *)self _startWithModuleInstanceMap:self->_moduleInstanceMap platformDependencies:dependenciesCopy];
}

void __50__SVXVirtualDevice_startWithPlatformDependencies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(objc_msgSend(v5 "instanceClass"))];

  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKey:v7];
  }
}

- (SVXVirtualDevice)initWithInstanceContext:(id)context preferences:(id)preferences analytics:(id)analytics moduleFactory:(id)factory
{
  contextCopy = context;
  preferencesCopy = preferences;
  analyticsCopy = analytics;
  factoryCopy = factory;
  v20.receiver = self;
  v20.super_class = SVXVirtualDevice;
  v15 = [(SVXVirtualDevice *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_instanceContext, context);
    objc_storeStrong(&v16->_analytics, analytics);
    objc_storeStrong(&v16->_preferences, preferences);
    v17 = [(SVXVirtualDevice *)v16 _createBuiltInModules:v16->_instanceContext preferences:v16->_preferences analytics:v16->_analytics moduleFactory:factoryCopy];
    modulesByIdentifier = v16->_modulesByIdentifier;
    v16->_modulesByIdentifier = v17;
  }

  return v16;
}

- (SVXVirtualDevice)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    defaultContext = contextCopy;
  }

  else
  {
    defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  }

  v7 = defaultContext;
  if ([objc_opt_class() _instanceContextIsEndpoint:defaultContext])
  {
    mEMORY[0x277CEF368] = [objc_alloc(MEMORY[0x277CEF368]) initWithInstanceContext:v7];
    mEMORY[0x277CEF158] = [objc_alloc(MEMORY[0x277CEF158]) initWithInstanceContext:v7];
  }

  else
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  }

  v10 = mEMORY[0x277CEF158];
  v11 = [[SVXModuleFactory alloc] initWithInstanceContext:v7 preferences:mEMORY[0x277CEF368] analytics:mEMORY[0x277CEF158]];
  v12 = [(SVXVirtualDevice *)self initWithInstanceContext:v7 preferences:mEMORY[0x277CEF368] analytics:v10 moduleFactory:v11];

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXVirtualDevice;
  v4 = [(SVXVirtualDevice *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {instanceContext = %@}", v4, self->_instanceContext];

  return v5;
}

+ (BOOL)_instanceContextIsEndpoint:(id)endpoint
{
  if (!endpoint)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SVXVirtualDevice _instanceContextIsEndpoint:]"];
    [currentHandler handleFailureInFunction:v5 file:@"SVXVirtualDevice.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];
  }

  return 0;
}

@end