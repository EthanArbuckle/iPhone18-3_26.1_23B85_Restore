@interface STContentPrivacyFooterSwitchDetailController
- (id)defaultSwitchSpecifierWithKey:(id)key;
- (id)getItemSpecifierValue:(id)value;
- (id)itemsFromParent;
- (void)didCancelEnteringPIN;
- (void)setItemSpecifierValue:(id)value specifier:(id)specifier;
@end

@implementation STContentPrivacyFooterSwitchDetailController

- (id)itemsFromParent
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v12.receiver = self;
  v12.super_class = STContentPrivacyFooterSwitchDetailController;
  itemsFromParent = [(PSListItemsController *)&v12 itemsFromParent];
  v5 = [v3 initWithArray:itemsFromParent];

  v6 = *MEMORY[0x277D3FD20];
  v7 = [*(&self->super.super.super.super.super.super.super.super.isa + v6) objectForKeyedSubscript:0x287674028];
  if (v7)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v13[0] = emptyGroupSpecifier;
    v9 = [(STContentPrivacyFooterSwitchDetailController *)self defaultSwitchSpecifierWithKey:v7];
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

    [*(&self->super.super.super.super.super.super.super.super.isa + v6) setObject:v10 forKeyedSubscript:0x287674008];
    [v5 addObjectsFromArray:v10];
  }

  return v5;
}

- (id)getItemSpecifierValue:(id)value
{
  v4 = *MEMORY[0x277D3FD08];
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.super.isa + v4));
  v7 = [WeakRetained getItemSpecifierValue:valueCopy];

  return v7;
}

- (void)setItemSpecifierValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__STContentPrivacyFooterSwitchDetailController_setItemSpecifierValue_specifier___block_invoke;
    v9[3] = &unk_279B7CC40;
    v10 = WeakRetained;
    v11 = valueCopy;
    v12 = specifierCopy;
    [(PSListController *)self st_showPINSheetWithCompletion:v9];
  }

  else
  {
    [WeakRetained setItemSpecifierValue:valueCopy specifier:specifierCopy];
  }
}

uint64_t __80__STContentPrivacyFooterSwitchDetailController_setItemSpecifierValue_specifier___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setItemSpecifierValue:*(result + 40) specifier:*(result + 48)];
  }

  return result;
}

- (id)defaultSwitchSpecifierWithKey:(id)key
{
  v5 = *(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  keyCopy = key;
  v7 = [v5 objectForKeyedSubscript:0x287672648];
  rmConfiguration = [v7 rmConfiguration];

  coordinator = [(STPINListItemsController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v24 = rmConfiguration;
  v12 = [viewModel visibleRestrictionWithConfiguration:rmConfiguration key:keyCopy];

  if (!v12)
  {
    [(STContentPrivacyFooterSwitchDetailController *)a2 defaultSwitchSpecifierWithKey:?];
  }

  v13 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [v12 uiLabel];
  v16 = [v14 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v13];

  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:0 cell:6 edit:0];
  v18 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListItemsController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  v22 = [v18 numberWithBool:{objc_msgSend(viewModel2, "restrictionsEnabled")}];
  [v17 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v17 setObject:v12 forKeyedSubscript:0x287672648];
  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];

  return v17;
}

- (void)didCancelEnteringPIN
{
  v3.receiver = self;
  v3.super_class = STContentPrivacyFooterSwitchDetailController;
  [(STPINListItemsController *)&v3 didCancelEnteringPIN];
  [(STContentPrivacyFooterSwitchDetailController *)self reloadSpecifiers];
}

- (void)defaultSwitchSpecifierWithKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STContentPrivacyFooterSwitchDetailController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end