@interface RUINavigationController
- (UIViewController)hostViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_menuButtonPressed:(id)pressed;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
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
  view = [(RUINavigationController *)self view];
  [view addGestureRecognizer:v3];
}

- (void)_menuButtonPressed:(id)pressed
{
  viewControllers = [(RUINavigationController *)self viewControllers];
  v5 = [viewControllers count];

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
    topViewController = [(RUINavigationController *)self topViewController];
    [(UINavigationController *)self settingsCompatiblePopViewController];
    menuDismissalHandler = self->_menuDismissalHandler;
    if (menuDismissalHandler)
    {
      menuDismissalHandler[2](menuDismissalHandler, topViewController);
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

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  v7 = [WeakRetained conformsToProtocol:&unk_282DBDDE8];

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_hostViewController);
    [v8 dismissModalRUIController:self completion:completionCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RUINavigationController;
    [(RUINavigationController *)&v9 dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = RUINavigationController;
  changeCopy = change;
  [(RUINavigationController *)&v9 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(RUINavigationController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    style = [(RUINavigationController *)self style];
    [style applyToNavigationController:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RUINavigationController;
  [(RUINavigationController *)&v5 viewDidDisappear:disappear];
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