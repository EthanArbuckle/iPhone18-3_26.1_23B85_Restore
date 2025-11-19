@interface PSGAboutController
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (PSGAboutController)init;
- (id)contextMenuConfiguration:(id)a3 handler:(id)a4;
- (id)deviceName:(id)a3;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)dealloc;
- (void)handleResourceDictionaryWhenAlreadyPresented:(id)a3;
- (void)remoteLaunchHelper:(id)a3 flowtype:(unint64_t)a4 reason:(id)a5;
- (void)setDeviceName:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDeviceNameSpecifierIfNeeded;
- (void)viewDidLoad;
- (void)willBecomeActive;
- (void)willResignActive;
- (void)willUnlock;
@end

@implementation PSGAboutController

- (PSGAboutController)init
{
  v3.receiver = self;
  v3.super_class = PSGAboutController;
  result = [(PSGAboutController *)&v3 init];
  if (result)
  {
    result->_firstViewDidAppear = 1;
  }

  return result;
}

- (void)dealloc
{
  v3 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  v4 = [v3 systemHealthUIClient];
  [v4 setParentViewController:0];

  v5.receiver = self;
  v5.super_class = PSGAboutController;
  [(PSGAboutController *)&v5 dealloc];
}

- (void)willUnlock
{
  v2 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  [v2 reloadDeviceName];
}

- (id)contextMenuConfiguration:(id)a3 handler:(id)a4
{
  v41[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSGAboutController *)self specifierAtIndex:[(PSGAboutController *)self indexForIndexPath:v6]];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__PSGAboutController_contextMenuConfiguration_handler___block_invoke;
  v38[3] = &unk_278324DF8;
  v38[4] = self;
  v35 = v6;
  v39 = v35;
  v34 = v8;
  v40 = v34;
  v9 = MEMORY[0x223D38F60](v38);
  v10 = MEMORY[0x277D750C8];
  v11 = PSG_LocalizedStringForGeneral(@"COPY");
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
  v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v9];

  v14 = MEMORY[0x277D750C8];
  v15 = PSG_LocalizedStringForGeneral(@"BARCODE");
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"barcode"];
  v17 = v7;
  v18 = [v14 actionWithTitle:v15 image:v16 identifier:@"barcode" handler:v7];

  v19 = MEMORY[0x277CBEB18];
  v41[0] = v13;
  v41[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v21 = [v19 arrayWithArray:v20];

  v22 = objc_alloc(MEMORY[0x277CC37B0]);
  v23 = [v22 initWithQueue:MEMORY[0x277D85CD0]];
  v24 = [v23 isSharingIdentitySupportedWithError:0];
  LODWORD(v7) = [v24 BOOLValue];

  if (v7)
  {
    v25 = MEMORY[0x277D750C8];
    v26 = PSG_LocalizedStringForGeneral(@"SHARE_IDENTITY");
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.gen2.crop.circle"];
    v28 = [v25 actionWithTitle:v26 image:v27 identifier:@"nfc" handler:v17];

    [v21 addObject:v28];
  }

  v29 = MEMORY[0x277D753B0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__PSGAboutController_contextMenuConfiguration_handler___block_invoke_2;
  v36[3] = &unk_278324E20;
  v37 = v21;
  v30 = v21;
  v31 = [v29 configurationWithIdentifier:0 previewProvider:0 actionProvider:v36];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __55__PSGAboutController_contextMenuConfiguration_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  v6 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  if (!v3)
  {
    v4 = [v6 detailTextLabel];
    v3 = [v4 text];
  }

  v5 = [MEMORY[0x277D75810] generalPasteboard];
  [v5 setString:v3];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  v7 = [(PSGAboutController *)self specifierAtIndex:[(PSGAboutController *)self indexForIndexPath:v6]];
  v8 = [v7 identifier];
  v9 = [v8 hasPrefix:@"EID"];

  if (!v9)
  {
    v11 = [v7 identifier];
    v12 = [v11 hasPrefix:@"ModemIMEI"];

    if (!v12)
    {
      goto LABEL_7;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__PSGAboutController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
    v15[3] = &unk_278324E70;
    v16 = v7;
    v17 = self;
    v10 = MEMORY[0x223D38F60](v15);

    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = [(PSGAboutController *)self contextMenuConfiguration:v6 handler:v10];

    goto LABEL_8;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__PSGAboutController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v18[3] = &unk_278324E48;
  v18[4] = self;
  v10 = MEMORY[0x223D38F60](v18);
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = 0;
LABEL_8:

  return v13;
}

void __80__PSGAboutController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"barcode"];

  if (v5)
  {
    v6 = [MEMORY[0x277D4D868] sharedInstance];
    v7 = [v6 subscriptionContexts];

    v8 = [MEMORY[0x277D4D8D8] sharedInstance];
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v8 mobileEquipmentInfo:v9];

    v11 = 0;
    if ([v7 count] >= 2)
    {
      v12 = [MEMORY[0x277D4D8D8] sharedInstance];
      v13 = [v7 objectAtIndexedSubscript:1];
      v11 = [v12 mobileEquipmentInfo:v13];
    }

    if (v10)
    {
      v14 = [v10 CSN];
      v15 = [v14 length];

      v16 = v10;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    if (v11 && ([v11 CSN], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16 = v11, v18))
    {
LABEL_8:
      v19 = [v16 CSN];
    }

    else
    {
      v19 = &stru_282E88A90;
    }

    v24 = @"EidKey";
    v25[0] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [*(a1 + 32) remoteLaunchHelper:v22 flowtype:6 reason:@"SIM Device Info Flow"];
  }

  else
  {
    v20 = [v3 identifier];
    v21 = [v20 isEqualToString:@"nfc"];

    if (v21)
    {
      [*(a1 + 32) launchShareIdentityFlow];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __80__PSGAboutController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"barcode"];

  if (v5)
  {
    v6 = [*(a1 + 32) identifier];
    v7 = [v6 isEqualToString:@"ModemIMEI.2"];

    if (v7)
    {
      v8 = @"Imei2Key";
    }

    else
    {
      v8 = @"ImeiKey";
    }

    if (v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [MEMORY[0x277D4D868] sharedInstance];
    v11 = [v10 subscriptionContexts];

    v12 = [MEMORY[0x277D4D8D8] sharedInstance];
    v13 = [v11 objectAtIndexedSubscript:0];
    v14 = [v12 mobileEquipmentInfo:v13];

    v15 = [v11 objectAtIndexedSubscript:0];
    if ([v15 slotID] != v9)
    {
      v16 = [v11 count];

      if (v16 < 2)
      {
LABEL_12:
        v24 = v8;
        v19 = [v14 IMEI];
        v25[0] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

        [*(a1 + 40) remoteLaunchHelper:v20 flowtype:6 reason:@"SIM Device Info Flow"];
        goto LABEL_15;
      }

      v15 = [MEMORY[0x277D4D8D8] sharedInstance];
      v17 = [v11 objectAtIndexedSubscript:1];
      v18 = [v15 mobileEquipmentInfo:v17];

      v14 = v18;
    }

    goto LABEL_12;
  }

  v21 = [v3 identifier];
  v22 = [v21 isEqualToString:@"nfc"];

  if (v22)
  {
    [*(a1 + 40) launchShareIdentityFlow];
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)remoteLaunchHelper:(id)a3 flowtype:(unint64_t)a4 reason:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  v11 = v10;
  if (v7)
  {
    [v10 addEntriesFromDictionary:v7];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v11 setValue:v12 forKey:@"FlowTypeKey"];

  v13 = _PSGLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[PSGAboutController remoteLaunchHelper:flowtype:reason:]";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_21CF20000, v13, OS_LOG_TYPE_DEFAULT, "%s \nKey:%@", &v19, 0x16u);
  }

  v14 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v15 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v15 setUserInfo:v11];
  v16 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v14 configurationContext:v15];
  v17 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v17 setReason:v9];

  [v16 activateWithContext:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = PSGAboutController;
  v6 = a4;
  [(PSGAboutController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(PSGAboutController *)self indexForIndexPath:v6, v14.receiver, v14.super_class];

  v8 = [(PSGAboutController *)self specifierAtIndex:v7];
  v9 = [v8 identifier];
  v10 = [v9 hasPrefix:@"CARRIER_VERSION"];

  if (v10)
  {
    v11 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
    [v11 updateCarrierSpecifier:v8];
LABEL_5:

    goto LABEL_6;
  }

  v12 = [v8 identifier];
  v13 = [v12 isEqualToString:@"ProductModel"];

  if (v13)
  {
    v11 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
    [v11 updateProductModelSpecifier:v8];
    goto LABEL_5;
  }

LABEL_6:
}

void __37__PSGAboutController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 navigationController];
  v4 = [v3 topViewController];

  if (v2 == v4)
  {
    v5 = *(a1 + 32);

    [v5 updateDeviceNameSpecifierIfNeeded];
  }
}

void __36__PSGAboutController_viewDidAppear___block_invoke()
{
  v0 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  [v0 enableMLUpdates:1];
}

- (void)willBecomeActive
{
  v3 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  [v3 enableMLUpdates:1];

  v4.receiver = self;
  v4.super_class = PSGAboutController;
  [(PSGAboutController *)&v4 willBecomeActive];
}

- (void)willResignActive
{
  if (([*MEMORY[0x277D76620] isSuspendedUnderLock] & 1) == 0)
  {
    v3 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
    [v3 enableMLUpdates:0];
  }

  v4.receiver = self;
  v4.super_class = PSGAboutController;
  [(PSGAboutController *)&v4 willResignActive];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [&unk_282E8FCE0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(&unk_282E8FCE0);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v4 isEqualToString:v9])
        {
          v10 = [(PSGAboutController *)self specifierForID:v9];

          if (!v10)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [&unk_282E8FCE0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PSGAboutController;
  [(PSGAboutController *)&v14 viewDidLoad];
  v3 = PSG_LocalizedStringForGeneral(@"About");
  [(PSGAboutController *)self setTitle:v3];

  v4 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  v5 = [v4 sharedNDOController];
  [v5 setParentViewController:self];

  v6 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  v7 = [v6 sharedNDOController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__PSGAboutController_viewDidLoad__block_invoke;
  v13[3] = &unk_278324EE0;
  v13[4] = self;
  [v7 updateSpecifiersWithCompletionHandler:v13];

  if (objc_opt_class())
  {
    v8 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
    v9 = [v8 systemHealthUIClient];
    [v9 setParentViewController:self];

    v10 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
    v11 = [v10 systemHealthUIClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__PSGAboutController_viewDidLoad__block_invoke_419;
    v12[3] = &unk_278324EE0;
    v12[4] = self;
    [v11 updateSpecifiersWithCompletionHandler:v12];
  }
}

void __33__PSGAboutController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PSGAboutController_viewDidLoad__block_invoke_2;
  block[3] = &unk_278324EE0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__PSGAboutController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) specifierIDPendingPush];
  if ([v8 length])
  {
    v2 = *(a1 + 32);
    v3 = [v2 specifierIDPendingPush];
    v4 = [v2 specifierForID:v3];

    if (v4)
    {
      v5 = _PSGLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v10 = "[PSGAboutController viewDidLoad]_block_invoke_2";
        _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: handling deferred url after ndo specifiers did load", buf, 0xCu);
      }

      [*(a1 + 32) handlePendingURL];
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];
  }
}

void __33__PSGAboutController_viewDidLoad__block_invoke_419(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PSGAboutController_viewDidLoad__block_invoke_2_420;
  block[3] = &unk_278324EE0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__PSGAboutController_viewDidLoad__block_invoke_2_420(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) specifierIDPendingPush];
  if ([v8 length])
  {
    v2 = *(a1 + 32);
    v3 = [v2 specifierIDPendingPush];
    v4 = [v2 specifierForID:v3];

    if (v4)
    {
      v5 = _PSGLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v10 = "[PSGAboutController viewDidLoad]_block_invoke_2";
        _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: handling deferred url after p&sh specifiers did load", buf, 0xCu);
      }

      [*(a1 + 32) handlePendingURL];
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)setDeviceName:(id)a3 specifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  [v7 setDeviceName:v6 specifier:v5];
}

- (id)deviceName:(id)a3
{
  v3 = a3;
  v4 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  v5 = [v4 deviceName:v3];

  return v5;
}

- (void)updateDeviceNameSpecifierIfNeeded
{
  v7 = [(PSGAboutController *)self specifierForID:@"NAME_CELL_ID"];
  v3 = [v7 detailControllerClass];
  v4 = PSGIsDeviceNameSettable();
  if ((((v3 == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = 2;
    }

    else
    {
      v5 = 0;
      v6 = 4;
    }

    [v7 setDetailControllerClass:v5];
    [v7 setCellType:v6];
  }

  [(PSGAboutController *)self reloadSpecifierID:@"NAME_CELL_ID" animated:1];
}

- (void)handleResourceDictionaryWhenAlreadyPresented:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _PSGLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PSGAboutController handleResourceDictionaryWhenAlreadyPresented:]";
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "%s: reloading the page even though we are already at the destination.", &v7, 0xCu);
  }

  v5 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
  [v5 reloadSpecifiers];

  [(PSGAboutController *)self reloadSpecifiers];
  v6 = *MEMORY[0x277D85DE8];
}

@end