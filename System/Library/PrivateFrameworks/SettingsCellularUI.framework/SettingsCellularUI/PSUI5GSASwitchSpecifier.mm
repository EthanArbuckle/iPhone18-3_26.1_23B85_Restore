@interface PSUI5GSASwitchSpecifier
- (PSUI5GSASwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier carrierBundleCache:(id)cache;
- (id)groupFooterText;
- (id)is5GSAEnabled;
- (void)checkNRStatusAndDisableIfNeeded;
- (void)refreshSpecifiersInHostController;
- (void)set5GSASwitch:(id)switch specifier:(id)specifier;
@end

@implementation PSUI5GSASwitchSpecifier

- (PSUI5GSASwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier carrierBundleCache:(id)cache
{
  controllerCopy = controller;
  specifierCopy = specifier;
  cacheCopy = cache;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"5G_SA" value:&stru_287733598 table:@"Aries"];
  v21.receiver = self;
  v21.super_class = PSUI5GSASwitchSpecifier;
  v13 = [(PSUI5GSASwitchSpecifier *)&v21 initWithName:v12 target:self set:sel_set5GSASwitch_specifier_ get:sel_is5GSAEnabled detail:0 cell:6 edit:0];

  if (v13)
  {
    objc_storeWeak(&v13->_listController, controllerCopy);
    objc_storeStrong(&v13->_carrierBundleCache, cache);
    v14 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v13->_subscriptionContext;
    v13->_subscriptionContext = v14;

    v16 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v13->_subscriptionContext];
    instance = [v16 instance];
    stringValue = [instance stringValue];
    instance = v13->_instance;
    v13->_instance = stringValue;

    [(PSUI5GSASwitchSpecifier *)v13 checkNRStatusAndDisableIfNeeded];
  }

  return v13;
}

- (id)is5GSAEnabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSUI5GStandaloneCache sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "is5GSAEnabledForContext:", self->_subscriptionContext)}];

  return v5;
}

- (void)set5GSASwitch:(id)switch specifier:(id)specifier
{
  bOOLValue = [switch BOOLValue];

  [(PSUI5GSASwitchSpecifier *)self set5GSAEnabled:bOOLValue];
}

- (id)groupFooterText
{
  v3 = +[PSUI5GStandaloneCache sharedInstance];
  v4 = [v3 is5GSASwitchUserInteractableForContext:self->_subscriptionContext];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"5G_STANDALONE_EXPLANATION" value:&stru_287733598 table:@"Aries"];

    if ([(PSUI5GSASwitchSpecifier *)self shouldAddDefaultOffCarrierFooterText])
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"5G_STANDALONE_DEFAULT_OFF_CARRIER_EXPLANATION" value:&stru_287733598 table:@"Aries"];
      v9 = [(__CFString *)v6 stringByAppendingString:v8];

      v6 = v9;
    }

    if (![(PSUI5GSASwitchSpecifier *)self shouldAddCoverageExtensionFooterText])
    {
      goto LABEL_17;
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"5G_STANDALONE_COVERAGE_EXTENSION_EXPLANATION" value:&stru_287733598 table:@"Aries"];
    v12 = [(__CFString *)v6 stringByAppendingString:v11];

    v6 = v11;
    goto LABEL_16;
  }

  v13 = +[PSUI5GStandaloneCache sharedInstance];
  v14 = [v13 getSADisableStatusReasonMaskForContext:self->_subscriptionContext];

  if ((v14 & 0x40040008) != 0)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = &stru_287733598;
    v17 = [v15 localizedStringForKey:@"5G_STANDALONE_DISABLED" value:&stru_287733598 table:@"Aries"];

    goto LABEL_18;
  }

  if ((v14 & 0x10000) == 0)
  {
    v6 = &stru_287733598;
    if ((v14 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v18 localizedStringForKey:@"5G_STANDALONE_DISABLED_LPM" value:&stru_287733598 table:@"Aries"];

  if ((v14 & 2) != 0)
  {
LABEL_12:
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v19 localizedStringForKey:@"5G_STANDALONE_DISABLED_MSIM" value:&stru_287733598 table:@"Aries"];

    if ([(__CFString *)v6 length])
    {
      v20 = [(__CFString *)v6 stringByAppendingFormat:@"\n\n%@", v10];
    }

    else
    {
      v20 = v10;
      v10 = v20;
    }

    v12 = v20;
LABEL_16:

    v6 = v12;
  }

LABEL_17:
  v16 = v6;
  v17 = v16;
LABEL_18:

  return v17;
}

- (void)checkNRStatusAndDisableIfNeeded
{
  v3 = MEMORY[0x277CCABB0];
  v5 = +[PSUI5GStandaloneCache sharedInstance];
  v4 = [v3 numberWithBool:{objc_msgSend(v5, "is5GSASwitchUserInteractableForContext:", self->_subscriptionContext)}];
  [(PSUI5GSASwitchSpecifier *)self setProperty:v4 forKey:*MEMORY[0x277D3FF38]];
}

- (void)refreshSpecifiersInHostController
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__PSUI5GSASwitchSpecifier_refreshSpecifiersInHostController__block_invoke;
  v3[3] = &unk_279BA9EA0;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __60__PSUI5GSASwitchSpecifier_refreshSpecifiersInHostController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v3 = objc_loadWeakRetained(v4 + 29);
    [v3 reloadSpecifiers];
  }
}

@end