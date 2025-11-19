@interface KeychainSyncAdvancedSecurityCodeController
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_finishedWithSpecifier:(id)a3;
- (void)nextPressed;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation KeychainSyncAdvancedSecurityCodeController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = KeychainSyncAdvancedSecurityCodeController;
  [(PSListController *)&v7 viewDidLoad];
  v3 = +[PSKeychainSyncManager sharedManager];
  v4 = [v3 isRunningInBuddy];

  if ((v4 & 1) == 0)
  {
    v5 = [(KeychainSyncAdvancedSecurityCodeController *)self navigationItem];
    v6 = PS_LocalizedStringForKeychainSync(@"ADVANCED_SECURITY_OPTIONS");
    [v5 setTitle:v6];
  }
}

- (id)specifiers
{
  specifiers = self->super.super._specifiers;
  if (!specifiers)
  {
    v19.receiver = self;
    v19.super_class = KeychainSyncAdvancedSecurityCodeController;
    v4 = [(PSKeychainSyncViewController *)&v19 specifiers];
    v5 = [(PSKeychainSyncViewController *)self groupSpecifier];
    [v5 setProperty:MEMORY[0x1E695E118] forKey:@"isRadioGroup"];

    v6 = +[PSKeychainSyncManager sharedManager];
    v7 = [v6 isRunningInBuddy];

    if (v7)
    {
      v8 = [(PSKeychainSyncViewController *)self headerView];
      v9 = PS_LocalizedStringForKeychainSync(@"ADVANCED_SECURITY_CODE_OPTIONS");
      [v8 setTitleText:v9];
    }

    v10 = PS_LocalizedStringForKeychainSync(@"CREATE_COMPLEX_CODE");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&unk_1EFE65E08 forKey:@"securityCodeChoice"];
    [v11 setProperty:&unk_1EFE65DF0 forKey:@"accessory"];
    [v4 addObject:v11];
    v12 = PS_LocalizedStringForKeychainSync(@"CREATE_RANDOM_CODE");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&unk_1EFE65E20 forKey:@"securityCodeChoice"];
    [v13 setProperty:&unk_1EFE65DF0 forKey:@"accessory"];
    [v4 addObject:v13];
    if (self->_showsDisableRecoveryOption)
    {
      v14 = PS_LocalizedStringForKeychainSync(@"DONT_CREATE_SECURITY_CODE");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v15 setProperty:&unk_1EFE65E38 forKey:@"securityCodeChoice"];
      [v15 setProperty:&unk_1EFE65DF0 forKey:@"accessory"];
      [v4 addObject:v15];
      v16 = [(PSKeychainSyncViewController *)self groupSpecifier];
      v17 = PS_LocalizedStringForKeychainSync(@"DISABLE_RECOVERY_DETAILS");
      [v16 setProperty:v17 forKey:@"footerText"];
    }

    specifiers = self->super.super._specifiers;
  }

  return specifiers;
}

- (void)_finishedWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"securityCodeChoice"];
  v6 = [v5 intValue];

  if (v6 == 3)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = PS_LocalizedStringForKeychainSync(@"DONT_CREATE_SECURITY_CODE_QUESTION");
    v9 = PS_LocalizedStringForKeychainSync(@"DISABLE_RECOVERY_DESCRIPTION");
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = MEMORY[0x1E69DC648];
    v12 = PS_LocalizedStringForKeychainSync(@"GO_BACK");
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__KeychainSyncAdvancedSecurityCodeController__finishedWithSpecifier___block_invoke;
    v19[3] = &unk_1E71DC288;
    v19[4] = self;
    v13 = [v11 actionWithTitle:v12 style:1 handler:v19];
    [v10 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = PS_LocalizedStringForKeychainSync(@"SKIP_CODE");
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__KeychainSyncAdvancedSecurityCodeController__finishedWithSpecifier___block_invoke_2;
    v18[3] = &unk_1E71DC288;
    v18[4] = self;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v18];
    [v10 addAction:v16];

    [(KeychainSyncAdvancedSecurityCodeController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v10 = [(PSKeychainSyncViewController *)self delegate];
    v17 = [v4 propertyForKey:@"securityCodeChoice"];
    [v10 keychainSyncController:self didFinishWithResult:v17 error:0];
  }
}

void __69__KeychainSyncAdvancedSecurityCodeController__finishedWithSpecifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) table];
  v2 = [*(a1 + 32) table];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:1];
}

void __69__KeychainSyncAdvancedSecurityCodeController__finishedWithSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keychainSyncController:*(a1 + 32) didFinishWithResult:&unk_1EFE65E38 error:0];

  v5 = [*(a1 + 32) table];
  v3 = [*(a1 + 32) table];
  v4 = [v3 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v4 animated:1];
}

- (void)nextPressed
{
  v3 = [(PSKeychainSyncViewController *)self groupSpecifier];
  v4 = [v3 propertyForKey:@"radioGroupCheckedSpecifier"];

  [(KeychainSyncAdvancedSecurityCodeController *)self _finishedWithSpecifier:v4];
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v4 = [PSKeychainSyncManager sharedManager:a3];
  v5 = [v4 isRunningInBuddy];

  return v5 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:a4]];
  [(KeychainSyncAdvancedSecurityCodeController *)self _finishedWithSpecifier:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:v7]];
  v23.receiver = self;
  v23.super_class = KeychainSyncAdvancedSecurityCodeController;
  v9 = [(PSListController *)&v23 tableView:v6 cellForRowAtIndexPath:v7];

  v10 = [v9 textLabel];
  [v10 setNumberOfLines:0];

  v11 = [v9 textLabel];
  [v11 setLineBreakMode:0];

  v12 = [v9 textLabel];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v8 propertyForKey:@"accessory"];
  [v9 setAccessoryType:{objc_msgSend(v14, "intValue")}];

  if (self->_cellTextWidth == 0.0)
  {
    v15 = [v9 layoutManager];
    v16 = [(KeychainSyncAdvancedSecurityCodeController *)self view];
    [v16 frame];
    [v15 textRectForCell:v9 rowWidth:1 forSizing:CGRectGetWidth(v25)];
    v18 = v17;

    self->_cellTextWidth = v18;
    v19 = [v9 textLabel];
    v20 = [v19 font];
    cellFont = self->_cellFont;
    self->_cellFont = v20;

    [v6 reloadData];
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_cellTextWidth > 0.0 && self->_cellFont)
  {
    v8 = +[PSKeychainSyncManager sharedManager];
    v9 = [v8 isRunningInBuddy];

    v10 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:v7]];
    v11 = [v10 name];
    cellTextWidth = self->_cellTextWidth;
    cellFont = self->_cellFont;
    v25 = *MEMORY[0x1E69DB648];
    v26[0] = cellFont;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v11 boundingRectWithSize:1 options:v14 attributes:0 context:{cellTextWidth, 1.79769313e308}];
    v16 = v15;

    v17 = 12.0;
    if (v9)
    {
      v17 = 20.0;
    }

    v18 = 45.0;
    if (v9)
    {
      v18 = 60.0;
    }

    v19 = v16 + v17 * 2.0;
    v20 = floorf(v19);
    if (v18 >= v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = KeychainSyncAdvancedSecurityCodeController;
    [(PSListController *)&v24 tableView:v6 heightForRowAtIndexPath:v7];
    v21 = v22;
  }

  return v21;
}

@end