@interface STPasscodeActivitySpecifierProvider
- (STPasscodeActivitySpecifierProvider)init;
- (void)_reloadSpecifierWithDeviceName:(id)name lastPasscodeUseDate:(id)date;
- (void)_updateGroupSpecifierFooterWithDevice:(id)device;
- (void)_updateSpecifiersWithDevice:(id)device;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
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
  uUIDString = [v8 UUIDString];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setIdentifier:uUIDString];

  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v10 = MEMORY[0x277CBEC38];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287678EA8];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:v10 forKeyedSubscript:*MEMORY[0x277D40020]];
  [(PSSpecifier *)v2->_passcodeActivitySpecifier setObject:@"com.apple.screen-time.passcode-activity" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  [mutableSpecifiers addObject:v2->_passcodeActivitySpecifier];

  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 localizedStringForKey:@"CustomizeNotificationsSpecifierName" value:&stru_28766E5A8 table:0];

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
  v15 = PSBundlePathForPreferenceBundle();
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D40000]];

  [v14 setObject:@"STCustomNotificationSettingsController" forKeyedSubscript:*MEMORY[0x277D3FF08]];
  [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE00]];
  [v14 setControllerLoadAction:sel_lazyLoadBundle_];
  mutableSpecifiers2 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  [mutableSpecifiers2 addObject:v14];

  [(STGroupSpecifierProvider *)v2 setIsHidden:1];
  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice" context:"KVOContextPasscodeActivitySpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STPasscodeActivitySpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice" options:5 context:"KVOContextPasscodeActivitySpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextPasscodeActivitySpecifierProvider")
  {
    if ([path isEqualToString:@"viewModel.lastPasscodeUseDevice"])
    {
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v11 == null)
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
    [(STPasscodeActivitySpecifierProvider *)&v13 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (void)_updateSpecifiersWithDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    lastPasscodeUseDate = [deviceCopy lastPasscodeUseDate];
    v5 = lastPasscodeUseDate;
    if (lastPasscodeUseDate)
    {
      [lastPasscodeUseDate timeIntervalSinceNow];
      v7 = v6;
      [(STGroupSpecifierProvider *)self setIsHidden:v6 < -604800.0];
      if (v7 >= -604800.0)
      {
        name = [deviceCopy name];
        [(STPasscodeActivitySpecifierProvider *)self _reloadSpecifierWithDeviceName:name lastPasscodeUseDate:v5];
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

- (void)_updateGroupSpecifierFooterWithDevice:(id)device
{
  deviceCopy = device;
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  if (deviceCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"ScreenTimePasscodeUseFooterTextFormat" value:&stru_28766E5A8 table:0];
    name = [deviceCopy name];
    v9 = [v5 localizedStringWithFormat:v7, name];

    [groupSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    [groupSpecifier setObject:0 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier animated:1];
}

- (void)_reloadSpecifierWithDeviceName:(id)name lastPasscodeUseDate:(id)date
{
  dateCopy = date;
  nameCopy = name;
  v14 = objc_opt_new();
  [v14 setTimeStyle:1];
  [v14 setDateStyle:2];
  [v14 setDoesRelativeDateFormatting:1];
  [v14 setFormattingContext:5];
  v8 = [v14 stringFromDate:dateCopy];

  passcodeActivitySpecifier = [(STPasscodeActivitySpecifierProvider *)self passcodeActivitySpecifier];
  v10 = MEMORY[0x277CCACA8];
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  v12 = [v11 localizedStringForKey:@"ScreenTimePasscodeUseDateFormat" value:&stru_28766E5A8 table:0];
  v13 = [v10 localizedStringWithFormat:v12, v8];

  [passcodeActivitySpecifier setName:v13];
  [passcodeActivitySpecifier setObject:v13 forKeyedSubscript:*MEMORY[0x277D40170]];
  [passcodeActivitySpecifier setObject:nameCopy forKeyedSubscript:*MEMORY[0x277D40160]];

  [(STGroupSpecifierProvider *)self reloadSpecifier:passcodeActivitySpecifier animated:1];
}

@end