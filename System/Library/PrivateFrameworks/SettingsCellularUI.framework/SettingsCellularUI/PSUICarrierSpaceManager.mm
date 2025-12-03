@interface PSUICarrierSpaceManager
+ (id)getNSURLSessionConfiguration;
+ (id)sharedManager;
+ (int)carrierMetricTypeForString:(id)string;
+ (int64_t)bytesFromString:(id)string carrierSpaceUnits:(int64_t)units;
- (BOOL)hasUserConsent;
- (BOOL)planChangeIsRestricted;
- (BOOL)supportsSweetgum;
- (PSUICarrierSpaceManager)init;
- (id)appsInfo;
- (id)capabilities;
- (id)carrierAppInstallController;
- (id)descriptionForPlanMetrics:(id)metrics;
- (id)planMetrics;
- (id)plansInfo;
- (id)subscribedDomesticPlanOptions;
- (id)subscribedPlanOptions;
- (id)usageInfo;
- (id)userConsentFlowInfo;
- (void)appsDidChange;
- (void)capabilitiesDidChange:(id)change;
- (void)dealloc;
- (void)plansDidChange;
- (void)refresh;
- (void)refreshAndReload;
- (void)reset;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)usageDidChange;
- (void)userConsentAcknowledged:(BOOL)acknowledged;
- (void)userConsentFlowInfoDidChange;
@end

@implementation PSUICarrierSpaceManager

+ (id)sharedManager
{
  if (qword_28156A780 != -1)
  {
    dispatch_once(&qword_28156A780, &__block_literal_global_16);
  }

  v3 = _MergedGlobals_71;

  return v3;
}

uint64_t __40__PSUICarrierSpaceManager_sharedManager__block_invoke()
{
  _MergedGlobals_71 = objc_alloc_init(PSUICarrierSpaceManager);

  return MEMORY[0x2821F96F8]();
}

+ (int)carrierMetricTypeForString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = 1;
  [v4 setNumberStyle:1];
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v6];

  v7 = [v4 numberFromString:stringCopy];

  if (!v7)
  {
    lowercaseString = [stringCopy lowercaseString];
    v9 = [lowercaseString isEqualToString:@"unlimited"];

    if (v9)
    {
      v5 = 2;
    }

    else
    {
      lowercaseString2 = [stringCopy lowercaseString];
      v11 = [lowercaseString2 isEqualToString:@"-"];

      v5 = v11 - 1;
    }
  }

  return v5;
}

+ (int64_t)bytesFromString:(id)string carrierSpaceUnits:(int64_t)units
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = objc_opt_new();
  [v6 setNumberStyle:1];
  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  v8 = [v6 numberFromString:stringCopy];

  [v8 floatValue];
  v10 = v9;
  if (units <= 2)
  {
    if (units == 1)
    {
      goto LABEL_12;
    }

    if (units == 2)
    {
      v11 = 1024.0;
      goto LABEL_11;
    }
  }

  else
  {
    switch(units)
    {
      case 3:
        v11 = 1048600.0;
        goto LABEL_11;
      case 4:
        v11 = 1073700000.0;
        goto LABEL_11;
      case 5:
        v11 = 1.0995e12;
LABEL_11:
        v10 = v9 * v11;
        goto LABEL_12;
    }
  }

  v14 = [MEMORY[0x277D4D830] loggerWithCategory:@"CarrierSpaceManager"];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:units];
    v16 = 138412290;
    v17 = v15;
    _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "invalid carrier space unit type: %@", &v16, 0xCu);
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (PSUICarrierSpaceManager)init
{
  v14.receiver = self;
  v14.super_class = PSUICarrierSpaceManager;
  v2 = [(PSUICarrierSpaceManager *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"carrier_space"];
    v4 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v4;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    v6 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"carrier_space_client"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getCTCarrierSpaceClientClass_softClass;
    v19 = getCTCarrierSpaceClientClass_softClass;
    if (!getCTCarrierSpaceClientClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getCTCarrierSpaceClientClass_block_invoke;
      v15[3] = &unk_279BA9F68;
      v15[4] = &v16;
      __getCTCarrierSpaceClientClass_block_invoke(v15);
      v7 = v17[3];
    }

    v8 = v7;
    _Block_object_dispose(&v16, 8);
    v9 = [[v7 alloc] initWithQueue:v6];
    carrierSpaceClient = v2->_carrierSpaceClient;
    v2->_carrierSpaceClient = v9;

    [(CTCarrierSpaceClient *)v2->_carrierSpaceClient setDelegate:v2];
    v11 = *MEMORY[0x277CBECE8];
    v2->_serverConnection = _CTServerConnectionCreateOnTargetQueue();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_refreshAndReload name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
  }

  return v2;
}

- (void)dealloc
{
  if (self->_serverConnection)
  {
    _CTServerConnectionUnregisterForAllNotifications();
    CFRelease(self->_serverConnection);
  }

  v3.receiver = self;
  v3.super_class = PSUICarrierSpaceManager;
  [(PSUICarrierSpaceManager *)&v3 dealloc];
}

- (BOOL)hasUserConsent
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceManager *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching user consent", &v8, 2u);
  }

  if (!self->_hasUserConsent)
  {
    [(PSUICarrierSpaceManager *)self refresh];
  }

  getLogger2 = [(PSUICarrierSpaceManager *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    hasUserConsent = self->_hasUserConsent;
    v8 = 138412290;
    v9 = hasUserConsent;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Has carrier space user consent: %@", &v8, 0xCu);
  }

  result = [(NSNumber *)self->_hasUserConsent BOOLValue];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)userConsentFlowInfo
{
  userConsentFlowInfo = self->_userConsentFlowInfo;
  if (!userConsentFlowInfo)
  {
    v4 = dispatch_semaphore_create(0);
    carrierSpaceClient = self->_carrierSpaceClient;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__PSUICarrierSpaceManager_userConsentFlowInfo__block_invoke;
    v8[3] = &unk_279BAA688;
    v8[4] = self;
    v9 = v4;
    v6 = v4;
    [(CTCarrierSpaceClient *)carrierSpaceClient getUserConsentFlowInfo:v8];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

    userConsentFlowInfo = self->_userConsentFlowInfo;
  }

  return userConsentFlowInfo;
}

void __46__PSUICarrierSpaceManager_userConsentFlowInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Error getting user consent flow info: %@", &v12, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

- (void)userConsentAcknowledged:(BOOL)acknowledged
{
  v18 = *MEMORY[0x277D85DE8];
  userConsentResponse = self->_userConsentResponse;
  if (userConsentResponse)
  {
    acknowledgedCopy = acknowledged;
    bOOLValue = [(NSNumber *)userConsentResponse BOOLValue];
    v7 = self->_userConsentResponse;
    self->_userConsentResponse = 0;

    getLogger = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"failed";
      if (acknowledgedCopy)
      {
        v9 = @"succeeded";
      }

      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Server %@ in acknowledging user's consent response", buf, 0xCu);
    }

    if (acknowledgedCopy)
    {
      v10 = dispatch_semaphore_create(0);
      carrierSpaceClient = self->_carrierSpaceClient;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__PSUICarrierSpaceManager_userConsentAcknowledged___block_invoke;
      v14[3] = &unk_279BA9EF0;
      v14[4] = self;
      v15 = v10;
      v12 = v10;
      [(CTCarrierSpaceClient *)carrierSpaceClient setUserConsent:bOOLValue completion:v14];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__PSUICarrierSpaceManager_userConsentAcknowledged___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_2658DE000, v4, OS_LOG_TYPE_ERROR, "Error setting user consent: %@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  capabilities = self->_capabilities;
  self->_capabilities = 0;

  usageInfo = self->_usageInfo;
  self->_usageInfo = 0;

  plansInfo = self->_plansInfo;
  self->_plansInfo = 0;

  appsInfo = self->_appsInfo;
  self->_appsInfo = 0;

  hasUserConsent = self->_hasUserConsent;
  self->_hasUserConsent = 0;

  userConsentFlowInfo = self->_userConsentFlowInfo;
  self->_userConsentFlowInfo = 0;

  userConsentResponse = self->_userConsentResponse;
  self->_userConsentResponse = 0;
}

- (void)refreshAndReload
{
  v12 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceManager *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[PSUICarrierSpaceManager refreshAndReload]";
    v8 = 2112;
    v9 = @"com.apple.PreferencesApp.willBecomeActive";
    v10 = 2112;
    v11 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification: %@ and will post notification %@", &v6, 0x20u);
  }

  [(PSUICarrierSpaceManager *)self refresh];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)refresh
{
  v14 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceManager *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    capabilities = [(PSUICarrierSpaceManager *)self capabilities];
    *buf = 138412290;
    v13 = capabilities;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Refreshing carrier space info, current capabilities: %@", buf, 0xCu);
  }

  if ([(PSUICarrierSpaceManager *)self supportsSweetgum])
  {
    [(PSUICarrierSpaceManager *)self reset];
    v4 = dispatch_semaphore_create(0);
    getLogger2 = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[PSUICarrierSpaceManager refresh]";
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s issuing carrier space refresh request", buf, 0xCu);
    }

    carrierSpaceClient = self->_carrierSpaceClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__PSUICarrierSpaceManager_refresh__block_invoke;
    v10[3] = &unk_279BA9EF0;
    v10[4] = self;
    v11 = v4;
    v7 = v4;
    [(CTCarrierSpaceClient *)carrierSpaceClient refreshAllInfo:v10];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __34__PSUICarrierSpaceManager_refresh__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[PSUICarrierSpaceManager refresh]_block_invoke";
      v9 = "%s refresh request succeeded";
      v10 = v6;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    }

LABEL_11:
    v8 = MEMORY[0x277CBEC38];
    goto LABEL_12;
  }

  v5 = [v3 code];
  v6 = [*(a1 + 32) getLogger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 != 3)
  {
    if (v7)
    {
      v15 = 136315394;
      v16 = "[PSUICarrierSpaceManager refresh]_block_invoke";
      v17 = 2112;
      v18 = v4;
      v9 = "%s refresh request failed: %@";
      v10 = v6;
      v11 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    v15 = 136315138;
    v16 = "[PSUICarrierSpaceManager refresh]_block_invoke";
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s refresh request failed: user consent required", &v15, 0xCu);
  }

  v8 = MEMORY[0x277CBEC28];
LABEL_12:

  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v8;

  dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsSweetgum
{
  capabilities = [(PSUICarrierSpaceManager *)self capabilities];
  if ([capabilities supportsPlans])
  {
    supportsApplications = 1;
  }

  else
  {
    capabilities2 = [(PSUICarrierSpaceManager *)self capabilities];
    if ([capabilities2 supportsUsage])
    {
      supportsApplications = 1;
    }

    else
    {
      capabilities3 = [(PSUICarrierSpaceManager *)self capabilities];
      if ([capabilities3 supportsServices])
      {
        supportsApplications = 1;
      }

      else
      {
        capabilities4 = [(PSUICarrierSpaceManager *)self capabilities];
        supportsApplications = [capabilities4 supportsApplications];
      }
    }
  }

  return supportsApplications;
}

- (id)capabilities
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  capabilities = selfCopy->_capabilities;
  if (!capabilities)
  {
    v4 = dispatch_semaphore_create(0);
    getLogger = [(PSUICarrierSpaceManager *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PSUICarrierSpaceManager capabilities]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s issuing carrier space get capabilities request", buf, 0xCu);
    }

    carrierSpaceClient = selfCopy->_carrierSpaceClient;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__PSUICarrierSpaceManager_capabilities__block_invoke;
    v11[3] = &unk_279BAA6B0;
    v11[4] = selfCopy;
    v7 = v4;
    v12 = v7;
    [(CTCarrierSpaceClient *)carrierSpaceClient getCapabilities:v11];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

    capabilities = selfCopy->_capabilities;
  }

  v8 = capabilities;
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __39__PSUICarrierSpaceManager_capabilities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[PSUICarrierSpaceManager capabilities]_block_invoke";
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s get capabilities request failed: %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[PSUICarrierSpaceManager capabilities]_block_invoke";
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s get capabilities request succeeded", &v13, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 8), a2);
  v10 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(a1 + 32) + 8);
    v13 = 138412290;
    v14 = v12;
    _os_log_debug_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEBUG, "Received carrier space capabilities: %@", &v13, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

- (id)usageInfo
{
  v15 = *MEMORY[0x277D85DE8];
  capabilities = [(PSUICarrierSpaceManager *)self capabilities];
  if ([capabilities supportsUsage])
  {
    usageInfo = self->_usageInfo;

    if (usageInfo)
    {
      goto LABEL_7;
    }

    v5 = dispatch_semaphore_create(0);
    getLogger = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PSUICarrierSpaceManager usageInfo]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s issuing carrier space fetch usage info request", buf, 0xCu);
    }

    carrierSpaceClient = self->_carrierSpaceClient;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__PSUICarrierSpaceManager_usageInfo__block_invoke;
    v11[3] = &unk_279BAA6D8;
    v11[4] = self;
    v12 = v5;
    capabilities = v5;
    [(CTCarrierSpaceClient *)carrierSpaceClient fetchUsageInfo:1 completion:v11];
    dispatch_semaphore_wait(capabilities, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_7:
  v8 = self->_usageInfo;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __36__PSUICarrierSpaceManager_usageInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[PSUICarrierSpaceManager usageInfo]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "%s fetch usage info request failed: %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[PSUICarrierSpaceManager usageInfo]_block_invoke";
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch usage info request succeeded", &v13, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

- (id)plansInfo
{
  v15 = *MEMORY[0x277D85DE8];
  capabilities = [(PSUICarrierSpaceManager *)self capabilities];
  if ([capabilities supportsPlans])
  {
    plansInfo = self->_plansInfo;

    if (plansInfo)
    {
      goto LABEL_7;
    }

    v5 = dispatch_semaphore_create(0);
    getLogger = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PSUICarrierSpaceManager plansInfo]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s issuing carrier space fetch plans info request", buf, 0xCu);
    }

    carrierSpaceClient = self->_carrierSpaceClient;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__PSUICarrierSpaceManager_plansInfo__block_invoke;
    v11[3] = &unk_279BAA700;
    v11[4] = self;
    v12 = v5;
    capabilities = v5;
    [(CTCarrierSpaceClient *)carrierSpaceClient fetchPlansInfo:1 completion:v11];
    dispatch_semaphore_wait(capabilities, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_7:
  v8 = self->_plansInfo;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __36__PSUICarrierSpaceManager_plansInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[PSUICarrierSpaceManager plansInfo]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "%s fetch plans info request failed: %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[PSUICarrierSpaceManager plansInfo]_block_invoke";
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch plans info request succeeded", &v13, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

- (id)subscribedPlanOptions
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  plansInfo = [(PSUICarrierSpaceManager *)self plansInfo];
  planGroupsList = [plansInfo planGroupsList];

  v6 = [planGroupsList countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(planGroupsList);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        groupOptionsList = [v10 groupOptionsList];
        v12 = [groupOptionsList countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(groupOptionsList);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if ([v16 planStatus] == 1)
              {
                [v3 addObject:v16];
              }
            }

            v13 = [groupOptionsList countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [planGroupsList countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)subscribedDomesticPlanOptions
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  plansInfo = [(PSUICarrierSpaceManager *)self plansInfo];
  planGroupsList = [plansInfo planGroupsList];

  v6 = [planGroupsList countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(planGroupsList);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 planCategory] == 1)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          groupOptionsList = [v10 groupOptionsList];
          v12 = [groupOptionsList countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(groupOptionsList);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if ([v16 planStatus] == 1)
                {
                  [v3 addObject:v16];
                }
              }

              v13 = [groupOptionsList countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [planGroupsList countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)planMetrics
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  usageInfo = [(PSUICarrierSpaceManager *)self usageInfo];
  accountMetrics = [usageInfo accountMetrics];

  v6 = [accountMetrics countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(accountMetrics);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        applicablePlans = [v10 applicablePlans];
        v12 = [applicablePlans countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(applicablePlans);
              }

              [v3 addObject:*(*(&v19 + 1) + 8 * j)];
            }

            v13 = [applicablePlans countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [accountMetrics countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)appsInfo
{
  v15 = *MEMORY[0x277D85DE8];
  capabilities = [(PSUICarrierSpaceManager *)self capabilities];
  if ([capabilities supportsApplications])
  {
    appsInfo = self->_appsInfo;

    if (appsInfo)
    {
      goto LABEL_7;
    }

    v5 = dispatch_semaphore_create(0);
    getLogger = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PSUICarrierSpaceManager appsInfo]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s issuing carrier space fetch apps info request", buf, 0xCu);
    }

    carrierSpaceClient = self->_carrierSpaceClient;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__PSUICarrierSpaceManager_appsInfo__block_invoke;
    v11[3] = &unk_279BAA728;
    v11[4] = self;
    v12 = v5;
    capabilities = v5;
    [(CTCarrierSpaceClient *)carrierSpaceClient fetchAppsInfo:1 completion:v11];
    dispatch_semaphore_wait(capabilities, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_7:
  v8 = self->_appsInfo;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __35__PSUICarrierSpaceManager_appsInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[PSUICarrierSpaceManager appsInfo]_block_invoke";
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s fetch apps info request failed: %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[PSUICarrierSpaceManager appsInfo]_block_invoke";
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s fetch apps info request succeeded", &v13, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 32), a2);
  v10 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(a1 + 32) + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_debug_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEBUG, "Received carrier space apps info: %@", &v13, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

- (id)carrierAppInstallController
{
  v24 = *MEMORY[0x277D85DE8];
  appsInfo = [(PSUICarrierSpaceManager *)self appsInfo];
  appsList = [appsInfo appsList];
  v5 = [appsList count];

  if (v5)
  {
    appsInfo2 = [(PSUICarrierSpaceManager *)self appsInfo];
    appsList2 = [appsInfo2 appsList];
    getLogger2 = [appsList2 objectAtIndexedSubscript:0];

    appID = [(PSUIAppInstallController *)self->_carrierAppInstallController appID];
    LOBYTE(appsList2) = [appID isEqualToString:getLogger2];

    if ((appsList2 & 1) == 0)
    {
      getLogger = [(PSUICarrierSpaceManager *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
      {
        v20 = 138412290;
        v21 = getLogger2;
        _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Instantiating app install controller with app ID: %@", &v20, 0xCu);
      }

      v11 = [PSUIAppInstallController alloc];
      appsInfo3 = [(PSUICarrierSpaceManager *)self appsInfo];
      appsURL = [appsInfo3 appsURL];
      v14 = [(PSUIAppInstallController *)v11 initWithAppID:getLogger2 carrierMoreAppsURL:appsURL];
      carrierAppInstallController = self->_carrierAppInstallController;
      self->_carrierAppInstallController = v14;
    }

    v16 = self->_carrierAppInstallController;
  }

  else
  {
    getLogger2 = [(PSUICarrierSpaceManager *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      appsInfo = self->_appsInfo;
      v20 = 136315394;
      v21 = "[PSUICarrierSpaceManager carrierAppInstallController]";
      v22 = 2112;
      v23 = appsInfo;
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "%s: appsInfo does not contain any apps: %@", &v20, 0x16u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)planChangeIsRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25DC8]] == 2;

  return v3;
}

- (id)descriptionForPlanMetrics:(id)metrics
{
  v42 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dataUsage = [metricsCopy dataUsage];
  sharedDataUsed = [dataUsage sharedDataUsed];
  v7 = [sharedDataUsed length];

  dataUsage2 = [metricsCopy dataUsage];
  v9 = dataUsage2;
  if (v7)
  {
    [dataUsage2 sharedDataUsed];
  }

  else
  {
    [dataUsage2 thisDeviceDataUsed];
  }
  v10 = ;

  v11 = [PSUICarrierSpaceManager carrierMetricTypeForString:v10];
  if (v11 == 1)
  {
    dataUsage3 = [metricsCopy dataUsage];
    v13 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", v10, [dataUsage3 units]);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PSUICarrierSpaceManager *)self localizedDataStringFromBytes:v13];
  dataUsage4 = [metricsCopy dataUsage];
  capacity = [dataUsage4 capacity];
  v17 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  if (v17 != 1)
  {
    v23 = [(PSUICarrierSpaceManager *)self localizedDataStringFromBytes:0];
    if (v11 == 1)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v28;
      if (v17 == 2)
      {
        v29 = @"USED_%@_OF_UNLIMITED";
      }

      else
      {
        v29 = @"USED_%@";
      }

      v26 = [v28 localizedStringForKey:v29 value:&stru_287733598 table:@"CarrierSpaceUsage"];
      [v27 stringWithFormat:v26, v14, v37];
      goto LABEL_20;
    }

    if (!v11)
    {
      if (v17 == 2)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v25 localizedStringForKey:@"UNLIMITED" value:&stru_287733598 table:@"CarrierSpaceUsage"];
        goto LABEL_21;
      }

      getLogger = [(PSUICarrierSpaceManager *)self getLogger];
      if (!os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        v30 = &stru_287733598;
        goto LABEL_22;
      }

      *buf = 136315138;
      v39 = "[PSUICarrierSpaceManager descriptionForPlanMetrics:]";
      v34 = "%s failed to generate description for plan with hidden used data metric type";
      v35 = getLogger;
      v36 = 12;
LABEL_30:
      _os_log_error_impl(&dword_2658DE000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      goto LABEL_17;
    }

LABEL_16:
    getLogger = [(PSUICarrierSpaceManager *)self getLogger];
    if (!os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    v39 = "[PSUICarrierSpaceManager descriptionForPlanMetrics:]";
    v40 = 1024;
    v41 = v11;
    v34 = "%s failed to generate description for plan with used data metric type of %i";
    v35 = getLogger;
    v36 = 18;
    goto LABEL_30;
  }

  dataUsage5 = [metricsCopy dataUsage];
  capacity2 = [dataUsage5 capacity];
  dataUsage6 = [metricsCopy dataUsage];
  v21 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", capacity2, [dataUsage6 units]);

  v22 = [(PSUICarrierSpaceManager *)self localizedDataStringFromBytes:v21];
  v23 = v22;
  if (v11 != 1)
  {
    if (!v11)
    {
      v23 = v22;
      v30 = v23;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"USED_%@_OF_%@" value:&stru_287733598 table:@"CarrierSpaceUsage"];
  [v24 stringWithFormat:v26, v14, v23];
  v30 = LABEL_20:;

LABEL_21:
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICarrierSpaceManager *)self getLogger:change];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICarrierSpaceManager simStatusDidChange:status:]";
    v9 = 2112;
    v10 = @"PSCarrierSpaceSIMStatusChanged";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", &v7, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSCarrierSpaceSIMStatusChanged" object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)capabilitiesDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSUICarrierSpaceManager_capabilitiesDidChange___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__PSUICarrierSpaceManager_capabilitiesDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reset];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PSUICarrierSpaceManager capabilitiesDidChange:]_block_invoke";
    v7 = 2112;
    v8 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v5, 0x16u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)usageDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PSUICarrierSpaceManager_usageDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__PSUICarrierSpaceManager_usageDidChange__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICarrierSpaceManager usageDidChange]_block_invoke";
    v9 = 2112;
    v10 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)plansDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PSUICarrierSpaceManager_plansDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__PSUICarrierSpaceManager_plansDidChange__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICarrierSpaceManager plansDidChange]_block_invoke";
    v9 = 2112;
    v10 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)appsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PSUICarrierSpaceManager_appsDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__PSUICarrierSpaceManager_appsDidChange__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICarrierSpaceManager appsDidChange]_block_invoke";
    v9 = 2112;
    v10 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)userConsentFlowInfoDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSUICarrierSpaceManager_userConsentFlowInfoDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__PSUICarrierSpaceManager_userConsentFlowInfoDidChange__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  v8 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[PSUICarrierSpaceManager userConsentFlowInfoDidChange]_block_invoke";
    v13 = 2112;
    v14 = @"PSUICarrierSpaceChanged";
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v11, 0x16u);
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"PSUICarrierSpaceChanged" object:0];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)getNSURLSessionConfiguration
{
  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr;
  v10 = getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr;
  if (!getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr)
  {
    v4 = CTCarrierSpaceLibrary();
    v8[3] = dlsym(v4, "kCTCarrierSpaceConnectionAccountIdentifier");
    getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  [ephemeralSessionConfiguration set_sourceApplicationSecondaryIdentifier:*v3];

  return ephemeralSessionConfiguration;
}

@end