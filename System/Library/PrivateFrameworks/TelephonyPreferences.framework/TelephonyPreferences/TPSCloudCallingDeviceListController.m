@interface TPSCloudCallingDeviceListController
- (NSArray)deviceSwitchSpecifiers;
- (PSSpecifier)devicesGroupSpecifier;
- (PSSpecifier)mainGroupSpecifier;
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCloudCallingDeviceListController)init;
- (id)specifiers;
- (void)cloudCallingDeviceController:(id)a3 didChangeDevices:(id)a4;
- (void)setDeviceSwitchOn:(id)a3 specifier:(id)a4;
- (void)setMainSwitchOn:(id)a3 specifier:(id)a4;
@end

@implementation TPSCloudCallingDeviceListController

- (TPSCloudCallingDeviceListController)init
{
  v6.receiver = self;
  v6.super_class = TPSCloudCallingDeviceListController;
  v2 = [(TPSCloudCallingDeviceListController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TPSCloudCallingDeviceController);
    deviceController = v2->_deviceController;
    v2->_deviceController = v3;

    [(TPSCloudCallingDeviceController *)v2->_deviceController setDelegate:v2];
  }

  return v2;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(TPSCloudCallingDeviceListController *)self mainGroupSpecifier];
    [v5 addObject:v6];

    v7 = [(TPSCloudCallingDeviceListController *)self mainSwitchSpecifier];
    [v5 addObject:v7];

    v8 = [(TPSCloudCallingDeviceListController *)self deviceSwitchSpecifiers];
    if ([v8 count])
    {
      v9 = [(TPSCloudCallingDeviceListController *)self devicesGroupSpecifier];
      [v5 addObject:v9];

      [v5 addObjectsFromArray:v8];
    }

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (PSSpecifier)devicesGroupSpecifier
{
  devicesGroupSpecifier = self->_devicesGroupSpecifier;
  if (!devicesGroupSpecifier)
  {
    v4 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_DEVICE_LIST_DEVICES_GROUP_TITLE"];
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CLOUD_CALLING_DEVICE_LIST_DEVICES_GROUP_ID" name:v4];
    v6 = self->_devicesGroupSpecifier;
    self->_devicesGroupSpecifier = v5;

    devicesGroupSpecifier = self->_devicesGroupSpecifier;
  }

  return devicesGroupSpecifier;
}

- (NSArray)deviceSwitchSpecifiers
{
  v26 = *MEMORY[0x277D85DE8];
  deviceSwitchSpecifiers = self->_deviceSwitchSpecifiers;
  if (!deviceSwitchSpecifiers)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [MEMORY[0x277D6EDE8] cloudCallingDevices];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          if ([v8 supportsRestrictingSecondaryCalling])
          {
            v9 = MEMORY[0x277CCACA8];
            v10 = [v8 name];
            v11 = [v8 tps_modelName];
            v12 = [v9 stringWithFormat:@"%@ (%@)", v10, v11];

            v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:self set:sel_setDeviceSwitchOn_specifier_ get:sel_isDeviceSwitchOn_ detail:0 cell:6 edit:0];
            v14 = [v8 uniqueID];
            [v13 setIdentifier:v14];

            [v19 addObject:v13];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    v15 = [v19 copy];
    v16 = self->_deviceSwitchSpecifiers;
    self->_deviceSwitchSpecifiers = v15;

    deviceSwitchSpecifiers = self->_deviceSwitchSpecifiers;
  }

  v17 = *MEMORY[0x277D85DE8];

  return deviceSwitchSpecifiers;
}

- (PSSpecifier)mainGroupSpecifier
{
  mainGroupSpecifier = self->_mainGroupSpecifier;
  if (!mainGroupSpecifier)
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CLOUD_CALLING_DEVICE_LIST_MAIN_GROUP_ID"];
    v5 = self->_mainGroupSpecifier;
    self->_mainGroupSpecifier = v4;

    mainGroupSpecifier = self->_mainGroupSpecifier;
  }

  return mainGroupSpecifier;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_DEVICE_LIST_MAIN_SWITCH_TITLE"];
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:sel_setMainSwitchOn_specifier_ get:sel_isMainSwitchOn_ detail:0 cell:6 edit:0];
    v7 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v6;

    [(PSSpecifier *)self->_mainSwitchSpecifier setIdentifier:@"CLOUD_CALLING_DEVICE_LIST_MAIN_SWITCH_ID"];
    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (void)setDeviceSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = *MEMORY[0x277D3FEB0];
  v7 = a4;
  v8 = a3;
  v11 = [v7 propertyForKey:v6];
  v9 = [v8 BOOLValue];

  [v11 setOn:v9 animated:1];
  v10 = [(TPSCloudCallingDeviceListController *)self cachedCellForSpecifier:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setLoading:1];
  }
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = *MEMORY[0x277D3FEB0];
  v7 = a4;
  v8 = a3;
  v11 = [v7 propertyForKey:v6];
  v9 = [v8 BOOLValue];

  [v11 setOn:v9 animated:1];
  v10 = [(TPSCloudCallingDeviceListController *)self cachedCellForSpecifier:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setLoading:1];
  }
}

- (void)cloudCallingDeviceController:(id)a3 didChangeDevices:(id)a4
{
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Cloud calling devices have changed. Reloading specifiers.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__TPSCloudCallingDeviceListController_cloudCallingDeviceController_didChangeDevices___block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__TPSCloudCallingDeviceListController_cloudCallingDeviceController_didChangeDevices___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDeviceSwitchSpecifiers:0];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

@end