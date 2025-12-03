@interface STAllowLocationRestrictionsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STAllowLocationRestrictionsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v23.receiver = self;
    v23.super_class = STAllowLocationRestrictionsController;
    specifiers = [(PUILocationServicesListController *)&v23 specifiers];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [STAllowLocationRestrictionsController specifiers];
    }

    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v22 = [v6 localizedStringForKey:@"AllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v8 = *MEMORY[0x277D3FFB8];
    [v7 setObject:@"ALLOW" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v21 = [v6 localizedStringForKey:@"DontAllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [v9 setObject:@"DISALLOW" forKeyedSubscript:v8];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setObject:@"ALLOW_GROUP" forKeyedSubscript:v8];
    v11 = [v6 localizedStringForKey:@"LOCATION_EXPLANATION" value:&stru_28766E5A8 table:@"Restrictions"];
    [emptyGroupSpecifier setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [emptyGroupSpecifier setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

    performGetter = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) performGetter];
    bOOLValue = [performGetter BOOLValue];

    if (bOOLValue)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    [emptyGroupSpecifier setObject:v15 forKeyedSubscript:*MEMORY[0x277D40090]];
    [specifiers insertObject:emptyGroupSpecifier atIndex:0];
    [specifiers insertObject:v7 atIndex:1];
    [specifiers insertObject:v9 atIndex:2];
    allowedGroup = self->_allowedGroup;
    self->_allowedGroup = emptyGroupSpecifier;
    v17 = emptyGroupSpecifier;

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = specifiers;

    objc_sync_exit(selfCopy);
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = [(STAllowLocationRestrictionsController *)self indexPathForIndex:[(STAllowLocationRestrictionsController *)self indexOfSpecifier:self->_allowedGroup]];
  section2 = [v9 section];

  if (section == section2)
  {
    if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__STAllowLocationRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke;
      v20[3] = &unk_279B7CC40;
      v21 = viewCopy;
      v22 = pathCopy;
      selfCopy = self;
      [(PSListController *)self st_showPINSheetWithCompletion:v20];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = STAllowLocationRestrictionsController;
      [(STAllowLocationRestrictionsController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
      v11 = [(STAllowLocationRestrictionsController *)self specifierAtIndex:[(STAllowLocationRestrictionsController *)self indexForIndexPath:pathCopy]];
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:@"ALLOW"];

      v14 = *MEMORY[0x277D3FD20];
      v15 = *(&self->super.super.super.super.super.super.isa + v14);
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      [v15 performSetterWithValue:v16];

      [(PUILocationServicesListController *)self updateSpecifiersForImposedSettings];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
      [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.super.isa + v14)];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STAllowLocationRestrictionsController;
    [(STAllowLocationRestrictionsController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

void __75__STAllowLocationRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v12.receiver = *(a1 + 48);
    v12.super_class = STAllowLocationRestrictionsController;
    objc_msgSendSuper2(&v12, sel_tableView_didSelectRowAtIndexPath_, v4, v3);
    v5 = [*(a1 + 48) specifierAtIndex:{objc_msgSend(*(a1 + 48), "indexForIndexPath:", *(a1 + 40))}];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:@"ALLOW"];

    v8 = *MEMORY[0x277D3FD20];
    v9 = *(*(a1 + 48) + v8);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [v9 performSetterWithValue:v10];

    [*(a1 + 48) updateSpecifiersForImposedSettings];
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + *MEMORY[0x277D3FD08]));
    [WeakRetained reloadSpecifier:*(*(a1 + 48) + v8)];
  }
}

@end