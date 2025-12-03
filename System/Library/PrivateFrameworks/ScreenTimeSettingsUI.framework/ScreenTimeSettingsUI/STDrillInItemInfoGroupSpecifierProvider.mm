@interface STDrillInItemInfoGroupSpecifierProvider
- (STDrillInItemInfoGroupSpecifierProvider)initWithUsageItem:(id)item;
- (id)ageRating:(id)rating;
- (id)category:(id)category;
- (id)developer:(id)developer;
- (void)_didFetchAppInfo:(id)info;
@end

@implementation STDrillInItemInfoGroupSpecifierProvider

- (STDrillInItemInfoGroupSpecifierProvider)initWithUsageItem:(id)item
{
  v43[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType > 6 || ((1 << itemType) & 0x54) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STDrillInItemInfoGroupSpecifierProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"(itemType == STUsageItemTypeApp) || (itemType == STUsageItemTypeWebsite) || (itemType == STUsageItemTypePickups)"}];
  }

  v42.receiver = self;
  v42.super_class = STDrillInItemInfoGroupSpecifierProvider;
  v10 = [(STGroupSpecifierProvider *)&v42 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_usageItem, item);
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = MEMORY[0x277D3FAD8];
    v14 = [v12 localizedStringForKey:@"MostUsedAppInfoGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v15 = [v13 groupSpecifierWithName:v14];

    if ([itemCopy usageTrusted])
    {
      goto LABEL_18;
    }

    itemType2 = [itemCopy itemType];
    v17 = 0;
    if (itemType2 <= 6)
    {
      if (((1 << itemType2) & 0x64) != 0)
      {
        v19 = @"UntrustedApplicationFooterFormat";
      }

      else
      {
        if (((1 << itemType2) & 0xA) != 0)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"STDrillInItemInfoGroupSpecifierProvider.m" lineNumber:49 description:@"All screen time and category usage is trusted."];

          v17 = 0;
          goto LABEL_17;
        }

        if (itemType2 != 4)
        {
          goto LABEL_17;
        }

        v19 = @"UntrustedWebsiteFooterTextFormat";
      }

      v17 = [v12 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
    }

LABEL_17:
    v20 = MEMORY[0x277CCACA8];
    displayName = [itemCopy displayName];
    v22 = [v20 localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, displayName];
    [v15 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FF88]];

LABEL_18:
    [(STGroupSpecifierProvider *)v11 setGroupSpecifier:v15];
    v23 = MEMORY[0x277D3FAD8];
    displayName2 = [itemCopy displayName];
    v25 = [v23 preferenceSpecifierNamed:displayName2 target:v11 set:0 get:sel_usageItem_ detail:0 cell:-1 edit:0];
    appIconSpecifier = v11->_appIconSpecifier;
    v11->_appIconSpecifier = v25;

    [(PSSpecifier *)v11->_appIconSpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [(PSSpecifier *)v11->_appIconSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v11 mutableSpecifiers];
    [mutableSpecifiers addObject:v11->_appIconSpecifier];
    categoryIdentifier = [itemCopy categoryIdentifier];
    if (categoryIdentifier)
    {
      v29 = categoryIdentifier;
      categoryIdentifier2 = [itemCopy categoryIdentifier];
      if ([categoryIdentifier2 isEqualToString:*MEMORY[0x277CF9620]] & 1) != 0 || (objc_msgSend(categoryIdentifier2, "isEqualToString:", *MEMORY[0x277CF9610]))
      {
      }

      else
      {
        v41 = [categoryIdentifier2 isEqualToString:*MEMORY[0x277CF9618]];

        if (v41)
        {
          goto LABEL_23;
        }

        v29 = [v12 localizedStringForKey:@"MostUsedAppCategorySpecifierName" value:&stru_28766E5A8 table:0];
        categoryIdentifier2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:v11 set:0 get:sel_category_ detail:0 cell:4 edit:0];
        [mutableSpecifiers addObject:categoryIdentifier2];
      }
    }

LABEL_23:
    if (itemType != 4)
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
      [mutableSpecifiers addObjectsFromArray:v37];

      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      budgetItemIdentifier = [itemCopy budgetItemIdentifier];
      [mEMORY[0x277D4B8C0] addObserver:v11 selector:sel__didFetchAppInfo_ bundleIdentifier:budgetItemIdentifier];
    }
  }

  return v11;
}

- (id)category:(id)category
{
  usageItem = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  categoryIdentifier = [usageItem categoryIdentifier];
  v5 = STCategoryNameWithIdentifier();

  return v5;
}

- (id)ageRating:(id)rating
{
  mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
  usageItem = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  budgetItemIdentifier = [usageItem budgetItemIdentifier];
  v7 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:budgetItemIdentifier];

  mEMORY[0x277D4BA40] = [MEMORY[0x277D4BA40] sharedRatings];
  ratingLabel = [v7 ratingLabel];
  v10 = [mEMORY[0x277D4BA40] localizedStringForAppRatingLabel:ratingLabel];

  return v10;
}

- (id)developer:(id)developer
{
  mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
  usageItem = [(STDrillInItemInfoGroupSpecifierProvider *)self usageItem];
  budgetItemIdentifier = [usageItem budgetItemIdentifier];
  v7 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:budgetItemIdentifier];

  developerName = [v7 developerName];

  return developerName;
}

- (void)_didFetchAppInfo:(id)info
{
  ageRatingSpecifier = [(STDrillInItemInfoGroupSpecifierProvider *)self ageRatingSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:ageRatingSpecifier animated:0];

  developerSpecifier = [(STDrillInItemInfoGroupSpecifierProvider *)self developerSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:developerSpecifier animated:0];
}

@end