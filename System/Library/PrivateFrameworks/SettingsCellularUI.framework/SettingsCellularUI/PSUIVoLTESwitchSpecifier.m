@interface PSUIVoLTESwitchSpecifier
- (BOOL)shouldEnableVoLTESwitchCell;
- (BOOL)shouldShowCallWillEndWarning;
- (BOOL)showDisableVoLTEWarningsIfNeeded;
- (BOOL)showEnableVoLTEWarningsIfNeeded;
- (BOOL)showWarningsIfNeededForEnableState:(BOOL)a3;
- (PSUIVoLTESwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4;
- (PSUIVoLTESwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 callCache:(id)a5 capabilitiesCache:(id)a6 carrierBundleCache:(id)a7 simStatusCache:(id)a8;
- (id)createCallCarrierAlertForContext:(id)a3;
- (id)getLogger;
- (id)getVoLTEEnabled;
- (id)groupFooterText;
- (void)addSpinnerIfNeededToCell:(id)a3;
- (void)reloadSelfInListController;
- (void)setUpPhoneCallWillEndWarningSpecifier;
- (void)setVoLTEEnabled:(id)a3 specifier:(id)a4;
- (void)showCallCarrierAlert;
- (void)showPhoneCallWillEndWarning;
@end

@implementation PSUIVoLTESwitchSpecifier

- (PSUIVoLTESwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 callCache:(id)a5 capabilitiesCache:(id)a6 carrierBundleCache:(id)a7 simStatusCache:(id)a8
{
  v14 = a3;
  v15 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"VoLTE" value:&stru_287733598 table:@"VOLTE"];
  v27.receiver = self;
  v27.super_class = PSUIVoLTESwitchSpecifier;
  v18 = [(PSUIVoLTESwitchSpecifier *)&v27 initWithName:v17 target:self set:sel_setVoLTEEnabled_specifier_ get:sel_getVoLTEEnabled detail:0 cell:6 edit:0];

  if (v18)
  {
    objc_storeWeak(&v18->_listController, v14);
    objc_storeStrong(&v18->_parentSpecifier, a4);
    v19 = [v15 propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v18->_subscriptionContext;
    v18->_subscriptionContext = v19;

    objc_storeStrong(&v18->_callCache, a5);
    objc_storeStrong(&v18->_capabilitiesCache, a6);
    objc_storeStrong(&v18->_carrierBundleCache, a7);
    objc_storeStrong(&v18->_simStatusCache, a8);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSUIVoLTESwitchSpecifier shouldEnableVoLTESwitchCell](v18, "shouldEnableVoLTESwitchCell")}];
  [(PSUIVoLTESwitchSpecifier *)v18 setProperty:v21 forKey:*MEMORY[0x277D3FF38]];

  return v18;
}

- (PSUIVoLTESwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PSUICoreTelephonyCallCache sharedInstance];
  v9 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v11 = [MEMORY[0x277D4D868] sharedInstance];
  v12 = [(PSUIVoLTESwitchSpecifier *)self initWithHostController:v7 parentSpecifier:v6 callCache:v8 capabilitiesCache:v9 carrierBundleCache:v10 simStatusCache:v11];

  return v12;
}

- (BOOL)shouldEnableVoLTESwitchCell
{
  if (![(PSUICoreTelephonyCallCache *)self->_callCache isAnyTelephonyCallActive]|| (v3 = [(PSUICoreTelephonyCallCache *)self->_callCache isActiveCallVoLTE]))
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)getVoLTEEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilitiesCache capabilityEnabledVoLTE:self->_subscriptionContext];
  v4 = [(PSUIVoLTESwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (v3)
    {
      v5 = "ON";
    }

    v9 = 136315138;
    v10 = v5;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "VoLTE state is: %s", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setVoLTEEnabled:(id)a3 specifier:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a3 BOOLValue];
  v6 = [(PSUIVoLTESwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disable";
    if (v5)
    {
      v7 = @"enable";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "attempting to %@ VoLTE", &v9, 0xCu);
  }

  if (![(PSUIVoLTESwitchSpecifier *)self showWarningsIfNeededForEnableState:v5])
  {
    [(PSUIVoLTESwitchSpecifier *)self setVoLTEEnabled:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)showWarningsIfNeededForEnableState:(BOOL)a3
{
  if (a3)
  {
    return [(PSUIVoLTESwitchSpecifier *)self showEnableVoLTEWarningsIfNeeded];
  }

  else
  {
    return [(PSUIVoLTESwitchSpecifier *)self showDisableVoLTEWarningsIfNeeded];
  }
}

- (BOOL)showEnableVoLTEWarningsIfNeeded
{
  v3 = [(PSUIVoLTESwitchSpecifier *)self shouldShowCallCarrierAlert];
  if (v3)
  {
    [(PSUIVoLTESwitchSpecifier *)self showCallCarrierAlert];
  }

  return v3;
}

- (BOOL)showDisableVoLTEWarningsIfNeeded
{
  v3 = [(PSUIVoLTESwitchSpecifier *)self shouldShowCallWillEndWarning];
  if (v3)
  {
    [(PSUIVoLTESwitchSpecifier *)self showPhoneCallWillEndWarning];
  }

  return v3;
}

- (BOOL)shouldShowCallWillEndWarning
{
  v3 = [(PSUICoreTelephonyCallCache *)self->_callCache isActiveCallVoLTE];
  if (v3)
  {
    simStatusCache = self->_simStatusCache;
    v5 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext slotID];

    LOBYTE(v3) = [(PSSimStatusCache *)simStatusCache isSlotActiveDataSlot:v5];
  }

  return v3;
}

- (void)showPhoneCallWillEndWarning
{
  v3 = [(PSUIVoLTESwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "User tried to disable VoLTE during a call, showing warning", v5, 2u);
  }

  [(PSUIVoLTESwitchSpecifier *)self setUpPhoneCallWillEndWarningSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained showConfirmationViewForSpecifier:self->_phoneCallWillEndWarning];
}

- (void)setUpPhoneCallWillEndWarningSpecifier
{
  if (!self->_phoneCallWillEndWarning)
  {
    v3 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:&stru_287733598 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    phoneCallWillEndWarning = self->_phoneCallWillEndWarning;
    self->_phoneCallWillEndWarning = v3;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ON_CALL_CANCEL" value:&stru_287733598 table:@"VOLTE"];
    [v15 setObject:v6 forKey:*MEMORY[0x277D3FE78]];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ON_CALL_OK_DISABLE" value:&stru_287733598 table:@"VOLTE"];
    [v15 setObject:v8 forKey:*MEMORY[0x277D3FE88]];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"RAT_ON_CALL_WARNING_DISABLE_VOLTE" value:&stru_287733598 table:@"VOLTE"];
    [v15 setObject:v10 forKey:*MEMORY[0x277D3FE90]];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"DISABLE_VOLTE" value:&stru_287733598 table:@"VOLTE"];
    [v15 setObject:v12 forKey:*MEMORY[0x277D3FE98]];

    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setupWithDictionary:v15];
    v13 = self->_phoneCallWillEndWarning;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(PSConfirmationSpecifier *)v13 setProperty:v14 forKey:*MEMORY[0x277D3FE80]];

    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setConfirmationAction:sel_setVoLTEOff];
    [(PSConfirmationSpecifier *)self->_phoneCallWillEndWarning setConfirmationCancelAction:sel_reloadSelfInListController];
  }
}

- (void)reloadSelfInListController
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__PSUIVoLTESwitchSpecifier_reloadSelfInListController__block_invoke;
  v3[3] = &unk_279BA9EA0;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__PSUIVoLTESwitchSpecifier_reloadSelfInListController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v3 = objc_loadWeakRetained(v4 + 29);
    [v3 reloadSpecifier:v4];
  }
}

- (void)showCallCarrierAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v3 = [(PSUIVoLTESwitchSpecifier *)self createCallCarrierAlertForContext:self->_subscriptionContext];
  [WeakRetained presentViewController:v3 animated:1 completion:0];
}

- (id)createCallCarrierAlertForContext:(id)a3
{
  parentSpecifier = self->_parentSpecifier;
  v5 = a3;
  v6 = [(PSSpecifier *)parentSpecifier propertyForKey:0x287735978];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7)
  {
    v10 = @"SETUP_VOICE_ALERT_TITLE_LTE_AS_4G";
  }

  else
  {
    v10 = @"SETUP_VOICE_ALERT_TITLE_LTE";
  }

  if (v7)
  {
    v11 = @"SETUP_VOICE_ALERT_BODY_FORMAT_LTE_AS_4G";
  }

  else
  {
    v11 = @"SETUP_VOICE_ALERT_BODY_FORMAT_LTE";
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_287733598 table:@"VOLTE"];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v11 value:&stru_287733598 table:@"VOLTE"];

  v15 = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache carrierName:v5];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v15];
  v17 = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache volteCustomerCareWebsite:v5];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  v29 = v12;
  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v16 preferredStyle:1];
  if (v18)
  {
    v20 = MEMORY[0x277D750F8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SETUP_VOICE_OPTION_WEBSITE" value:&stru_287733598 table:@"VOLTE"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__PSUIVoLTESwitchSpecifier_createCallCarrierAlertForContext___block_invoke;
    v31[3] = &unk_279BA9E70;
    v32 = v18;
    v23 = [v20 actionWithTitle:v22 style:0 handler:v31];
    [v19 addAction:v23];
  }

  v24 = MEMORY[0x277D750F8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SETUP_VOICE_CANCEL" value:&stru_287733598 table:@"VOLTE"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__PSUIVoLTESwitchSpecifier_createCallCarrierAlertForContext___block_invoke_2;
  v30[3] = &unk_279BA9E70;
  v30[4] = self;
  v27 = [v24 actionWithTitle:v26 style:1 handler:v30];
  [v19 addAction:v27];

  return v19;
}

void __61__PSUIVoLTESwitchSpecifier_createCallCarrierAlertForContext___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)addSpinnerIfNeededToCell:(id)a3
{
  v5 = a3;
  if ([(PSUIVoLTESwitchSpecifier *)self isVoLTEProvisioning])
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 startAnimating];
    [v5 setAccessoryView:v4];
  }
}

- (id)groupFooterText
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VOLTE_SWITCH_EXPLANATION" value:&stru_287733598 table:@"VOLTE"];

  if ([(PSUIVoLTESwitchSpecifier *)self shouldShowVoLTEUnsupportedWarning])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VOLTE_UNSUPPORTED_WARNING" value:&stru_287733598 table:@"VOLTE"];
    v7 = [v4 stringByAppendingString:v6];

    v4 = v7;
  }

  return v4;
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  v3 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:self->_subscriptionContext];
  v4 = [v3 instance];
  v5 = [v4 stringValue];
  v6 = [v2 loggerWithCategory:@"VoLTESwitchSpecifier" instance:v5];

  return v6;
}

@end