@interface PSUIDataModeSpecifier
- (BOOL)isHighDataModeSupported;
- (BOOL)isLowDataModeSupported;
- (PSUIDataModeSpecifier)initWithCTClient:(id)a3 hostController:(id)a4 parentSpecifier:(id)a5;
- (id)dataModeFromNumber:(id)a3;
- (id)getDataMode:(id)a3;
- (id)getLogger;
- (id)interfaceCostFromBool:(BOOL)a3;
- (id)isInterfaceCostExpensive:(id)a3;
- (id)isLowDataModeEnabled:(id)a3;
- (id)lowDataModeFromBool:(BOOL)a3;
- (id)lowDataModeGroupSpecifier;
- (void)populateDrillDownSpecifiers;
- (void)prepareDataModeDrillDown;
- (void)prepareLowDataModeSwitch;
- (void)setDataMode:(id)a3 specifier:(id)a4;
- (void)setFooterText;
- (void)setInterfaceCostExpensive:(id)a3 specifier:(id)a4;
- (void)setLowDataMode:(id)a3 specifier:(id)a4;
@end

@implementation PSUIDataModeSpecifier

- (PSUIDataModeSpecifier)initWithCTClient:(id)a3 hostController:(id)a4 parentSpecifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PSUIDataModeSpecifier;
  v12 = [(PSUIDataModeSpecifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(PSUIDataModeSpecifier *)v12 setTarget:v12];
    objc_storeStrong(&v13->_ctClient, a3);
    objc_storeWeak(&v13->_hostController, v10);
    v14 = [v11 propertyForKey:*MEMORY[0x277D40128]];
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
  v3 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEBUG, "Low data mode switch will be shown", v6, 2u);
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
  v3 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEBUG, "Data mode drill down specifier will be shown", v6, 2u);
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"5G_DATA_MODE_FOOTER_WLAN";
  }

  else
  {
    v7 = @"5G_DATA_MODE_FOOTER_WIFI";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Aries"];

  v9 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_debug_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEBUG, "Adding Footer Text: %@", &v11, 0xCu);
  }

  [(PSUIDataModeSpecifier *)self setProperty:v8 forKey:*MEMORY[0x277D40118]];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)populateDrillDownSpecifiers
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
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
  [v3 addObjectsFromArray:v11];

  [v4 addObjectsFromArray:&unk_287749320];
  v12 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_debug_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEBUG, "Adding Data Modes : %@", &v14, 0xCu);
  }

  [(PSUIDataModeSpecifier *)self setValues:v4 titles:v3 shortTitles:v3];
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
  v7 = [(PSUIDataModeSpecifier *)self getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to get high data mode support state with error: %@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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

- (id)getDataMode:(id)a3
{
  v4 = a3;
  v5 = [(PSUIDataModeSpecifier *)self isLowDataModeEnabled:v4];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(PSUIDataModeSpecifier *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Data mode is: Low", buf, 2u);
    }

    v8 = &unk_287749200;
  }

  else
  {
    v9 = [(PSUIDataModeSpecifier *)self isInterfaceCostExpensive:v4];
    v10 = [v9 BOOLValue];

    v7 = [(PSUIDataModeSpecifier *)self getLogger];
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        *v14 = 0;
        _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Data mode is: Normal", v14, 2u);
      }

      v8 = &unk_2877491E8;
    }

    else
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Data mode is: High", v13, 2u);
      }

      v8 = &unk_2877491D0;
    }
  }

  return v8;
}

- (void)setDataMode:(id)a3 specifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUIDataModeSpecifier *)self getDataMode:v7];
  v9 = [v6 isEqualToNumber:v8];
  v10 = [(PSUIDataModeSpecifier *)self getLogger];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:v6];
      v21 = 138412290;
      v22 = v20;
      _os_log_debug_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEBUG, "Data mode is already set to the requested state: %@", &v21, 0xCu);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:v8];
    v13 = [(PSUIDataModeSpecifier *)self dataModeFromNumber:v6];
    v21 = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Changing data mode %@ -> %@", &v21, 0x16u);
  }

  v14 = [v6 intValue];
  switch(v14)
  {
    case 1:
      v15 = MEMORY[0x277CBEC38];
      goto LABEL_13;
    case 2:
      [(PSUIDataModeSpecifier *)self setInterfaceCostExpensive:MEMORY[0x277CBEC38] specifier:v7];
      v16 = MEMORY[0x277CBEC28];
      v17 = self;
LABEL_14:
      [(PSUIDataModeSpecifier *)v17 setLowDataMode:v16 specifier:v7];
      goto LABEL_18;
    case 3:
      v15 = MEMORY[0x277CBEC28];
LABEL_13:
      [(PSUIDataModeSpecifier *)self setInterfaceCostExpensive:v15 specifier:v7];
      v17 = self;
      v16 = v15;
      goto LABEL_14;
  }

  v18 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2658DE000, v18, OS_LOG_TYPE_ERROR, "Setting data mode to an unknown value", &v21, 2u);
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)isLowDataModeEnabled:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v14 = 0;
  v6 = [(CoreTelephonyClient *)ctClient lowDataMode:serviceDescriptor error:&v14];
  v7 = v14;
  v8 = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to get low data mode state with error: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEC28];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

- (void)setLowDataMode:(id)a3 specifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a3 BOOLValue];
  v6 = [(CoreTelephonyClient *)self->_ctClient setLowDataMode:self->_serviceDescriptor enable:v5];
  v7 = [(PSUIDataModeSpecifier *)self getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(PSUIDataModeSpecifier *)self lowDataModeFromBool:v5];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Failed to set low data mode to: %@ with error: %@", &v11, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PSUIDataModeSpecifier *)self lowDataModeFromBool:v5];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully set low data mode to: %@", &v11, 0xCu);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)lowDataModeGroupSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DATA_MODE_FOOTER" value:&stru_287733598 table:@"Cellular"];
  [v2 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];

  return v2;
}

- (id)isInterfaceCostExpensive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  ctClient = self->_ctClient;
  serviceDescriptor = self->_serviceDescriptor;
  v14 = 0;
  v6 = [(CoreTelephonyClient *)ctClient interfaceCostExpensive:serviceDescriptor error:&v14];
  v7 = v14;
  v8 = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to get interface cost with error: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

- (void)setInterfaceCostExpensive:(id)a3 specifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a3 BOOLValue];
  v6 = [(PSUIDataModeSpecifier *)self interfaceCostFromBool:v5];
  v7 = [(CoreTelephonyClient *)self->_ctClient setInterfaceCost:self->_serviceDescriptor expensive:v5];
  v8 = [(PSUIDataModeSpecifier *)self getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Failed to set interface cost to: %@ with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Successfully set interface cost to: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dataModeFromNumber:(id)a3
{
  v4 = [a3 intValue] - 1;
  if (v4 < 3)
  {
    return off_279BAAD40[v4];
  }

  v6 = [(PSUIDataModeSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "Unknown data mode value", v7, 2u);
  }

  return &stru_287733598;
}

- (id)lowDataModeFromBool:(BOOL)a3
{
  if (a3)
  {
    return @"ON";
  }

  else
  {
    return @"OFF";
  }
}

- (id)interfaceCostFromBool:(BOOL)a3
{
  if (a3)
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
  v3 = [(CTServiceDescriptor *)self->_serviceDescriptor instance];
  v4 = [v3 stringValue];
  v5 = [v2 loggerWithCategory:@"LDM" instance:v4];

  return v5;
}

@end