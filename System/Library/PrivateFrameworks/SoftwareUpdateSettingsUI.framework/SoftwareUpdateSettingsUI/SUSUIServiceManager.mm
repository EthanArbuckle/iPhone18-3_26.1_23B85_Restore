@interface SUSUIServiceManager
+ (id)sharedInstance;
- (BOOL)isServiceRegistered:(id)registered;
- (Class)classForService:(Class)service;
- (Class)classForServiceName:(id)name;
- (SUSUIServiceManager)init;
- (id)mockedServicesMap;
- (void)initialize;
- (void)registerMockClasses;
- (void)registerServiceWithName:(id)name forServiceClass:(Class)class;
@end

@implementation SUSUIServiceManager

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __37__SUSUIServiceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUSUIServiceManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (SUSUIServiceManager)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUSUIServiceManager;
  v6 = [(SUSUIServiceManager *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    registeredServices = v9->_registeredServices;
    v9->_registeredServices = dictionary;
    MEMORY[0x277D82BD8](registeredServices);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)initialize
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10[1] = a2;
  if (![(SUSUIServiceManager *)self initialized])
  {
    [(SUSUIServiceManager *)selfCopy setInitialized:1];
    [(SUSUIServiceManager *)selfCopy reset];
    v10[0] = _SUSUILoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSUIServiceManager initialize]", v8);
      _os_log_impl(&dword_26AC94000, log, type, "%s: Initializing %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(v10, 0);
    if (NSClassFromString(&cfstr_Susuitestautom.isa))
    {
      v3 = +[SUSUITestAutomationManager sharedManager];
      [v3 initialize];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      oslog = _SUSUILoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v12, "[SUSUIServiceManager initialize]");
        _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "%s: __HAS_SUSUI_MOCKING_KIT is true but SUSUITestAutomationManager doesn't exists.", v12, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

- (void)registerServiceWithName:(id)name forServiceClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  classCopy = class;
  if (location[0] && classCopy)
  {
    if ([(NSMutableDictionary *)selfCopy->_registeredServices objectForKey:location[0]])
    {
      v7 = _SUSUILoggingFacility();
      v6 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v15, location[0], classCopy);
        _os_log_error_impl(&dword_26AC94000, v7, v6, "Failed to register service with name '%@' for class '%@'. Service with this name is already registered.", v15, 0x16u);
      }

      objc_storeStrong(&v7, 0);
      v8 = 1;
    }

    else
    {
      v5 = _SUSUILoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v14, location[0], classCopy);
        _os_log_impl(&dword_26AC94000, v5, OS_LOG_TYPE_DEFAULT, "Registering service with name '%@' for class '%@'.", v14, 0x16u);
      }

      objc_storeStrong(&v5, 0);
      [(NSMutableDictionary *)selfCopy->_registeredServices setObject:classCopy forKeyedSubscript:location[0]];
      v8 = 0;
    }
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v16, location[0], classCopy);
      _os_log_error_impl(&dword_26AC94000, oslog, type, "Failed to register service with name '%@' for class '%@'. Service name and class must not be nil.", v16, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isServiceRegistered:(id)registered
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, registered);
  v4 = [(NSMutableDictionary *)selfCopy->_registeredServices objectForKey:location[0]]!= 0;
  objc_storeStrong(location, 0);
  return v4;
}

- (Class)classForService:(Class)service
{
  registeredServices = self->_registeredServices;
  v6 = NSStringFromClass(service);
  v7 = [(NSMutableDictionary *)registeredServices objectForKey:?];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    serviceCopy = v7;
  }

  else
  {
    serviceCopy = service;
  }

  return serviceCopy;
}

- (Class)classForServiceName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v4 = [(NSMutableDictionary *)selfCopy->_registeredServices objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)registerMockClasses
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v34[1] = a2;
  v34[0] = [(SUSUIServiceManager *)self mockedServicesMap];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v34[0]);
  v23 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
  if (v23)
  {
    v19 = *__b[2];
    v20 = 0;
    v21 = v23;
    while (1)
    {
      v18 = v20;
      if (*__b[2] != v19)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v20);
      v31 = [v34[0] objectForKeyedSubscript:v33];
      memset(v29, 0, sizeof(v29));
      v16 = MEMORY[0x277D82BE0](v31);
      v17 = [v16 countByEnumeratingWithState:v29 objects:v37 count:16];
      if (v17)
      {
        v13 = *v29[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*v29[2] != v13)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(v29[1] + 8 * v14);
          v10 = selfCopy;
          resolvedServiceClassName = [v30 resolvedServiceClassName];
          -[SUSUIServiceManager registerServiceWithName:forServiceClass:](v10, "registerServiceWithName:forServiceClass:", resolvedServiceClassName, [v30 mockedServiceClass]);
          MEMORY[0x277D82BD8](resolvedServiceClassName);
          oslog = _SUSUILoggingFacility();
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            v6 = type;
            v9 = [getSUSMKMockedServiceTypeUtilityClass_1() descriptionForType:{objc_msgSend(v33, "integerValue")}];
            v2 = MEMORY[0x277D82BE0](v9);
            v26 = v2;
            v3 = v33;
            resolvedServiceClassName2 = [v30 resolvedServiceClassName];
            v4 = MEMORY[0x277D82BE0](resolvedServiceClassName2);
            v25 = v4;
            v7 = NSStringFromClass([v30 mockedServiceClass]);
            v24 = MEMORY[0x277D82BE0](v7);
            __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v36, "[SUSUIServiceManager(XCUI) registerMockClasses]", v2, v3, v4, v24);
            _os_log_impl(&dword_26AC94000, log, v6, "%s: Registering mock mapping for service %@ (%@): %@ -> %@", v36, 0x34u);
            MEMORY[0x277D82BD8](v7);
            MEMORY[0x277D82BD8](resolvedServiceClassName2);
            MEMORY[0x277D82BD8](v9);
            objc_storeStrong(&v24, 0);
            objc_storeStrong(&v25, 0);
            objc_storeStrong(&v26, 0);
          }

          objc_storeStrong(&oslog, 0);
          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [v16 countByEnumeratingWithState:v29 objects:v37 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v31, 0);
      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(v34, 0);
  *MEMORY[0x277D85DE8];
}

- (id)mockedServicesMap
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = &unk_287B85600;
  v3 = [SUSMKockedServiceRecord alloc];
  objc_opt_class();
  objc_opt_class();
  v15 = [SUSMKockedServiceRecord initWithServiceType:v3 resolvingService:"initWithServiceType:resolvingService:usingMockedClass:" usingMockedClass:?];
  v17 = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19[0] = v14;
  v18[1] = &unk_287B85618;
  v4 = [SUSMKockedServiceRecord alloc];
  objc_opt_class();
  objc_opt_class();
  v13 = [SUSMKockedServiceRecord initWithServiceType:v4 resolvingService:"initWithServiceType:resolvingService:usingMockedClass:" usingMockedClass:?];
  v16[0] = v13;
  v6 = [SUSMKockedServiceRecord alloc];
  v5 = objc_opt_class();
  v12 = [(SUSMKockedServiceRecord *)v6 initWithServiceType:0 resolvingService:v5 usingMockedClass:objc_opt_class()];
  v16[1] = v12;
  v8 = [SUSMKockedServiceRecord alloc];
  v7 = objc_opt_class();
  v11 = [(SUSMKockedServiceRecord *)v8 initWithServiceType:0 resolvingService:v7 usingMockedClass:objc_opt_class()];
  v16[2] = v11;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  *MEMORY[0x277D85DE8];

  return v10;
}

@end