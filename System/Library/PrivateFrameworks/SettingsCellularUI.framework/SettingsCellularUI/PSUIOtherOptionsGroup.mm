@interface PSUIOtherOptionsGroup
- (PSListController)listController;
- (PSUIOtherOptionsGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)specifiers;
- (void)otherOptionsPressed:(id)pressed;
@end

@implementation PSUIOtherOptionsGroup

- (PSUIOtherOptionsGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = PSUIOtherOptionsGroup;
  v8 = [(PSUIOtherOptionsGroup *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, controllerCopy);
    objc_storeStrong(&v9->_groupSpecifier, specifier);
    groupSpecifier = v9->_groupSpecifier;
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"OTHER_OPTIONS_FOOTER" value:&stru_287733598 table:@"Cellular"];
    v14 = [v11 stringWithFormat:v13];
    [(PSSpecifier *)groupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
  }

  return v9;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_287733598 table:@"Cellular"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setButtonAction:sel_otherOptionsPressed_];
  [v3 addObject:v7];

  return v3;
}

- (void)otherOptionsPressed:(id)pressed
{
  v4 = objc_alloc(MEMORY[0x277D757A0]);
  v5 = objc_alloc_init(PSUIAddNewPlanController);
  v7 = [v4 initWithRootViewController:v5];

  [v7 setModalPresentationStyle:2];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end