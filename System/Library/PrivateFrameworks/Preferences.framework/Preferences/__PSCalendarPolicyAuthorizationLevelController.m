@interface __PSCalendarPolicyAuthorizationLevelController
- (id)footerStringForSpecifiers:(id)a3;
- (id)specifiers;
- (void)_handleUpgradePromptNotification:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation __PSCalendarPolicyAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = __PSCalendarPolicyAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PSCalendarPrivacyUpgradePromptAppIdentifierKey"];
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

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = __PSCalendarPolicyAuthorizationLevelController;
  v4 = a3;
  [(PSListController *)&v9 setSpecifier:v4];
  v5 = [v4 identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [v4 propertyForKey:@"BUNDLE_ID"];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v7;
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->super.super._specifiers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10.receiver = v2;
    v10.super_class = __PSCalendarPolicyAuthorizationLevelController;
    v4 = [(PSListItemsController *)&v10 specifiers];
    [(NSArray *)v3 addObjectsFromArray:v4];

    v5 = [(NSArray *)v3 firstObject];
    v6 = [(__PSCalendarPolicyAuthorizationLevelController *)v2 footerStringForSpecifiers:v3];
    if (v6)
    {
      [v5 setProperty:v6 forKey:@"footerText"];
    }

    specifiers = v2->super.super._specifiers;
    v2->super.super._specifiers = v3;
  }

  objc_sync_exit(v2);

  v8 = v2->super.super._specifiers;

  return v8;
}

- (id)footerStringForSpecifiers:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
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
        v12 = [v11 isEqual:&unk_1EFE659B8];

        v13 = [v9 values];
        v14 = [v13 firstObject];
        v15 = [v14 isEqual:&unk_1EFE659D0];

        if ((v12 & 1) != 0 || v15)
        {

          v18 = MEMORY[0x1E69635F8];
          v19 = [(__PSCalendarPolicyAuthorizationLevelController *)v25 serviceKey];
          v17 = [v18 bundleRecordWithApplicationIdentifier:v19 error:0];

          v20 = [v17 localizedName];
          v21 = +[PSCalendarPolicyController loadPrivacySettingsBundle];
          v22 = v21;
          if (v20)
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

  return v16;
}

@end