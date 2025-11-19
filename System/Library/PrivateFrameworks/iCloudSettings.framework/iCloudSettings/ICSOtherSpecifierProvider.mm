@interface ICSOtherSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSOtherSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)_specifierForLookMeUpByEmail;
- (id)_specifiersForServerProvidedFooter;
- (id)account;
- (void)_footerButtonTapped:(id)a3;
@end

@implementation ICSOtherSpecifierProvider

- (ICSOtherSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSOtherSpecifierProvider;
  v6 = [(ICSOtherSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

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
      v7 = [(ICSOtherSpecifierProvider *)self _specifierForLookMeUpByEmail];
      if (v7)
      {
        [v5 addObject:v6];
        [v5 addObject:v7];
      }

      v8 = [(ICSOtherSpecifierProvider *)self _specifiersForServerProvidedFooter];
      [v5 addObjectsFromArray:v8];
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
  v3 = [(ICSOtherSpecifierProvider *)self account];
  v4 = [v3 isProvisionedForDataclass:*MEMORY[0x277CB8938]];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"CloudKitSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
    v6 = NSClassFromString(&cfstr_Cksettingscont.isa);
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CLOUD_DRIVE_PRIVACY_INFO" value:&stru_288487370 table:@"Localizable-AppleID"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:v6 cell:2 edit:0];

    [v10 setIdentifier:@"CLOUD_DRIVE_PRIVACY_INFO"];
    v11 = [(ICSOtherSpecifierProvider *)self account];
    v12 = [v11 aa_cloudKitAccount];

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v15 specifier];
        v17 = [v16 userInfo];
        v18 = [v17 mutableCopy];

        [v18 setObject:v12 forKeyedSubscript:*MEMORY[0x277CE8550]];
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
  v4 = [(ICSOtherSpecifierProvider *)self account];
  v5 = [v4 aa_accountFooterText];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [(ICSOtherSpecifierProvider *)self account];
    v9 = [v8 aa_accountFooterText];
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

    [v7 setProperty:&unk_28849FD40 forKey:*MEMORY[0x277D3FF40]];
    [v3 addObject:v7];
  }

  v10 = [(ICSOtherSpecifierProvider *)self account];
  v11 = [v10 aa_accountFooterButton];

  if (v11)
  {
    v12 = [(ICSOtherSpecifierProvider *)self account];
    v13 = [v12 aa_accountFooterButton];
    v14 = [v13 objectForKey:@"title"];

    v15 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v3 addObject:v15];

    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
    *&v16[*MEMORY[0x277D3FC80]] = sel__footerButtonTapped_;
    [v3 addObject:v16];
  }

  return v3;
}

- (void)_footerButtonTapped:(id)a3
{
  v3 = [(ICSOtherSpecifierProvider *)self account];
  v4 = [v3 aa_accountFooterButton];
  v6 = [v4 objectForKey:@"url"];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [*MEMORY[0x277D76620] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end