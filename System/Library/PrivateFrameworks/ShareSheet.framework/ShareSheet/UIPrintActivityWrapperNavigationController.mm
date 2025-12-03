@interface UIPrintActivityWrapperNavigationController
- (UIPrintActivityWrapperNavigationController)initWithPrintInteractionController:(id)controller completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIPrintActivityWrapperNavigationController

- (UIPrintActivityWrapperNavigationController)initWithPrintInteractionController:(id)controller completion:(id)completion
{
  v11.receiver = self;
  v11.super_class = UIPrintActivityWrapperNavigationController;
  completionCopy = completion;
  controllerCopy = controller;
  v7 = [(UIPrintActivityWrapperNavigationController *)&v11 init];
  [(UIPrintActivityWrapperNavigationController *)v7 setPrintInteractionController:controllerCopy, v11.receiver, v11.super_class];

  v8 = [completionCopy copy];
  completionHandler = v7->_completionHandler;
  v7->_completionHandler = v8;

  return v7;
}

- (void)viewDidLoad
{
  if (![(UIPrintActivityWrapperNavigationController *)self presentedPrintInteractionController])
  {
    [(UIPrintActivityWrapperNavigationController *)self setPresentedPrintInteractionController:1];
  }

  v3.receiver = self;
  v3.super_class = UIPrintActivityWrapperNavigationController;
  [(UIPrintActivityWrapperNavigationController *)&v3 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  printInteractionController = [(UIPrintActivityWrapperNavigationController *)self printInteractionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UIPrintActivityWrapperNavigationController_viewWillAppear___block_invoke;
  v7[3] = &unk_1E71FAD88;
  v7[4] = self;
  [printInteractionController presentAnimated:0 completionHandler:v7];

  v6.receiver = self;
  v6.super_class = UIPrintActivityWrapperNavigationController;
  [(UIPrintActivityWrapperNavigationController *)&v6 viewWillAppear:appearCopy];
}

@end