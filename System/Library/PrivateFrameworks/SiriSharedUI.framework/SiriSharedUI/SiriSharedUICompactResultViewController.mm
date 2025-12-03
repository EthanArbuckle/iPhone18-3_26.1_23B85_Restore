@interface SiriSharedUICompactResultViewController
- (BOOL)_canShowWhileLocked;
- (SiriSharedUICompactResultView)compactResultView;
- (void)loadView;
- (void)setContentPlatterViewController:(id)controller;
@end

@implementation SiriSharedUICompactResultViewController

- (void)loadView
{
  v3 = objc_alloc_init(SiriSharedUICompactResultView);
  [(SiriSharedUICompactResultViewController *)self setView:v3];
}

- (SiriSharedUICompactResultView)compactResultView
{
  view = [(SiriSharedUICompactResultViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = view;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setContentPlatterViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentPlatterViewController != controllerCopy)
  {
    contentPlatterViewController = [(SiriSharedUICompactResultViewController *)self contentPlatterViewController];
    [contentPlatterViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentPlatterViewController, controller);
    [(SiriSharedUICompactResultViewController *)self addChildViewController:controllerCopy];
    compactResultView = [(SiriSharedUICompactResultViewController *)self compactResultView];
    contentPlatterView = [(SiriSharedUIContentPlatterViewController *)controllerCopy contentPlatterView];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SiriSharedUICompactResultViewController_setContentPlatterViewController___block_invoke;
    v10[3] = &unk_278354858;
    v11 = contentPlatterViewController;
    v9 = contentPlatterViewController;
    [compactResultView setSnippetView:contentPlatterView completion:v10];

    [v9 didMoveToParentViewController:0];
    [(SiriSharedUIContentPlatterViewController *)controllerCopy didMoveToParentViewController:self];
  }
}

- (BOOL)_canShowWhileLocked
{
  mEMORY[0x277D61AB8] = [MEMORY[0x277D61AB8] sharedInstance];
  isSiriSafeForLockScreen = [mEMORY[0x277D61AB8] isSiriSafeForLockScreen];

  return isSiriSafeForLockScreen;
}

@end