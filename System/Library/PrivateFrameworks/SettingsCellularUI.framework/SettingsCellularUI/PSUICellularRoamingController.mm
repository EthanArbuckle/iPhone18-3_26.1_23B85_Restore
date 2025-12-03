@interface PSUICellularRoamingController
- (PSUICellularRoamingController)init;
- (id)_voiceRoamingFooterTextWithVoiceRoamingOn:(BOOL)on;
- (id)cdmaRoamingSpecifiers;
- (id)dataRoamingSpecifiers;
- (id)getCDMARoamingStatus:(id)status;
- (id)getDataRoamingStatus:(id)status;
- (id)getDataRoamingStatusForService:(id)service specifier:(id)specifier;
- (id)getVoiceRoamingStatus:(id)status;
- (id)specifiers;
- (void)cellularPlanChangedNotification:(id)notification;
- (void)dealloc;
- (void)newCarrierNotification;
- (void)reloadRoamingStatus;
- (void)roamingOptionsDidChange;
- (void)setCDMARoamingEnabled:(id)enabled specifier:(id)specifier;
- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier;
- (void)setVoiceRoamingEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation PSUICellularRoamingController

- (PSUICellularRoamingController)init
{
  v9.receiver = self;
  v9.super_class = PSUICellularRoamingController;
  v2 = [(PSUICellularRoamingController *)&v9 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"cellular_roaming_controller"];
    v2->_serverConnection = _CTServerConnectionCreateOnTargetQueue();

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_newCarrierNotification name:@"PSNewCarrierNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_cellularPlanChangedNotification_ name:@"PSUICellularPlanChanged" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_reloadRoamingStatus name:0x287739418 object:0];
  }

  return v2;
}

- (void)dealloc
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    CFRelease(serverConnection);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PSUICellularRoamingController;
  [(PSUICellularRoamingController *)&v5 dealloc];
}

- (id)dataRoamingSpecifiers
{
  v3 = PSDataRoamingSpecifiers(self);
  v4 = [v3 specifierForID:@"DATA_ROAMING"];
  dataRoamingSpecifier = self->_dataRoamingSpecifier;
  self->_dataRoamingSpecifier = v4;

  return v3;
}

- (id)cdmaRoamingSpecifiers
{
  v3 = PSCDMARoamingSpecifiers(self);
  lastObject = [v3 lastObject];
  cdmaRoamingSpecifier = self->_cdmaRoamingSpecifier;
  self->_cdmaRoamingSpecifier = lastObject;

  return v3;
}

- (id)_voiceRoamingFooterTextWithVoiceRoamingOn:(BOOL)on
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (on)
  {
    v5 = @"VOICE_ROAMING_ON_EXPLANATION";
  }

  else if (PSShouldIncludeMMSFooterNote())
  {
    v5 = @"VOICE_AND_DATA_ROAMING_OFF_EXPLANATION_MMS";
  }

  else
  {
    v5 = @"VOICE_AND_DATA_ROAMING_OFF_EXPLANATION";
  }

  v6 = [v4 localizedStringForKey:v5 value:&stru_287733598 table:@"Cellular"];

  return v6;
}

- (id)specifiers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    voiceRoamingSpecifier = self->_voiceRoamingSpecifier;
    self->_voiceRoamingSpecifier = 0;

    dataRoamingSpecifier = self->_dataRoamingSpecifier;
    self->_dataRoamingSpecifier = 0;

    cdmaRoamingSpecifier = self->_cdmaRoamingSpecifier;
    self->_cdmaRoamingSpecifier = 0;

    v9 = +[PSUICoreTelephonyDataCache sharedInstance];
    isCellularDataEnabled = [v9 isCellularDataEnabled];

    v11 = PSIsVoiceRoamingOptionAvailable();
    v12 = PSIsVoiceRoamingEnabled();
    if (v11)
    {
      getLogger = [(PSUICellularRoamingController *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v29 = "[PSUICellularRoamingController specifiers]";
        _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "%s voice roaming is available", buf, 0xCu);
      }

      v14 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      [v14 setProperty:@"VOICE_ROAMING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v15 = [(PSUICellularRoamingController *)self _voiceRoamingFooterTextWithVoiceRoamingOn:v12];
      [v14 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v14];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      if (v12 & 1 | ((isCellularDataEnabled & 1) == 0))
      {
        v18 = @"VOICE_ROAMING_TOGGLE";
      }

      else
      {
        v18 = @"VOICE_DATA_ROAMING_TOGGLE";
      }

      v19 = [v16 localizedStringForKey:v18 value:&stru_287733598 table:@"Cellular"];

      v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v19 target:self set:sel_setVoiceRoamingEnabled_specifier_ get:sel_getVoiceRoamingStatus_ detail:0 cell:6 edit:0];
      v21 = self->_voiceRoamingSpecifier;
      self->_voiceRoamingSpecifier = v20;

      [v5 addObject:self->_voiceRoamingSpecifier];
    }

    if (v12)
    {
      getLogger2 = [(PSUICellularRoamingController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v29 = "[PSUICellularRoamingController specifiers]";
        _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "%s voice roaming is enabled", buf, 0xCu);
      }

      if (isCellularDataEnabled)
      {
        dataRoamingSpecifiers = [(PSUICellularRoamingController *)self dataRoamingSpecifiers];
        [v5 addObjectsFromArray:dataRoamingSpecifiers];
      }

      if (PSIsCDMARoamingOptionAvailable())
      {
        cdmaRoamingSpecifiers = [(PSUICellularRoamingController *)self cdmaRoamingSpecifiers];
        [v5 addObjectsFromArray:cdmaRoamingSpecifiers];
      }
    }

    [MEMORY[0x277D4D878] logSpecifiers:v5 origin:@"[PSUICellularRoamingController specifiers] end"];
    v25 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)newCarrierNotification
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularRoamingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[PSUICellularRoamingController newCarrierNotification]";
    v8 = 2112;
    v9 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSUICellularRoamingController_newCarrierNotification__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cellularPlanChangedNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularRoamingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PSUICellularRoamingController cellularPlanChangedNotification:]";
    v9 = 2112;
    v10 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PSUICellularRoamingController_cellularPlanChangedNotification___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reloadRoamingStatus
{
  v3 = +[PSUICoreTelephonyDataCache sharedInstance];
  isCellularDataEnabled = [v3 isCellularDataEnabled];
  v5 = MEMORY[0x277D3FC48];
  if (isCellularDataEnabled)
  {
    v6 = PSIsVoiceRoamingEnabled();
    v7 = [*(&self->super.super.super.super.super.isa + *v5) containsObject:self->_dataRoamingSpecifier];

    if (v6 != v7)
    {

      [(PSUICellularRoamingController *)self reloadSpecifiers];
      return;
    }
  }

  else
  {
  }

  if (self->_voiceRoamingSpecifier && [*(&self->super.super.super.super.super.isa + *v5) containsObject:?])
  {
    [(PSUICellularRoamingController *)self reloadSpecifier:self->_voiceRoamingSpecifier animated:1];
  }

  if (self->_dataRoamingSpecifier && [*(&self->super.super.super.super.super.isa + *v5) containsObject:?])
  {
    [(PSUICellularRoamingController *)self reloadSpecifier:self->_dataRoamingSpecifier animated:1];
  }

  if (self->_cdmaRoamingSpecifier && [*(&self->super.super.super.super.super.isa + *v5) containsObject:?])
  {
    cdmaRoamingSpecifier = self->_cdmaRoamingSpecifier;

    [(PSUICellularRoamingController *)self reloadSpecifier:cdmaRoamingSpecifier animated:1];
  }
}

- (void)setVoiceRoamingEnabled:(id)enabled specifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularRoamingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"disabled";
    if (bOOLValue)
    {
      v8 = @"enabled";
    }

    v29 = 136315394;
    v30 = "[PSUICellularRoamingController setVoiceRoamingEnabled:specifier:]";
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting voice roaming = %@", &v29, 0x16u);
  }

  bOOLValue2 = [enabledCopy BOOLValue];
  if (bOOLValue2 == PSIsVoiceRoamingEnabled())
  {
    getLogger2 = [(PSUICellularRoamingController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      v29 = 67109120;
      LODWORD(v30) = bOOLValue2;
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Voice roaming is already set to: %d", &v29, 8u);
    }
  }

  else
  {
    [(PSUICellularRoamingController *)self beginUpdates];
    PSSetVoiceRoamingEnabled();
    while (bOOLValue2 != PSIsVoiceRoamingEnabled())
    {
      getLogger3 = [(PSUICellularRoamingController *)self getLogger];
      if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "CoreTelephony has not saved the voice roaming state (see 12172800)", &v29, 2u);
      }
    }

    getLogger2 = [(PSUICellularRoamingController *)self specifierForID:@"VOICE_ROAMING_GROUP"];
    v12 = [(PSUICellularRoamingController *)self _voiceRoamingFooterTextWithVoiceRoamingOn:bOOLValue2];
    [getLogger2 setProperty:v12 forKey:*MEMORY[0x277D3FF88]];

    [(PSUICellularRoamingController *)self reloadSpecifier:getLogger2 animated:1];
    getLogger4 = [(PSUICellularRoamingController *)self getLogger];
    v14 = os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEBUG);
    if (bOOLValue2)
    {
      if (v14)
      {
        LOWORD(v29) = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEBUG, "Enabling voice roaming", &v29, 2u);
      }

      voiceRoamingSpecifier = self->_voiceRoamingSpecifier;
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"VOICE_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)voiceRoamingSpecifier setName:v17];

      array = [MEMORY[0x277CBEB18] array];
      v19 = +[PSUICoreTelephonyDataCache sharedInstance];
      LODWORD(v17) = [v19 isCellularDataEnabled];

      if (v17)
      {
        dataRoamingSpecifiers = [(PSUICellularRoamingController *)self dataRoamingSpecifiers];
        [array addObjectsFromArray:dataRoamingSpecifiers];
      }

      if (PSIsCDMARoamingOptionAvailable())
      {
        cdmaRoamingSpecifiers = [(PSUICellularRoamingController *)self cdmaRoamingSpecifiers];
        [array addObjectsFromArray:cdmaRoamingSpecifiers];
      }

      if ([array count])
      {
        [(PSUICellularRoamingController *)self insertContiguousSpecifiers:array afterSpecifier:self->_voiceRoamingSpecifier animated:1];
      }
    }

    else
    {
      if (v14)
      {
        LOWORD(v29) = 0;
        _os_log_debug_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEBUG, "Disabling voice roaming", &v29, 2u);
      }

      v22 = +[PSUICoreTelephonyDataCache sharedInstance];
      isCellularDataEnabled = [v22 isCellularDataEnabled];

      if (isCellularDataEnabled)
      {
        v24 = self->_voiceRoamingSpecifier;
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"VOICE_DATA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
        [(PSSpecifier *)v24 setName:v26];
      }

      v27 = [(PSUICellularRoamingController *)self indexOfSpecifier:self->_voiceRoamingSpecifier]+ 1;
      array = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v27, objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - v27}];
      [(PSUICellularRoamingController *)self removeContiguousSpecifiers:array animated:1];
    }

    [(PSUICellularRoamingController *)self endUpdates];
    [(PSUICellularRoamingController *)self roamingOptionsDidChange];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)getVoiceRoamingStatus:(id)status
{
  v3 = MEMORY[0x277CCABB0];
  v4 = PSIsVoiceRoamingEnabled();

  return [v3 numberWithBool:v4];
}

- (id)getDataRoamingStatus:(id)status
{
  v3 = MEMORY[0x277CCABB0];
  v4 = PSIsDataRoamingEnabled();

  return [v3 numberWithBool:v4];
}

- (id)getDataRoamingStatusForService:(id)service specifier:(id)specifier
{
  v4 = MEMORY[0x277CCABB0];
  v5 = PSIsDataRoamingEnabledForService(service);

  return [v4 numberWithBool:v5];
}

- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularRoamingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"disabled";
    if (bOOLValue)
    {
      v8 = @"enabled";
    }

    v10 = 136315394;
    v11 = "[PSUICellularRoamingController setDataRoamingEnabled:specifier:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting data roaming = %@", &v10, 0x16u);
  }

  PSSetDataRoamingEnabled([enabledCopy BOOLValue]);
  [(PSUICellularRoamingController *)self roamingOptionsDidChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCDMARoamingEnabled:(id)enabled specifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularRoamingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"disabled";
    if (bOOLValue)
    {
      v8 = @"enabled";
    }

    v10 = 136315394;
    v11 = "[PSUICellularRoamingController setCDMARoamingEnabled:specifier:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting CDMA roaming = %@", &v10, 0x16u);
  }

  [enabledCopy BOOLValue];
  PSSetCDMARoamingEnabled();
  [(PSUICellularRoamingController *)self roamingOptionsDidChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getCDMARoamingStatus:(id)status
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  selectedPlanItem = [v4 selectedPlanItem];
  [selectedPlanItem isBackedByCellularPlan];

  serverConnection = self->_serverConnection;
  CDMAInternationalRoaming = _CTServerConnectionGetCDMAInternationalRoaming();
  v8 = HIDWORD(CDMAInternationalRoaming);
  if (HIDWORD(CDMAInternationalRoaming))
  {
    v10 = CDMAInternationalRoaming;
    getLogger = [(PSUICellularRoamingController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v15 = v10;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to get CDMAInternationalRoaming setting with error %i:%i", buf, 0xEu);
    }

    v9 = MEMORY[0x277CBEC28];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)roamingOptionsDidChange
{
  v3 = *MEMORY[0x277D3FD08];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v3));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v3));
    [v4 roamingOptionsDidChange];
  }
}

@end