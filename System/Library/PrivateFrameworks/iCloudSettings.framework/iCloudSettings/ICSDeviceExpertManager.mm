@interface ICSDeviceExpertManager
+ (_NSLocalizedStringResource)appleAccountTitle;
+ (_NSLocalizedStringResource)backupTitle;
+ (_NSLocalizedStringResource)iCloudTitle;
+ (_NSLocalizedStringResource)manageStorageTitle;
+ (_NSLocalizedStringResource)savedToiCloudTitle;
@end

@implementation ICSDeviceExpertManager

+ (_NSLocalizedStringResource)appleAccountTitle
{
  v2 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"TITLE_APPLE_ACCOUNT" table:@"Localizable-iCloud" locale:currentLocale bundleURL:bundleURL];

  return v6;
}

+ (_NSLocalizedStringResource)iCloudTitle
{
  v2 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"TITLE_ICLOUD" table:@"Localizable-iCloud" locale:currentLocale bundleURL:bundleURL];

  return v6;
}

+ (_NSLocalizedStringResource)manageStorageTitle
{
  v2 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"MANAGE_STORAGE_TITLE_FALLBACK" table:@"Localizable-iCloud" locale:currentLocale bundleURL:bundleURL];

  return v6;
}

+ (_NSLocalizedStringResource)backupTitle
{
  v2 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"BACKUP_HEADER_TITLE" table:@"Localizable-Backup" locale:currentLocale bundleURL:bundleURL];

  return v6;
}

+ (_NSLocalizedStringResource)savedToiCloudTitle
{
  v2 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"TITLE_SAVED_TO_ICLOUD" table:@"Localizable-iCloud" locale:currentLocale bundleURL:bundleURL];

  return v6;
}

@end