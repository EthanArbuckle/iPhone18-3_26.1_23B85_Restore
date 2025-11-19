@interface PUIAccessoriesAppSpecificControllerViewController
- (BOOL)deviceSupportsMultitech:(id)a3;
- (id)specifierForDevice:(id)a3;
- (id)specifiers;
- (void)handleSessionEvent:(id)a3;
- (void)refreshDADevices;
- (void)viewDidLoad;
@end

@implementation PUIAccessoriesAppSpecificControllerViewController

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = *MEMORY[0x277D3FC48];
    v4 = *(&self->super.super.super.super.super.isa + v3);
    if (!v4)
    {
      v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ACCESSORIES_GROUP"];
      v13[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v7 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v6;

      v4 = *(&self->super.super.super.super.super.isa + v3);
    }

    v8 = v4;
  }

  else
  {
    v9 = _PUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", v12, 2u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PUIAccessoriesAppSpecificControllerViewController;
  [(PUIAccessoriesAppSpecificControllerViewController *)&v12 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"bundleID"];
    appBundleID = self->_appBundleID;
    self->_appBundleID = v3;

    v5 = [(PUIAccessoriesAppSpecificControllerViewController *)self session];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(PUIAccessoriesAppSpecificControllerViewController *)self setSession:v6];

      objc_initWeak(&location, self);
      v9 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v10, &location);
      v7 = [(PUIAccessoriesAppSpecificControllerViewController *)self session:v9];
      [v7 setEventHandler:&v9];

      v8 = [(PUIAccessoriesAppSpecificControllerViewController *)self session];
      [v8 activate];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __64__PUIAccessoriesAppSpecificControllerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)specifierForDevice:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D3FAD8];
  v6 = [v4 name];
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Asaccessoryinf.isa) cell:2 edit:0];

  v8 = [v4 identifier];
  [v7 setIdentifier:v8];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  if ([(PUIAccessoriesAppSpecificControllerViewController *)self deviceSupportsMultitech:v4])
  {
    v9 = *MEMORY[0x277D3FFD8];
    v10 = @"com.apple.graphic-icon.accessories";
  }

  else
  {
    v11 = [v4 bluetoothIdentifier];

    v9 = *MEMORY[0x277D3FFD8];
    if (v11)
    {
      v10 = @"com.apple.graphic-icon.bluetooth";
    }

    else
    {
      v10 = @"com.apple.graphic-icon.wifi";
    }
  }

  [v7 setObject:v10 forKeyedSubscript:v9];
  [v7 setProperty:v4 forKey:@"device"];
  [v7 setProperty:self->_session forKey:@"session"];

  return v7;
}

- (BOOL)deviceSupportsMultitech:(id)a3
{
  v3 = a3;
  v4 = [v3 bluetoothIdentifier];
  if (v4)
  {
    v5 = [v3 wifiAwareDevicePairingID];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 SSID];
      v6 = v7 != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleSessionEvent:(id)a3
{
  v4 = [a3 eventType];
  if (v4 <= 0x2A && ((1 << v4) & 0x60000000400) != 0)
  {

    [(PUIAccessoriesAppSpecificControllerViewController *)self refreshDADevices];
  }
}

- (void)refreshDADevices
{
  v3 = [(PUIAccessoriesAppSpecificControllerViewController *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke;
  v4[3] = &unk_279BA1828;
  v4[4] = self;
  [v3 getDevicesWithFlags:8 completionHandler:v4];
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _PUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2_cold_1(v2, v3);
    }
  }

  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 appAccessInfoMap];
        v11 = [v10 allKeys];
        v12 = [v11 containsObject:*(*(a1 + 48) + 1456)];

        if (v12)
        {
          v13 = [*(a1 + 48) specifierForDevice:v9];
          [v20 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [v20 sortUsingComparator:&__block_literal_global_3];
  v14 = *(a1 + 48);
  v15 = [v14 accessorySpecifiers];
  [v14 removeContiguousSpecifiers:v15];

  v16 = [v20 copy];
  [*(a1 + 48) setAccessorySpecifiers:v16];

  v17 = *(a1 + 48);
  v18 = [v17 accessorySpecifiers];
  [v17 insertContiguousSpecifiers:v18 afterSpecifierID:@"ACCESSORIES_GROUP"];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[PUIAccessoriesAppSpecificControllerViewController refreshDADevices]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: Error getting devices: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end