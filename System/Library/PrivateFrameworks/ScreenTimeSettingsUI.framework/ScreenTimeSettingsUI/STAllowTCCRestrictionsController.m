@interface STAllowTCCRestrictionsController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation STAllowTCCRestrictionsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v31.receiver = self;
    v31.super_class = STAllowTCCRestrictionsController;
    v5 = [(PUITCCAccessController *)&v31 specifiers];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [STAllowTCCRestrictionsController specifiers];
    }

    v6 = *MEMORY[0x277D3FD20];
    v7 = *(&self->super.super.super.super.super.super.isa + v6);
    v8 = [(PUITCCAccessController *)self explanation];
    v30 = [*(&self->super.super.super.super.super.super.isa + v6) performGetter];
    v9 = [v30 BOOLValue];
    v10 = self;
    v11 = v7;
    v28 = v5;
    v29 = v8;
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v27 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:0x287672648];
      v26 = v9 ^ ([v13 restrictionType] == 1);
    }

    else
    {
      v26 = v9;
    }

    v14 = [v12 localizedStringForKey:@"AllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:v10 set:0 get:0 detail:0 cell:3 edit:0];
    v16 = *MEMORY[0x277D3FFB8];
    [v15 setObject:@"ALLOW" forKeyedSubscript:*MEMORY[0x277D3FFB8]];

    v17 = [v12 localizedStringForKey:@"DontAllowChangesSpecifierName" value:&stru_28766E5A8 table:@"Restrictions"];
    v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:v10 set:0 get:0 detail:0 cell:3 edit:0];
    [v18 setObject:@"DISALLOW" forKeyedSubscript:v16];

    v19 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v19 setObject:@"ALLOW_GROUP" forKeyedSubscript:v16];
    v20 = [v12 localizedStringForKey:v29 value:&stru_28766E5A8 table:@"Restrictions"];

    [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

    if (v26)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x277D40090]];
    [v28 insertObject:v19 atIndex:0];
    [v28 insertObject:v15 atIndex:1];
    [v28 insertObject:v18 atIndex:2];

    allowedGroup = v10->_allowedGroup;
    v10->_allowedGroup = v19;

    v24 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v28;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [(STAllowTCCRestrictionsController *)self indexPathForIndex:[(STAllowTCCRestrictionsController *)self indexOfSpecifier:self->_allowedGroup]];
  v10 = [v9 section];

  if (v8 == v10 && [(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__STAllowTCCRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke;
    v31[3] = &unk_279B7CC40;
    v32 = v6;
    v33 = v7;
    v34 = self;
    [(PSListController *)self st_showPINSheetWithCompletion:v31];

    v11 = v32;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = STAllowTCCRestrictionsController;
    [(STAllowTCCRestrictionsController *)&v30 tableView:v6 didSelectRowAtIndexPath:v7];
    v12 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    allowedGroup = self->_allowedGroup;
    v15 = self;
    v16 = v12;
    v11 = WeakRetained;
    v17 = allowedGroup;
    v18 = v7;
    v19 = [(STAllowTCCRestrictionsController *)v15 indexPathForIndex:[(STAllowTCCRestrictionsController *)v15 indexOfSpecifier:v17]];
    v20 = [v19 section];

    if ([v18 section] == v20)
    {
      v29 = [v16 objectForKeyedSubscript:0x287672648];
      v21 = [v29 restrictionType];
      [(STAllowTCCRestrictionsController *)v15 specifierAtIndex:[(STAllowTCCRestrictionsController *)v15 indexForIndexPath:v18]];
      v23 = v22 = v6;
      v24 = [v23 identifier];
      v25 = v24;
      if (v21 == 1)
      {
        v26 = @"DISALLOW";
      }

      else
      {
        v26 = @"ALLOW";
      }

      v27 = [v24 isEqualToString:v26];

      v6 = v22;
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      [v16 performSetterWithValue:v28];

      [(PUITCCAccessController *)v15 updateSpecifiersForImposedSettings];
      [v11 reloadSpecifier:v16];
    }
  }
}

void __70__STAllowTCCRestrictionsController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v25.receiver = *(a1 + 48);
    v25.super_class = STAllowTCCRestrictionsController;
    objc_msgSendSuper2(&v25, sel_tableView_didSelectRowAtIndexPath_, v4, v3);
    v5 = *(a1 + 48);
    v6 = *&v5[*MEMORY[0x277D3FD20]];
    WeakRetained = objc_loadWeakRetained(&v5[*MEMORY[0x277D3FD08]]);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 1536);
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