@interface __PSCalendarPolicyAuthorizationLevelController
- (id)footerStringForSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation __PSCalendarPolicyAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = __PSCalendarPolicyAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PSCalendarPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [v5 isEqualToString:self->_clientIdentifier];

  if (v6)
  {
    v7 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83____PSCalendarPolicyAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_1E71DBE20;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = __PSCalendarPolicyAuthorizationLevelController;
  specifierCopy = specifier;
  [(PSListController *)&v9 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = identifier;

  v7 = [specifierCopy propertyForKey:@"BUNDLE_ID"];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v7;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->super.super._specifiers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10.receiver = selfCopy;
    v10.super_class = __PSCalendarPolicyAuthorizationLevelController;
    specifiers = [(PSListItemsController *)&v10 specifiers];
    [(NSArray *)v3 addObjectsFromArray:specifiers];

    firstObject = [(NSArray *)v3 firstObject];
    v6 = [(__PSCalendarPolicyAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v3];
    if (v6)
    {
      [firstObject setProperty:v6 forKey:@"footerText"];
    }

    specifiers = selfCopy->super.super._specifiers;
    selfCopy->super.super._specifiers = v3;
  }

  objc_sync_exit(selfCopy);

  v8 = selfCopy->super.super._specifiers;

  return v8;
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v31 = *MEMORY[0x1E69E9840];
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
        v12 = [firstObject isEqual:&unk_1EFE659B8];

        values2 = [v9 values];
        firstObject2 = [values2 firstObject];
        v15 = [firstObject2 isEqual:&unk_1EFE659D0];

        if ((v12 & 1) != 0 || v15)
        {

          v18 = MEMORY[0x1E69635F8];
          serviceKey = [(__PSCalendarPolicyAuthorizationLevelController *)selfCopy serviceKey];
          v17 = [v18 bundleRecordWithApplicationIdentifier:serviceKey error:0];

          localizedName = [v17 localizedName];
          v21 = +[PSCalendarPolicyController loadPrivacySettingsBundle];
          v22 = v21;
          if (localizedName)
          {
            v23 = @"CALENDARS_AUTH_EVENTKIT_FOOTER";
          }

          else
          {
            v23 = @"CALENDARS_AUTH_EVENTKIT_FOOTER_NO_APP_NAME";
          }

          v16 = [v21 localizedStringForKey:v23 value:&stru_1EFE45030 table:@"Privacy"];

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

  return v16;
}

@end