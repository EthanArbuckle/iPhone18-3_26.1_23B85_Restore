@interface PSNFCDefaultAppSpecifier
- (PSNFCDefaultAppSpecifier)initWithBundleID:(id)d delegate:(id)delegate onChange:(id)change;
- (PSSystemPolicyForAppDelegate)delegate;
- (id)defaultNFCApp:(id)app;
- (void)dealloc;
- (void)setDefaultNFCApp:(id)app specifier:(id)specifier;
@end

@implementation PSNFCDefaultAppSpecifier

- (PSNFCDefaultAppSpecifier)initWithBundleID:(id)d delegate:(id)delegate onChange:(id)change
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  delegateCopy = delegate;
  changeCopy = change;
  v36.receiver = self;
  v36.super_class = PSNFCDefaultAppSpecifier;
  v11 = [(PSSpecifier *)&v36 init];
  if (v11)
  {
    v31 = dCopy;
    v12 = [MEMORY[0x1E69C86D8] contextWithBundleId:dCopy onChange:changeCopy];
    context = v11->_context;
    v11->_context = v12;

    v30 = delegateCopy;
    [(PSNFCDefaultAppSpecifier *)v11 setDelegate:delegateCopy];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DEFAULT_CONTACTLESS_APP_TITLE" value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];
    [(PSSpecifier *)v11 setName:v15];

    objc_storeWeak(&v11->super.target, v11);
    v11->super.getter = sel_defaultNFCApp_;
    v11->super.setter = sel_setDefaultNFCApp_specifier_;
    v11->super.detailControllerClass = objc_opt_class();
    v11->super.cellType = 2;
    v11->super.editPaneClass = 0;
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    context = [(PSNFCDefaultAppSpecifier *)v11 context];
    defaultAppCandidates = [context defaultAppCandidates];

    v20 = [defaultAppCandidates countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(defaultAppCandidates);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          bundleId = [v24 bundleId];
          [v17 addObject:bundleId];

          localizedDisplayName = [v24 localizedDisplayName];
          [v16 addObject:localizedDisplayName];
        }

        v21 = [defaultAppCandidates countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v21);
    }

    [(PSSpecifier *)v11 setValues:v17 titles:v16];
    [(PSSpecifier *)v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];
    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"DEFAULT_CONTACTLESS_APP_FOOTER" value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];
    [(PSSpecifier *)v11 setObject:v28 forKeyedSubscript:@"staticTextMessage"];

    [(PSSpecifier *)v11 setIdentifier:@"DEFAULT_CONTACTLESS_APP_FOOTER"];
    delegateCopy = v30;
    dCopy = v31;
  }

  return v11;
}

- (void)dealloc
{
  [(SESNFCAppSettingsContext *)self->_context invalidate];
  v3.receiver = self;
  v3.super_class = PSNFCDefaultAppSpecifier;
  [(PSNFCDefaultAppSpecifier *)&v3 dealloc];
}

- (id)defaultNFCApp:(id)app
{
  context = [(PSNFCDefaultAppSpecifier *)self context];
  getDefaultNFCApplication = [context getDefaultNFCApplication];
  bundleId = [getDefaultNFCApplication bundleId];

  return bundleId;
}

- (void)setDefaultNFCApp:(id)app specifier:(id)specifier
{
  appCopy = app;
  context = [(PSNFCDefaultAppSpecifier *)self context];
  getDefaultNFCApplication = [context getDefaultNFCApplication];
  bundleId = [getDefaultNFCApplication bundleId];
  v9 = [appCopy isEqual:bundleId];

  if ((v9 & 1) == 0)
  {
    v10 = [(PSSpecifier *)self objectForKeyedSubscript:@"PSListItemsControllerSpecifierKey"];
    nonretainedObjectValue = [v10 nonretainedObjectValue];

    context2 = [(PSNFCDefaultAppSpecifier *)self context];
    v13 = [context2 alertMessageForDefaultAppChangeTo:appCopy];

    if (v13)
    {
      v14 = MEMORY[0x1E69DC650];
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CHANGE_DEFAULT_CONTACTLESS_APP_ALERT_TITLE" value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];
      v17 = [v14 alertControllerWithTitle:v16 message:v13 preferredStyle:1];

      v18 = MEMORY[0x1E69DC648];
      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v19 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];
      v21 = v20 = nonretainedObjectValue;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __55__PSNFCDefaultAppSpecifier_setDefaultNFCApp_specifier___block_invoke;
      v32[3] = &unk_1E71DC000;
      v32[4] = self;
      v22 = v20;
      v33 = v22;
      v23 = [v18 actionWithTitle:v21 style:1 handler:v32];

      [v17 addAction:v23];
      v24 = MEMORY[0x1E69DC648];
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __55__PSNFCDefaultAppSpecifier_setDefaultNFCApp_specifier___block_invoke_2;
      v29[3] = &unk_1E71DC060;
      v29[4] = self;
      v30 = appCopy;
      v31 = v22;
      v27 = [v24 actionWithTitle:v26 style:0 handler:v29];

      [v17 addAction:v27];
      delegate = [(PSNFCDefaultAppSpecifier *)self delegate];
      [delegate showController:v17 animate:1];

      nonretainedObjectValue = v20;
    }

    else
    {
      [(SESNFCAppSettingsContext *)self->_context setDefaultNFCApplication:appCopy];
    }
  }
}

uint64_t __55__PSNFCDefaultAppSpecifier_setDefaultNFCApp_specifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 reloadSpecifiers];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

uint64_t __55__PSNFCDefaultAppSpecifier_setDefaultNFCApp_specifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setDefaultNFCApplication:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 reloadSpecifiers];

  v4 = *(a1 + 48);

  return [v4 reloadSpecifiers];
}

- (PSSystemPolicyForAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end