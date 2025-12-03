@interface PSUISatelliteSubgroup
- (PSUISatelliteSubgroup)initWithHostController:(id)controller context:(id)context planReference:(id)reference mode:(unint64_t)mode;
- (PSUISatelliteSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)getLogger;
- (id)getSatelliteEnabled:(id)enabled;
- (id)getSatelliteEnabledString:(id)string;
- (id)specifiers;
- (void)checkLocationServicesSatelliteAuthorization;
- (void)setGroupFooterText;
- (void)setSatelliteEnabled:(id)enabled specifier:(id)specifier;
- (void)setUpGroupSpecifierIfRequired;
- (void)setUpSatelliteSpecifierIfRequired;
- (void)turnOnLocationServicesPressed:(id)pressed;
@end

@implementation PSUISatelliteSubgroup

- (PSUISatelliteSubgroup)initWithHostController:(id)controller context:(id)context planReference:(id)reference mode:(unint64_t)mode
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  contextCopy = context;
  referenceCopy = reference;
  v22.receiver = self;
  v22.super_class = PSUISatelliteSubgroup;
  v13 = [(PSUISatelliteSubgroup *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_hostController, controllerCopy);
    objc_storeStrong(&v14->_subscriptionContext, context);
    v15 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v14->_subscriptionContext];
    serviceDescriptor = v14->_serviceDescriptor;
    v14->_serviceDescriptor = v15;

    objc_storeStrong(&v14->_planReference, reference);
    v14->_mode = mode;
    getLogger = [(PSUISatelliteSubgroup *)v14 getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PSUISatelliteSubgroup *)v14 getSatelliteEnabledString:0];
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Is satellite enabled: %@", buf, 0xCu);
    }

    v19 = v14;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PSUISatelliteSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)checkLocationServicesSatelliteAuthorization
{
  v24 = *MEMORY[0x277D85DE8];
  self->_shouldDisable = 0;
  locationServicesURL = self->_locationServicesURL;
  self->_locationServicesURL = 0;

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = getCLCopyAppsUsingLocationSymbolLoc_ptr;
  v19 = getCLCopyAppsUsingLocationSymbolLoc_ptr;
  if (!getCLCopyAppsUsingLocationSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v21 = __getCLCopyAppsUsingLocationSymbolLoc_block_invoke;
    v22 = &unk_279BA9F68;
    v23 = &v16;
    v5 = CoreLocationLibrary();
    v6 = dlsym(v5, "CLCopyAppsUsingLocation");
    *(v23[1] + 24) = v6;
    getCLCopyAppsUsingLocationSymbolLoc_ptr = *(v23[1] + 24);
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v7 = v4();
  v8 = [v7 objectForKey:@"/System/Library/Frameworks/CoreTelephony.framework"];
  locationServicesEnabled = [getCLLocationManagerClass() locationServicesEnabled];
  if (([getCLLocationManagerClass() entityAuthorizationForLocationDictionary:v8] & 6) != 0)
  {
    v10 = locationServicesEnabled;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0)
  {
    self->_shouldDisable = 1;
    v11 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION";
    v12 = self->_locationServicesURL;
    if (locationServicesEnabled)
    {
      v11 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION/SYSTEM_SERVICES";
    }

    self->_locationServicesURL = &v11->isa;
  }

  getLogger = [(PSUISatelliteSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldDisable];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Disable satellite specifier due to location services: %@", &buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setUpGroupSpecifierIfRequired
{
  if (!self->_groupSpecifier)
  {
    v4 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v4;

    v6 = self->_groupSpecifier;

    [(PSSpecifier *)v6 setIdentifier:@"SatelliteGroup"];
  }
}

- (void)setUpSatelliteSpecifierIfRequired
{
  if (!self->_satelliteSpecifier)
  {
    mode = self->_mode;
    if (mode - 2 < 2)
    {
      v10 = MEMORY[0x277D3FAD8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"SATELLITE_SWITCH_NAME" value:&stru_287733598 table:@"Satellite"];
      v13 = [v10 preferenceSpecifierNamed:v12 target:self set:sel_setSatelliteEnabled_specifier_ get:sel_getSatelliteEnabled_ detail:0 cell:6 edit:0];
      satelliteSpecifier = self->_satelliteSpecifier;
      self->_satelliteSpecifier = v13;

      v9 = @"SatelliteSwitch";
    }

    else
    {
      if (mode > 1)
      {
        return;
      }

      v4 = MEMORY[0x277D3FAD8];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"SATELLITE_SWITCH_NAME" value:&stru_287733598 table:@"Satellite"];
      v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:sel_getSatelliteEnabledString_ detail:objc_opt_class() cell:2 edit:0];
      v8 = self->_satelliteSpecifier;
      self->_satelliteSpecifier = v7;

      [(PSSpecifier *)self->_satelliteSpecifier setProperty:&unk_287748FF0 forKey:*MEMORY[0x277D4D898]];
      [(PSSpecifier *)self->_satelliteSpecifier setProperty:self->_subscriptionContext forKey:*MEMORY[0x277D40128]];
      [(PSSpecifier *)self->_satelliteSpecifier setProperty:self->_planReference forKey:*MEMORY[0x277D3FE70]];
      v9 = @"SatelliteLink";
    }

    v15 = self->_satelliteSpecifier;

    [(PSSpecifier *)v15 setIdentifier:v9];
  }
}

- (void)setGroupFooterText
{
  if (self->_mode)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v3 localizedStringForKey:@"SATELLITE_SWITCH_FOOTER" value:&stru_287733598 table:@"Satellite"];

    if (self->_mode == 3 && +[SettingsCellularUtils satelliteDataPlanTierRequiresUsageFooter])
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"SATELLITE_USAGE_FOOTER" value:&stru_287733598 table:@"Satellite"];

      if (v5)
      {
        v6 = @"\n\n%@";
        v7 = [v25 stringByAppendingFormat:@"\n\n%@", v5];

        v25 = v7;
      }

      else
      {
        v6 = @" %@";
      }
    }

    else
    {
      v6 = @" %@";
    }

    if (self->_locationServicesURL)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_SATELLITE_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Satellite"];

      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_SATELLITE_FOOTER_%@" value:&stru_287733598 table:@"Satellite"];
      v13 = [v10 stringWithFormat:v12, v9];

      v14 = [v25 stringByAppendingFormat:v6, v13];

      groupSpecifier = self->_groupSpecifier;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [(PSSpecifier *)groupSpecifier setProperty:v17 forKey:*MEMORY[0x277D3FF48]];

      [(PSSpecifier *)self->_groupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF70]];
      v18 = self->_groupSpecifier;
      v27.location = [v14 rangeOfString:v9];
      v19 = NSStringFromRange(v27);
      [(PSSpecifier *)v18 setProperty:v19 forKey:*MEMORY[0x277D3FF58]];

      v20 = self->_groupSpecifier;
      v21 = [MEMORY[0x277CBEBC0] URLWithString:self->_locationServicesURL];
      [(PSSpecifier *)v20 setProperty:v21 forKey:*MEMORY[0x277D3FF78]];

      v22 = self->_groupSpecifier;
      v23 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [(PSSpecifier *)v22 setProperty:v23 forKey:*MEMORY[0x277D3FF68]];

      [(PSSpecifier *)self->_groupSpecifier setProperty:@"turnOnLocationServicesPressed:" forKey:*MEMORY[0x277D3FF50]];
      v24 = v14;
    }

    else
    {
      [(PSSpecifier *)self->_groupSpecifier setProperty:v25 forKey:*MEMORY[0x277D3FF88]];
      v24 = v25;
    }
  }
}

- (id)specifiers
{
  v9[2] = *MEMORY[0x277D85DE8];
  [(PSUISatelliteSubgroup *)self setUpGroupSpecifierIfRequired];
  [(PSUISatelliteSubgroup *)self setUpSatelliteSpecifierIfRequired];
  [(PSUISatelliteSubgroup *)self checkLocationServicesSatelliteAuthorization];
  [(PSUISatelliteSubgroup *)self setGroupFooterText];
  if (self->_mode >= 2)
  {
    satelliteSpecifier = self->_satelliteSpecifier;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:!self->_shouldDisable];
    [(PSSpecifier *)satelliteSpecifier setProperty:v4 forKey:*MEMORY[0x277D3FF38]];
  }

  v5 = self->_satelliteSpecifier;
  v9[0] = self->_groupSpecifier;
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getSatelliteEnabledString:(id)string
{
  v4 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v5 = [v4 getSatelliteCapability:self->_subscriptionContext];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = @"ON";
  }

  else
  {
    v8 = @"OFF";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Satellite"];

  return v9;
}

- (void)setSatelliteEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  subscriptionContext = self->_subscriptionContext;
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setSatelliteCapability:subscriptionContext enabled:bOOLValue];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained reloadSpecifier:self->_satelliteSpecifier];
}

- (id)getSatelliteEnabled:(id)enabled
{
  v4 = MEMORY[0x277CCABB0];
  v5 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v6 = [v4 numberWithBool:{objc_msgSend(v5, "getSatelliteCapability:", self->_subscriptionContext)}];

  return v6;
}

- (void)turnOnLocationServicesPressed:(id)pressed
{
  v12 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  getLogger = [(PSUISatelliteSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [pressedCopy URL];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "turnOnLocationServicesPressed: %@", &v10, 0xCu);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [pressedCopy URL];
  [defaultWorkspace openSensitiveURL:v8 withOptions:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  instance = [(CTServiceDescriptor *)self->_serviceDescriptor instance];
  stringValue = [instance stringValue];
  v5 = [v2 loggerWithCategory:@"SAT" instance:stringValue];

  return v5;
}

@end