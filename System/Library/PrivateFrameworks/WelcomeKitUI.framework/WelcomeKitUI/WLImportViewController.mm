@interface WLImportViewController
- (WLImportViewController)initWithWelcomeController:(id)controller;
@end

@implementation WLImportViewController

- (WLImportViewController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v6 = WLLocalizedString();
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:@"MoveToiOS" inBundle:v8];
  v16.receiver = self;
  v16.super_class = WLImportViewController;
  v10 = [(OBSetupAssistantProgressController *)&v16 initWithTitle:v6 detailText:0 icon:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_welcomeController, controller);
    navigationItem = [(OBBaseWelcomeController *)v10 navigationItem];
    [navigationItem setTitle:&stru_2882D7420];

    navigationItem2 = [(OBBaseWelcomeController *)v10 navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];

    v13 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PROGRESS_IMPORTING_TEXT"];
    v14 = WLLocalizedString();
    [(WLImportViewController *)v10 setProgressDescription:v14];
  }

  return v10;
}

@end