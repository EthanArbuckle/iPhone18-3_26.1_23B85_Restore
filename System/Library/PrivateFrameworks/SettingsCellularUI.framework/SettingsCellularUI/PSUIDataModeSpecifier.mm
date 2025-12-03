@interface PSUIDataModeSpecifier
- (BOOL)isHighDataModeSupported;
- (BOOL)isLowDataModeSupported;
- (PSUIDataModeSpecifier)initWithCTClient:(id)client hostController:(id)controller parentSpecifier:(id)specifier;
- (id)dataModeFromNumber:(id)number;
- (id)getDataMode:(id)mode;
- (id)getLogger;
- (id)interfaceCostFromBool:(BOOL)bool;
- (id)isInterfaceCostExpensive:(id)expensive;
- (id)isLowDataModeEnabled:(id)enabled;
- (id)lowDataModeFromBool:(BOOL)bool;
- (id)lowDataModeGroupSpecifier;
- (void)populateDrillDownSpecifiers;
- (void)prepareDataModeDrillDown;
- (void)prepareLowDataModeSwitch;
- (void)setDataMode:(id)mode specifier:(id)specifier;
- (void)setFooterText;
- (void)setInterfaceCostExpensive:(id)expensive specifier:(id)specifier;
- (void)setLowDataMode:(id)mode specifier:(id)specifier;
@end

@implementation PSUIDataModeSpecifier

- (PSUIDataModeSpecifier)initWithCTClient:(id)client hostController:(id)controller parentSpecifier:(id)specifier
{
  clientCopy = client;
  controllerCopy = controller;
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = PSUIDataModeSpecifier;
  v12 = [(PSUIDataModeSpecifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(PSUIDataModeSpecifier *)v12 setTarget:v12];
    objc_storeStrong(&v13->_ctClient, client);
    objc_storeWeak(&v13->_hostController, controllerCopy);
    v14 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v13->_subscriptionContext;
    v13->_subscriptionContext = v14;

    v16 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v13->_subscriptionContext];
    serviceDescriptor = v13->_serviceDescriptor;
    v13->_serviceDescriptor = v16;

    if ([(PSUIDataModeSpecifier *)v13 isHighDataModeSupported])
    {
      v13->_showDataMode = 2;
      [(PSUIDataModeSpecifier *)v13 prepareDataModeDrillDown];
    }

    else if ([(PSUIDataModeSpecifier *)v13 isLowDataModeSupported])
    {
      v13->_showDataMode = 1;
      [(PSUIDataModeSpecifier *)v13 prepareLowDataModeSwitch];
    }

    else
    {
      v13->_showDataMode = 0;
    }
  }

  return v13;
}

- (void)prepareLowDataModeSwitch
{
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Low data mode switch will be shown", v6, 2u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LOW_DATA_MODE" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(PSUIDataModeSpecifier *)self setName:v5];

  [(PSUIDataModeSpecifier *)self setCellType:6];
  [(PSUIDataModeSpecifier *)self setDetailControllerClass:0];
  [(PSUIDataModeSpecifier *)self setIdentifier:@"LOW_DATA_MODE"];
  *(&self->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_isLowDataModeEnabled_;
  *(&self->super.super.isa + *MEMORY[0x277D3FCB0]) = sel_setLowDataMode_specifier_;
}

- (void)prepareDataModeDrillDown
{
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Data mode drill down specifier will be shown", v6, 2u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DATA_MODE" value:&stru_287733598 table:@"Aries"];
  [(PSUIDataModeSpecifier *)self setName:v5];

  [(PSUIDataModeSpecifier *)self setCellType:2];
  [(PSUIDataModeSpecifier *)self setDetailControllerClass:objc_opt_class()];
  *(&self->super.super.isa + *MEMORY[0x277D3FCB0]) = sel_setDataMode_specifier_;
  *(&self->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_getDataMode_;
  [(PSUIDataModeSpecifier *)self populateDrillDownSpecifiers];
  [(PSUIDataModeSpecifier *)self setFooterText];
}

- (void)setFooterText
{
  v13 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (sf_isChinaRegionCellularDevice)
  {
    v7 = @"5G_DATA_MODE_FOOTER_WLAN";
  }

  else
  {
    v7 = @"5G_DATA_MODE_FOOTER_WIFI";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Aries"];

  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Adding Footer Text: %@", &v11, 0xCu);
  }

  [(PSUIDataModeSpecifier *)self setProperty:v8 forKey:*MEMORY[0x277D40118]];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)populateDrillDownSpecifiers
{
  v16[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DATA_MODE_HIGH" value:&stru_287733598 table:@"Aries"];
  v16[0] = v6;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DATA_MODE_STANDARD" value:&stru_287733598 table:@"Aries"];
  v16[1] = v8;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DATA_MODE_LOW" value:&stru_287733598 table:@"Aries"];
  v16[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [array addObjectsFromArray:v11];

  [array2 addObjectsFromArray:&unk_287749320];
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = array;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Adding Data Modes : %@", &v14, 0xCu);
  }

  [(PSUIDataModeSpecifier *)self setValues:array2 titles:array shortTitles:array];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isHighDataModeSupported
{
  v15 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)ctClient isHighDataModeSupported:serviceDescriptor error:&v12];
  v6 = v12;
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v8 = getLogger;
  if (v6)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to get high data mode support state with error: %@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Not supported";
    if (v5)
    {
      v9 = @"Supported";
    }

    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully retrieved high data mode support value : %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isLowDataModeSupported
{
  v3 = +[PSUICoreTelephonyDataCache sharedInstance];
  LOBYTE(self) = [v3 isPrivateNetworkSIM:self->_serviceDescriptor];

  return self ^ 1;
}

- (id)getDataMode:(id)mode
{
  modeCopy = mode;
  v5 = [(PSUIDataModeSpecifier *)self isLowDataModeEnabled:modeCopy];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    getLogger = [(PSUIDataModeSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data mode is: Low", buf, 2u);
    }

    v8 = &unk_287749200;
  }

  else
  {
    v9 = [(PSUIDataModeSpecifier *)self isInterfaceCostExpensive:modeCopy];
    bOOLValue2 = [v9 BOOLValue];

    getLogger = [(PSUIDataModeSpecifier *)self getLogger];
    v11 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue2)
    {
      if (v11)
      {
        *v14 = 0;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data mode is: Normal", v14, 2u);
      }

      v8 = &unk_2877491E8;
    }

    else
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data mode is: High", v13, 2u);
      }

      v8 = &unk_2877491D0;
    }
  }

  return v8;
}

- (void)setDataMode:(id)mode specifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  specifierCopy = specifier;
  v8 = [(PSUIDataModeSpecifier *)self getDataMode:specifierCopy];
  v9 = [modeCopy isEqualToNumber:v8];
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v11 = getLogger;
  if (v9)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:modeCopy];
      v21 = 138412290;
      v22 = v20;
      _os_log_debug_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEBUG, "Data mode is already set to the requested state: %@", &v21, 0xCu);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:v8];
    v13 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:modeCopy];
    v21 = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Changing data mode %@ -> %@", &v21, 0x16u);
  }

  intValue = [modeCopy intValue];
  switch(intValue)
  {
    case 1:
      v15 = MEMORY[0x277CBEC38];
      goto LABEL_13;
    case 2:
      [(PSUIDataModeSpecifier *)self setInterfaceCostExpensive:MEMORY[0x277CBEC38] specifier:specifierCopy];
      v16 = MEMORY[0x277CBEC28];
      selfCopy2 = self;
LABEL_14:
      [(PSUIDataModeSpecifier *)selfCopy2 setLowDataMode:v16 specifier:specifierCopy];
      goto LABEL_18;
    case 3:
      v15 = MEMORY[0x277CBEC28];
LABEL_13:
      [(PSUIDataModeSpecifier *)self setInterfaceCostExpensive:v15 specifier:specifierCopy];
      selfCopy2 = self;
      v16 = v15;
      goto LABEL_14;
  }

  getLogger2 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Setting data mode to an unknown value", &v21, 2u);
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)isLowDataModeEnabled:(id)enabled
{
  v17 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v14 = 0;
  v6 = [(CoreTelephonyClient *)ctClient lowDataMode:serviceDescriptor error:&v14];
  v7 = v14;
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = getLogger;
  if (v7)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to get low data mode state with error: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEC28];
  }

  else
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PSUIDataModeSpecifier *)self lowDataModeFromBool:v6];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Successfully retrieved low data mode state : %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setLowDataMode:(id)mode specifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  bOOLValue = [mode BOOLValue];
  v6 = [(CoreTelephonyClient *)self->_ctClient setLowDataMode:self->_serviceDescriptor enable:bOOLValue];
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v8 = getLogger;
  if (v6)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v9 = [(PSUIDataModeSpecifier *)self lowDataModeFromBool:bOOLValue];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to set low data mode to: %@ with error: %@", &v11, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PSUIDataModeSpecifier *)self lowDataModeFromBool:bOOLValue];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully set low data mode to: %@", &v11, 0xCu);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)lowDataModeGroupSpecifier
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DATA_MODE_FOOTER" value:&stru_287733598 table:@"Cellular"];
  [emptyGroupSpecifier setProperty:v4 forKey:*MEMORY[0x277D3FF88]];

  return emptyGroupSpecifier;
}

- (id)isInterfaceCostExpensive:(id)expensive
{
  v17 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v14 = 0;
  v6 = [(CoreTelephonyClient *)ctClient interfaceCostExpensive:serviceDescriptor error:&v14];
  v7 = v14;
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = getLogger;
  if (v7)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to get interface cost with error: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PSUIDataModeSpecifier *)self interfaceCostFromBool:v6];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Successfully retrieved interface cost: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setInterfaceCostExpensive:(id)expensive specifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  bOOLValue = [expensive BOOLValue];
  v6 = [(PSUIDataModeSpecifier *)self interfaceCostFromBool:bOOLValue];
  v7 = [(CoreTelephonyClient *)self->_ctClient setInterfaceCost:self->_serviceDescriptor expensive:bOOLValue];
  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = getLogger;
  if (v7)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to set interface cost to: %@ with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Successfully set interface cost to: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dataModeFromNumber:(id)number
{
  v4 = [number intValue] - 1;
  if (v4 < 3)
  {
    return off_279BAAD40[v4];
  }

  getLogger = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Unknown data mode value", v7, 2u);
  }

  return &stru_287733598;
}

- (id)lowDataModeFromBool:(BOOL)bool
{
  if (bool)
  {
    return @"ON";
  }

  else
  {
    return @"OFF";
  }
}

- (id)interfaceCostFromBool:(BOOL)bool
{
  if (bool)
  {
    return @"Expensive";
  }

  else
  {
    return @"Inexpensive";
  }
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  instance = [(CTServiceDescriptor *)self->_serviceDescriptor instance];
  stringValue = [instance stringValue];
  v5 = [v2 loggerWithCategory:@"LDM" instance:stringValue];

  return v5;
}

@end