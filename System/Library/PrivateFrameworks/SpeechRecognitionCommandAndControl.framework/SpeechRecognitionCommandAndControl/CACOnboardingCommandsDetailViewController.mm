@interface CACOnboardingCommandsDetailViewController
- (CACOnboardingCommandsDetailViewController)initWithTitle:(id)title detailText:(id)text commandGroups:(id)groups;
- (void)setHideTrayButtons:(BOOL)buttons;
- (void)viewDidLoad;
@end

@implementation CACOnboardingCommandsDetailViewController

- (CACOnboardingCommandsDetailViewController)initWithTitle:(id)title detailText:(id)text commandGroups:(id)groups
{
  groupsCopy = groups;
  v15.receiver = self;
  v15.super_class = CACOnboardingCommandsDetailViewController;
  v10 = [(CACOnboardingCommandsDetailViewController *)&v15 initWithTitle:title detailText:text symbolName:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_commandGroups, groups);
    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
    mainButton = v11->_mainButton;
    v11->_mainButton = boldButton;
  }

  return v11;
}

- (void)viewDidLoad
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = CACOnboardingCommandsDetailViewController;
  [(OBBaseWelcomeController *)&v35 viewDidLoad];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CACOnboardingCommandsDetailViewController *)self commandGroups];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        commandGroups = [(CACOnboardingCommandsDetailViewController *)self commandGroups];
        v9 = [commandGroups count];

        if (v9 != 1)
        {
          groupTitle = [v7 groupTitle];
          [(OBTextWelcomeController *)self addSectionWithHeader:groupTitle content:&stru_287BD8610];
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        commands = [v7 commands];
        v12 = [commands countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(commands);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              titleText = [v16 titleText];
              helperText = [v16 helperText];
              [(OBTextWelcomeController *)self addBulletedListItemWithTitle:titleText description:helperText];
            }

            v13 = [commands countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v13);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v4);
  }

  v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismiss];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v19];

  mainButton = [(CACOnboardingCommandsDetailViewController *)self mainButton];
  v22 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Done"];
  [mainButton setTitle:v22 forState:0];

  mainButton2 = [(CACOnboardingCommandsDetailViewController *)self mainButton];
  [mainButton2 addTarget:self action:sel_dismiss forControlEvents:64];

  if (![(CACOnboardingCommandsDetailViewController *)self hideTrayButtons])
  {
    buttonTray = [(CACOnboardingCommandsDetailViewController *)self buttonTray];
    mainButton3 = [(CACOnboardingCommandsDetailViewController *)self mainButton];
    [buttonTray addButton:mainButton3];
  }
}

- (void)setHideTrayButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  obj = self;
  objc_sync_enter(obj);
  buttonTray = [(CACOnboardingCommandsDetailViewController *)obj buttonTray];
  [buttonTray setHidden:buttonsCopy];

  obj->_hideTrayButtons = buttonsCopy;
  objc_sync_exit(obj);
}

@end