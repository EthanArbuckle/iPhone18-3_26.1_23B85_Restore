@interface PSUIVoNRSwitchSpecifier
- (BOOL)shouldEnableVoNRSwitchCell;
- (BOOL)showDisableVoNRWarningsIfNeeded;
- (PSUIVoNRSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier;
- (PSUIVoNRSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier callCache:(id)cache capabilitiesCache:(id)capabilitiesCache carrierBundleCache:(id)bundleCache;
- (id)getVoNREnabled;
- (id)groupFooterText;
- (void)reloadSelfInListController;
- (void)setUpPhoneCallWillEndWarningSpecifier;
- (void)setVoNREnabled:(id)enabled specifier:(id)specifier;
- (void)showPhoneCallWillEndWarning;
@end

@implementation PSUIVoNRSwitchSpecifier

- (PSUIVoNRSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier callCache:(id)cache capabilitiesCache:(id)capabilitiesCache carrierBundleCache:(id)bundleCache
{
  controllerCopy = controller;
  specifierCopy = specifier;
  cacheCopy = cache;
  capabilitiesCacheCopy = capabilitiesCache;
  bundleCacheCopy = bundleCache;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"VoNR" value:&stru_287733598 table:@"VONR-D63"];
  v28.receiver = self;
  v28.super_class = PSUIVoNRSwitchSpecifier;
  v17 = [(PSUIVoNRSwitchSpecifier *)&v28 initWithName:v16 target:self set:sel_setVoNREnabled_specifier_ get:sel_getVoNREnabled detail:0 cell:6 edit:0];

  if (v17)
  {
    objc_storeWeak(&v17->_listController, controllerCopy);
    objc_storeStrong(&v17->_parentSpecifier, specifier);
    v18 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v17->_subscriptionContext;
    v17->_subscriptionContext = v18;

    objc_storeStrong(&v17->_callCache, cache);
    objc_storeStrong(&v17->_capabilitiesCache, capabilitiesCache);
    objc_storeStrong(&v17->_carrierBundleCache, bundleCache);
    v20 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v17->_subscriptionContext];
    instance = [v20 instance];
    stringValue = [instance stringValue];
    instance = v17->_instance;
    v17->_instance = stringValue;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSUIVoNRSwitchSpecifier shouldEnableVoNRSwitchCell](v17, "shouldEnableVoNRSwitchCell")}];
  [(PSUIVoNRSwitchSpecifier *)v17 setProperty:v24 forKey:*MEMORY[0x277D3FF38]];

  [(PSUIVoNRSwitchSpecifier *)v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  return v17;
}

- (PSUIVoNRSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v8 = +[PSUICoreTelephonyCallCache sharedInstance];
  v9 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v11 = [(PSUIVoNRSwitchSpecifier *)self initWithHostController:controllerCopy parentSpecifier:specifierCopy callCache:v8 capabilitiesCache:v9 carrierBundleCache:v10];

  return v11;
}

- (BOOL)shouldEnableVoNRSwitchCell
{
  if (![(PSUICoreTelephonyCallCache *)self->_callCache isAnyTelephonyCallActive]|| (v3 = [(PSUICoreTelephonyCallCache *)self->_callCache isActiveCallVoNR]))
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)getVoNREnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilitiesCache capabilityEnabledVoNR:self->_subscriptionContext];
  getLogger = [(PSUIVoNRSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (v3)
    {
      v5 = "ON";
    }

    v9 = 136315138;
    v10 = v5;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "VoNR state is : %s", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setVoNREnabled:(id)enabled specifier:(id)specifier
{
  v11 = *MEMORY[0x277D85DE8];
  bOOLValue = [enabled BOOLValue];
  getLogger = [(PSUIVoNRSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disable";
    if (bOOLValue)
    {
      v7 = @"enable";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "attempting to %@ VoNR", &v9, 0xCu);
  }

  if ((bOOLValue & 1) != 0 || ![(PSUIVoNRSwitchSpecifier *)self showDisableVoNRWarningsIfNeeded])
  {
    [(PSUIVoNRSwitchSpecifier *)self setVoNREnabled:bOOLValue];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)showDisableVoNRWarningsIfNeeded
{
  shouldShowCallWillEndWarning = [(PSUIVoNRSwitchSpecifier *)self shouldShowCallWillEndWarning];
  if (shouldShowCallWillEndWarning)
  {
    [(PSUIVoNRSwitchSpecifier *)self showPhoneCallWillEndWarning];
  }

  return shouldShowCallWillEndWarning;
}

- (void)showPhoneCallWillEndWarning
{
  getLogger = [(PSUIVoNRSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "User tried to disable VoNR during a call, showing warning", v5, 2u);
  }

  [(PSUIVoNRSwitchSpecifier *)self setUpPhoneCallWillEndWarningSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained showConfirmationViewForSpecifier:self->_phoneCallWillEndWarning];
}

- (void)setUpPhoneCallWillEndWarningSpecifier
{
  if (self->_phoneCallWillEndWarning)
  {
    getLogger = [(PSUIVoNRSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Call will end warning has already been set up", buf, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:&stru_287733598 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    phoneCallWillEndWarning = self->_phoneCallWillEndWarning;
    self->_phoneCallWillEndWarning = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ON_CALL_CANCEL" value:&stru_287733598 table:@"VONR-D63"];
    [dictionary setObject:v7 forKey:*MEMORY[0x277D3FE78]];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ON_CALL_OK_DISABLE" value:&stru_287733598 table:@"VONR-D63"];
    [dictionary setObject:v9 forKey:*MEMORY[0x277D3FE88]];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"RAT_ON_CALL_WARNING_DISABLE_VONR" value:&stru_287733598 table:@"VONR-D63"];
    [dictionary setObject:v11 forKey:*MEMORY[0x277D3FE90]];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"DISABLE_VONR" value:&stru_287733598 table:@"VONR-D63"];
    [dictionary setObject:v13 forKey:*MEMORY[0x277D3FE98]];

    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setupWithDictionary:dictionary];
    v14 = self->_phoneCallWillEndWarning;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(PSConfirmationSpecifier *)v14 setProperty:v15 forKey:*MEMORY[0x277D3FE80]];

    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setConfirmationAction:sel_setVoNROff];
    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setConfirmationCancelAction:sel_reloadSelfInListController];
  }
}

- (void)reloadSelfInListController
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__PSUIVoNRSwitchSpecifier_reloadSelfInListController__block_invoke;
  v3[3] = &unk_279BA9EA0;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __53__PSUIVoNRSwitchSpecifier_reloadSelfInListController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v3 = objc_loadWeakRetained(v4 + 29);
    [v3 reloadSpecifier:v4];
  }
}

- (id)groupFooterText
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VONR_SWITCH_EXPLANATION" value:&stru_287733598 table:@"VONR-D63"];

  if ([(PSUIVoNRSwitchSpecifier *)self shouldAddVoNRUnoptimizedWarning])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VONR_SWITCH_UNSUPPORTED_WARNING" value:&stru_287733598 table:@"VONR-D63"];
    v7 = [v4 stringByAppendingString:v6];

    v4 = v7;
  }

  return v4;
}

@end