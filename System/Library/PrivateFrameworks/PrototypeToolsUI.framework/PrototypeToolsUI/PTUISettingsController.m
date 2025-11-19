@interface PTUISettingsController
- (PTUISettingsController)initWithRootModule:(id)a3;
- (PTUISettingsController)initWithRootModuleController:(id)a3;
- (PTUISettingsController)initWithRootSettings:(id)a3;
- (id)_defaultDismissButton;
- (void)_didTap:(id)a3;
- (void)_dismiss;
- (void)_reloadWithRootModule:(id)a3;
- (void)setDismissButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation PTUISettingsController

- (PTUISettingsController)initWithRootSettings:(id)a3
{
  v4 = a3;
  v5 = [[PTUIModuleController alloc] initWithSettings:v4];

  v6 = [(PTUISettingsController *)self initWithRootModuleController:v5];
  return v6;
}

- (PTUISettingsController)initWithRootModule:(id)a3
{
  v4 = a3;
  v5 = [[PTUIModuleController alloc] _initWithModule:v4 presentingRow:0];

  v6 = [(PTUISettingsController *)self initWithRootModuleController:v5];
  return v6;
}

- (PTUISettingsController)initWithRootModuleController:(id)a3
{
  v3 = [(PTUISettingsController *)self initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PTUISettingsController *)v3 _defaultDismissButton];
    [(PTUISettingsController *)v4 setDismissButton:v5];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PTUISettingsController;
  [(PTUISettingsController *)&v8 viewDidLoad];
  v3 = [(PTUISettingsController *)self view];
  v4 = [MEMORY[0x277D75348] orangeColor];
  [v3 setTintColor:v4];

  v5 = [(PTUISettingsController *)self view];
  [v5 _setContinuousCornerRadius:16.0];

  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didTap_];
  [v6 setCancelsTouchesInView:0];
  v7 = [(PTUISettingsController *)self view];
  [v7 addGestureRecognizer:v6];
}

- (void)setDismissButton:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_dismissButton, a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PTUISettingsController *)self viewControllers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) navigationItem];
        [v11 setRightBarButtonItem:self->_dismissButton];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_didTap:(id)a3
{
  v3 = [(PTUISettingsController *)self view];
  [v3 endEditing:1];
}

- (id)_defaultDismissButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismiss];

  return v2;
}

- (void)_dismiss
{
  v2 = [(PTUISettingsController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_reloadWithRootModule:(id)a3
{
  v4 = a3;
  v5 = [(PTUISettingsController *)self viewControllers];
  v10 = [v5 firstObject];

  v6 = [v10 tableView];
  v7 = [(PTUISettingsController *)self view];
  v8 = [v7 tintColor];
  [v6 setTintColor:v8];

  [v10 _reloadWithModule:v4];
  v9 = [(PTUISettingsController *)self popToViewController:v10 animated:0];
}

@end