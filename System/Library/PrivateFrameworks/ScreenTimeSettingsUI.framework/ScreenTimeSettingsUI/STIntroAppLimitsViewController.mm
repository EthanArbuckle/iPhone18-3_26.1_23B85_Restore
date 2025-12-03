@interface STIntroAppLimitsViewController
- (STIntroAppLimitsTableViewController)tableViewController;
- (STIntroAppLimitsViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler;
- (void)_allowanceSelectedCategoriesDidChange:(id)change;
- (void)_allowanceTimeDidChange:(id)change;
- (void)_notNow:(id)now;
- (void)_setAppLimit:(id)limit;
- (void)_updateSetAppLimitButtonWithTime:(id)time selectedCategories:(id)categories;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setTableViewController:(id)controller;
@end

@implementation STIntroAppLimitsViewController

- (STIntroAppLimitsViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"IntroAppLimitsTitle" value:&stru_28766E5A8 table:0];
  v10 = [v8 localizedStringForKey:@"IntroAppLimitsDetail" value:&stru_28766E5A8 table:0];
  v17.receiver = self;
  v17.super_class = STIntroAppLimitsViewController;
  v11 = [(OBTableWelcomeController *)&v17 initWithTitle:v9 detailText:v10 symbolName:@"hourglass"];
  model = v11->_model;
  v11->_model = modelCopy;
  v13 = modelCopy;

  v14 = [handlerCopy copy];
  continueHandler = v11->_continueHandler;
  v11->_continueHandler = v14;

  return v11;
}

- (void)dealloc
{
  tableViewController = [(STIntroAppLimitsViewController *)self tableViewController];
  [tableViewController removeObserver:self forKeyPath:@"allowance.time" context:"KVOContextIntroAppLimitsViewController"];
  [tableViewController removeObserver:self forKeyPath:@"allowance.categoryIdentifiers" context:"KVOContextIntroAppLimitsViewController"];

  v4.receiver = self;
  v4.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v4 dealloc];
}

- (STIntroAppLimitsTableViewController)tableViewController
{
  v4.receiver = self;
  v4.super_class = STIntroAppLimitsViewController;
  tableViewController = [(STTableWelcomeController *)&v4 tableViewController];

  return tableViewController;
}

- (void)setTableViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STIntroAppLimitsViewController *)a2 setTableViewController:?];
    }
  }

  tableViewController = [(STIntroAppLimitsViewController *)self tableViewController];
  [tableViewController removeObserver:self forKeyPath:@"allowance.time" context:"KVOContextIntroAppLimitsViewController"];
  [tableViewController removeObserver:self forKeyPath:@"allowance.categoryIdentifiers" context:"KVOContextIntroAppLimitsViewController"];
  v7.receiver = self;
  v7.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v7 setTableViewController:controllerCopy];
  [controllerCopy addObserver:self forKeyPath:@"allowance.time" options:1 context:"KVOContextIntroAppLimitsViewController"];
  [controllerCopy addObserver:self forKeyPath:@"allowance.categoryIdentifiers" options:5 context:"KVOContextIntroAppLimitsViewController"];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = STIntroAppLimitsViewController;
  [(OBTableWelcomeController *)&v17 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  buttonTray = [(STIntroAppLimitsViewController *)self buttonTray];
  allowance = [(STIntroductionViewModel *)self->_model allowance];
  allowanceEnabled = [allowance allowanceEnabled];

  if (allowanceEnabled)
  {
    v7 = @"IntroAppLimitsContinueButton";
  }

  else
  {
    v7 = @"IntroAppLimitsSetAppLimitButton";
  }

  if (allowanceEnabled)
  {
    v8 = @"IntroAppLimitsTurnOffAppLimitButton";
  }

  else
  {
    v8 = @"IntroAppLimitsNotNowButton";
  }

  v9 = [v3 localizedStringForKey:v7 value:&stru_28766E5A8 table:0];
  v10 = [v3 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setAccessibilityIdentifier:@"IntroAppLimitsSetAppLimitButton"];
  [boldButton setTitle:v9 forState:0];
  [boldButton addTarget:self action:sel__setAppLimit_ forControlEvents:0x2000];
  [boldButton setEnabled:0];
  [buttonTray addButton:boldButton];
  [(STIntroAppLimitsViewController *)self setSetAppLimitButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setAccessibilityIdentifier:@"IntroAppLimitsSetUpLaterButton"];
  [linkButton setTitle:v10 forState:0];
  [linkButton addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
  v13 = MEMORY[0x277D75AC8];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v13 storyboardWithName:@"STIntroAppLimitsTableViewController" bundle:v14];

  instantiateInitialViewController = [v15 instantiateInitialViewController];
  [(STIntroAppLimitsViewController *)self setTableViewController:instantiateInitialViewController];
}

- (void)_setAppLimit:(id)limit
{
  tableViewController = [(STIntroAppLimitsViewController *)self tableViewController];
  allowance = [tableViewController allowance];
  model = [(STIntroAppLimitsViewController *)self model];
  [model setAllowance:allowance];

  continueHandler = [(STIntroAppLimitsViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_notNow:(id)now
{
  continueHandler = [(STIntroAppLimitsViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextIntroAppLimitsViewController")
  {
    if ([pathCopy isEqualToString:@"allowance.time"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      [(STIntroAppLimitsViewController *)self _allowanceTimeDidChange:v12];
    }

    else
    {
      if (![pathCopy isEqualToString:@"allowance.categoryIdentifiers"])
      {
        goto LABEL_12;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v12 == null2)
      {

        v12 = 0;
      }

      [(STIntroAppLimitsViewController *)self _allowanceSelectedCategoriesDidChange:v12];
    }

    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = STIntroAppLimitsViewController;
  [(STTableWelcomeController *)&v15 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_12:
}

- (void)_allowanceTimeDidChange:(id)change
{
  changeCopy = change;
  tableViewController = [(STIntroAppLimitsViewController *)self tableViewController];
  allowance = [tableViewController allowance];
  categoryIdentifiers = [allowance categoryIdentifiers];
  [(STIntroAppLimitsViewController *)self _updateSetAppLimitButtonWithTime:changeCopy selectedCategories:categoryIdentifiers];
}

- (void)_allowanceSelectedCategoriesDidChange:(id)change
{
  changeCopy = change;
  tableViewController = [(STIntroAppLimitsViewController *)self tableViewController];
  allowance = [tableViewController allowance];
  time = [allowance time];
  [(STIntroAppLimitsViewController *)self _updateSetAppLimitButtonWithTime:time selectedCategories:changeCopy];
}

- (void)_updateSetAppLimitButtonWithTime:(id)time selectedCategories:(id)categories
{
  if (time)
  {
    v5 = [categories count] != 0;
  }

  else
  {
    v5 = 0;
  }

  setAppLimitButton = [(STIntroAppLimitsViewController *)self setAppLimitButton];
  [setAppLimitButton setEnabled:v5];
}

- (void)setTableViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIntroAppLimitsViewController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"(tableViewController == nil) || [tableViewController isKindOfClass:[STIntroAppLimitsTableViewController class]]"}];
}

@end