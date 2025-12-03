@interface PSUICallingSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier;
- (id)specifiers;
- (void)setWifiCallingSpecifiers:(id)specifiers;
- (void)viewWillAppear;
@end

@implementation PSUICallingSubgroup

- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier
{
  controllerCopy = controller;
  parentSpecifierCopy = parentSpecifier;
  v14.receiver = self;
  v14.super_class = PSUICallingSubgroup;
  v9 = [(PSUICallingSubgroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, controllerCopy);
    v11 = objc_storeWeak(&v10->_parentSpecifier, parentSpecifierCopy);
    v12 = [parentSpecifierCopy propertyForKey:*MEMORY[0x277D40128]];

    v10->_supportsWiFiCalling = [SettingsCellularUtils supportsWiFiCalling:v12];
  }

  return v10;
}

- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)viewWillAppear
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_wifiCallingSpecifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_listController);
        [WeakRetained reloadSpecifier:{v8, v11}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v39[1] = *MEMORY[0x277D85DE8];
  v26 = objc_opt_new();
  v3 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v3;

  v38 = *MEMORY[0x277D3FE08];
  v23 = v38;
  v39[0] = @"WiFiCallingTelephonySettings";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v35 = v27;
  v36 = @"items";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v37 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v8 = objc_loadWeakRetained(&self->_listController);
  bundle = [v8 bundle];
  v10 = objc_loadWeakRetained(&self->_listController);
  v29 = 0;
  v11 = SpecifiersFromPlist();

  v25 = v29;
  v12 = [v11 copy];
  [(PSUICallingSubgroup *)self setWifiCallingSpecifiers:v12];

  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v25];
  [v26 addObjectsFromArray:self->_wifiCallingSpecifiers];
  v33 = v23;
  v34 = @"PrimaryCloudCallingSettingsBundle";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v30 = v24;
  v31 = @"items";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v32 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v15 = objc_loadWeakRetained(&self->_parentSpecifier);
  v16 = objc_loadWeakRetained(&self->_listController);
  bundle2 = [v16 bundle];
  v18 = objc_loadWeakRetained(&self->_listController);
  v28 = 0;
  v19 = SpecifiersFromPlist();

  v20 = v28;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v20, &v28];
  [v26 addObjectsFromArray:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)setWifiCallingSpecifiers:(id)specifiers
{
  v11 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  if (self->_supportsWiFiCalling)
  {
    objc_storeStrong(&self->_wifiCallingSpecifiers, specifiers);
    p_super = [(PSUICallingSubgroup *)self getLogger];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[PSUICallingSubgroup setWifiCallingSpecifiers:]";
      _os_log_impl(&dword_2658DE000, p_super, OS_LOG_TYPE_DEFAULT, "%s WiFi calling is supported, adding specifiers", &v9, 0xCu);
    }
  }

  else
  {
    getLogger = [(PSUICallingSubgroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[PSUICallingSubgroup setWifiCallingSpecifiers:]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s WiFi calling is not supported, omitting specifiers", &v9, 0xCu);
    }

    p_super = &self->_wifiCallingSpecifiers->super;
    self->_wifiCallingSpecifiers = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end