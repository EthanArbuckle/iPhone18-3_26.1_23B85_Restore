@interface ICSUbiquityAccessManager
+ (ICSUbiquityAccessManager)sharedInstance;
- (BOOL)isAccessGrantedForBundleID:(id)a3;
- (ICSUbiquityAccessManager)init;
- (__CFBundle)_bundleForBundleID:(id)a3;
- (id)_serviceNamesForBundleID:(id)a3;
- (id)_servicesForBundleID:(id)a3;
- (void)_addAccessInfo:(id)a3 forServiceName:(id)a4;
- (void)reloadAccessInfo;
@end

@implementation ICSUbiquityAccessManager

+ (ICSUbiquityAccessManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[ICSUbiquityAccessManager sharedInstance];
  }

  v3 = sharedInstance__accessManager;

  return v3;
}

uint64_t __42__ICSUbiquityAccessManager_sharedInstance__block_invoke()
{
  sharedInstance__accessManager = objc_alloc_init(ICSUbiquityAccessManager);

  return MEMORY[0x2821F96F8]();
}

- (ICSUbiquityAccessManager)init
{
  v5.receiver = self;
  v5.super_class = ICSUbiquityAccessManager;
  v2 = [(ICSUbiquityAccessManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICSUbiquityAccessManager *)v2 reloadAccessInfo];
  }

  return v3;
}

- (void)reloadAccessInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accessInfoCacheByBundleID = self->_accessInfoCacheByBundleID;
  self->_accessInfoCacheByBundleID = v3;

  v5 = MEMORY[0x277D6C230];
  v6 = *MEMORY[0x277D6C230];
  v10 = TCCAccessCopyInformation();
  v7 = MEMORY[0x277D6C190];
  v8 = *MEMORY[0x277D6C190];
  v9 = TCCAccessCopyInformation();
  [(ICSUbiquityAccessManager *)self _addAccessInfo:v10 forServiceName:*v5];
  [(ICSUbiquityAccessManager *)self _addAccessInfo:v9 forServiceName:*v7];
}

- (void)_addAccessInfo:(id)a3 forServiceName:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D6C0C8];
    v10 = MEMORY[0x277D6C0D0];
    v29 = *v31;
    do
    {
      v11 = 0;
      v27 = v8;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:*v9];
        v14 = CFBundleGetIdentifier(v13);
        v15 = [v12 objectForKeyedSubscript:*v10];
        v16 = v15;
        if (v14)
        {
          if (!v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:0];
          }

          v17 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKey:v14];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 objectForKey:@"services"];
            if (v19)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v18 setObject:v19 forKey:@"services"];
            [v18 setObject:v13 forKey:@"bundle"];
            [(NSMutableDictionary *)self->_accessInfoCacheByBundleID setObject:v18 forKey:v14];
            if (v19)
            {
LABEL_11:
              v20 = v10;
              v21 = self;
              v22 = v9;
              v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v23 setObject:v16 forKey:@"granted"];
              [v23 setObject:v26 forKey:@"serviceName"];
              [v19 addObject:v23];

              v9 = v22;
              self = v21;
              v10 = v20;
              v8 = v27;
            }
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v8 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (__CFBundle)_bundleForBundleID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:a3];
  v4 = [v3 objectForKey:@"bundle"];

  return v4;
}

- (id)_servicesForBundleID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:a3];
  v4 = [v3 objectForKey:@"services"];

  return v4;
}

- (id)_serviceNamesForBundleID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:a3];
  v4 = [v3 objectForKey:@"services"];
  v5 = [v4 valueForKey:@"serviceName"];

  return v5;
}

- (BOOL)isAccessGrantedForBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(ICSUbiquityAccessManager *)self _servicesForBundleID:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) objectForKey:{@"granted", v13}];
        v9 = [v8 BOOLValue];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end