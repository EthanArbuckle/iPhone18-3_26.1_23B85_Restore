@interface PSDriverPolicyForApp
- (PSDriverPolicyForApp)initWithBundleIdentifier:(id)identifier;
- (PSDriverPolicyForAppDelegate)delegate;
- (id)specifiers;
- (id)valueForSpecifier:(id)specifier;
- (void)approvalStateDidChange:(BOOL)change;
- (void)dealloc;
- (void)setValue:(id)value forSpecifier:(id)specifier;
@end

@implementation PSDriverPolicyForApp

- (PSDriverPolicyForApp)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = PSDriverPolicyForApp;
  v5 = [(PSDriverPolicyForApp *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PSDriverPolicyForApp *)v5 setBundleIdentifier:identifierCopy];
    sharedManager = [getDriverManagerClass() sharedManager];
    [sharedManager addObserver:v6];

    sharedManager2 = [getDriverManagerClass() sharedManager];
    [sharedManager2 refresh];
  }

  return v6;
}

- (void)dealloc
{
  sharedManager = [getDriverManagerClass() sharedManager];
  [sharedManager removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSDriverPolicyForApp;
  [(PSDriverPolicyForApp *)&v4 dealloc];
}

- (id)valueForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = userInfo;
  if (userInfo)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(userInfo, "driverIsApproved")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  userInfo = [specifier userInfo];
  v8 = userInfo;
  if (userInfo && ([userInfo updatePending] & 1) == 0)
  {
    if ([v8 driverIsApproved])
    {
      sharedManager = [getDriverManagerClass() sharedManager];
      [sharedManager setDriverState:v8 approved:{objc_msgSend(valueCopy, "BOOLValue")}];
    }

    else if ([valueCopy BOOLValue])
    {
      v10 = MEMORY[0x1E69DC650];
      v11 = MEMORY[0x1E696AEC0];
      v12 = PS_LocalizedStringForDriverPolicy(@"CONFIRMATION_DIALOG_TITLE");
      displayName = [v8 displayName];
      v14 = [v11 stringWithFormat:v12, displayName];
      usageText = [v8 usageText];
      v16 = [v10 alertControllerWithTitle:v14 message:usageText preferredStyle:1];

      v17 = MEMORY[0x1E69DC648];
      v18 = PS_LocalizedStringForDriverPolicy(@"CONFIRMATION_DIALOG_ENABLE_BUTTON");
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __46__PSDriverPolicyForApp_setValue_forSpecifier___block_invoke;
      v24[3] = &unk_1E71DC000;
      v25 = v8;
      v26 = valueCopy;
      v19 = [v17 actionWithTitle:v18 style:0 handler:v24];

      [v16 addAction:v19];
      v20 = MEMORY[0x1E69DC648];
      v21 = PS_LocalizedStringForDriverPolicy(@"CONFIRMATION_DIALOG_CANCEL_BUTTON");
      v22 = [v20 actionWithTitle:v21 style:1 handler:&__block_literal_global_4];

      [v16 addAction:v22];
      delegate = [(PSDriverPolicyForApp *)self delegate];
      [delegate showController:v16 animate:1];
    }
  }
}

void __46__PSDriverPolicyForApp_setValue_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [getDriverManagerClass() sharedManager];
  [v2 setDriverState:*(a1 + 32) approved:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
}

- (id)specifiers
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  sharedManager = [getDriverManagerClass() sharedManager];
  bundleIdentifier = [(PSDriverPolicyForApp *)self bundleIdentifier];
  v5 = [sharedManager driverApprovalStatesForThirdPartyApp:bundleIdentifier];

  if ([v5 count])
  {
    v6 = PS_LocalizedStringForDriverPolicy(@"FORM_TITLE");
    v7 = [PSSpecifier groupSpecifierWithID:@"DRIVERS_GROUP" name:v6];

    v18 = v7;
    [array addObject:v7];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          displayName = [v13 displayName];
          v15 = [PSSpecifier preferenceSpecifierNamed:displayName target:self set:sel_setValue_forSpecifier_ get:sel_valueForSpecifier_ detail:0 cell:6 edit:0];

          [v15 setUserInfo:v13];
          [array addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = PS_LocalizedStringForDriverPolicy(@"FORM_DESCRIPTION");
    [v18 setProperty:v16 forKey:@"footerText"];

    v5 = v19;
  }

  return array;
}

- (void)approvalStateDidChange:(BOOL)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PSDriverPolicyForApp_approvalStateDidChange___block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__PSDriverPolicyForApp_approvalStateDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 reloadSpecifiers];
}

- (PSDriverPolicyForAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end