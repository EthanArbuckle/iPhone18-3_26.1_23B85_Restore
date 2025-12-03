@interface PTUISettingsController
- (PTUISettingsController)initWithRootModule:(id)module;
- (PTUISettingsController)initWithRootModuleController:(id)controller;
- (PTUISettingsController)initWithRootSettings:(id)settings;
- (id)_defaultDismissButton;
- (void)_didTap:(id)tap;
- (void)_dismiss;
- (void)_reloadWithRootModule:(id)module;
- (void)setDismissButton:(id)button;
- (void)viewDidLoad;
@end

@implementation PTUISettingsController

- (PTUISettingsController)initWithRootSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [[PTUIModuleController alloc] initWithSettings:settingsCopy];

  v6 = [(PTUISettingsController *)self initWithRootModuleController:v5];
  return v6;
}

- (PTUISettingsController)initWithRootModule:(id)module
{
  moduleCopy = module;
  v5 = [[PTUIModuleController alloc] _initWithModule:moduleCopy presentingRow:0];

  v6 = [(PTUISettingsController *)self initWithRootModuleController:v5];
  return v6;
}

- (PTUISettingsController)initWithRootModuleController:(id)controller
{
  v3 = [(PTUISettingsController *)self initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    _defaultDismissButton = [(PTUISettingsController *)v3 _defaultDismissButton];
    [(PTUISettingsController *)v4 setDismissButton:_defaultDismissButton];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PTUISettingsController;
  [(PTUISettingsController *)&v8 viewDidLoad];
  view = [(PTUISettingsController *)self view];
  orangeColor = [MEMORY[0x277D75348] orangeColor];
  [view setTintColor:orangeColor];

  view2 = [(PTUISettingsController *)self view];
  [view2 _setContinuousCornerRadius:16.0];

  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didTap_];
  [v6 setCancelsTouchesInView:0];
  view3 = [(PTUISettingsController *)self view];
  [view3 addGestureRecognizer:v6];
}

- (void)setDismissButton:(id)button
{
  v18 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  objc_storeStrong(&self->_dismissButton, button);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  viewControllers = [(PTUISettingsController *)self viewControllers];
  v7 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(viewControllers);
        }

        navigationItem = [*(*(&v13 + 1) + 8 * v10) navigationItem];
        [navigationItem setRightBarButtonItem:self->_dismissButton];

        ++v10;
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_didTap:(id)tap
{
  view = [(PTUISettingsController *)self view];
  [view endEditing:1];
}

- (id)_defaultDismissButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismiss];

  return v2;
}

- (void)_dismiss
{
  presentingViewController = [(PTUISettingsController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_reloadWithRootModule:(id)module
{
  moduleCopy = module;
  viewControllers = [(PTUISettingsController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  tableView = [firstObject tableView];
  view = [(PTUISettingsController *)self view];
  tintColor = [view tintColor];
  [tableView setTintColor:tintColor];

  [firstObject _reloadWithModule:moduleCopy];
  v9 = [(PTUISettingsController *)self popToViewController:firstObject animated:0];
}

@end