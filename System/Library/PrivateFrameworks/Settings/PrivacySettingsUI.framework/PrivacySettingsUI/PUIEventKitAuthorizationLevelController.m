@interface PUIEventKitAuthorizationLevelController
- (id)footerStringForSpecifiers:(id)a3;
- (id)specifiers;
- (void)_handleUpgradePromptNotification:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation PUIEventKitAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUIEventKitAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUICalendarPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PUICalendarPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [v5 isEqualToString:self->_clientIdentifier];

  if (v6)
  {
    v7 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PUIEventKitAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_279BA0B28;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUIEventKitAuthorizationLevelController;
  v4 = a3;
  [(PUIEventKitAuthorizationLevelController *)&v9 setSpecifier:v4];
  v5 = [v4 identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [v4 propertyForKey:@"appBundleID"];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v7;
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&v2->super.super.super.super.super.super.isa + v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11.receiver = v2;
    v11.super_class = PUIEventKitAuthorizationLevelController;
    v5 = [(PSListItemsController *)&v11 specifiers];
    [v4 addObjectsFromArray:v5];

    v6 = [v4 firstObject];
    v7 = [(PUIEventKitAuthorizationLevelController *)v2 footerStringForSpecifiers:v4];
    if (v7)
    {
      [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    }

    v8 = *(&v2->super.super.super.super.super.super.isa + v3);
    *(&v2->super.super.super.super.super.super.isa + v3) = v4;
  }

  objc_sync_exit(v2);

  v9 = *(&v2->super.super.super.super.super.super.isa + v3);

  return v9;
}

- (id)footerStringForSpecifiers:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = self;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 values];
        v11 = [v10 firstObject];
        v12 = [v11 isEqual:&unk_28772B288];

        v13 = [v9 values];
        v14 = [v13 firstObject];
        v15 = [v14 isEqual:&unk_28772B2A0];

        if ((v12 & 1) != 0 || v15)
        {

          v18 = MEMORY[0x277CC1E70];
          v19 = [(PUIEventKitAuthorizationLevelController *)v25 serviceKey];
          v17 = [v18 bundleRecordWithApplicationIdentifier:v19 error:0];

          v20 = [v17 localizedName];
          if (v20)
          {
            v21 = MEMORY[0x277CCACA8];
            v22 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_EVENTKIT_FOOTER");
            v16 = [v21 stringWithFormat:v22, v20];
          }

          else
          {
            v16 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_EVENTKIT_FOOTER_NO_APP_NAME");
          }

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = v4;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

@end