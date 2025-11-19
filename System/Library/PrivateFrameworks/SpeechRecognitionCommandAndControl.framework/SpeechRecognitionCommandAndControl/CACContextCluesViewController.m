@interface CACContextCluesViewController
- (CACContextCluesDelegate)delegate;
- (CACContextCluesViewController)initWithCommands:(id)a3;
- (void)doneButtonPressed;
- (void)setCommands:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CACContextCluesViewController

- (CACContextCluesViewController)initWithCommands:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CACContextCluesViewController;
  v5 = [(CACContextCluesViewController *)&v10 init];
  if (v5)
  {
    v6 = [CACContextCluesWelcomeController alloc];
    v7 = [CACLocaleUtilities localizedUIStringForKey:@"ContextClues.Title"];
    v8 = [(OBTextWelcomeController *)v6 initWithTitle:v7];
    [(CACContextCluesViewController *)v5 setContextCluesController:v8];

    [(CACContextCluesViewController *)v5 setCommands:v4];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = CACContextCluesViewController;
  [(CACContextCluesViewController *)&v15 viewDidAppear:a3];
  v4 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  v5 = [v4 _rootSheetPresentationController];
  [v5 _setShouldScaleDownBehindDescendantSheets:0];

  v6 = objc_alloc(MEMORY[0x277D757A0]);
  v7 = [(CACContextCluesViewController *)self contextCluesController];
  v8 = [v6 initWithRootViewController:v7];

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Done"];
  v11 = [v9 initWithTitle:v10 style:2 target:self action:sel_doneButtonPressed];
  v12 = [(CACContextCluesViewController *)self contextCluesController];
  v13 = [v12 navigationItem];
  [v13 setRightBarButtonItem:v11];

  [(CACContextCluesViewController *)self setPresentingNavigationController:v8];
  v14 = [v8 presentationController];
  [v14 setDelegate:self];

  [(CACContextCluesViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CACContextCluesViewController *)self presentingNavigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  v6 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  v7 = [v6 _rootSheetPresentationController];
  [v7 _setShouldScaleDownBehindDescendantSheets:1];

  v8.receiver = self;
  v8.super_class = CACContextCluesViewController;
  [(CACContextCluesViewController *)&v8 viewDidDisappear:v3];
}

- (void)setCommands:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_commands != v5)
  {
    objc_storeStrong(&self->_commands, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [(CACContextCluesViewController *)self contextCluesController];
          v13 = [v11 titleText];
          v14 = [v11 helperText];
          [v12 addBulletedListItemWithTitle:v13 description:v14];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (void)doneButtonPressed
{
  v2 = [(CACContextCluesViewController *)self delegate];
  [v2 contextCludesDidPressDoneButton];
}

- (CACContextCluesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end