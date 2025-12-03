@interface PSUIVoiceAndDataDrillDownController
- (BOOL)shouldShow5GSABatteryLifeReliabilityWarning;
- (PSUIVoiceAndDataDrillDownController)init;
- (PSUIVoiceAndDataDrillDownController)initWithCTClient:(id)client switchFactory:(id)factory carrierBundleCache:(id)cache standaloneCache:(id)standaloneCache;
- (id)getSwitchSpecifiers;
- (id)specifiers;
- (int)RATModeForSpecifier:(id)specifier;
- (void)airplaneModeChanged;
- (void)configure5GRATModeSpecifiersEnabledState;
- (void)configureSpecifiers;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)handleMaxDataRateChanged;
- (void)listItemSelected:(id)selected;
- (void)nrDisableStatusChanged:(id)changed status:(id)status;
- (void)prepareSpecifiers:(id)specifiers;
- (void)reloadSpecifier:(id)specifier;
- (void)set5GRATModeSpecifierEnabledState:(id)state;
- (void)setRATGroupFooterText;
- (void)setSpecifier:(id)specifier;
- (void)setUpRATModeSpecifierIdentifiers:(id)identifiers;
- (void)startObservingNotifications;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateCurrentRATModeFromSpecifier:(id)specifier;
@end

@implementation PSUIVoiceAndDataDrillDownController

- (PSUIVoiceAndDataDrillDownController)initWithCTClient:(id)client switchFactory:(id)factory carrierBundleCache:(id)cache standaloneCache:(id)standaloneCache
{
  clientCopy = client;
  factoryCopy = factory;
  cacheCopy = cache;
  standaloneCacheCopy = standaloneCache;
  v18.receiver = self;
  v18.super_class = PSUIVoiceAndDataDrillDownController;
  v15 = [(PSUIVoiceAndDataDrillDownController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ctClient, client);
    [(CoreTelephonyClient *)v16->_ctClient setDelegate:v16];
    objc_storeStrong(&v16->_switchFactory, factory);
    objc_storeStrong(&v16->_cbCache, cache);
    objc_storeStrong(&v16->_saCache, standaloneCache);
    [(PSUIVoiceAndDataDrillDownController *)v16 startObservingNotifications];
  }

  return v16;
}

- (PSUIVoiceAndDataDrillDownController)init
{
  v14.receiver = self;
  v14.super_class = PSUIVoiceAndDataDrillDownController;
  v2 = [(PSUIVoiceAndDataDrillDownController *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"voice_and_data_controller"];
    v5 = [v3 initWithQueue:v4];
    ctClient = v2->_ctClient;
    v2->_ctClient = v5;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
    v7 = objc_alloc_init(PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory);
    switchFactory = v2->_switchFactory;
    v2->_switchFactory = v7;

    v9 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    cbCache = v2->_cbCache;
    v2->_cbCache = v9;

    v11 = +[PSUI5GStandaloneCache sharedInstance];
    saCache = v2->_saCache;
    v2->_saCache = v11;

    [(PSUIVoiceAndDataDrillDownController *)v2 startObservingNotifications];
  }

  return v2;
}

- (void)startObservingNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleMaxDataRateChanged name:@"PSMaxDataRateChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_airplaneModeChanged name:0x287739438 object:0];
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PSUIVoiceAndDataDrillDownController;
  [(PSUIVoiceAndDataDrillDownController *)&v9 setSpecifier:specifier];
  v4 = *MEMORY[0x277D3FD20];
  v5 = [*(&self->super.super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D40128]];
  subscriptionContext = self->_subscriptionContext;
  self->_subscriptionContext = v5;

  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:self->_subscriptionContext];
  serviceDescriptor = self->_serviceDescriptor;
  self->_serviceDescriptor = v7;

  [*(&self->super.super.super.super.super.super.isa + v4) setProperty:self forKey:@"DrillDownControllerKey"];
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    [(PSUIVoiceAndDataDrillDownController *)self updateCurrentRATModeFromSpecifier:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
    v6 = MEMORY[0x277CBEB18];
    v14.receiver = self;
    v14.super_class = PSUIVoiceAndDataDrillDownController;
    specifiers = [(PSListItemsController *)&v14 specifiers];
    v8 = [v6 arrayWithArray:specifiers];

    [(PSUIVoiceAndDataDrillDownController *)self prepareSpecifiers:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.super.isa + v2) = v8;
    v10 = v8;

    [(PSUIVoiceAndDataDrillDownController *)self configureSpecifiers];
    v11 = MEMORY[0x277D4D878];
    v12 = [*(&self->super.super.super.super.super.super.isa + v2) mutableCopy];
    [v11 logSpecifiers:v12 origin:@"[PSUIVoiceAndDataDrillDownController specifiers] end"];

    v4 = *(&self->super.super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (void)reloadSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = PSUIVoiceAndDataDrillDownController;
  [(PSUIVoiceAndDataDrillDownController *)&v8 reloadSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];

  if (identifier == @"SASwitchSpecifierKey")
  {
    v6 = [(PSUIVoiceAndDataDrillDownController *)self specifierForID:@"SASwitchGroupSpecifierKey"];
    if (v6)
    {
      groupFooterText = [specifierCopy groupFooterText];
      [v6 setProperty:groupFooterText forKey:*MEMORY[0x277D3FF88]];

      [(PSUIVoiceAndDataDrillDownController *)self reloadSpecifier:v6];
    }
  }
}

- (void)prepareSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  [(PSUIVoiceAndDataDrillDownController *)self setUpRATModeSpecifierIdentifiers:specifiersCopy];
  getSwitchSpecifiers = [(PSUIVoiceAndDataDrillDownController *)self getSwitchSpecifiers];
  [specifiersCopy addObjectsFromArray:getSwitchSpecifiers];
}

- (void)setUpRATModeSpecifierIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = identifiersCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 cellType])
          {
            v11 = [(PSUIVoiceAndDataDrillDownController *)self identifierForRATMode:[(PSUIVoiceAndDataDrillDownController *)self RATModeForSpecifier:v10]];
            [v10 setIdentifier:v11];
          }

          else
          {
            [v10 setIdentifier:@"RATGroupSpecifierKey"];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureSpecifiers
{
  [(PSUIVoiceAndDataDrillDownController *)self configure5GRATModeSpecifiersEnabledState];

  [(PSUIVoiceAndDataDrillDownController *)self setRATGroupFooterText];
}

- (void)setRATGroupFooterText
{
  v3 = [(PSUIVoiceAndDataDrillDownController *)self specifierForID:@"RATGroupSpecifierKey"];
  if (v3)
  {
    v26 = v3;
    v4 = *MEMORY[0x277D3FD20];
    v5 = [*(&self->super.super.super.super.super.super.isa + v4) propertyForKey:0x287735978];
    bOOLValue = [v5 BOOLValue];

    shouldShowFooterTextWithVoiceExplanation = [(PSUIVoiceAndDataDrillDownController *)self shouldShowFooterTextWithVoiceExplanation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"RAT_TEXT_LTE_AS_4G";
    if (shouldShowFooterTextWithVoiceExplanation)
    {
      v10 = @"RAT_TEXT_LTE_AS_4G_AND_VOICE";
    }

    v11 = @"RAT_TEXT_LTE_AND_VOICE";
    if (!shouldShowFooterTextWithVoiceExplanation)
    {
      v11 = @"RAT_TEXT_LTE";
    }

    if (bOOLValue)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v8 localizedStringForKey:v12 value:&stru_287733598 table:@"Cellular"];

    v14 = [*(&self->super.super.super.super.super.super.isa + v4) propertyForKey:@"Supports5G"];
    bOOLValue2 = [v14 BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_23;
    }

    if ([(PSUIVoiceAndDataDrillDownController *)self shouldEnable5GRATModeSpecifiers])
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"RAT_DRILLDOWN_SELECTION_EXPLANATION" value:&stru_287733598 table:@"Aries"];

      if ([(PSUIVoiceAndDataDrillDownController *)self shouldShow5GSABatteryLifeReliabilityWarning])
      {
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"5G_SA_BATTERY_LIFE_RELIABILITY_WARNING_FOOTER";
      }

      else
      {
        if (![(PSUIVoiceAndDataDrillDownController *)self shouldShow5GReliabilityWarning])
        {
          v13 = v17;
          goto LABEL_23;
        }

        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"5G_RELIABILITY_WARNING_FOOTER";
      }

      v13 = [v18 localizedStringForKey:v20 value:&stru_287733598 table:@"Aries"];
      v25 = [v17 stringByAppendingString:v13];
    }

    else
    {
      v21 = [(PSUI5GStandaloneCache *)self->_saCache getNSADisableStatusReasonMaskForContext:self->_subscriptionContext];
      if ((v21 & 2) != 0)
      {
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v23;
        v24 = @"RAT_DRILLDOWN_SELECTION_EXPLANATION_DUAL_SIM_OUTSIDE_CHINA";
      }

      else
      {
        if ((v21 & 0x80000000) == 0)
        {
LABEL_23:
          [v26 setProperty:v13 forKey:*MEMORY[0x277D3FF88]];

          v3 = v26;
          goto LABEL_24;
        }

        v22 = [(PSUI5GStandaloneCache *)self->_saCache getSADisableStatusReasonMaskForContext:self->_subscriptionContext];
        if ((v22 & 0x40008) != 0)
        {
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v23;
          v24 = @"5G_RAT_MODE_DISABLED";
        }

        else if ((v22 & 0x10000) != 0)
        {
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v23;
          v24 = @"5G_RAT_MODE_DISABLED_LPM";
        }

        else
        {
          if ((v22 & 2) == 0)
          {
            goto LABEL_23;
          }

          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v23;
          v24 = @"5G_RAT_MODE_DISABLED_MSIM";
        }
      }

      v25 = [v23 localizedStringForKey:v24 value:&stru_287733598 table:@"Aries"];
    }

    v13 = v25;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)configure5GRATModeSpecifiersEnabledState
{
  v3 = [(PSUIVoiceAndDataDrillDownController *)self identifierForRATMode:4];
  v4 = [(PSUIVoiceAndDataDrillDownController *)self specifierForID:v3];
  [(PSUIVoiceAndDataDrillDownController *)self set5GRATModeSpecifierEnabledState:v4];

  v6 = [(PSUIVoiceAndDataDrillDownController *)self identifierForRATMode:5];
  v5 = [(PSUIVoiceAndDataDrillDownController *)self specifierForID:v6];
  [(PSUIVoiceAndDataDrillDownController *)self set5GRATModeSpecifierEnabledState:v5];
}

- (void)set5GRATModeSpecifierEnabledState:(id)state
{
  if (state)
  {
    v4 = MEMORY[0x277CCABB0];
    stateCopy = state;
    v6 = [v4 numberWithBool:{-[PSUIVoiceAndDataDrillDownController shouldEnable5GRATModeSpecifiers](self, "shouldEnable5GRATModeSpecifiers")}];
    [stateCopy setProperty:v6 forKey:*MEMORY[0x277D3FF38]];
  }
}

- (void)updateCurrentRATModeFromSpecifier:(id)specifier
{
  performGetter = [specifier performGetter];
  self->_currentRATMode = [performGetter unsignedIntValue];
}

- (id)getSwitchSpecifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  shouldShowVoLTESwitch = [(PSUIVoiceAndDataDrillDownController *)self shouldShowVoLTESwitch];
  v5 = MEMORY[0x277D3FD20];
  if (shouldShowVoLTESwitch)
  {
    getLogger = [(PSUIVoiceAndDataDrillDownController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315138;
      v25 = "[PSUIVoiceAndDataDrillDownController getSwitchSpecifiers]";
      _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "%s showing VoLTE switch", &v24, 0xCu);
    }

    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"VoLTESwitchGroupSpecifierKey"];
    [v3 addObject:v7];
    v8 = [(PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory *)self->_switchFactory createVoLTESwitchSpecifierWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.super.isa + *v5)];
    [v8 setIdentifier:@"VoLTESwitchSpecifierKey"];
    [v3 addObject:v8];
    groupFooterText = [v8 groupFooterText];
    if (groupFooterText)
    {
      [v7 setProperty:groupFooterText forKey:*MEMORY[0x277D3FF88]];
    }
  }

  if ([(PSUIVoiceAndDataDrillDownController *)self shouldShow5GSASwitch])
  {
    getLogger2 = [(PSUIVoiceAndDataDrillDownController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315138;
      v25 = "[PSUIVoiceAndDataDrillDownController getSwitchSpecifiers]";
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "%s showing 5G SA switch", &v24, 0xCu);
    }

    v11 = [(PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory *)self->_switchFactory create5GSASwitchSpecifierWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.super.isa + *v5)];
    [v11 setIdentifier:@"SASwitchSpecifierKey"];
    v12 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SASwitchGroupSpecifierKey"];
    [v3 addObject:v12];
    [v3 addObject:v11];
    groupFooterText2 = [v11 groupFooterText];
    if (groupFooterText2)
    {
      [v12 setProperty:groupFooterText2 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  if ([(PSUIVoiceAndDataDrillDownController *)self shouldShowVoNRSwitch])
  {
    getLogger3 = [(PSUIVoiceAndDataDrillDownController *)self getLogger];
    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315138;
      v25 = "[PSUIVoiceAndDataDrillDownController getSwitchSpecifiers]";
      _os_log_debug_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEBUG, "%s showing VoNR switch", &v24, 0xCu);
    }

    v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"VoNRSwitchGroupSpecifierKey"];
    [v3 addObject:v15];
    v16 = [(PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory *)self->_switchFactory createVoNRSwitchSpecifierWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.super.isa + *v5)];
    [v16 setIdentifier:@"VoNRSwitchSpecifierKey"];
    [v3 addObject:v16];
    groupFooterText3 = [v16 groupFooterText];
    if (groupFooterText3)
    {
      [v15 setProperty:groupFooterText3 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  if ([PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldShow2GSwitchForSubscriptionContext:self->_subscriptionContext])
  {
    getLogger4 = [(PSUIVoiceAndDataDrillDownController *)self getLogger];
    if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315138;
      v25 = "[PSUIVoiceAndDataDrillDownController getSwitchSpecifiers]";
      _os_log_debug_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEBUG, "%s showing 2G switch", &v24, 0xCu);
    }

    v19 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"2GSwitchGroupSpecifierKey"];
    [v3 addObject:v19];
    v20 = [(PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory *)self->_switchFactory create2GSwitchSpecifierWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.super.isa + *v5)];
    [v3 addObject:v20];
    groupFooterText4 = [v20 groupFooterText];
    if (groupFooterText4)
    {
      [v19 setProperty:groupFooterText4 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)shouldShow5GSABatteryLifeReliabilityWarning
{
  if ([(PSUIVoiceAndDataDrillDownController *)self shouldShow5GSASwitch]|| self->_currentRATMode < 4u)
  {
    return 0;
  }

  else
  {
    return ![(PSUICoreTelephonyCarrierBundleCache *)self->_cbCache is5GSAEnabledByDefault:self->_subscriptionContext];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(PSUIVoiceAndDataDrillDownController *)self specifierAtIndexPath:path];
  identifier = [v7 identifier];

  if (identifier == @"VoLTESwitchSpecifierKey")
  {
    [v7 addSpinnerIfNeededToCell:cellCopy];
  }
}

- (int)RATModeForSpecifier:(id)specifier
{
  values = [specifier values];
  firstObject = [values firstObject];
  unsignedIntValue = [firstObject unsignedIntValue];

  return unsignedIntValue;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(PSUIVoiceAndDataDrillDownController *)self indexForIndexPath:selectedCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(PSUIVoiceAndDataDrillDownController *)self specifierAtIndex:v5];
    if ([v6 isRATModeSpecifier])
    {
      v7.receiver = self;
      v7.super_class = PSUIVoiceAndDataDrillDownController;
      [(PSListItemsController *)&v7 listItemSelected:selectedCopy];
    }
  }
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PSUIVoiceAndDataDrillDownController_context_capabilitiesChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)handleMaxDataRateChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PSUIVoiceAndDataDrillDownController_handleMaxDataRateChanged__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)airplaneModeChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PSUIVoiceAndDataDrillDownController_airplaneModeChanged__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__PSUIVoiceAndDataDrillDownController_airplaneModeChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)nrDisableStatusChanged:(id)changed status:(id)status
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PSUIVoiceAndDataDrillDownController_nrDisableStatusChanged_status___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end