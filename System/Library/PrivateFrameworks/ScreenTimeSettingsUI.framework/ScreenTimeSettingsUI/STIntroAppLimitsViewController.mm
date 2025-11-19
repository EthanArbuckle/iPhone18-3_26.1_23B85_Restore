@interface STIntroAppLimitsViewController
- (STIntroAppLimitsTableViewController)tableViewController;
- (STIntroAppLimitsViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4;
- (void)_allowanceSelectedCategoriesDidChange:(id)a3;
- (void)_allowanceTimeDidChange:(id)a3;
- (void)_notNow:(id)a3;
- (void)_setAppLimit:(id)a3;
- (void)_updateSetAppLimitButtonWithTime:(id)a3 selectedCategories:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setTableViewController:(id)a3;
@end

@implementation STIntroAppLimitsViewController

- (STIntroAppLimitsViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"IntroAppLimitsTitle" value:&stru_28766E5A8 table:0];
  v10 = [v8 localizedStringForKey:@"IntroAppLimitsDetail" value:&stru_28766E5A8 table:0];
  v17.receiver = self;
  v17.super_class = STIntroAppLimitsViewController;
  v11 = [(OBTableWelcomeController *)&v17 initWithTitle:v9 detailText:v10 symbolName:@"hourglass"];
  model = v11->_model;
  v11->_model = v6;
  v13 = v6;

  v14 = [v7 copy];
  continueHandler = v11->_continueHandler;
  v11->_continueHandler = v14;

  return v11;
}

- (void)dealloc
{
  v3 = [(STIntroAppLimitsViewController *)self tableViewController];
  [v3 removeObserver:self forKeyPath:@"allowance.time" context:"KVOContextIntroAppLimitsViewController"];
  [v3 removeObserver:self forKeyPath:@"allowance.categoryIdentifiers" context:"KVOContextIntroAppLimitsViewController"];

  v4.receiver = self;
  v4.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v4 dealloc];
}

- (STIntroAppLimitsTableViewController)tableViewController
{
  v4.receiver = self;
  v4.super_class = STIntroAppLimitsViewController;
  v2 = [(STTableWelcomeController *)&v4 tableViewController];

  return v2;
}

- (void)setTableViewController:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STIntroAppLimitsViewController *)a2 setTableViewController:?];
    }
  }

  v6 = [(STIntroAppLimitsViewController *)self tableViewController];
  [v6 removeObserver:self forKeyPath:@"allowance.time" context:"KVOContextIntroAppLimitsViewController"];
  [v6 removeObserver:self forKeyPath:@"allowance.categoryIdentifiers" context:"KVOContextIntroAppLimitsViewController"];
  v7.receiver = self;
  v7.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v7 setTableViewController:v5];
  [v5 addObserver:self forKeyPath:@"allowance.time" options:1 context:"KVOContextIntroAppLimitsViewController"];
  [v5 addObserver:self forKeyPath:@"allowance.categoryIdentifiers" options:5 context:"KVOContextIntroAppLimitsViewController"];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = STIntroAppLimitsViewController;
  [(OBTableWelcomeController *)&v17 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [(STIntroAppLimitsViewController *)self buttonTray];
  v5 = [(STIntroductionViewModel *)self->_model allowance];
  v6 = [v5 allowanceEnabled];

  if (v6)
  {
    v7 = @"IntroAppLimitsContinueButton";
  }

  else
  {
    v7 = @"IntroAppLimitsSetAppLimitButton";
  }

  if (v6)
  {
    v8 = @"IntroAppLimitsTurnOffAppLimitButton";
  }

  else
  {
    v8 = @"IntroAppLimitsNotNowButton";
  }

  v9 = [v3 localizedStringForKey:v7 value:&stru_28766E5A8 table:0];
  v10 = [v3 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  v11 = [MEMORY[0x277D37618] boldButton];
  [v11 setAccessibilityIdentifier:@"IntroAppLimitsSetAppLimitButton"];
  [v11 setTitle:v9 forState:0];
  [v11 addTarget:self action:sel__setAppLimit_ forControlEvents:0x2000];
  [v11 setEnabled:0];
  [v4 addButton:v11];
  [(STIntroAppLimitsViewController *)self setSetAppLimitButton:v11];
  v12 = [MEMORY[0x277D37650] linkButton];
  [v12 setAccessibilityIdentifier:@"IntroAppLimitsSetUpLaterButton"];
  [v12 setTitle:v10 forState:0];
  [v12 addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [v4 addButton:v12];
  v13 = MEMORY[0x277D75AC8];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v13 storyboardWithName:@"STIntroAppLimitsTableViewController" bundle:v14];

  v16 = [v15 instantiateInitialViewController];
  [(STIntroAppLimitsViewController *)self setTableViewController:v16];
}

- (void)_setAppLimit:(id)a3
{
  v4 = [(STIntroAppLimitsViewController *)self tableViewController];
  v5 = [v4 allowance];
  v6 = [(STIntroAppLimitsViewController *)self model];
  [v6 setAllowance:v5];

  v7 = [(STIntroAppLimitsViewController *)self continueHandler];
  v7[2]();
}

- (void)_notNow:(id)a3
{
  v3 = [(STIntroAppLimitsViewController *)self continueHandler];
  v3[2]();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextIntroAppLimitsViewController")
  {
    if ([v10 isEqualToString:@"allowance.time"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      [(STIntroAppLimitsViewController *)self _allowanceTimeDidChange:v12];
    }

    else
    {
      if (![v10 isEqualToString:@"allowance.categoryIdentifiers"])
      {
        goto LABEL_12;
      }

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v12 == v14)
      {

        v12 = 0;
      }

      [(STIntroAppLimitsViewController *)self _allowanceSelectedCategoriesDidChange:v12];
    }

    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v15 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_12:
}

- (void)_allowanceTimeDidChange:(id)a3
{
  v4 = a3;
  v7 = [(STIntroAppLimitsViewController *)self tableViewController];
  v5 = [v7 allowance];
  v6 = [v5 categoryIdentifiers];
  [(STIntroAppLimitsViewController *)self _updateSetAppLimitButtonWithTime:v4 selectedCategories:v6];
}

- (void)_allowanceSelectedCategoriesDidChange:(id)a3
{
  v4 = a3;
  v7 = [(STIntroAppLimitsViewController *)self tableViewController];
  v5 = [v7 allowance];
  v6 = [v5 time];
  [(STIntroAppLimitsViewController *)self _updateSetAppLimitButtonWithTime:v6 selectedCategories:v4];
}

- (void)_updateSetAppLimitButtonWithTime:(id)a3 selectedCategories:(id)a4
{
  if (a3)
  {
    v5 = [a4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(STIntroAppLimitsViewController *)self setAppLimitButton];
  [v6 setEnabled:v5];
}

- (void)setTableViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIntroAppLimitsViewController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"(tableViewController == nil) || [tableViewController isKindOfClass:[STIntroAppLimitsTableViewController class]]"}];
}

@end