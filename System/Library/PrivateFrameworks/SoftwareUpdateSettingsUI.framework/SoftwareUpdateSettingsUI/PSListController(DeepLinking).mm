@interface PSListController(DeepLinking)
- (void)addNavigationEventForSystemSettings:()DeepLinking;
- (void)addNavigationEventForSystemSettings:()DeepLinking andRelativeLinkToSoftwareUpdate:;
@end

@implementation PSListController(DeepLinking)

- (void)addNavigationEventForSystemSettings:()DeepLinking
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [selfCopy addNavigationEventForSystemSettings:location[0] andRelativeLinkToSoftwareUpdate:0];
  objc_storeStrong(location, 0);
}

- (void)addNavigationEventForSystemSettings:()DeepLinking andRelativeLinkToSoftwareUpdate:
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v15 = 0;
  if (v18)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK", v18];
    v15 = 1;
    v4 = MEMORY[0x277D82BE0](v16);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK");
  }

  v17 = v4;
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  v7 = selfCopy;
  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  v5 = location[0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v11 bundleURL];
  v9 = [v6 initWithKey:v5 table:0 locale:currentLocale bundleURL:?];
  v8 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  [v7 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.software-update" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](bundleURL);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](currentLocale);
  v14 = _SUSUILoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_64(v21, "[PSListController(DeepLinking) addNavigationEventForSystemSettings:andRelativeLinkToSoftwareUpdate:]", v17);
    _os_log_impl(&dword_26AC94000, v14, OS_LOG_TYPE_DEFAULT, "%s: NavigationEventForSystemSettings added to '%@'", v21, 0x16u);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end