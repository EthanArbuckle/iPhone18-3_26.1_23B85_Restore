@interface VSAppSettingsFacade
- (BOOL)shouldShowMVPDAppInstallPrompt;
- (BOOL)shouldShowMVPDAppInstallPromptFromViewController:(id)a3;
- (VSAppSettingsFacade)init;
- (VSAppSettingsFacade)initWithStorage:(id)a3 restrictionsCenter:(id)a4;
- (VSAppSettingsFacade)initWithStorage:(id)a3 restrictionsCenter:(id)a4 accountChannelsCenter:(id)a5 appsOperationClass:(Class)a6;
- (id)viewModelsForAppDescriptions:(id)a3 bundleByBundleID:(id)a4 vouchersForProvider:(id)a5 restrictionsCenter:(id)a6 privacyFacade:(id)a7;
- (id)viewModelsForAvailableAppDescriptions:(id)a3 subscribedAppDescriptions:(id)a4 andNonChannelAppDescriptions:(id)a5;
- (void)_updateApps;
- (void)dealloc;
- (void)presentMVPDAppInstallPromptFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setIdentityProvider:(id)a3;
- (void)setKnownAppBundles:(id)a3;
- (void)setMvpdAppSettingsViewModel:(id)a3;
- (void)setNeedsUpdateApps;
- (void)setUnredeemedVouchers:(id)a3;
- (void)shouldShowMVPDAppInstallPrompt;
- (void)updateDecidedApps;
@end

@implementation VSAppSettingsFacade

- (VSAppSettingsFacade)initWithStorage:(id)a3 restrictionsCenter:(id)a4 accountChannelsCenter:(id)a5 appsOperationClass:(Class)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  VSRequireMainThread();
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The storage parameter must not be nil."];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The restrictionsCenter parameter must not be nil."];
LABEL_3:
  v34.receiver = self;
  v34.super_class = VSAppSettingsFacade;
  v14 = [(VSAppSettingsFacade *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_storage, a3);
    objc_storeStrong(&v15->_restrictionsCenter, a4);
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v15->_privateQueue;
    v15->_privateQueue = v16;

    [(NSOperationQueue *)v15->_privateQueue setName:@"VSAppSettingsFacade"];
    [(NSOperationQueue *)v15->_privateQueue setMaxConcurrentOperationCount:1];
    objc_initWeak(&location, v15);
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __99__VSAppSettingsFacade_initWithStorage_restrictionsCenter_accountChannelsCenter_appsOperationClass___block_invoke;
    handler[3] = &unk_279E1A778;
    objc_copyWeak(&v32, &location);
    v20 = v11;
    v31 = v20;
    LODWORD(v18) = notify_register_dispatch("com.apple.tcc.access.changed", &v15->_registrationToken, v18, handler);

    if (v18)
    {
      v21 = VSErrorLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [VSAppSettingsViewModel initWithApplicationWorkspace:v21];
      }
    }

    v22 = [v20 privacyFacade];
    v23 = [v22 knownAppBundles];
    knownAppBundles = v15->_knownAppBundles;
    v15->_knownAppBundles = v23;

    objc_storeStrong(&v15->_accountChannelsCenter, a5);
    objc_storeStrong(&v15->_appsOperationClass, a6);
    v25 = [v20 voucherLockbox];
    v26 = VSMainConcurrencyBindingOptions();
    [(VSAppSettingsFacade *)v15 vs_bind:@"unredeemedVouchers" toObject:v25 withKeyPath:@"unredeemedVouchers" options:v26];

    v27 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    appSections = v15->_appSections;
    v15->_appSections = v27;

    [(VSAppSettingsFacade *)v15 updateDecidedApps];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __99__VSAppSettingsFacade_initWithStorage_restrictionsCenter_accountChannelsCenter_appsOperationClass___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "TCC access changed notification received.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) privacyFacade];
  v5 = [v4 knownAppBundles];
  [WeakRetained setKnownAppBundles:v5];
}

- (VSAppSettingsFacade)initWithStorage:(id)a3 restrictionsCenter:(id)a4
{
  v6 = MEMORY[0x277CE21C8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedCenter];
  v10 = [(VSAppSettingsFacade *)self initWithStorage:v8 restrictionsCenter:v7 accountChannelsCenter:v9 appsOperationClass:objc_opt_class()];

  return v10;
}

- (VSAppSettingsFacade)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)dealloc
{
  VSRequireMainThread();
  if (notify_is_valid_token(self->_registrationToken))
  {
    notify_cancel(self->_registrationToken);
  }

  v3.receiver = self;
  v3.super_class = VSAppSettingsFacade;
  [(VSAppSettingsFacade *)&v3 dealloc];
}

- (void)updateDecidedApps
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(VSAppSettingsFacade *)self appSections];
  v18 = [v3 mutableCopy];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(VSAppSettingsFacade *)self knownAppBundles];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [VSAppSettingsViewModel alloc];
        v11 = [(VSAppSettingsFacade *)self restrictionsCenter];
        v12 = [(VSAppSettingsFacade *)self storage];
        v13 = [v12 privacyFacade];
        v14 = [(VSAppSettingsViewModel *)v10 initWithBundle:v9 restrictionsCenter:v11 privacyFacade:v13];

        [v4 addObject:v14];
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1 selector:sel_localizedStandardCompare_];
  v24 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [v4 sortUsingDescriptors:v16];

  [v18 setObject:v4 forKeyedSubscript:@"decided"];
  [(VSAppSettingsFacade *)self setAppSections:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateApps
{
  VSRequireMainThread();
  [(VSAppSettingsFacade *)self setNeedsUpdateApps:0];
  [(VSAppSettingsFacade *)self updateDecidedApps];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__5;
  v26[4] = __Block_byref_object_dispose__5;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__5;
  v24[4] = __Block_byref_object_dispose__5;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CCA8C8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__VSAppSettingsFacade__updateApps__block_invoke;
  v19[3] = &unk_279E1A7A0;
  objc_copyWeak(&v20, &location);
  v19[4] = v22;
  v19[5] = v26;
  v19[6] = v24;
  v4 = [v3 blockOperationWithBlock:v19];
  v5 = [(VSAppSettingsFacade *)self identityProvider];

  if (v5)
  {
    v6 = [(VSAppSettingsFacade *)self identityProvider];

    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self identityProvider] parameter must not be nil."];
    }

    v7 = [(VSAppSettingsFacade *)self identityProvider];
    v8 = [(VSAppSettingsFacade *)self privateQueue];
    v9 = objc_alloc([(VSAppSettingsFacade *)self appsOperationClass]);
    v10 = [(VSAppSettingsFacade *)self accountChannels];
    v11 = [v9 initWithIdentityProvider:v7 accountChannels:v10];

    objc_initWeak(&from, v11);
    v14 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, &from);
    v15 = v7;
    v12 = VSMainThreadOperationWithBlock();
    [v4 addDependency:{v12, v14, 3221225472, __34__VSAppSettingsFacade__updateApps__block_invoke_2, &unk_279E1A7C8}];
    [v8 addOperation:v11];
    [v8 addOperation:v12];
    [v12 addDependency:v11];
    [v4 addDependency:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
  }

  v13 = [MEMORY[0x277CCABD8] mainQueue];
  [v13 addOperation:v4];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

void __34__VSAppSettingsFacade__updateApps__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [v8 appSections];
    v5 = [v4 objectForKeyedSubscript:@"decided"];
    [v3 setObject:v5 forKeyedSubscript:@"decided"];

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = @"upgrade";
    }

    else
    {
      v6 = @"available";
    }

    [v3 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v6];
    [v3 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"subscribed"];
    [v8 setAppSections:v3];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"VSAppSettingsFacadeAppsDidChangeNotification" object:v8];

    WeakRetained = v8;
  }
}

void __34__VSAppSettingsFacade__updateApps__block_invoke_2(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_45;
  }

  v3 = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained identityProvider];

  if (!v4)
  {

    goto LABEL_45;
  }

  v66 = v3;
  v5 = [v3 result];
  [WeakRetained setHasChannelApps:{objc_msgSend(v5, "hasChannelApps")}];
  *(*(*(a1 + 40) + 8) + 24) = [v5 hasUserChannelList];
  v6 = [WeakRetained storage];
  v7 = [v5 nonChannelApps];
  v8 = [v5 availableApps];
  v65 = v5;
  v9 = [v5 subscribedApps];
  v64 = v6;
  v10 = [v6 accountStore];
  v11 = [v10 firstAccount];

  v61 = v11;
  v12 = [v11 preferredAppID];
  v13 = [MEMORY[0x277CE2238] currentDevice];
  v14 = [v13 stringForAMSDeviceFamilies];

  v15 = objc_alloc_init(VSNonChannelAppDecider);
  [(VSNonChannelAppDecider *)v15 setAppDescriptions:v7];
  v60 = v12;
  [(VSNonChannelAppDecider *)v15 setPreferredAppBundleOrAdamID:v12];
  v59 = v14;
  [(VSNonChannelAppDecider *)v15 setPreferredDeviceFamily:v14];
  v57 = v15;
  v16 = [(VSNonChannelAppDecider *)v15 decidedNonChannelApps];

  v62 = v9;
  v63 = v8;
  v58 = v16;
  v17 = [WeakRetained viewModelsForAvailableAppDescriptions:v8 subscribedAppDescriptions:v9 andNonChannelAppDescriptions:v16];
  v18 = [v17 nonChannelAppViewModels];
  v19 = [MEMORY[0x277CE2198] sharedInstance];
  if ([v19 hasAccount])
  {
    goto LABEL_12;
  }

  v20 = [*(a1 + 32) isSetTopBoxSupported];

  if (v20)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v19 = v18;
    v21 = [v19 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v80;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v80 != v23)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v79 + 1) + 8 * i) setForceDSIDlessInstall:1];
        }

        v22 = [v19 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v22);
    }

LABEL_12:
  }

  v25 = [v18 firstObject];
  [WeakRetained setMvpdAppSettingsViewModel:v25];

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v29 = [v17 availableAppViewModels];
  v30 = [v29 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v76;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v76 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v75 + 1) + 8 * j);
        if (([v34 isDecided] & 1) == 0)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v31);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = *(*(a1 + 56) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v38 = [v17 subscribedAppViewModels];
  v39 = [v38 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v72;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v72 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v71 + 1) + 8 * k);
        if (([v43 isDecided] & 1) == 0)
        {
          [*(*(*(a1 + 56) + 8) + 40) addObject:v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v40);
  }

  v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1 selector:sel_localizedStandardCompare_];
  v45 = *(*(*(a1 + 48) + 8) + 40);
  v85 = v44;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  [v45 sortUsingDescriptors:v46];

  v47 = *(*(*(a1 + 56) + 8) + 40);
  v84 = v44;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  [v47 sortUsingDescriptors:v48];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = v18;
  v50 = [v49 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v68;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v67 + 1) + 8 * m);
        if (([v54 isDecided] & 1) == 0)
        {
          if (*(*(*(a1 + 40) + 8) + 24))
          {
            v55 = 56;
          }

          else
          {
            v55 = 48;
          }

          [*(*(*(a1 + v55) + 8) + 40) insertObject:v54 atIndex:0];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v51);
  }

LABEL_45:
  v56 = *MEMORY[0x277D85DE8];
}

- (id)viewModelsForAvailableAppDescriptions:(id)a3 subscribedAppDescriptions:(id)a4 andNonChannelAppDescriptions:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v42 = a4;
  v41 = a5;
  v8 = objc_alloc_init(VSAppSettingsViewModelResult);
  v39 = [(VSAppSettingsFacade *)self restrictionsCenter];
  v38 = [(VSAppSettingsFacade *)self storage];
  v37 = [v38 privacyFacade];
  v9 = [(VSAppSettingsFacade *)self identityProvider];

  if (!v9)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self identityProvider] parameter must not be nil."];
  }

  v40 = v8;
  v10 = [(VSAppSettingsFacade *)self identityProvider];
  v11 = [v10 providerID];
  v12 = [v11 forceUnwrapObject];

  v13 = [(VSAppSettingsFacade *)self unredeemedVouchers];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        v21 = [v20 providerID];
        v22 = [v21 isEqualToString:v12];

        if (v22)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = self;
  v24 = [(VSAppSettingsFacade *)self knownAppBundles];
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v44 + 1) + 8 * j);
        v30 = [v29 bundleIdentifier];
        if (v30)
        {
          [v23 setObject:v29 forKey:v30];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v26);
  }

  v31 = [(VSAppSettingsFacade *)v36 viewModelsForAppDescriptions:v41 bundleByBundleID:v23 vouchersForProvider:v14 restrictionsCenter:v39 privacyFacade:v37];
  v32 = [(VSAppSettingsFacade *)v36 viewModelsForAppDescriptions:v43 bundleByBundleID:v23 vouchersForProvider:v14 restrictionsCenter:v39 privacyFacade:v37];
  v33 = [(VSAppSettingsFacade *)v36 viewModelsForAppDescriptions:v42 bundleByBundleID:v23 vouchersForProvider:v14 restrictionsCenter:v39 privacyFacade:v37];
  [(VSAppSettingsViewModelResult *)v40 setNonChannelAppViewModels:v31];
  [(VSAppSettingsViewModelResult *)v40 setSubscribedAppViewModels:v33];
  [(VSAppSettingsViewModelResult *)v40 setAvailableAppViewModels:v32];

  v34 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)viewModelsForAppDescriptions:(id)a3 bundleByBundleID:(id)a4 vouchersForProvider:(id)a5 restrictionsCenter:(id)a6 privacyFacade:(id)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v41 = a5;
  v46 = a6;
  v13 = a7;
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v11;
  v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v48)
  {
    v47 = *v54;
    v39 = v13;
    v40 = v12;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        v16 = [v15 bundleID];
        if (v16)
        {
          v17 = [v12 objectForKey:v16];
          if (v17)
          {
            v18 = [VSAppSettingsViewModel alloc];
            v19 = i;
            v20 = v17;
            [v15 adamID];
            v22 = v21 = v16;
            v23 = [v22 stringValue];
            v24 = [(VSAppSettingsViewModel *)v18 initWithBundle:v20 restrictionsCenter:v46 privacyFacade:v13 adamID:v23];

            i = v19;
            v16 = v21;
            [v45 addObject:v24];
            [v12 removeObjectForKey:v21];
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v25 = v41;
            v24 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v24)
            {
              v42 = v16;
              v43 = i;
              v26 = *v50;
              while (2)
              {
                for (j = 0; j != v24; j = (j + 1))
                {
                  if (*v50 != v26)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v28 = *(*(&v49 + 1) + 8 * j);
                  v29 = [v15 adamID];
                  v30 = [v29 stringValue];

                  if (v30)
                  {
                    v31 = v30;
                    v32 = [v28 appAdamID];
                    v33 = [v32 isEqualToString:v31];

                    if (v33)
                    {
                      v24 = v28;

                      goto LABEL_21;
                    }
                  }
                }

                v24 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }

LABEL_21:
              v13 = v39;
              v12 = v40;
              v34 = v46;
              v16 = v42;
              i = v43;
              v17 = 0;
            }

            else
            {
              v34 = v46;
            }

            v35 = [[VSAppSettingsViewModel alloc] initWithAppDescription:v15 privacyVoucher:v24 restrictionsCenter:v34 privacyFacade:v13];
            [v45 addObject:v35];
          }
        }
      }

      v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v48);
  }

  v36 = [v45 copy];
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)setNeedsUpdateApps
{
  VSRequireMainThread();
  if (![(VSAppSettingsFacade *)self needsUpdateApps])
  {
    [(VSAppSettingsFacade *)self setNeedsUpdateApps:1];
    objc_initWeak(&location, self);
    v3 = [(VSAppSettingsFacade *)self accountChannelsCenter];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__VSAppSettingsFacade_setNeedsUpdateApps__block_invoke;
    v4[3] = &unk_279E1A6D0;
    objc_copyWeak(&v5, &location);
    [v3 fetchAccountChannelsWithCompletionHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __41__VSAppSettingsFacade_setNeedsUpdateApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__VSAppSettingsFacade_setNeedsUpdateApps__block_invoke_2;
  v5[3] = &unk_279E19618;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __41__VSAppSettingsFacade_setNeedsUpdateApps__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setAccountChannels:*(a1 + 32)];
    [v3 _updateApps];
    WeakRetained = v3;
  }
}

- (void)setKnownAppBundles:(id)a3
{
  v7 = a3;
  VSRequireMainThread();
  v4 = v7;
  if (self->_knownAppBundles != v7)
  {
    v5 = [(NSArray *)v7 copy];
    knownAppBundles = self->_knownAppBundles;
    self->_knownAppBundles = v5;

    [(VSAppSettingsFacade *)self setNeedsUpdateApps];
    v4 = v7;
  }
}

- (void)setUnredeemedVouchers:(id)a3
{
  v7 = a3;
  VSRequireMainThread();
  v4 = v7;
  if (self->_unredeemedVouchers != v7)
  {
    v5 = [(NSArray *)v7 copy];
    unredeemedVouchers = self->_unredeemedVouchers;
    self->_unredeemedVouchers = v5;

    [(VSAppSettingsFacade *)self setNeedsUpdateApps];
    v4 = v7;
  }
}

- (void)setIdentityProvider:(id)a3
{
  v5 = a3;
  VSRequireMainThread();
  if (self->_identityProvider != v5)
  {
    objc_storeStrong(&self->_identityProvider, a3);
    [(VSAppSettingsFacade *)self setNeedsUpdateApps];
  }
}

- (BOOL)shouldShowMVPDAppInstallPromptFromViewController:(id)a3
{
  [(VSAppSettingsFacade *)self setMvpdInstallPromptPresentingViewController:a3];

  return [(VSAppSettingsFacade *)self shouldShowMVPDAppInstallPrompt];
}

- (BOOL)shouldShowMVPDAppInstallPrompt
{
  v3 = [(VSAppSettingsFacade *)self mvpdAppSettingsViewModel];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [(VSAppSettingsFacade *)self identityProvider];
    v6 = [v5 isSetTopBoxSupported];

    v7 = v4;
    v14 = 0;
    v8 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:&v14];
    v9 = v14;
    v10 = v9;
    v11 = 0;
    if (!v8)
    {
      if (v9)
      {
        v12 = VSErrorLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(VSAppSettingsFacade *)v7 shouldShowMVPDAppInstallPrompt];
        }
      }

      v11 = v6;
    }
  }

  else
  {
    [(VSAppSettingsFacade *)self setNeedsPresentationOfMVPDAppInstallPromptIfAvailable:1];
    v11 = 0;
  }

  return v11;
}

- (void)presentMVPDAppInstallPromptFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(VSAppSettingsFacade *)self mvpdAppSettingsViewModel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 name];
    v14 = [v13 copy];

    v41 = self;
    v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v16 = [v15 localizedStringForKey:@"INSTALL_APP_TITLE_PROMPT_FORMAT" value:0 table:0];

    v40 = v6;
    v38 = v16;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v14];
    v18 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v19 = [v18 localizedStringForKey:@"INSTALL_APP_TITLE_FORMAT" value:0 table:0];

    v36 = v19;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v14];
    v21 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v22 = [v21 localizedStringForKey:@"INSTALL_APP_MESSAGE_FORMAT" value:0 table:0];

    v34 = v22;
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v14];
    v35 = v20;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v20, v33];
    v39 = v12;
    v24 = [v12 adamID];
    v25 = [MEMORY[0x277CEC290] tvProviderLockupRequestWithAdamID:v24];
    v37 = v17;
    v32 = v23;
    v26 = [MEMORY[0x277D78308] ascAppInstallerViewControllerWithTitle:v17 subtitle:v23 request:v25 forceDSIDlessInstall:1 onFlowCompletion:0];
    [v26 setModalPresentationStyle:2];
    v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
    [v27 view];
    v29 = v28 = v8;
    [MEMORY[0x277D75348] systemBackgroundColor];
    v31 = v30 = v9;
    [v29 setBackgroundColor:v31];

    v9 = v30;
    [v27 setModalPresentationStyle:2];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__112;
    v43[4] = __Block_byref_object_dispose__113;
    v44 = MEMORY[0x2743B6E40](v30);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __89__VSAppSettingsFacade_presentMVPDAppInstallPromptFromViewController_animated_completion___block_invoke;
    v42[3] = &unk_279E1A7F0;
    v42[5] = v43;
    v8 = v28;
    v42[4] = v41;
    [v28 presentViewController:v27 animated:v40 completion:v42];
    _Block_object_dispose(v43, 8);
  }
}

uint64_t __89__VSAppSettingsFacade_presentMVPDAppInstallPromptFromViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  [*(a1 + 32) setNeedsPresentationOfMVPDAppInstallPromptIfAvailable:0];
  v3 = *(a1 + 32);

  return [v3 setMvpdInstallPromptPresentingViewController:0];
}

- (void)setMvpdAppSettingsViewModel:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_mvpdAppSettingsViewModel, a3);
  if (v10)
  {
    if ([(VSAppSettingsFacade *)self needsPresentationOfMVPDAppInstallPromptIfAvailable])
    {
      v5 = [(VSAppSettingsFacade *)self mvpdInstallPromptPresentingViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [(VSAppSettingsFacade *)self shouldShowMVPDAppInstallPrompt];

        if (v7)
        {
          v8 = [(VSAppSettingsFacade *)self mvpdInstallPromptPresentingViewController];

          if (!v8)
          {
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self mvpdInstallPromptPresentingViewController] parameter must not be nil."];
          }

          v9 = [(VSAppSettingsFacade *)self mvpdInstallPromptPresentingViewController];
          [(VSAppSettingsFacade *)self presentMVPDAppInstallPromptFromViewController:v9 animated:1 completion:0];
        }
      }
    }
  }
}

- (void)shouldShowMVPDAppInstallPrompt
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_270DD4000, a3, OS_LOG_TYPE_ERROR, "shouldShowMVPDAppInstallPrompt - Error finding bundle record for bundleID %@ : %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end