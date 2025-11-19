@interface PSWalletPolicyController
- (PSWalletPolicyController)initWithBundleIdentifier:(id)a3;
- (id)specifier;
- (id)walletAuthorizationType;
@end

@implementation PSWalletPolicyController

- (PSWalletPolicyController)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PSWalletPolicyController;
  v6 = [(PSWalletPolicyController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v8 = getFKPrivacySettingsControllerClass_softClass;
    v18 = getFKPrivacySettingsControllerClass_softClass;
    if (!getFKPrivacySettingsControllerClass_softClass)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getFKPrivacySettingsControllerClass_block_invoke;
      v14[3] = &unk_1E71DBC78;
      v14[4] = &v15;
      __getFKPrivacySettingsControllerClass_block_invoke(v14);
      v8 = v16[3];
    }

    v9 = v8;
    _Block_object_dispose(&v15, 8);
    v10 = [[v8 alloc] initWithBundleIdentifier:v7->_bundleIdentifier];
    privacyController = v7->_privacyController;
    v7->_privacyController = v10;
  }

  return v7;
}

- (id)walletAuthorizationType
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [self->_privacyController authorizationType];

  return [v2 numberWithUnsignedInteger:v3];
}

- (id)specifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = TCCAccessCopyBundleIdentifiersForService();
  v4 = TCCAccessCopyBundleIdentifiersDisabledForService();
  if (([v3 containsObject:self->_bundleIdentifier] & 1) != 0 || objc_msgSend(v4, "containsObject:", self->_bundleIdentifier))
  {
    v5 = PSBundlePathForPreferenceBundle(@"Privacy/WalletPrivacySettings");
    v7 = v6 = v5;

    v8 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
    if (v8)
    {
      v9 = PS_LocalizedStringForSystemPolicy(@"WALLET");
      v10 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v9, self, 0, sel_walletAuthorizationType, [v8 classNamed:@"WalletPrivacySettings.FinanceDataAuthorizationLevelController"], 2, 0);

      [v10 setProperty:self->_bundleIdentifier forKey:@"bundleID"];
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      v11 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v11 userInterfaceIdiom])
      {
        v12 = @"com.apple.PassbookStub";
      }

      else
      {
        v12 = @"com.apple.Passbook";
      }

      [v10 setObject:v12 forKeyedSubscript:@"appIDForLazyIcon"];

      v13 = PS_LocalizedStringForSystemPolicy(@"WALLET_SELECTED_ACCOUNTS");
      v17[0] = v13;
      v14 = PS_LocalizedStringForSystemPolicy(@"WALLET_NO_ACCOUNTS");
      v17[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [v10 setValues:&unk_1EFE65EC8 titles:v15];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end