@interface PHSilenceJunkCallingController
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3;
- (NSArray)specifiers;
- (PHSilenceJunkCallingController)initWithCoreTelephonyClient:(id)a3 queue:(id)a4;
- (id)getSilenceJunkCallingEnabled:(id)a3;
- (id)informationalUrlForSubscriptionContext:(id)a3;
- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (void)setSilenceJunkCallingEnabled:(id)a3 specifier:(id)a4;
@end

@implementation PHSilenceJunkCallingController

- (PHSilenceJunkCallingController)initWithCoreTelephonyClient:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PHSilenceJunkCallingController;
  v9 = [(PHSilenceJunkCallingController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ctClient, a3);
    v11 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v13 = objc_alloc_init(MEMORY[0x277D6EE48]);
    configurationProvider = v10->_configurationProvider;
    v10->_configurationProvider = v13;

    v15 = objc_alloc_init(PHCallBlockingServiceProviderController);
    serviceProviderController = v10->_serviceProviderController;
    v10->_serviceProviderController = v15;

    v17 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v10->_carrierBundleController;
    v10->_carrierBundleController = v17;

    [(TPSController *)v10->_carrierBundleController addDelegate:v10 queue:v8];
  }

  return v10;
}

- (NSArray)specifiers
{
  v38 = *MEMORY[0x277D85DE8];
  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v4 = specifiers;
    goto LABEL_17;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(PHSilenceJunkCallingController *)self serviceProviderController];
  v7 = [v6 serviceProviders];
  v8 = [v7 count];

  v9 = [(PHSilenceJunkCallingController *)self serviceProviderController];
  v10 = [v9 serviceProvidersSupportingSpamBlocking];

  v11 = TPSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v10;
    v36 = 2048;
    v37 = v8;
    _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "addSpamBlockingSpecifiersIfNecessary service providers %@ allServiceProviderCount=%ld", buf, 0x16u);
  }

  if ([v10 count] && objc_msgSend(MEMORY[0x277D6EDE8], "supportsPrimaryCalling"))
  {
    if (v8 == 2)
    {
      v12 = [v10 count];
      v13 = [v10 firstObject];
      v14 = [v13 localizedName];
      if (v12 != 2)
      {

        v24 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@_%@_DS_SINGLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
        v23 = [v24 stringWithFormat:v21, v14, v14];
        goto LABEL_15;
      }

      v15 = [v10 lastObject];
      v16 = [v15 localizedName];
      v17 = [v14 isEqualToString:v16];

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v19;
      if (!v17)
      {
        v20 = [v19 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@_%@_DS_BOTH" value:&stru_282D54710 table:@"CallDirectorySettings"];
        v21 = [v10 firstObject];
        v33 = [v21 localizedName];
        v25 = [v10 lastObject];
        v26 = [v25 localizedName];
        v23 = [v18 stringWithFormat:v20, v33, v26];

        goto LABEL_15;
      }
    }

    else
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v19;
    }

    v20 = [v19 localizedStringForKey:@"SPAM_SIMS_EXTENSIONS_LIST_FOOTER_%@" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v21 = [v10 firstObject];
    v22 = [v21 localizedName];
    v23 = [v18 stringWithFormat:v20, v22];

LABEL_15:
    v27 = MEMORY[0x277D3FAD8];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"SPAM_TOGGLE_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v30 = [v27 preferenceSpecifierNamed:v29 target:self set:sel_setSilenceJunkCallingEnabled_specifier_ get:sel_getSilenceJunkCallingEnabled_ detail:0 cell:6 edit:0];

    [v30 setProperty:v23 forKey:*MEMORY[0x277D40160]];
    [(NSArray *)v4 addObject:v30];
    [(PHSilenceJunkCallingController *)self setHasSpamEnabledSim:1];
  }

  objc_storeStrong(p_specifiers, v4);

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getSilenceJunkCallingEnabled:(id)a3
{
  v4 = [(PHSilenceJunkCallingController *)self featureFlags];
  v5 = [v4 deviceExpertMigrationEnabled];

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [(PHSilenceJunkCallingController *)self configurationProvider];
    v8 = [v6 numberWithBool:{objc_msgSend(v7, "isSilenceJunkCallingEnabled")}];
  }

  else
  {
    v9 = [MEMORY[0x277D6EDE0] acceptableJunkConfidence];
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x277D6EFA0]];
    v7 = [v11 objectForKey:*MEMORY[0x277D6F058]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 integerValue];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D6EDE0], "isJunkConfidenceLevelJunk:", v9) ^ 1}];
  }

  v12 = v8;

  return v12;
}

- (void)setSilenceJunkCallingEnabled:(id)a3 specifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "User toggled silence junk calling enabled switch to %@", &v14, 0xCu);
  }

  v7 = [(PHSilenceJunkCallingController *)self featureFlags];
  v8 = [v7 deviceExpertMigrationEnabled];

  if (v8)
  {
    v9 = [v5 BOOLValue];
    v10 = [(PHSilenceJunkCallingController *)self configurationProvider];
    [v10 setSilenceJunkCallingEnabled:v9];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEBD0]);
    v10 = [v11 initWithSuiteName:*MEMORY[0x277D6EFA0]];
    if ([v5 integerValue])
    {
      v12 = [MEMORY[0x277D6EDE0] acceptableJunkConfidence];
    }

    else
    {
      v12 = [MEMORY[0x277D6EDE0] maxJunkConfidence];
    }

    [v10 setInteger:v12 forKey:*MEMORY[0x277D6F058]];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CC3620];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithBundleType:1];
  v12 = [(PHSilenceJunkCallingController *)self carrierBundleController];
  v13 = [v12 telephonyClient];
  v14 = [v13 copyCarrierBundleValue:v9 keyHierarchy:v10 bundleType:v11 error:a5];

  return v14;
}

- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v5 = [(PHSilenceJunkCallingController *)self objectForKeyHierarchy:a3 subscriptionContext:a4 error:a5];
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

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v5 = [(PHSilenceJunkCallingController *)self stringForKeyHierarchy:&unk_282D5D618 subscriptionContext:v4 error:&v13];
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
      v17 = v4;
      v9 = "Retrieved call blocking value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v7;
      v9 = "Retrieving call blocking value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  if ([v5 isEqualToIgnoringCase:@"Enabled"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 isEqualToIgnoringCase:@"Dynamic"];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)informationalUrlForSubscriptionContext:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v5 = [(PHSilenceJunkCallingController *)self stringForKeyHierarchy:&unk_282D5D630 subscriptionContext:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      v9 = "Retrieved informational url value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      v9 = "Retrieving informational url value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

@end