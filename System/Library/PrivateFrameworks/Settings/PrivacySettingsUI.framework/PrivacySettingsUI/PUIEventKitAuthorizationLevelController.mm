@interface PUIEventKitAuthorizationLevelController
- (id)footerStringForSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation PUIEventKitAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUIEventKitAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUICalendarPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PUICalendarPrivacyUpgradePromptAppIdentifierKey"];
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

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PUIEventKitAuthorizationLevelController;
  specifierCopy = specifier;
  [(PUIEventKitAuthorizationLevelController *)&v9 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = identifier;

  v7 = [specifierCopy propertyForKey:@"appBundleID"];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v7;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&selfCopy->super.super.super.super.super.super.isa + v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11.receiver = selfCopy;
    v11.super_class = PUIEventKitAuthorizationLevelController;
    specifiers = [(PSListItemsController *)&v11 specifiers];
    [v4 addObjectsFromArray:specifiers];

    firstObject = [v4 firstObject];
    v7 = [(PUIEventKitAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v4];
    if (v7)
    {
      [firstObject setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    }

    v8 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.super.isa + v3) = v4;
  }

  objc_sync_exit(selfCopy);

  v9 = *(&selfCopy->super.super.super.super.super.super.isa + v3);

  return v9;
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  specifiersCopy = specifiers;
  v5 = [specifiersCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        values = [v9 values];
        firstObject = [values firstObject];
        v12 = [firstObject isEqual:&unk_28772B288];

        values2 = [v9 values];
        firstObject2 = [values2 firstObject];
        v15 = [firstObject2 isEqual:&unk_28772B2A0];

        if ((v12 & 1) != 0 || v15)
        {

          v18 = MEMORY[0x277CC1E70];
          serviceKey = [(PUIEventKitAuthorizationLevelController *)selfCopy serviceKey];
          v17 = [v18 bundleRecordWithApplicationIdentifier:serviceKey error:0];

          localizedName = [v17 localizedName];
          if (localizedName)
          {
            v21 = MEMORY[0x277CCACA8];
            v22 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_EVENTKIT_FOOTER");
            v16 = [v21 stringWithFormat:v22, localizedName];
          }

          else
          {
            v16 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_EVENTKIT_FOOTER_NO_APP_NAME");
          }

          goto LABEL_15;
        }
      }

      v6 = [specifiersCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = specifiersCopy;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

@end