@interface PUIAllowLocationRestrictionsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PUIAllowLocationRestrictionsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v24.receiver = self;
    v24.super_class = PUIAllowLocationRestrictionsController;
    specifiers = [(PUILocationServicesListController *)&v24 specifiers];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PUIAllowLocationRestrictionsController specifiers];
    }

    v6 = MEMORY[0x277D3FAD8];
    v7 = PUI_LocalizedStringForRestrictions(@"ALLOW_CHANGES_VALUE");
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v9 = *MEMORY[0x277D3FFB8];
    [v8 setProperty:@"ALLOW" forKey:*MEMORY[0x277D3FFB8]];
    v10 = MEMORY[0x277D3FAD8];
    v11 = PUI_LocalizedStringForRestrictions(@"DONT_ALLOW_CHANGES_VALUE");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:@"DISALLOW" forKey:v9];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:@"ALLOW_GROUP" forKey:v9];
    v14 = PUI_LocalizedStringForRestrictions(@"LOCATION_EXPLANATION");
    [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [emptyGroupSpecifier setProperty:v15 forKey:*MEMORY[0x277D3FFE8]];

    performGetter = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) performGetter];
    bOOLValue = [performGetter BOOLValue];

    if (bOOLValue)
    {
      v18 = v8;
    }

    else
    {
      v18 = v12;
    }

    [emptyGroupSpecifier setProperty:v18 forKey:*MEMORY[0x277D40090]];
    [specifiers insertObject:emptyGroupSpecifier atIndex:0];
    [specifiers insertObject:v8 atIndex:1];
    [specifiers insertObject:v12 atIndex:2];
    allowedGroup = self->_allowedGroup;
    self->_allowedGroup = emptyGroupSpecifier;
    v20 = emptyGroupSpecifier;

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = specifiers;

    objc_sync_exit(selfCopy);
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = PUIAllowLocationRestrictionsController;
  [(PUIAllowLocationRestrictionsController *)&v17 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];
  v8 = [(PUIAllowLocationRestrictionsController *)self indexPathForIndex:[(PUIAllowLocationRestrictionsController *)self indexOfSpecifier:self->_allowedGroup]];
  section2 = [v8 section];

  if (section == section2)
  {
    v10 = [(PUIAllowLocationRestrictionsController *)self specifierAtIndex:[(PUIAllowLocationRestrictionsController *)self indexForIndexPath:pathCopy]];
    identifier = [v10 identifier];
    v12 = [identifier isEqualToString:@"ALLOW"];

    v13 = *MEMORY[0x277D3FD20];
    v14 = *(&self->super.super.super.super.super.super.isa + v13);
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v14 performSetterWithValue:v15];

    [(PUILocationServicesListController *)self updateSpecifiersForImposedSettings];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.super.isa + v13)];
  }
}

@end