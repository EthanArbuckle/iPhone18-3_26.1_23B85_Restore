@interface RUINavigationController
- (UIViewController)hostViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_menuButtonPressed:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RUINavigationController

- (unint64_t)supportedInterfaceOrientations
{
  ruiSupportedInterfaceOrientations = self->_ruiSupportedInterfaceOrientations;
  if (!ruiSupportedInterfaceOrientations)
  {
    v4.receiver = self;
    v4.super_class = RUINavigationController;
    return [(RUINavigationController *)&v4 supportedInterfaceOrientations];
  }

  return ruiSupportedInterfaceOrientations;
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = RUINavigationController;
  [(RUINavigationController *)&v2 loadView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RUINavigationController;
  [(RUINavigationController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__menuButtonPressed_];
  [v3 setAllowedPressTypes:&unk_282D7AD28];
  v4 = [(RUINavigationController *)self view];
  [v4 addGestureRecognizer:v3];
}

- (void)_menuButtonPressed:(id)a3
{
  v4 = [(RUINavigationController *)self viewControllers];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__RUINavigationController__menuButtonPressed___block_invoke;
    v8[3] = &unk_2782E7F30;
    v8[4] = self;
    [(RUINavigationController *)self dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v7 = [(RUINavigationController *)self topViewController];
    [(UINavigationController *)self settingsCompatiblePopViewController];
    menuDismissalHandler = self->_menuDismissalHandler;
    if (menuDismissalHandler)
    {
      menuDismissalHandler[2](menuDismissalHandler, v7);
    }
  }
}

uint64_t __46__RUINavigationController__menuButtonPressed___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1512);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  v7 = [WeakRetained conformsToProtocol:&unk_282DBDDE8];

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_hostViewController);
    [v8 dismissModalRUIController:self completion:v5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RUINavigationController;
    [(RUINavigationController *)&v9 dismissViewControllerAnimated:1 completion:v5];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = RUINavigationController;
  v4 = a3;
  [(RUINavigationController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(RUINavigationController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(RUINavigationController *)self style];
    [v8 applyToNavigationController:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RUINavigationController;
  [(RUINavigationController *)&v5 viewDidDisappear:a3];
  viewDidDisappearHandler = self->_viewDidDisappearHandler;
  if (viewDidDisappearHandler)
  {
    viewDidDisappearHandler[2](viewDidDisappearHandler, self);
  }
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end