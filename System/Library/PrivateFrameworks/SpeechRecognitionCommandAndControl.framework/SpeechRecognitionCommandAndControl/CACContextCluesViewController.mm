@interface CACContextCluesViewController
- (CACContextCluesDelegate)delegate;
- (CACContextCluesViewController)initWithCommands:(id)commands;
- (void)doneButtonPressed;
- (void)setCommands:(id)commands;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CACContextCluesViewController

- (CACContextCluesViewController)initWithCommands:(id)commands
{
  commandsCopy = commands;
  v10.receiver = self;
  v10.super_class = CACContextCluesViewController;
  v5 = [(CACContextCluesViewController *)&v10 init];
  if (v5)
  {
    v6 = [CACContextCluesWelcomeController alloc];
    v7 = [CACLocaleUtilities localizedUIStringForKey:@"ContextClues.Title"];
    v8 = [(OBTextWelcomeController *)v6 initWithTitle:v7];
    [(CACContextCluesViewController *)v5 setContextCluesController:v8];

    [(CACContextCluesViewController *)v5 setCommands:commandsCopy];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = CACContextCluesViewController;
  [(CACContextCluesViewController *)&v15 viewDidAppear:appear];
  _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  _rootSheetPresentationController = [_applicationKeyWindow _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v6 = objc_alloc(MEMORY[0x277D757A0]);
  contextCluesController = [(CACContextCluesViewController *)self contextCluesController];
  v8 = [v6 initWithRootViewController:contextCluesController];

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Done"];
  v11 = [v9 initWithTitle:v10 style:2 target:self action:sel_doneButtonPressed];
  contextCluesController2 = [(CACContextCluesViewController *)self contextCluesController];
  navigationItem = [contextCluesController2 navigationItem];
  [navigationItem setRightBarButtonItem:v11];

  [(CACContextCluesViewController *)self setPresentingNavigationController:v8];
  presentationController = [v8 presentationController];
  [presentationController setDelegate:self];

  [(CACContextCluesViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  presentingNavigationController = [(CACContextCluesViewController *)self presentingNavigationController];
  [presentingNavigationController dismissViewControllerAnimated:1 completion:0];

  _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  _rootSheetPresentationController = [_applicationKeyWindow _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:1];

  v8.receiver = self;
  v8.super_class = CACContextCluesViewController;
  [(CACContextCluesViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)setCommands:(id)commands
{
  v20 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  if (self->_commands != commandsCopy)
  {
    objc_storeStrong(&self->_commands, commands);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = commandsCopy;
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
          contextCluesController = [(CACContextCluesViewController *)self contextCluesController];
          titleText = [v11 titleText];
          helperText = [v11 helperText];
          [contextCluesController addBulletedListItemWithTitle:titleText description:helperText];

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
  delegate = [(CACContextCluesViewController *)self delegate];
  [delegate contextCludesDidPressDoneButton];
}

- (CACContextCluesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end