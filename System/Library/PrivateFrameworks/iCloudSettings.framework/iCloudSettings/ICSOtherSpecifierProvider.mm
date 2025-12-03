@interface ICSOtherSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSOtherSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)_specifierForLookMeUpByEmail;
- (id)_specifiersForServerProvidedFooter;
- (id)account;
- (void)_footerButtonTapped:(id)tapped;
@end

@implementation ICSOtherSpecifierProvider

- (ICSOtherSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICSOtherSpecifierProvider;
  v6 = [(ICSOtherSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (([MEMORY[0x277CEC7B8] isMultiUserMode] & 1) == 0)
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_GROUP"];
      _specifierForLookMeUpByEmail = [(ICSOtherSpecifierProvider *)self _specifierForLookMeUpByEmail];
      if (_specifierForLookMeUpByEmail)
      {
        [v5 addObject:v6];
        [v5 addObject:_specifierForLookMeUpByEmail];
      }

      _specifiersForServerProvidedFooter = [(ICSOtherSpecifierProvider *)self _specifiersForServerProvidedFooter];
      [v5 addObjectsFromArray:_specifiersForServerProvidedFooter];
    }

    v9 = [v5 copy];
    v10 = self->_specifiers;
    self->_specifiers = v9;

    v3 = self->_specifiers;
  }

  return v3;
}

- (id)_specifierForLookMeUpByEmail
{
  account = [(ICSOtherSpecifierProvider *)self account];
  v4 = [account isProvisionedForDataclass:*MEMORY[0x277CB8938]];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"CloudKitSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
    v6 = NSClassFromString(&cfstr_Cksettingscont.isa);
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CLOUD_DRIVE_PRIVACY_INFO" value:&stru_288487370 table:@"Localizable-AppleID"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:v6 cell:2 edit:0];

    [v10 setIdentifier:@"CLOUD_DRIVE_PRIVACY_INFO"];
    account2 = [(ICSOtherSpecifierProvider *)self account];
    aa_cloudKitAccount = [account2 aa_cloudKitAccount];

    if (aa_cloudKitAccount)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        specifier = [v15 specifier];
        userInfo = [specifier userInfo];
        v18 = [userInfo mutableCopy];

        [v18 setObject:aa_cloudKitAccount forKeyedSubscript:*MEMORY[0x277CE8550]];
        v19 = [v18 copy];
        [v10 setUserInfo:v19];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_specifiersForServerProvidedFooter
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  account = [(ICSOtherSpecifierProvider *)self account];
  aa_accountFooterText = [account aa_accountFooterText];
  v6 = [aa_accountFooterText length];

  if (v6)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    account2 = [(ICSOtherSpecifierProvider *)self account];
    aa_accountFooterText2 = [account2 aa_accountFooterText];
    [emptyGroupSpecifier setProperty:aa_accountFooterText2 forKey:*MEMORY[0x277D3FF88]];

    [emptyGroupSpecifier setProperty:&unk_28849FD40 forKey:*MEMORY[0x277D3FF40]];
    [v3 addObject:emptyGroupSpecifier];
  }

  account3 = [(ICSOtherSpecifierProvider *)self account];
  aa_accountFooterButton = [account3 aa_accountFooterButton];

  if (aa_accountFooterButton)
  {
    account4 = [(ICSOtherSpecifierProvider *)self account];
    aa_accountFooterButton2 = [account4 aa_accountFooterButton];
    v14 = [aa_accountFooterButton2 objectForKey:@"title"];

    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v3 addObject:emptyGroupSpecifier2];

    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
    *&v16[*MEMORY[0x277D3FC80]] = sel__footerButtonTapped_;
    [v3 addObject:v16];
  }

  return v3;
}

- (void)_footerButtonTapped:(id)tapped
{
  account = [(ICSOtherSpecifierProvider *)self account];
  aa_accountFooterButton = [account aa_accountFooterButton];
  v6 = [aa_accountFooterButton objectForKey:@"url"];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [*MEMORY[0x277D76620] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end