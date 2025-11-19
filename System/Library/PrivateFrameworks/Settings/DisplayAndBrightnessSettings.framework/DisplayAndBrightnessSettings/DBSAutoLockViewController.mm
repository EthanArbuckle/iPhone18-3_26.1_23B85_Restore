@interface DBSAutoLockViewController
- (id)_autoLockTimeSelected:(id)a3;
- (id)_autoLockTimeSelectedString:(id)a3;
- (id)footerTextForAutoLockTime:(id)a3 autoLockTimeString:(id)a4;
- (void)_initializeFooter;
- (void)_updateFooter:(id)a3 selectedCellSpecifier:(id)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation DBSAutoLockViewController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = DBSAutoLockViewController;
  [(DBSAutoLockViewController *)&v3 loadView];
  [(DBSAutoLockViewController *)self _initializeFooter];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSAutoLockViewController;
  [(DBSAutoLockViewController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/AUTOLOCK"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:v6 bundleURL:v8];

    v10 = objc_alloc(MEMORY[0x277CCAEB8]);
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v13 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"AUTOLOCK" defaultValue:0 table:@"Display" locale:v11 bundleURL:v13];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSAutoLockViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = DBSAutoLockViewController;
  v6 = a4;
  [(PSListItemsController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:{@"LIST_ITEMS_GROUP_SPECIFIER", v10.receiver, v10.super_class}];
  v8 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];
  [(DBSAutoLockViewController *)self _updateFooter:v7 selectedCellSpecifier:v9];
  [(DBSAutoLockViewController *)self reloadSpecifier:v7];
}

- (id)_autoLockTimeSelected:(id)a3
{
  v3 = [a3 identifier];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "integerValue")}];

  return v4;
}

- (id)_autoLockTimeSelectedString:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a3 name];
  v4 = DBSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22102E000, v4, OS_LOG_TYPE_DEFAULT, "Selected Auto-Lock: %@", &v6, 0xCu);
  }

  return v3;
}

- (id)footerTextForAutoLockTime:(id)a3 autoLockTimeString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _AXSAttentionAwarenessFeaturesEnabled();
  v8 = [MEMORY[0x277D262A0] sharedConnection];
  v9 = [v8 isAutoLockOn:v6];

  if (v9)
  {
    v10 = &stru_2834977A0;
  }

  else
  {
    v10 = DBS_LocalizedStringForDisplays(@"DNB_AUTOLOCK_NEVER_WARNING_DESCRIPTION");
  }

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v15 = v10;
LABEL_11:
    v14 = v15;
    goto LABEL_12;
  }

  if (((v9 ^ 1) & 1) == 0 && v7)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = @"DNB_AUTOLOCK_ENABLED_ATTENTION_AWARENESS_ENABLED";
LABEL_8:
    v13 = DBS_LocalizedStringForDisplays(v12);
    [v11 stringWithFormat:v13, v5, v18];
    v14 = LABEL_9:;

    goto LABEL_12;
  }

  if (v7)
  {
    v17 = v9;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v15 = DBS_LocalizedStringForDisplays(@"DNB_AUTOLOCK_DISABLED_ATTENTION_AWARENESS_ENABLED");
    goto LABEL_11;
  }

  if (!((v9 ^ 1) & 1 | (v7 != 0)))
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = @"DNB_AUTOLOCK_ENABLED_ATTENTION_AWARENESS_DISABLED";
    goto LABEL_8;
  }

  if (!(v9 & 1 | (v7 != 0)))
  {
    v13 = DBS_LocalizedStringForDisplays(@"DNB_AUTOLOCK_DISABLED_ATTENTION_AWARENESS_DISABLED");
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v10, v13];
    goto LABEL_9;
  }

  v14 = &stru_2834977A0;
LABEL_12:

  return v14;
}

- (void)_initializeFooter
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 autoLockTime];

  v5 = *MEMORY[0x277D3FD20];
  v6 = [*(&self->super.super.super.super.super.super.isa + v5) titleDictionary];
  v7 = [v6 objectForKey:v4];

  v8 = [(DBSAutoLockViewController *)self footerTextForAutoLockTime:v4 autoLockTimeString:v7];
  if (v8)
  {
    [*(&self->super.super.super.super.super.super.isa + v5) setProperty:v8 forKey:*MEMORY[0x277D40118]];
    v9 = DBSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22102E000, v9, OS_LOG_TYPE_DEFAULT, "Setting Auto-Lock footer: '%@'", &v10, 0xCu);
    }
  }
}

- (void)_updateFooter:(id)a3 selectedCellSpecifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = [(DBSAutoLockViewController *)self _autoLockTimeSelected:v7];
    v9 = [(DBSAutoLockViewController *)self _autoLockTimeSelectedString:v7];

    v10 = [(DBSAutoLockViewController *)self footerTextForAutoLockTime:v8 autoLockTimeString:v9];
    if (v10)
    {
      [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
      v11 = DBSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_22102E000, v11, OS_LOG_TYPE_DEFAULT, "Updating Auto-Lock footer: '%@'", &v12, 0xCu);
      }
    }

    else
    {
      [v6 removePropertyForKey:*MEMORY[0x277D3FF88]];
    }
  }
}

@end