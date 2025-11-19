@interface UIPrintActivityWrapperNavigationController
- (UIPrintActivityWrapperNavigationController)initWithPrintInteractionController:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIPrintActivityWrapperNavigationController

- (UIPrintActivityWrapperNavigationController)initWithPrintInteractionController:(id)a3 completion:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIPrintActivityWrapperNavigationController;
  v5 = a4;
  v6 = a3;
  v7 = [(UIPrintActivityWrapperNavigationController *)&v11 init];
  [(UIPrintActivityWrapperNavigationController *)v7 setPrintInteractionController:v6, v11.receiver, v11.super_class];

  v8 = [v5 copy];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPrintActivityWrapperNavigationController *)self printInteractionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UIPrintActivityWrapperNavigationController_viewWillAppear___block_invoke;
  v7[3] = &unk_1E71FAD88;
  v7[4] = self;
  [v5 presentAnimated:0 completionHandler:v7];

  v6.receiver = self;
  v6.super_class = UIPrintActivityWrapperNavigationController;
  [(UIPrintActivityWrapperNavigationController *)&v6 viewWillAppear:v3];
}

@end