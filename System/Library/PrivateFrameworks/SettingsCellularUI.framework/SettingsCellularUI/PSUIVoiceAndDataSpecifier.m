@interface PSUIVoiceAndDataSpecifier
- (BOOL)configureContents;
- (BOOL)shouldShowCallEndWarningForTargetRATMode:(int)a3 currentRATMode:(int)a4;
- (PSUIVoiceAndDataSpecifier)initWithHostController:(id)a3 subscriptionContext:(id)a4 groupSpecifierToUpdateFooterFor:(id)a5;
- (PSUIVoiceAndDataSpecifier)initWithHostController:(id)a3 subscriptionContext:(id)a4 groupSpecifierToUpdateFooterFor:(id)a5 serviceDescriptor:(id)a6 coreTelephonyClient:(id)a7 callCache:(id)a8 registrationCache:(id)a9 carrierBundleCache:(id)a10 simStatusCache:(id)a11 deviceWifiState:(id)a12;
- (id)getLocalizedStringFromRATMode:(int)a3;
- (id)getLocalizedStringsFromDataRate:(int64_t)a3;
- (id)getLogger;
- (id)getRATMode;
- (id)getRATModesFromDataRate:(int64_t)a3;
- (id)getSmartDataModeState;
- (id)localizedWarningStringForKey:(id)a3 andRATMode:(int)a4;
- (id)suffixStringFromRATMode:(int)a3;
- (int)warningRATModeForTargetMode:(int)a3 currentMode:(int)a4;
- (void)acceptedRATSelectionDuringCall:(id)a3;
- (void)canceledRATSelectionDuringCall;
- (void)handleMaxDataRateChanged;
- (void)populateSpecifiers:(id)a3 values:(id)a4;
- (void)setMaxDataRateForRATMode:(int)a3;
- (void)setRATMode:(id)a3 specifier:(id)a4;
- (void)setSmartDataModeState:(int)a3;
- (void)setUpInternalState;
- (void)setUpRATSpecifers;
- (void)startObservingNotifications;
@end

@implementation PSUIVoiceAndDataSpecifier

- (PSUIVoiceAndDataSpecifier)initWithHostController:(id)a3 subscriptionContext:(id)a4 groupSpecifierToUpdateFooterFor:(id)a5 serviceDescriptor:(id)a6 coreTelephonyClient:(id)a7 callCache:(id)a8 registrationCache:(id)a9 carrierBundleCache:(id)a10 simStatusCache:(id)a11 deviceWifiState:(id)a12
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v25 = a12;
  v35.receiver = self;
  v35.super_class = PSUIVoiceAndDataSpecifier;
  v18 = [(PSUIVoiceAndDataSpecifier *)&v35 initWithName:0 target:self set:sel_setRATMode_specifier_ get:sel_getRATMode detail:0 cell:2 edit:0];
  v19 = v18;
  if (v18)
  {
    [(PSUIVoiceAndDataSpecifier *)v18 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];
    [(PSUIVoiceAndDataSpecifier *)v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F8]];
    v19->_sdrLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v19->_hostController, v34);
    objc_storeStrong(&v19->_mobileDataGroup, a5);
    objc_storeStrong(&v19->_subscriptionContext, a4);
    objc_storeStrong(&v19->_serviceDescriptor, a6);
    objc_storeStrong(&v19->_ctClient, a7);
    objc_storeStrong(&v19->_callCache, a8);
    objc_storeStrong(&v19->_regCache, a9);
    objc_storeStrong(&v19->_carrierBundleCache, a10);
    objc_storeStrong(&v19->_simStatusCache, a11);
    objc_storeStrong(&v19->_deviceWifiState, a12);
    [(PSUIVoiceAndDataSpecifier *)v19 startObservingNotifications];
    if (![(PSUIVoiceAndDataSpecifier *)v19 configureContents])
    {
      v23 = 0;
      goto LABEL_6;
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [(PSUIVoiceAndDataSpecifier *)v19 name];
    v22 = [v20 stringWithFormat:@"%@.%li", v21, objc_msgSend(v33, "slotID")];

    [(PSUIVoiceAndDataSpecifier *)v19 setIdentifier:v22];
    [(PSUIVoiceAndDataSpecifier *)v19 setProperty:v22 forKey:*MEMORY[0x277D3FFB8]];
    [(PSUIVoiceAndDataSpecifier *)v19 setDetailControllerClass:objc_opt_class()];
  }

  v23 = v19;
LABEL_6:

  return v23;
}

- (PSUIVoiceAndDataSpecifier)initWithHostController:(id)a3 subscriptionContext:(id)a4 groupSpecifierToUpdateFooterFor:(id)a5
{
  v7 = MEMORY[0x277CC3718];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v20 = [v7 descriptorWithSubscriptionContext:v9];
  v11 = objc_alloc(MEMORY[0x277CC37B0]);
  v22 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"voice_and_data_specifier"];
  v12 = [v11 initWithQueue:v22];
  v13 = +[PSUICoreTelephonyCallCache sharedInstance];
  v14 = +[PSUICoreTelephonyRegistrationCache sharedInstance];
  v15 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v16 = [MEMORY[0x277D4D868] sharedInstance];
  v17 = +[PSUIDeviceWiFiState sharedInstance];
  v18 = [(PSUIVoiceAndDataSpecifier *)self initWithHostController:v10 subscriptionContext:v9 groupSpecifierToUpdateFooterFor:v8 serviceDescriptor:v20 coreTelephonyClient:v12 callCache:v13 registrationCache:v14 carrierBundleCache:v15 simStatusCache:v16 deviceWifiState:v17];

  return v18;
}

- (BOOL)configureContents
{
  [(PSUIVoiceAndDataSpecifier *)self setUpInternalState];
  os_unfair_lock_lock(&self->_sdrLock);
  v3 = [(NSArray *)self->_supportedDataRates count];
  os_unfair_lock_unlock(&self->_sdrLock);
  if (v3 < 1)
  {
    subscriptionContext = self->_subscriptionContext;
    v11 = [(PSUIVoiceAndDataSpecifier *)self getRATMode];
    v12 = +[PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldShowAnyVoiceAndDataSwitchSpecifierForContext:RATMode:](PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory, "shouldShowAnyVoiceAndDataSwitchSpecifierForContext:RATMode:", subscriptionContext, [v11 intValue]);

    if (!v12)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v8 localizedStringForKey:@"VOICE_OPTIONS" value:&stru_287733598 table:@"Cellular"];
  }

  else
  {
    [(PSUIVoiceAndDataSpecifier *)self setUpRATSpecifers];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"VOICE_AND_DATA" value:&stru_287733598 table:@"Cellular"];

    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 sf_isiPad];

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DATA_DRILLDOWN" value:&stru_287733598 table:@"Cellular"];

    v5 = v9;
  }

LABEL_7:
  if (v5)
  {
    [(PSUIVoiceAndDataSpecifier *)self setName:v5];
    v13 = 1;
    goto LABEL_12;
  }

LABEL_9:
  v5 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "No supported data rates and no voice or data switches need to be shown.", v15, 2u);
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)startObservingNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleMaxDataRateChanged name:@"PSMaxDataRateChangedNotification" object:0];
}

- (void)setUpInternalState
{
  v17 = *MEMORY[0x277D85DE8];
  self->_3GOverrideTo4G = 0;
  self->_LTEOverrideTo4G = 0;
  self->_LTEOverrideTo4G = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache shouldOverrideLTEto4G:self->_subscriptionContext];
  v3 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_LTEOverrideTo4G)
    {
      v4 = "yes";
    }

    else
    {
      v4 = "no";
    }

    v15 = 136315138;
    v16 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "LTE override to 4G: %s", &v15, 0xCu);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_LTEOverrideTo4G];
  [(PSUIVoiceAndDataSpecifier *)self setProperty:v5 forKey:@"PSLTEOverrideTo4GKey"];

  self->_3GOverrideTo4G = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache shouldOverride3Gto4G:self->_subscriptionContext];
  v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_3GOverrideTo4G)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    v15 = 136315138;
    v16 = v7;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "3G override to 4G: %s", &v15, 0xCu);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_3GOverrideTo4G];
  [(PSUIVoiceAndDataSpecifier *)self setProperty:v8 forKey:@"PS3GOverrideTo4GKey"];

  [(PSUIVoiceAndDataSpecifier *)self setProperty:self->_subscriptionContext forKey:*MEMORY[0x277D40128]];
  os_unfair_lock_lock(&self->_sdrLock);
  v9 = [(PSUICoreTelephonyRegistrationCache *)self->_regCache supportedDataRates:self->_subscriptionContext];
  supportedDataRates = self->_supportedDataRates;
  self->_supportedDataRates = v9;

  v11 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_supportedDataRates;
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "supported cellular data rates: %@", &v15, 0xCu);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSArray containsObject:](self->_supportedDataRates, "containsObject:", &unk_287749038)}];
  [(PSUIVoiceAndDataSpecifier *)self setProperty:v13 forKey:0x287736238];

  os_unfair_lock_unlock(&self->_sdrLock);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setUpRATSpecifers
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  [(PSUIVoiceAndDataSpecifier *)self populateSpecifiers:v3 values:v5];
  [v4 addObjectsFromArray:v3];
  v6 = [v3 count];
  v7 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Adding RAT Modes : %{public}@", &v10, 0xCu);
    }

    [(PSUIVoiceAndDataSpecifier *)self setValues:v5 titles:v3 shortTitles:v4];
  }

  else
  {
    if (v8)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "No RAT mode specifiers added.", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)populateSpecifiers:(id)a3 values:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_sdrLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSArray *)self->_supportedDataRates reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = -[PSUIVoiceAndDataSpecifier getRATModesFromDataRate:](self, "getRATModesFromDataRate:", [v13 unsignedIntValue]);
        [v7 addObjectsFromArray:v14];

        v15 = -[PSUIVoiceAndDataSpecifier getLocalizedStringsFromDataRate:](self, "getLocalizedStringsFromDataRate:", [v13 unsignedIntValue]);
        [v6 addObjectsFromArray:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_sdrLock);
  v16 = *MEMORY[0x277D85DE8];
}

- (id)getRATMode
{
  v3 = [(PSUICoreTelephonyRegistrationCache *)self->_regCache maxDataRate:self->_subscriptionContext];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is LTE", v13, 2u);
      }

      v5 = &unk_287749080;
    }

    else
    {
      if (v3 != 4)
      {
LABEL_13:
        v4 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is unknown", v10, 2u);
        }

        v5 = 0;
        goto LABEL_25;
      }

      v6 = [(PSUIVoiceAndDataSpecifier *)self getSmartDataModeState];
      v7 = [v6 BOOLValue];

      v4 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
      v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v8)
        {
          *v15 = 0;
          _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is 5G Auto", v15, 2u);
        }

        v5 = &unk_287749050;
      }

      else
      {
        if (v8)
        {
          *v14 = 0;
          _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is 5G", v14, 2u);
        }

        v5 = &unk_287749068;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is 3G", buf, 2u);
        }

        v5 = &unk_287749098;
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    v4 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "RAT mode is 2G", v11, 2u);
    }

    v5 = &unk_2877490B0;
  }

LABEL_25:

  return v5;
}

- (void)setRATMode:(id)a3 specifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PSUIVoiceAndDataSpecifier *)self propertyForKey:0x287736278];
  objc_storeWeak(&self->_drillDownController, v6);

  v7 = [v5 intValue];
  v8 = [(PSUIVoiceAndDataSpecifier *)self getRATMode];
  v9 = [v8 intValue];

  v10 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = v7;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to set RAT mode to %u from current RAT mode of %u", v12, 0xEu);
  }

  if (v7 != v9)
  {
    if ([(PSUIVoiceAndDataSpecifier *)self shouldShowCallEndWarningForTargetRATMode:v7 currentRATMode:v9])
    {
      [(PSUIVoiceAndDataSpecifier *)self showCallMayEndWarningForTargetRATMode:v7 currentRATMode:v9];
    }

    else
    {
      [(PSUIVoiceAndDataSpecifier *)self setMaxDataRateForRATMode:v7];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMaxDataRateForRATMode:(int)a3
{
  v23 = *MEMORY[0x277D85DE8];
  [(PSUIVoiceAndDataSpecifier *)self setSmartDataModeState:?];
  v5 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v20) = a3;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "setting RAT Mode to : %d", buf, 8u);
  }

  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "set RAT mode = 2G", buf, 2u);
        }

        v8 = 1;
        goto LABEL_31;
      case 2:
        v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v8 = 2;
          _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "set RAT mode = 3G", buf, 2u);
        }

        else
        {
          v8 = 2;
        }

        goto LABEL_31;
    }

LABEL_34:
    v11 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v12 = __54__PSUIVoiceAndDataSpecifier_setMaxDataRateForRATMode___block_invoke_61;
    goto LABEL_35;
  }

  if (a3 <= 4)
  {
    if (a3 == 3)
    {
      v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "set RAT mode = 4G", buf, 2u);
      }

      v8 = 3;
      goto LABEL_31;
    }

    v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v7 = "set RAT mode = 5G";
    goto LABEL_25;
  }

  if (a3 == 5)
  {
    v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:
      v8 = 4;
LABEL_31:

      v13 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v8;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Setting Max Data Rate to: %li", buf, 0xCu);
      }

      [(PSUICoreTelephonyRegistrationCache *)self->_regCache setMaxDataRate:self->_subscriptionContext dataRate:v8];
      goto LABEL_34;
    }

    *buf = 0;
    v7 = "set RAT mode = 5G Auto";
LABEL_25:
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_26;
  }

  if (a3 != 6)
  {
    goto LABEL_34;
  }

LABEL_15:
  v9 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "set RAT mode = Unknown", buf, 2u);
  }

  v10 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v15 = [(PSUIVoiceAndDataSpecifier *)self values];
    v16 = [(PSUIVoiceAndDataSpecifier *)self titleDictionary];
    *buf = 138543618;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "Values were: %{public}@, titles were: %{public}@", buf, 0x16u);
  }

  v11 = v18;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v12 = __54__PSUIVoiceAndDataSpecifier_setMaxDataRateForRATMode___block_invoke;
LABEL_35:
  v11[2] = v12;
  v11[3] = &unk_279BA9D58;
  v11[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  v14 = *MEMORY[0x277D85DE8];
}

void __54__PSUIVoiceAndDataSpecifier_setMaxDataRateForRATMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  [WeakRetained reloadSpecifiers];
}

void __54__PSUIVoiceAndDataSpecifier_setMaxDataRateForRATMode___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  [WeakRetained reloadSpecifiers];
}

- (BOOL)shouldShowCallEndWarningForTargetRATMode:(int)a3 currentRATMode:(int)a4
{
  if ([(PSUICoreTelephonyCallCache *)self->_callCache isAnyCallActive])
  {
    v7 = a3 > a4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 || a4 > 3;
  if (v8 || ![(PSUICoreTelephonyCallCache *)self->_callCache isAnyVOIPCallActive]&& ![(PSUICoreTelephonyCallCache *)self->_callCache isActiveCallVoLTE])
  {
    return 0;
  }

  simStatusCache = self->_simStatusCache;
  v11 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext slotID];

  return [(PSSimStatusCache *)simStatusCache isSlotActiveDataSlot:v11];
}

- (void)acceptedRATSelectionDuringCall:(id)a3
{
  v4 = a3;
  v5 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Accepted RAT Selection During Call", v8, 2u);
  }

  v6 = [v4 propertyForKey:@"newValue"];

  v7 = [v6 intValue];
  [(PSUIVoiceAndDataSpecifier *)self setMaxDataRateForRATMode:v7];
}

- (void)canceledRATSelectionDuringCall
{
  v3 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Canceled RAT selection during call", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSUIVoiceAndDataSpecifier_canceledRATSelectionDuringCall__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__PSUIVoiceAndDataSpecifier_canceledRATSelectionDuringCall__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  [WeakRetained reloadSpecifiers];
}

- (int)warningRATModeForTargetMode:(int)a3 currentMode:(int)a4
{
  if (a3 <= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

- (id)localizedWarningStringForKey:(id)a3 andRATMode:(int)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = v7;
  if (a4 >= 4)
  {
    v9 = @"Aries";
  }

  else
  {
    v9 = @"Cellular";
  }

  v10 = [v7 localizedStringForKey:v6 value:&stru_287733598 table:v9];

  return v10;
}

- (id)suffixStringFromRATMode:(int)a3
{
  v4 = &stru_287733598;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = @"2G";
      goto LABEL_17;
    }

    if (a3 != 2)
    {
      goto LABEL_17;
    }

    _3GOverrideTo4G = self->_3GOverrideTo4G;
    v7 = @"3G";
    v8 = @"3G_AS_4G";
LABEL_12:
    if (_3GOverrideTo4G)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v4 = v9;
    goto LABEL_17;
  }

  if (a3 == 3)
  {
    _3GOverrideTo4G = self->_LTEOverrideTo4G;
    v7 = @"LTE";
    v8 = @"LTE_AS_4G";
    goto LABEL_12;
  }

  v5 = @"5G_AUTO";
  if (a3 != 5)
  {
    v5 = &stru_287733598;
  }

  if (a3 == 4)
  {
    v4 = @"5G";
  }

  else
  {
    v4 = v5;
  }

LABEL_17:

  return v4;
}

- (id)getSmartDataModeState
{
  v20 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v15 = 0;
  v5 = [(CoreTelephonyClient *)ctClient smartDataMode:serviceDescriptor error:&v15];
  v6 = v15;
  v7 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_serviceDescriptor;
      *buf = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to get smart data mode state service: %@, error: %@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEC28];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"OFF";
      v11 = self->_serviceDescriptor;
      if (v5)
      {
        v10 = @"ON";
      }

      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully retrieved smart data mode: %@  state for service: %@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setSmartDataModeState:(int)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "OFF";
    if (a3 == 5)
    {
      v6 = "ON";
    }

    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Setting smart data mode state to %s", &v11, 0xCu);
  }

  v7 = [(CoreTelephonyClient *)self->_ctClient setSmartDataMode:self->_serviceDescriptor enable:a3 == 5];
  if (v7)
  {
    v8 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      serviceDescriptor = self->_serviceDescriptor;
      v11 = 138412546;
      v12 = serviceDescriptor;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to activate smart data mode for service: %@, error: %@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleMaxDataRateChanged
{
  [(PSUIVoiceAndDataSpecifier *)self configureContents];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSUIVoiceAndDataSpecifier_handleMaxDataRateChanged__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__PSUIVoiceAndDataSpecifier_handleMaxDataRateChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (id)getLocalizedStringsFromDataRate:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [(PSUIVoiceAndDataSpecifier *)self getRATModesFromDataRate:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[PSUIVoiceAndDataSpecifier getLocalizedStringFromRATMode:](self, "getLocalizedStringFromRATMode:", [*(*(&v14 + 1) + 8 * i) unsignedIntValue]);
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getRATModesFromDataRate:(int64_t)a3
{
  if ((a3 - 1) < 4)
  {
    return *(&off_279BAA188 + a3 - 1);
  }

  v8 = v3;
  v9 = v4;
  v6 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "Invalid CTDataRate used", v7, 2u);
  }

  return MEMORY[0x277CBEBF8];
}

- (id)getLocalizedStringFromRATMode:(int)a3
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (self->_LTEOverrideTo4G)
  {
    v7 = @"4G";
  }

  else
  {
    v7 = @"LTE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (self->_3GOverrideTo4G)
  {
    v11 = @"4G";
  }

  else
  {
    v11 = @"3G";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_287733598 table:@"Cellular"];

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"2G";
      v18 = @"Cellular";
      goto LABEL_20;
    }

    if (a3 != 2)
    {
      goto LABEL_21;
    }

    v16 = v12;
LABEL_16:
    v17 = v16;
    goto LABEL_24;
  }

  switch(a3)
  {
    case 3:
      v16 = v8;
      goto LABEL_16;
    case 4:
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"5G_ON";
      goto LABEL_18;
    case 5:
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"5G_AUTO";
LABEL_18:
      v18 = @"Aries";
LABEL_20:
      v17 = [v13 localizedStringForKey:v15 value:&stru_287733598 table:v18];

      goto LABEL_24;
  }

LABEL_21:
  v19 = [(PSUIVoiceAndDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_2658DE000, v19, OS_LOG_TYPE_ERROR, "Invalid PSRATMode used", v21, 2u);
  }

  v17 = &stru_287733598;
LABEL_24:

  return v17;
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  v3 = [(CTServiceDescriptor *)self->_serviceDescriptor instance];
  v4 = [v3 stringValue];
  v5 = [v2 loggerWithCategory:@"VnD" instance:v4];

  return v5;
}

@end