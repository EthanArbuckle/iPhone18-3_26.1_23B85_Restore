@interface CACOnboardingCommandsDetailViewController
- (CACOnboardingCommandsDetailViewController)initWithTitle:(id)a3 detailText:(id)a4 commandGroups:(id)a5;
- (void)setHideTrayButtons:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CACOnboardingCommandsDetailViewController

- (CACOnboardingCommandsDetailViewController)initWithTitle:(id)a3 detailText:(id)a4 commandGroups:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CACOnboardingCommandsDetailViewController;
  v10 = [(CACOnboardingCommandsDetailViewController *)&v15 initWithTitle:a3 detailText:a4 symbolName:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_commandGroups, a5);
    v12 = [MEMORY[0x277D37618] boldButton];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    mainButton = v11->_mainButton;
    v11->_mainButton = v12;
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
        v8 = [(CACOnboardingCommandsDetailViewController *)self commandGroups];
        v9 = [v8 count];

        if (v9 != 1)
        {
          v10 = [v7 groupTitle];
          [(OBTextWelcomeController *)self addSectionWithHeader:v10 content:&stru_287BD8610];
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = [v7 commands];
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              v17 = [v16 titleText];
              v18 = [v16 helperText];
              [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v17 description:v18];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v13);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v4);
  }

  v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismiss];
  v20 = [(OBBaseWelcomeController *)self navigationItem];
  [v20 setRightBarButtonItem:v19];

  v21 = [(CACOnboardingCommandsDetailViewController *)self mainButton];
  v22 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Done"];
  [v21 setTitle:v22 forState:0];

  v23 = [(CACOnboardingCommandsDetailViewController *)self mainButton];
  [v23 addTarget:self action:sel_dismiss forControlEvents:64];

  if (![(CACOnboardingCommandsDetailViewController *)self hideTrayButtons])
  {
    v24 = [(CACOnboardingCommandsDetailViewController *)self buttonTray];
    v25 = [(CACOnboardingCommandsDetailViewController *)self mainButton];
    [v24 addButton:v25];
  }
}

- (void)setHideTrayButtons:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = [(CACOnboardingCommandsDetailViewController *)obj buttonTray];
  [v4 setHidden:v3];

  obj->_hideTrayButtons = v3;
  objc_sync_exit(obj);
}

@end