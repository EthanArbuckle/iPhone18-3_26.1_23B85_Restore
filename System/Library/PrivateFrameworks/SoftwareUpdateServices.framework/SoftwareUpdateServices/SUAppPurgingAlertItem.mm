@interface SUAppPurgingAlertItem
- (SUAppPurgingAlertItem)initWithHandler:(id)a3 bytesNeeded:(unint64_t)a4 includingAppleIntelligence:(BOOL)a5;
- (id)_manageStorageButton;
- (id)_noButton;
- (id)_yesButton;
- (id)buttons;
- (id)message;
- (id)modelSpecificLocalizedStringKeyForKey:(id)a3;
- (id)title;
- (void)alertWasDismissed:(unint64_t)a3;
@end

@implementation SUAppPurgingAlertItem

- (SUAppPurgingAlertItem)initWithHandler:(id)a3 bytesNeeded:(unint64_t)a4 includingAppleIntelligence:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SUAppPurgingAlertItem;
  v9 = [(SUBaseAlertItem *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    handler = v9->_handler;
    v9->_handler = v10;

    v9->_bytesNeeded = a4;
    v9->_includingAppleIntelligence = a5;
  }

  return v9;
}

- (void)alertWasDismissed:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SUAppPurgingAlertItem;
  [(SUBaseAlertItem *)&v6 alertWasDismissed:?];
  if (a3 != 1)
  {
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, 0);
    }
  }
}

- (id)title
{
  includingAppleIntelligence = self->_includingAppleIntelligence;
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v4 = v3;
  if (includingAppleIntelligence)
  {
    v5 = @"DISK_SPACE_AI_HEADER";
  }

  else
  {
    v5 = @"DISK_SPACE_HEADER";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];

  return v6;
}

- (id)message
{
  v3 = [MEMORY[0x277CCA8E8] stringFromByteCount:self->_bytesNeeded countStyle:2];
  includingAppleIntelligence = self->_includingAppleIntelligence;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  if (includingAppleIntelligence)
  {
    v7 = @"APP_AI_DEMOTION_BODY";
  }

  else
  {
    v7 = @"APP_DEMOTION_BODY";
  }

  v8 = [(SUAppPurgingAlertItem *)self modelSpecificLocalizedStringKeyForKey:v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v10 = [v5 stringWithFormat:v9, v3];

  return v10;
}

- (id)buttons
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SUAppPurgingAlertItem *)self _yesButton];
  [v3 addObject:v4];

  v5 = [(SUAppPurgingAlertItem *)self _manageStorageButton];
  [v3 addObject:v5];

  v6 = [(SUAppPurgingAlertItem *)self _noButton];
  [v3 addObject:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)_yesButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"DISK_SPACE_DEFAULT" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SUAppPurgingAlertItem__yesButton__block_invoke;
  v8[3] = &unk_279CAA708;
  v8[4] = self;
  v6 = [(SUAlertButtonDefinition *)v3 initWithLabel:v5 presentationStyle:0 isPreferredButton:1 handler:v8];

  return v6;
}

uint64_t __35__SUAppPurgingAlertItem__yesButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User accepted.", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (id)_manageStorageButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"MANAGE_STORAGE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUAppPurgingAlertItem__manageStorageButton__block_invoke;
  v8[3] = &unk_279CAA708;
  v8[4] = self;
  v6 = [(SUAlertButtonDefinition *)v3 initWithLabel:v5 presentationStyle:0 isPreferredButton:0 handler:v8];

  return v6;
}

void __45__SUAppPurgingAlertItem__manageStorageButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User chose to manage storage.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(*(a1 + 32) + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, 2);
  }

  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/STORAGE_MGMT"];
  v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v12 openSensitiveURL:v22 withOptions:0];

  v13 = SULogAlerts();
  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  SULogInfoForSubsystem(v13, @"[%@] %@ to open the storage page", v16, v17, v18, v19, v20, v21, v15);
}

- (id)_noButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"CANCEL_UPDATE_BUTTON" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SUAppPurgingAlertItem__noButton__block_invoke;
  v8[3] = &unk_279CAA708;
  v8[4] = self;
  v6 = [(SUAlertButtonDefinition *)v3 initWithLabel:v5 presentationStyle:2 isPreferredButton:0 handler:v8];

  return v6;
}

uint64_t __34__SUAppPurgingAlertItem__noButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User declined.", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (id)modelSpecificLocalizedStringKeyForKey:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  v5 = [v4 uppercaseString];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v6 hasSuffix:@"_SIMULATOR"])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:", @"_SIMULATOR"}];

    v6 = v7;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v3, v6];

  return v8;
}

@end