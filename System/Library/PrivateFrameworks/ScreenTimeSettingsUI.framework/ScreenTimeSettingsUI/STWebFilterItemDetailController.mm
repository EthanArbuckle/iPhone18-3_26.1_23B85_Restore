@interface STWebFilterItemDetailController
- (STWebFilterDetailController)parentWebFilterController;
- (STWebFilterItemDetailController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)saveFilterItem;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation STWebFilterItemDetailController

- (STWebFilterItemDetailController)init
{
  v7.receiver = self;
  v7.super_class = STWebFilterItemDetailController;
  v2 = [(STWebFilterItemDetailController *)&v7 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"AddWebsiteLabel" value:&stru_28766E5A8 table:v3];
    [(STWebFilterItemDetailController *)v2 setTitle:v5];
  }

  return v2;
}

- (id)specifiers
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [v4 localizedStringForKey:@"AddWebsiteLabel" value:&stru_28766E5A8 table:v3];
  v7 = [v5 groupSpecifierWithID:v6];

  v8 = [(STWebFilterItemDetailController *)self isNamedSite];
  if (v8)
  {
    v9 = [v4 localizedStringForKey:@"TitleLabel" value:&stru_28766E5A8 table:v3];
    v10 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:v9 target:self set:sel_setPageTitle_ get:sel_pageTitle detail:0 cell:8 edit:0];
    v11 = [v4 localizedStringForKey:@"TitlePlaceholderText" value:&stru_28766E5A8 table:v3];
    [v10 setPlaceholder:v11];
  }

  else
  {
    v10 = 0;
  }

  v12 = [v4 localizedStringForKey:@"URLLabel" value:&stru_28766E5A8 table:v3];
  v13 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:v12 target:self set:sel_setPageURL_ get:sel_pageURL detail:0 cell:8 edit:0];
  v14 = [v4 localizedStringForKey:@"URLPlaceholderText" value:&stru_28766E5A8 table:v3];
  [v13 setPlaceholder:v14];

  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF20]];
  if (v8)
  {
    v25[0] = v7;
    v25[1] = v10;
    v25[2] = v13;
    v15 = MEMORY[0x277CBEA60];
    v16 = v25;
    v17 = 3;
  }

  else
  {
    v24[0] = v7;
    v24[1] = v13;
    v15 = MEMORY[0x277CBEA60];
    v16 = v24;
    v17 = 2;
  }

  v18 = [v15 arrayWithObjects:v16 count:v17];
  v19 = *MEMORY[0x277D3FC48];
  v20 = *(&self->super.super.super.super.super.isa + v19);
  *(&self->super.super.super.super.super.isa + v19) = v18;

  v21 = *(&self->super.super.super.super.super.isa + v19);
  v22 = v21;

  return v21;
}

- (void)saveFilterItem
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STWebFilterItemDetailController.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"self.restriction"}];
}

void __49__STWebFilterItemDetailController_saveFilterItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentWebFilterController];
  [v1 performSelectorOnMainThread:sel_reloadSpecifiers withObject:0 waitUntilDone:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = STWebFilterItemDetailController;
  [(STWebFilterItemDetailController *)&v6 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [(STWebFilterItemDetailController *)self setParentWebFilterController:WeakRetained];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWebFilterItemDetailController.viewDidAppear", v5, 2u);
  }
}

- (void)willResignActive
{
  v4.receiver = self;
  v4.super_class = STWebFilterItemDetailController;
  [(STWebFilterItemDetailController *)&v4 willResignActive];
  v3 = [(STWebFilterItemDetailController *)self view];
  [v3 endEditing:0];

  [(STWebFilterItemDetailController *)self saveFilterItem];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = STWebFilterItemDetailController;
  [(STWebFilterItemDetailController *)&v6 viewWillDisappear:a3];
  v4 = [(STWebFilterItemDetailController *)self view];
  [v4 endEditing:0];

  [(STWebFilterItemDetailController *)self saveFilterItem];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWebFilterItemDetailController.viewWillDisappear", v5, 2u);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = STWebFilterItemDetailController;
  v5 = [(STWebFilterItemDetailController *)&v18 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v5 specifier];
  v9 = [v8 name];
  v10 = [v7 localizedStringForKey:@"TitleLabel" value:&stru_28766E5A8 table:v6];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = [v5 editableTextField];
    [v12 setAutocapitalizationType:1];
    [v12 setAdjustsFontSizeToFitWidth:1];
  }

  else
  {
    v13 = [v5 specifier];
    v14 = [v13 name];
    v15 = [v7 localizedStringForKey:@"URLLabel" value:&stru_28766E5A8 table:v6];
    v16 = [v14 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_6;
    }

    v12 = [v5 editableTextField];
    [v12 setAutocapitalizationType:0];
    [v12 setAutocorrectionType:1];
    [v12 setAdjustsFontSizeToFitWidth:1];
    [v12 setKeyboardType:3];
    [v12 setReturnKeyType:9];
  }

  [v12 setClearButtonMode:1];
  [v5 setControllerDelegate:self];

LABEL_6:

  return v5;
}

- (STWebFilterDetailController)parentWebFilterController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentWebFilterController);

  return WeakRetained;
}

@end