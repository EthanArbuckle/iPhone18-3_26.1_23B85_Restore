@interface STPasscodeActivitySpecifierProvider
- (STPasscodeActivitySpecifierProvider)init;
- (void)_reloadSpecifierWithDeviceName:(id)a3 lastPasscodeUseDate:(id)a4;
- (void)_updateGroupSpecifierFooterWithDevice:(id)a3;
- (void)_updateSpecifiersWithDevice:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
@end

@implementation STPasscodeActivitySpecifierProvider

- (STPasscodeActivitySpecifierProvider)init
{
  v18.receiver = self;
  v18.super_class = STPasscodeActivitySpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v18 init];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"PasscodeUseGroupSpecifierName" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v4];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v5];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:4 edit:0];
  passcodeActivitySpecifier = v2->_passcodeActivitySpecifier;
  v2->_passcodeActivitySpecifier = v6;

  v8 = objc_opt_new();
  v9 = [v8 UUIDString];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setIdentifier:v9];

  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v10 = MEMORY[0x277CBEC38];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287678EA8];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:v10 forKeyedSubscript:*MEMORY[0x277D40020]];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:@"com.apple.screen-time.passcode-activity" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  v11 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  [v11 addObject:v2->_passcodeActivitySpecifier];

  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 localizedStringForKey:@"CustomizeNotificationsSpecifierName" value:&stru_28766E5A8 table:0];

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
  v15 = PSBundlePathForPreferenceBundle();
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D40000]];

  [v14 setObject:@"STCustomNotificationSettingsController" forKeyedSubscript:*MEMORY[0x277D3FF08]];
  [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE00]];
  [v14 setControllerLoadAction:sel_lazyLoadBundle_];
  v16 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  [v16 addObject:v14];

  [(STGroupSpecifierProvider *)v2 setIsHidden:1];
  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice" context:"KVOContextPasscodeActivitySpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STPasscodeActivitySpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice" options:5 context:"KVOContextPasscodeActivitySpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextPasscodeActivitySpecifierProvider")
  {
    if ([a3 isEqualToString:@"viewModel.lastPasscodeUseDevice"])
    {
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v12 = [MEMORY[0x277CBEB68] null];

      if (v11 == v12)
      {

        v11 = 0;
      }

      [(STPasscodeActivitySpecifierProvider *)self _updateSpecifiersWithDevice:v11];
      [(STPasscodeActivitySpecifierProvider *)self _updateGroupSpecifierFooterWithDevice:v11];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STPasscodeActivitySpecifierProvider;
    [(STPasscodeActivitySpecifierProvider *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_updateSpecifiersWithDevice:(id)a3
{
  v9 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v9 lastPasscodeUseDate];
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      v7 = v6;
      [(STGroupSpecifierProvider *)self setIsHidden:v6 < -604800.0];
      if (v7 >= -604800.0)
      {
        v8 = [v9 name];
        [(STPasscodeActivitySpecifierProvider *)self _reloadSpecifierWithDeviceName:v8 lastPasscodeUseDate:v5];
      }
    }

    else
    {
      [(STGroupSpecifierProvider *)self setIsHidden:1];
    }
  }

  else
  {
    [(STGroupSpecifierProvider *)self setIsHidden:1];
  }
}

- (void)_updateGroupSpecifierFooterWithDevice:(id)a3
{
  v10 = a3;
  v4 = [(STGroupSpecifierProvider *)self groupSpecifier];
  if (v10)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"ScreenTimePasscodeUseFooterTextFormat" value:&stru_28766E5A8 table:0];
    v8 = [v10 name];
    v9 = [v5 localizedStringWithFormat:v7, v8];

    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:1];
}

- (void)_reloadSpecifierWithDeviceName:(id)a3 lastPasscodeUseDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_opt_new();
  [v14 setTimeStyle:1];
  [v14 setDateStyle:2];
  [v14 setDoesRelativeDateFormatting:1];
  [v14 setFormattingContext:5];
  v8 = [v14 stringFromDate:v6];

  v9 = [(STPasscodeActivitySpecifierProvider *)self passcodeActivitySpecifier];
  v10 = MEMORY[0x277CCACA8];
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  v12 = [v11 localizedStringForKey:@"ScreenTimePasscodeUseDateFormat" value:&stru_28766E5A8 table:0];
  v13 = [v10 localizedStringWithFormat:v12, v8];

  [v9 setName:v13];
  [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40170]];
  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277D40160]];

  [(STGroupSpecifierProvider *)self reloadSpecifier:v9 animated:1];
}

@end