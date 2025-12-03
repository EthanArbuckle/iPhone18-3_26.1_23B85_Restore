@interface SBAppSwitcherServiceManager
+ (id)sharedInstance;
- (id)registeredServicesSnapshot;
- (void)registerService:(id)service;
- (void)unregisterService:(id)service;
@end

@implementation SBAppSwitcherServiceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBAppSwitcherServiceManager sharedInstance];
  }

  v3 = sharedInstance___manager;

  return v3;
}

- (id)registeredServicesSnapshot
{
  v2 = [(SBAppSwitcherServiceSet *)self->_services copy];

  return v2;
}

uint64_t __45__SBAppSwitcherServiceManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBAppSwitcherServiceManager);
  v1 = sharedInstance___manager;
  sharedInstance___manager = v0;

  return kdebug_trace();
}

- (void)registerService:(id)service
{
  v11[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  services = self->_services;
  if (!services)
  {
    v6 = objc_alloc_init(SBAppSwitcherServiceSet);
    v7 = self->_services;
    self->_services = v6;

    services = self->_services;
  }

  [(SBAppSwitcherServiceSet *)services addService:serviceCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"AppSwitcherService";
  v11[0] = serviceCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"AppSwitcherServiceAdded" object:self userInfo:v9];
}

- (void)unregisterService:(id)service
{
  v9[1] = *MEMORY[0x277D85DE8];
  services = self->_services;
  serviceCopy = service;
  [(SBAppSwitcherServiceSet *)services removeService:serviceCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"AppSwitcherService";
  v9[0] = serviceCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"AppSwitcherServiceRemoved" object:self userInfo:v7];
}

@end