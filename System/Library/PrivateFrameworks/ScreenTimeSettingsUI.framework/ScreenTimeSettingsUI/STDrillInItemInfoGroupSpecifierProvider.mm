@interface STDrillInItemInfoGroupSpecifierProvider
- (STDrillInItemInfoGroupSpecifierProvider)initWithUsageItem:(id)a3;
- (id)ageRating:(id)a3;
- (id)category:(id)a3;
- (id)developer:(id)a3;
- (void)_didFetchAppInfo:(id)a3;
@end

@implementation STDrillInItemInfoGroupSpecifierProvider

- (STDrillInItemInfoGroupSpecifierProvider)initWithUsageItem:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 itemType];
  if (v7 > 6 || ((1 << v7) & 0x54) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"STDrillInItemInfoGroupSpecifierProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"(itemType == STUsageItemTypeApp) || (itemType == STUsageItemTypeWebsite) || (itemType == STUsageItemTypePickups)"}];
  }

  v42.receiver = self;
  v42.super_class = STDrillInItemInfoGroupSpecifierProvider;
  v10 = [(STGroupSpecifierProvider *)&v42 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_usageItem, a3);
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = MEMORY[0x277D3FAD8];
    v14 = [v12 localizedStringForKey:@"MostUsedAppInfoGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v15 = [v13 groupSpecifierWithName:v14];

    if ([v6 usageTrusted])
    {
      goto LABEL_18;
    }

    v16 = [v6 itemType];
    v17 = 0;
    if (v16 <= 6)
    {
      if (((1 << v16) & 0x64) != 0)
      {
        v19 = @"UntrustedApplicationFooterFormat";
      }

      else
      {
        if (((1 << v16) & 0xA) != 0)
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:a2 object:v11 file:@"STDrillInItemInfoGroupSpecifierProvider.m" lineNumber:49 description:@"All screen time and category usage is trusted."];

          v17 = 0;
          goto LABEL_17;
        }

        if (v16 != 4)
        {
          goto LABEL_17;
        }

        v19 = @"UntrustedWebsiteFooterTextFormat";
      }

      v17 = [v12 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
    }

LABEL_17:
    v20 = MEMORY[0x277CCACA8];
    v21 = [v6 displayName];
    v22 = [v20 localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, v21];
    [v15 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FF88]];

LABEL_18:
    [(STGroupSpecifierProvider *)v11 setGroupSpecifier:v15];
    v23 = MEMORY[0x277D3FAD8];
    v24 = [v6 displayName];
    v25 = [v23 preferenceSpecifierNamed:v24 target:v11 set:0 get:sel_usageItem_ detail:0 cell:-1 edit:0];
    appIconSpecifier = v11->_appIconSpecifier;
    v11->_appIconSpecifier = v25;

    [(PSSpecifier *)v11->_appIconSpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [(PSSpecifier *)v11->_appIconSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v27 = [(STGroupSpecifierProvider *)v11 mutableSpecifiers];
    [v27 addObject:v11->_appIconSpecifier];
    v28 = [v6 categoryIdentifier];
    if (v28)
    {
      v29 = v28;
      v30 = [v6 categoryIdentifier];
      if ([v30 isEqualToString:*MEMORY[0x277CF9620]] & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CF9610]))
      {
      }

      else
      {
        v41 = [v30 isEqualToString:*MEMORY[0x277CF9618]];

        if (v41)
        {
          goto LABEL_23;
        }

        v29 = [v12 localizedStringForKey:@"MostUsedAppCategorySpecifierName" value:&stru_28766E5A8 table:0];
        v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:v11 set:0 get:sel_category_ detail:0 cell:4 edit:0];
        [v27 addObject:v30];
      }
    }

LABEL_23:
    if (v7 != 4)
    {
      v31 = [v12 localizedStringForKey:@"MostUsedAppAgeRatingSpecifierName" value:&stru_28766E5A8 table:0];
      v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v31 target:v11 set:0 get:sel_ageRating_ detail:0 cell:4 edit:0];
      ageRatingSpecifier = v11->_ageRatingSpecifier;
      v11->_ageRatingSpecifier = v32;

      v34 = [v12 localizedStringForKey:@"MostUsedAppDeveloperSpecifierName" value:&stru_28766E5A8 table:0];
      v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v34 target:v11 set:0 get:sel_developer_ detail:0 cell:4 edit:0];
      developerSpecifier = v11->_developerSpecifier;
      v11->_developerSpecifier = v35;

      v43[0] = v11->_ageRatingSpecifier;
      v43[1] = v11->_developerSpecifier;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
      [v27 addObjectsFromArray:v37];

      v38 = [MEMORY[0x277D4B8C0] sharedCache];
      v39 = [v6 budgetItemIdentifier];
      [v38 addObserver:v11 selector:sel__didFetchAppInfo_ bundleIdentifier:v39];
    }
  }

  return v11;
}

- (id)category:(id)a3
{
  v3 = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  v4 = [v3 categoryIdentifier];
  v5 = STCategoryNameWithIdentifier();

  return v5;
}

- (id)ageRating:(id)a3
{
  v4 = [MEMORY[0x277D4B8C0] sharedCache];
  v5 = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  v6 = [v5 budgetItemIdentifier];
  v7 = [v4 appInfoForBundleIdentifier:v6];

  v8 = [MEMORY[0x277D4BA40] sharedRatings];
  v9 = [v7 ratingLabel];
  v10 = [v8 localizedStringForAppRatingLabel:v9];

  return v10;
}

- (id)developer:(id)a3
{
  v4 = [MEMORY[0x277D4B8C0] sharedCache];
  v5 = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  v6 = [v5 budgetItemIdentifier];
  v7 = [v4 appInfoForBundleIdentifier:v6];

  v8 = [v7 developerName];

  return v8;
}

- (void)_didFetchAppInfo:(id)a3
{
  v4 = [(STDrillInItemInfoGroupSpecifierProvider *)self ageRatingSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:0];

  v5 = [(STDrillInItemInfoGroupSpecifierProvider *)self developerSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:v5 animated:0];
}

@end