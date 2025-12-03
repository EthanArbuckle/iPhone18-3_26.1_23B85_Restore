@interface PHBrandedCallingSwitchSpecifier
- (PHBrandedCallingSwitchSpecifier)initWithCoreTelephonyClient:(id)client context:(id)context;
- (PHBrandedCallingSwitchSpecifier)initWithCoreTelephonyClient:(id)client context:(id)context carrierName:(id)name;
- (id)getBrandedCallingEnabled;
- (void)getBrandedCallingEnabled;
- (void)setBrandedCallingEnabled:(id)enabled;
@end

@implementation PHBrandedCallingSwitchSpecifier

- (PHBrandedCallingSwitchSpecifier)initWithCoreTelephonyClient:(id)client context:(id)context
{
  clientCopy = client;
  contextCopy = context;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BRANDED_CALLING_SPECIFIER_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v17.receiver = self;
  v17.super_class = PHBrandedCallingSwitchSpecifier;
  v11 = [(PHBrandedCallingSwitchSpecifier *)&v17 initWithName:v10 target:self set:sel_setBrandedCallingEnabled_ get:sel_getBrandedCallingEnabled detail:0 cell:6 edit:0];

  if (v11)
  {
    objc_storeStrong(&v11->_ctClient, client);
    objc_storeStrong(&v11->_context, context);
    v12 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v11->_featureFlags;
    v11->_featureFlags = v12;

    if ([(TUFeatureFlags *)v11->_featureFlags deviceExpertMigrationEnabled])
    {
      v14 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v11->_configurationProvider;
      v11->_configurationProvider = v14;
    }
  }

  return v11;
}

- (PHBrandedCallingSwitchSpecifier)initWithCoreTelephonyClient:(id)client context:(id)context carrierName:(id)name
{
  clientCopy = client;
  contextCopy = context;
  nameCopy = name;
  label = [contextCopy label];
  v19.receiver = self;
  v19.super_class = PHBrandedCallingSwitchSpecifier;
  v13 = [(PHBrandedCallingSwitchSpecifier *)&v19 initWithName:label target:self set:sel_setBrandedCallingEnabled_ get:sel_getBrandedCallingEnabled detail:0 cell:6 edit:0];

  if (v13)
  {
    objc_storeStrong(&v13->_ctClient, client);
    objc_storeStrong(&v13->_context, context);
    [(PHBrandedCallingSwitchSpecifier *)v13 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PHBrandedCallingSwitchSpecifier *)v13 setProperty:nameCopy forKey:*MEMORY[0x277D40160]];
    v14 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v13->_featureFlags;
    v13->_featureFlags = v14;

    if ([(TUFeatureFlags *)v13->_featureFlags deviceExpertMigrationEnabled])
    {
      v16 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v13->_configurationProvider;
      v13->_configurationProvider = v16;
    }
  }

  return v13;
}

- (id)getBrandedCallingEnabled
{
  v26 = *MEMORY[0x277D85DE8];
  featureFlags = [(PHBrandedCallingSwitchSpecifier *)self featureFlags];
  deviceExpertMigrationEnabled = [featureFlags deviceExpertMigrationEnabled];

  if (deviceExpertMigrationEnabled)
  {
    v5 = [(CTXPCServiceSubscriptionContext *)self->_context slotID]== 1;
    v6 = MEMORY[0x277CCABB0];
    configurationProvider = [(PHBrandedCallingSwitchSpecifier *)self configurationProvider];
    v8 = [v6 numberWithBool:{objc_msgSend(configurationProvider, "isBrandedCallingEnabled:", v5)}];
  }

  else
  {
    v21 = 0;
    ctClient = self->_ctClient;
    context = self->_context;
    v11 = *MEMORY[0x277CC3808];
    v20 = 0;
    v12 = [(CoreTelephonyClient *)ctClient context:context getCapability:v11 status:&v21 with:&v20];
    v13 = v20;
    v14 = TPSLog();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PHBrandedCallingSwitchSpecifier *)&self->_context getBrandedCallingEnabled];
      }

      v8 = MEMORY[0x277CBEC28];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_context;
        v17 = @"Off";
        if (v21)
        {
          v17 = @"On";
        }

        *buf = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_21B8E9000, v15, OS_LOG_TYPE_DEFAULT, "Fetched state of branded calling for context: %@, state: %@", buf, 0x16u);
      }

      v8 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setBrandedCallingEnabled:(id)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    v5 = [(CTXPCServiceSubscriptionContext *)self->_context slotID]== 1;
    configurationProvider = [(PHBrandedCallingSwitchSpecifier *)self configurationProvider];
    [configurationProvider setBrandedCallingEnabled:objc_msgSend(enabledCopy primary:{"BOOLValue"), v5}];
  }

  else
  {
    v7 = -[CoreTelephonyClient context:setCapability:enabled:with:](self->_ctClient, "context:setCapability:enabled:with:", self->_context, *MEMORY[0x277CC3808], [enabledCopy BOOLValue], 0);
    v8 = TPSLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PHBrandedCallingSwitchSpecifier *)&self->_context setBrandedCallingEnabled:v9];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      context = self->_context;
      bOOLValue = [enabledCopy BOOLValue];
      v12 = @"Off";
      if (bOOLValue)
      {
        v12 = @"On";
      }

      v14 = 138412546;
      v15 = context;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Set state of branded calling for context: %@, state: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getBrandedCallingEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch state of branded calling for context: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setBrandedCallingEnabled:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Failed to set state of branded calling for context: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end