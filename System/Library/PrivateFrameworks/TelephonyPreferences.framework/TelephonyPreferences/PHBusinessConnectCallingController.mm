@interface PHBusinessConnectCallingController
- (BOOL)supportsBusinessConnectCallingForSubscriptionContext:(id)context;
- (PHBusinessConnectCallingController)init;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getBusinessConnectCallingEnabled;
- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)specifiers;
- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (void)setBusinessConnectCallingEnabled:(id)enabled;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
@end

@implementation PHBusinessConnectCallingController

- (PHBusinessConnectCallingController)init
{
  v10.receiver = self;
  v10.super_class = PHBusinessConnectCallingController;
  v2 = [(PHBusinessConnectCallingController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v2->_carrierBundleController;
    v2->_carrierBundleController = v3;

    v5 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v5;

    if ([(TUFeatureFlags *)v2->_featureFlags deviceExpertMigrationEnabled])
    {
      v7 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v2->_configurationProvider;
      v2->_configurationProvider = v7;

      [(TUConfigurationProvider *)v2->_configurationProvider setDelegate:v2];
    }
  }

  return v2;
}

- (id)specifiers
{
  v29 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    configurationProvider = [(PHBusinessConnectCallingController *)self configurationProvider];
    isBusinessConnectCallingAvailable = [configurationProvider isBusinessConnectCallingAvailable];

    if ((isBusinessConnectCallingAvailable & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v12 = MEMORY[0x277D3FAD8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"BUSINESS_CONNECT_CALLING_GROUP_HEADER" value:&stru_282D54710 table:@"CallDirectorySettings"];
    activeSubscriptions = [v12 groupSpecifierWithID:@"BusinessConnectCallingGroup" name:v14];

    v15 = objc_alloc(MEMORY[0x277D3FAD8]);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BUSINESS_CONNECT_CALLING_SPECIFIER_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v18 = [v15 initWithName:v17 target:self set:sel_setBusinessConnectCallingEnabled_ get:sel_getBusinessConnectCallingEnabled detail:0 cell:6 edit:0];

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"BUSINESS_CONNECT_CALLING_FOOTER_TEXT" value:&stru_282D54710 table:@"CallDirectorySettings"];
    [activeSubscriptions setProperty:v20 forKey:*MEMORY[0x277D3FF88]];

    v27[0] = activeSubscriptions;
    v27[1] = v18;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    carrierBundleController = [(PHBusinessConnectCallingController *)self carrierBundleController];
    activeSubscriptions = [carrierBundleController activeSubscriptions];

    v8 = [activeSubscriptions countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(activeSubscriptions);
          }

          if ([(PHBusinessConnectCallingController *)self supportsBusinessConnectCallingForSubscriptionContext:*(*(&v23 + 1) + 8 * i)])
          {

            goto LABEL_15;
          }
        }

        v9 = [activeSubscriptions countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)supportsBusinessConnectCallingForSubscriptionContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v13 = 0;
  v5 = [(PHBusinessConnectCallingController *)self stringForKeyHierarchy:&unk_282D5D648 subscriptionContext:contextCopy error:&v13];
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
      v17 = contextCopy;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved verstat feature capability value '%@' for subscription %@", buf, 0x16u);
    }

    v9 = [v5 isEqualToIgnoringCase:@"Disabled"] ^ 1;
  }

  else
  {
    if (v6)
    {
      v10 = TPSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = contextCopy;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving verstat feature capability value for subscription %@ failed with error %@", buf, 0x16u);
      }
    }

    LOBYTE(v9) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v8 = MEMORY[0x277CC3620];
  contextCopy = context;
  hierarchyCopy = hierarchy;
  v11 = [[v8 alloc] initWithBundleType:1];
  carrierBundleController = [(PHBusinessConnectCallingController *)self carrierBundleController];
  telephonyClient = [carrierBundleController telephonyClient];
  v14 = [telephonyClient copyCarrierBundleValue:contextCopy keyHierarchy:hierarchyCopy bundleType:v11 error:error];

  return v14;
}

- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v5 = [(PHBusinessConnectCallingController *)self objectForKeyHierarchy:hierarchy subscriptionContext:context error:error];
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

- (id)getBusinessConnectCallingEnabled
{
  deviceExpertMigrationEnabled = [(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled];
  v4 = MEMORY[0x277CCABB0];
  if (deviceExpertMigrationEnabled)
  {
    configurationProvider = [(PHBusinessConnectCallingController *)self configurationProvider];
    [v4 numberWithBool:{objc_msgSend(configurationProvider, "isBusinessConnectCallingEnabled")}];
  }

  else
  {
    configurationProvider = [(PHBusinessConnectCallingController *)self getBooleanFromUserDefaults:*MEMORY[0x277D6EFA8] default:&unk_282D5D6A8];
    [v4 numberWithInt:{objc_msgSend(configurationProvider, "BOOLValue") ^ 1}];
  }
  v6 = ;

  return v6;
}

- (void)setBusinessConnectCallingEnabled:(id)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = enabledCopy;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "User toggled business connect calling switch to %@", &v9, 0xCu);
  }

  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    bOOLValue = [enabledCopy BOOLValue];
    configurationProvider = [(PHBusinessConnectCallingController *)self configurationProvider];
    [configurationProvider setBusinessConnectCallingEnabled:bOOLValue];
  }

  else
  {
    configurationProvider = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(enabledCopy, "BOOLValue") ^ 1}];
    [(PHBusinessConnectCallingController *)self setValueInUserDefaults:configurationProvider forKey:*MEMORY[0x277D6EFA8]];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default
{
  v5 = MEMORY[0x277CBEBD0];
  defaultCopy = default;
  defaultsCopy = defaults;
  v8 = [v5 alloc];
  v9 = [v8 initWithSuiteName:*MEMORY[0x277D6EFA0]];
  v10 = [v9 objectForKey:defaultsCopy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = defaultCopy;
  }

  v12 = v11;

  return v11;
}

- (void)setValueInUserDefaults:(id)defaults forKey:(id)key
{
  v5 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  defaultsCopy = defaults;
  v8 = [v5 alloc];
  v9 = [v8 initWithSuiteName:*MEMORY[0x277D6EFA0]];
  [v9 setValue:defaultsCopy forKey:keyCopy];
}

@end