@interface PUIAccessoriesController
- (id)localizedRemainingNumberOfApprovedAccessories:(id)accessories;
- (id)specifierForApp:(id)app;
- (id)specifiers;
- (void)handleSessionEvent:(id)event;
- (void)provideNavigationDonations;
- (void)refreshDADevices;
- (void)refreshDADevicesSynchronously;
- (void)remakeUI:(id)i;
- (void)viewDidLoad;
@end

@implementation PUIAccessoriesController

- (id)specifiers
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = *MEMORY[0x277D3FC48];
    v4 = *(&self->super.super.super.super.super.isa + v3);
    if (!v4)
    {
      v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_GROUP"];
      if (MGGetBoolAnswer())
      {
        v6 = @"ACCESSORY_SETUP_FOOTER_WLAN";
      }

      else
      {
        v6 = @"ACCESSORY_SETUP_FOOTER";
      }

      v7 = PUI_LocalizedStringForPrivacy(v6);
      [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v15[0] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v9 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v8;

      v4 = *(&self->super.super.super.super.super.isa + v3);
    }

    v10 = v4;
  }

  else
  {
    v11 = _PUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", v14, 2u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"ACCESSORY_SETUP" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ACCESSORIES"];
  [(PUIAccessoriesController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.accessories" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PUIAccessoriesController;
  [(PUIAccessoriesController *)&v10 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    session = [(PUIAccessoriesController *)self session];

    if (!session)
    {
      v4 = objc_opt_new();
      [(PUIAccessoriesController *)self setSession:v4];

      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v8, &location);
      v5 = [(PUIAccessoriesController *)self session:v7];
      [v5 setEventHandler:&v7];

      session2 = [(PUIAccessoriesController *)self session];
      [session2 activate];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __39__PUIAccessoriesController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)specifierForApp:(id)app
{
  appCopy = app;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:appCopy allowPlaceholder:1 error:0];
  localizedName = [v5 localizedName];
  v7 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v8 = [v7 count];

  v9 = MEMORY[0x277D3FAD8];
  if (v8 == 1)
  {
    v10 = NSClassFromString(&cfstr_Asaccessoryinf.isa);
  }

  else
  {
    v10 = objc_opt_class();
  }

  v11 = [v9 preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:v10 cell:2 edit:0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v11 setProperty:v12 forKey:*MEMORY[0x277D40020]];

  [v11 setProperty:appCopy forKey:*MEMORY[0x277D40008]];
  [v11 setProperty:appCopy forKey:@"bundleID"];
  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v13 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v14 = [v13 count];

  v15 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  name2 = v15;
  if (v14 == 1)
  {
    firstObject = [v15 firstObject];
    name = [firstObject name];
LABEL_13:

    goto LABEL_14;
  }

  v19 = [v15 count];

  v20 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v21 = v20;
  if (v19 == 2)
  {
    v22 = [v20 objectAtIndexedSubscript:0];
    name2 = [v22 name];

    v23 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    [v23 objectAtIndexedSubscript:1];
    v51 = v8;
    v24 = localizedName;
    v26 = v25 = v5;
    firstObject = [v26 name];

    v27 = MEMORY[0x277CCACA8];
    v28 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_TWO");
    name = [v27 stringWithFormat:v28, name2, firstObject];

    v5 = v25;
    localizedName = v24;
    v8 = v51;
    goto LABEL_13;
  }

  v52 = localizedName;
  v29 = [v20 count];

  v30 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v31 = v30;
  if (v29 == 3)
  {
    v32 = [v30 objectAtIndexedSubscript:0];
    name2 = [v32 name];

    v33 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    [v33 objectAtIndexedSubscript:1];
    v34 = v50 = v5;
    firstObject = [v34 name];

    v35 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v36 = [v35 objectAtIndexedSubscript:2];
    name3 = [v36 name];

    v38 = MEMORY[0x277CCACA8];
    v39 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_THREE");
LABEL_12:
    v45 = v39;
    name = [v38 stringWithFormat:v39, name2, firstObject, name3];

    v5 = v50;
    localizedName = v52;
    goto LABEL_13;
  }

  v40 = [v30 count];

  if (v40 >= 4)
  {
    v41 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v42 = [v41 objectAtIndexedSubscript:0];
    name2 = [v42 name];

    v43 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v44 = [v43 objectAtIndexedSubscript:1];
    firstObject = [v44 name];

    name3 = [(PUIAccessoriesController *)self localizedRemainingNumberOfApprovedAccessories:appCopy];
    v38 = MEMORY[0x277CCACA8];
    v39 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_MORE");
    v50 = v5;
    goto LABEL_12;
  }

  name = 0;
  localizedName = v52;
LABEL_14:
  [v11 setProperty:name forKey:*MEMORY[0x277D40160]];
  if (v8 == 1)
  {
    [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v47 = v46 = localizedName;
    firstObject2 = [v47 firstObject];
    [v11 setProperty:firstObject2 forKey:@"device"];

    localizedName = v46;
    [v11 setProperty:self->_session forKey:@"session"];
  }

  return v11;
}

- (id)localizedRemainingNumberOfApprovedAccessories:(id)accessories
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSMutableDictionary *)self->_accessoriesManagementApprovedMap objectForKeyedSubscript:accessories];
  v5 = [v3 localizedStringWithFormat:@"%lu", objc_msgSend(v4, "count") - 2];

  return v5;
}

- (void)handleSessionEvent:(id)event
{
  eventType = [event eventType];
  if (eventType <= 0x2A && ((1 << eventType) & 0x60000000400) != 0)
  {

    [(PUIAccessoriesController *)self refreshDADevices];
  }
}

- (void)remakeUI:(id)i
{
  v68 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v4 = iCopy;
  if (!iCopy || ![iCopy count])
  {
    appSpecifiers = [(PUIAccessoriesController *)self appSpecifiers];
    [(PUIAccessoriesController *)self removeContiguousSpecifiers:appSpecifiers];

    accessoriesManagementMap = self->_accessoriesManagementMap;
    self->_accessoriesManagementMap = 0;

    accessoriesManagementApprovedMap = self->_accessoriesManagementApprovedMap;
    self->_accessoriesManagementApprovedMap = 0;

    [(PUIAccessoriesController *)self setAppSpecifiers:0];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v49 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v49)
  {
    v47 = *v60;
    *&v10 = 138412290;
    v45 = v10;
    do
    {
      v11 = 0;
      do
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v11;
        v12 = *(*(&v59 + 1) + 8 * v11);
        v13 = _PUILoggingFacility();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v45;
          v66 = v12;
          _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "Device fetched %@", buf, 0xCu);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        appAccessInfoMap = [v12 appAccessInfoMap];
        allKeys = [appAccessInfoMap allKeys];

        v16 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v56;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(allKeys);
              }

              v20 = *(*(&v55 + 1) + 8 * i);
              v21 = [dictionary objectForKeyedSubscript:{v20, v45}];

              if (!v21)
              {
                array = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array forKeyedSubscript:v20];
              }

              v23 = [dictionary objectForKeyedSubscript:v20];
              [v23 addObject:v12];

              appAccessInfoMap2 = [v12 appAccessInfoMap];
              v25 = [appAccessInfoMap2 objectForKeyedSubscript:v20];

              if (v25)
              {
                v26 = [dictionary2 objectForKeyedSubscript:v20];

                if (!v26)
                {
                  array2 = [MEMORY[0x277CBEB18] array];
                  [dictionary2 setObject:array2 forKeyedSubscript:v20];
                }

                v28 = [dictionary2 objectForKeyedSubscript:v20];
                [v28 addObject:v12];
              }
            }

            v17 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
          }

          while (v17);
        }

        v11 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v49);
  }

  v29 = [dictionary copy];
  v30 = self->_accessoriesManagementMap;
  self->_accessoriesManagementMap = v29;

  v31 = [dictionary2 copy];
  v32 = self->_accessoriesManagementApprovedMap;
  self->_accessoriesManagementApprovedMap = v31;

  allKeys2 = [dictionary allKeys];
  array3 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = allKeys2;
  v36 = [v35 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v52;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [(PUIAccessoriesController *)self specifierForApp:*(*(&v51 + 1) + 8 * j), v45];
        [array3 addObject:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v37);
  }

  [array3 sortUsingComparator:&__block_literal_global_4];
  appSpecifiers2 = [(PUIAccessoriesController *)self appSpecifiers];
  [(PUIAccessoriesController *)self removeContiguousSpecifiers:appSpecifiers2];

  v42 = [array3 copy];
  [(PUIAccessoriesController *)self setAppSpecifiers:v42];

  appSpecifiers3 = [(PUIAccessoriesController *)self appSpecifiers];
  [(PUIAccessoriesController *)self insertContiguousSpecifiers:appSpecifiers3 afterSpecifierID:@"APP_GROUP"];

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PUIAccessoriesController_remakeUI___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)refreshDADevicesSynchronously
{
  v3 = [MEMORY[0x277D04780] getDevicesWithFlags:8 session:self->_session error:0];
  [(PUIAccessoriesController *)self remakeUI:v3];
}

- (void)refreshDADevices
{
  session = [(PUIAccessoriesController *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PUIAccessoriesController_refreshDADevices__block_invoke;
  v4[3] = &unk_279BA1828;
  v4[4] = self;
  [session getDevicesWithFlags:8 completionHandler:v4];
}

void __44__PUIAccessoriesController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PUIAccessoriesController_refreshDADevices__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__PUIAccessoriesController_refreshDADevices__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _PUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__PUIAccessoriesController_refreshDADevices__block_invoke_2_cold_1(v2, v3);
    }
  }

  return [*(a1 + 40) remakeUI:*(a1 + 48)];
}

void __44__PUIAccessoriesController_refreshDADevices__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[PUIAccessoriesController refreshDADevices]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: Error getting devices: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end