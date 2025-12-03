@interface STAllowPhotoRestrictionsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STAllowPhotoRestrictionsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v23.receiver = self;
    v23.super_class = STAllowPhotoRestrictionsController;
    specifiers = [(PUIPhotosPrivacyController *)&v23 specifiers];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [STAllowPhotoRestrictionsController specifiers];
    }

    performGetter = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) performGetter];
    bOOLValue = [performGetter BOOLValue];
    selfCopy = self;
    v7 = specifiers;
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v8 localizedStringForKey:@"AllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
    v11 = *MEMORY[0x277D3FFB8];
    [v10 setObject:@"ALLOW" forKeyedSubscript:*MEMORY[0x277D3FFB8]];

    v12 = [v8 localizedStringForKey:@"DontAllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
    [v13 setObject:@"DISALLOW" forKeyedSubscript:v11];

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setObject:@"ALLOW_GROUP" forKeyedSubscript:v11];
    v15 = [v8 localizedStringForKey:@"PHOTOS_EXPLANATION" value:&stru_28766E5A8 table:@"Restrictions"];
    [emptyGroupSpecifier setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [emptyGroupSpecifier setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

    if (bOOLValue)
    {
      v17 = v10;
    }

    else
    {
      v17 = v13;
    }

    [emptyGroupSpecifier setObject:v17 forKeyedSubscript:*MEMORY[0x277D40090]];
    [v7 insertObject:emptyGroupSpecifier atIndex:0];
    [v7 insertObject:v10 atIndex:1];
    [v7 insertObject:v13 atIndex:2];

    allowedGroup = selfCopy->_allowedGroup;
    selfCopy->_allowedGroup = emptyGroupSpecifier;

    v19 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v7;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = [(STAllowPhotoRestrictionsController *)self indexPathForIndex:[(STAllowPhotoRestrictionsController *)self indexOfSpecifier:self->_allowedGroup]];
  section2 = [v9 section];

  if (section == section2 && [(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__STAllowPhotoRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke;
    v31[3] = &unk_279B7CC40;
    v32 = viewCopy;
    v33 = pathCopy;
    selfCopy = self;
    [(PSListController *)self st_showPINSheetWithCompletion:v31];

    v11 = v32;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = STAllowPhotoRestrictionsController;
    [(STAllowPhotoRestrictionsController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    v12 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    allowedGroup = self->_allowedGroup;
    selfCopy2 = self;
    v16 = v12;
    v11 = WeakRetained;
    v17 = allowedGroup;
    v18 = pathCopy;
    v19 = [(STAllowPhotoRestrictionsController *)selfCopy2 indexPathForIndex:[(STAllowPhotoRestrictionsController *)selfCopy2 indexOfSpecifier:v17]];
    section3 = [v19 section];

    if ([v18 section] == section3)
    {
      v29 = [v16 objectForKeyedSubscript:0x287672648];
      restrictionType = [v29 restrictionType];
      [(STAllowPhotoRestrictionsController *)selfCopy2 specifierAtIndex:[(STAllowPhotoRestrictionsController *)selfCopy2 indexForIndexPath:v18]];
      v23 = v22 = viewCopy;
      identifier = [v23 identifier];
      v25 = identifier;
      if (restrictionType == 1)
      {
        v26 = @"DISALLOW";
      }

      else
      {
        v26 = @"ALLOW";
      }

      v27 = [identifier isEqualToString:v26];

      viewCopy = v22;
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      [v16 performSetterWithValue:v28];

      [(PUIPhotosPrivacyController *)selfCopy2 updateSpecifiersForImposedSettings];
      [v11 reloadSpecifier:v16];
    }
  }
}

void __72__STAllowPhotoRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v25.receiver = *(a1 + 48);
    v25.super_class = STAllowPhotoRestrictionsController;
    objc_msgSendSuper2(&v25, sel_tableView_didSelectRowAtIndexPath_, v4, v3);
    v5 = *(a1 + 48);
    v6 = *&v5[*MEMORY[0x277D3FD20]];
    WeakRetained = objc_loadWeakRetained(&v5[*MEMORY[0x277D3FD08]]);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 1544);
    v10 = v5;
    v11 = v6;
    v12 = WeakRetained;
    v13 = v9;
    v14 = v8;
    v15 = [v10 indexPathForIndex:{objc_msgSend(v10, "indexOfSpecifier:", v13)}];
    v16 = [v15 section];

    if ([v14 section] == v16)
    {
      v17 = [v11 objectForKeyedSubscript:0x287672648];
      v18 = [v17 restrictionType];
      v19 = [v10 specifierAtIndex:{objc_msgSend(v10, "indexForIndexPath:", v14)}];
      v20 = [v19 identifier];
      v21 = v20;
      if (v18 == 1)
      {
        v22 = @"DISALLOW";
      }

      else
      {
        v22 = @"ALLOW";
      }

      v23 = [v20 isEqualToString:v22];

      v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      [v11 performSetterWithValue:v24];

      [v10 updateSpecifiersForImposedSettings];
      [v12 reloadSpecifier:v11];
    }
  }
}

@end