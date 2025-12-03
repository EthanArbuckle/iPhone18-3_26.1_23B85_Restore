@interface ICQUIDataclassHelper
+ (BOOL)isBackupEnabledForAccount:(id)account;
+ (BOOL)isSharedPhotoLibraryEnabled;
+ (id)dataclassesToEnableForAccount:(id)account excludedApps:(id)apps;
+ (id)enabledAppsForAccount:(id)account deprioritizedApps:(id)apps;
+ (id)footerTextForSyncWithiCloudSpecifiersFromDataclasses:(id)dataclasses forAccount:(id)account;
+ (id)iconForDataclass:(id)dataclass;
+ (id)localizedTextForDataclass:(id)dataclass;
+ (id)unsyncedDataclassesExcludingPhotosForAccount:(id)account;
+ (void)enableDataclass:(id)dataclass forAccount:(id)account completion:(id)completion;
@end

@implementation ICQUIDataclassHelper

+ (id)dataclassesToEnableForAccount:(id)account excludedApps:(id)apps
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  appsCopy = apps;
  provisionedDataclasses = [accountCopy provisionedDataclasses];
  allObjects = [provisionedDataclasses allObjects];

  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([accountCopy isEnabledForDataclass:{v14, v18}] & 1) == 0)
        {
          mEMORY[0x277CEC7A0] = [MEMORY[0x277CEC7A0] sharedManager];
          if ([mEMORY[0x277CEC7A0] canAutoEnableDataclass:v14 forAccount:accountCopy])
          {
          }

          else
          {
            v16 = [self _isPhotosDataclass:v14];

            if ((v16 & 1) == 0)
            {
              continue;
            }
          }

          if (([appsCopy containsObject:v14] & 1) == 0)
          {
            [v18 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v18;
}

+ (id)enabledAppsForAccount:(id)account deprioritizedApps:(id)apps
{
  accountCopy = account;
  appsCopy = apps;
  if (enabledAppsForAccount_deprioritizedApps__onceToken != -1)
  {
    +[ICQUIDataclassHelper enabledAppsForAccount:deprioritizedApps:];
  }

  v7 = enabledAppsForAccount_deprioritizedApps__settingsApps;
  v8 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__ICQUIDataclassHelper_enabledAppsForAccount_deprioritizedApps___block_invoke_2;
  v17[3] = &unk_27A65C1C8;
  v18 = accountCopy;
  v9 = accountCopy;
  v10 = [v8 predicateWithBlock:v17];
  v11 = [v7 filteredArrayUsingPredicate:v10];
  v12 = [v11 mutableCopy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ICQUIDataclassHelper_enabledAppsForAccount_deprioritizedApps___block_invoke_3;
  v15[3] = &unk_27A65AF08;
  v16 = appsCopy;
  v13 = appsCopy;
  [v12 sortUsingComparator:v15];

  return v12;
}

void __64__ICQUIDataclassHelper_enabledAppsForAccount_deprioritizedApps___block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8A58];
  v10[0] = *MEMORY[0x277CB8960];
  v10[1] = v0;
  v1 = *MEMORY[0x277CB89F8];
  v10[2] = *MEMORY[0x277CB89C8];
  v10[3] = v1;
  v2 = *MEMORY[0x277CB89A0];
  v11 = *MEMORY[0x277CB89D8];
  v12 = v2;
  v3 = *MEMORY[0x277CB8968];
  v13 = *MEMORY[0x277CB8958];
  v14 = v3;
  v15 = *MEMORY[0x277CB8A18];
  v16 = v11;
  v4 = *MEMORY[0x277CB89F0];
  v17 = *MEMORY[0x277CB8928];
  v18 = v4;
  v5 = *MEMORY[0x277CB89A8];
  v19 = *MEMORY[0x277CB8A50];
  v20 = v5;
  v6 = *MEMORY[0x277CB8A40];
  v21 = *MEMORY[0x277CB8990];
  v22 = v6;
  v7 = *MEMORY[0x277CB8998];
  v23 = *MEMORY[0x277CB8A48];
  v24 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:18];
  v9 = enabledAppsForAccount_deprioritizedApps__settingsApps;
  enabledAppsForAccount_deprioritizedApps__settingsApps = v8;
}

uint64_t __64__ICQUIDataclassHelper_enabledAppsForAccount_deprioritizedApps___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 containsObject:a2];
  v8 = [*(a1 + 32) containsObject:v6];

  if ((v7 ^ 1 | v8))
  {
    return (((v7 ^ 1) & v8) << 63) >> 63;
  }

  else
  {
    return 1;
  }
}

+ (id)unsyncedDataclassesExcludingPhotosForAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CB8960];
  v4 = MEMORY[0x277CBEA60];
  accountCopy = account;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [self dataclassesToEnableForAccount:accountCopy excludedApps:{v6, v9, v10}];

  return v7;
}

+ (id)localizedTextForDataclass:(id)dataclass
{
  v12[1] = *MEMORY[0x277D85DE8];
  dataclassCopy = dataclass;
  v4 = dataclassCopy;
  if ([dataclassCopy isEqualToString:*MEMORY[0x277CB8960]])
  {
    v4 = *MEMORY[0x277CB89D0];
  }

  if ([dataclassCopy isEqualToString:*MEMORY[0x277CB8920]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ICLOUD_BACKUP" value:&stru_28844FC60 table:@"Localizable"];
  }

  else
  {
    if ([dataclassCopy isEqualToString:*MEMORY[0x277CB89C8]])
    {
      v7 = MEMORY[0x277CCA8D8];
      v5 = [CPSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings/AppleAccountSettings.bundle"];
      v8 = [v7 bundleWithPath:v5];
      v9 = [v8 localizedStringForKey:@"ICLOUD_MAIL_LABEL" value:&stru_28844FC60 table:@"Localizable"];

      goto LABEL_9;
    }

    v10 = MEMORY[0x277CE8588];
    v12[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v6 = [v10 localizedTextForDataclasses:v5 usedAtBeginningOfSentence:1 forAccount:0];
  }

  v9 = v6;
LABEL_9:

  return v9;
}

+ (id)iconForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v4 = dataclassCopy;
  if ([dataclassCopy isEqualToString:*MEMORY[0x277CB8960]])
  {
    v4 = *MEMORY[0x277CB89D0];
  }

  v5 = [MEMORY[0x277D3FAD8] acui_iconForDataclass:v4];

  return v5;
}

+ (id)footerTextForSyncWithiCloudSpecifiersFromDataclasses:(id)dataclasses forAccount:(id)account
{
  dataclassesCopy = dataclasses;
  if ([dataclassesCopy count] == 2)
  {
    allObjects = [dataclassesCopy allObjects];
    v6 = [allObjects objectAtIndexedSubscript:0];
    v7 = [ICQUIDataclassHelper localizedTextForDataclass:v6];

    allObjects2 = [dataclassesCopy allObjects];
    v9 = [allObjects2 objectAtIndexedSubscript:1];
    v10 = [ICQUIDataclassHelper localizedTextForDataclass:v9];

    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SYNC_WITH_ICLOUD_TWO_APPS_DISABLED" value:&stru_28844FC60 table:@"Localizable"];
    [v11 stringWithFormat:v13, v7, v10, v30];
    v14 = LABEL_3:;
LABEL_6:

    goto LABEL_7;
  }

  if ([dataclassesCopy count] == 3)
  {
    allObjects3 = [dataclassesCopy allObjects];
    v16 = [allObjects3 objectAtIndexedSubscript:0];
    v7 = [ICQUIDataclassHelper localizedTextForDataclass:v16];

    allObjects4 = [dataclassesCopy allObjects];
    v18 = [allObjects4 objectAtIndexedSubscript:1];
    v10 = [ICQUIDataclassHelper localizedTextForDataclass:v18];

    allObjects5 = [dataclassesCopy allObjects];
    v20 = [allObjects5 objectAtIndexedSubscript:2];
    v12 = [ICQUIDataclassHelper localizedTextForDataclass:v20];

    v21 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v13 localizedStringForKey:@"SYNC_WITH_ICLOUD_THREE_APPS_DISABLED" value:&stru_28844FC60 table:@"Localizable"];
    v14 = [v21 stringWithFormat:v22, v7, v10, v12];

    goto LABEL_6;
  }

  if ([dataclassesCopy count] >= 4)
  {
    allObjects6 = [dataclassesCopy allObjects];
    v25 = [allObjects6 objectAtIndexedSubscript:0];
    v7 = [ICQUIDataclassHelper localizedTextForDataclass:v25];

    allObjects7 = [dataclassesCopy allObjects];
    v27 = [allObjects7 objectAtIndexedSubscript:1];
    v10 = [ICQUIDataclassHelper localizedTextForDataclass:v27];

    v28 = [dataclassesCopy count] - 2;
    v29 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SYNC_WITH_ICLOUD_MORE_THAN_THREE_APPS_DISABLED" value:&stru_28844FC60 table:@"Localizable"];
    [v29 stringWithFormat:v13, v7, v10, v28];
    goto LABEL_3;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

+ (void)enableDataclass:(id)dataclass forAccount:(id)account completion:(id)completion
{
  dataclassCopy = dataclass;
  accountCopy = account;
  completionCopy = completion;
  if ([accountCopy isEnabledForDataclass:dataclassCopy])
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICQUIDataclassHelper enableDataclass:dataclassCopy forAccount:v10 completion:?];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke;
    block[3] = &unk_27A65AD40;
    v11 = &v21;
    v21 = completionCopy;
    v12 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [accountCopy setEnabled:1 forDataclass:*MEMORY[0x277CB89D8]];
    accountStore = [accountCopy accountStore];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke_2;
    v16[3] = &unk_27A65C1F0;
    v11 = &v17;
    v17 = dataclassCopy;
    v14 = accountCopy;
    v18 = v14;
    v19 = completionCopy;
    v15 = completionCopy;
    [accountStore saveAccount:v14 withCompletionHandler:v16];
  }
}

void __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke_2_cold_1(a1, v5, v6);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke_75;
  block[3] = &unk_27A65AD00;
  v7 = *(a1 + 48);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (BOOL)isBackupEnabledForAccount:(id)account
{
  v3 = MEMORY[0x277D7F3E0];
  v4 = MEMORY[0x277CB8F48];
  accountCopy = account;
  defaultStore = [v4 defaultStore];
  LOBYTE(v3) = [v3 isBackupEnabledForAccount:accountCopy accountStore:defaultStore];

  return v3;
}

+ (BOOL)isSharedPhotoLibraryEnabled
{
  systemPhotoLibraryURL = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
  v3 = [objc_alloc(MEMORY[0x277CD9948]) initWithPhotoLibraryURL:systemPhotoLibraryURL];
  v4 = objc_alloc_init(MEMORY[0x277CD9880]);
  [v4 setPhotoLibrary:v3];
  v5 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v4];
  firstObject = [v5 firstObject];

  return firstObject != 0;
}

+ (void)enableDataclass:(uint64_t)a1 forAccount:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_275623000, a2, OS_LOG_TYPE_DEBUG, "Dataclass %@ enabled already. Bailing.", &v2, 0xCu);
}

void __62__ICQUIDataclassHelper_enableDataclass_forAccount_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Unable to enable dataclass %@ for account %@. Error: %@", &v5, 0x20u);
}

@end