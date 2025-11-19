@interface SBSwitcherViewController
- (SBSwitcherViewControllerDelegate)delegate;
- (id)preferredFocusEnvironments;
- (int64_t)_overrideInterfaceOrientationMechanics;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBSwitcherViewController

- (int64_t)_overrideInterfaceOrientationMechanics
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained overrideInterfaceOrientationMechanicsForSwitcherViewController:self];

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBSwitcherViewController;
  [(SBSwitcherViewController *)&v9 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277CF0D78]);
  v4 = [(SBSwitcherViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  contentWrapperView = self->_contentWrapperView;
  self->_contentWrapperView = v5;

  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setAutoresizingMask:18];
  v7 = [(SBSwitcherViewController *)self view];
  [v7 addSubview:self->_contentWrapperView];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewDidLoadForSwitcherViewController:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBSwitcherViewController;
  [(SBSwitcherViewController *)&v6 viewWillAppear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewWillAppearForSwitcherViewController:self animated:v3];
}

- (id)preferredFocusEnvironments
{
  v3 = [(SBSwitcherViewController *)self childViewControllers];

  if (v3)
  {
    v4 = [(SBSwitcherViewController *)self childViewControllers];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBSwitcherViewController;
    v4 = [(SBSwitcherViewController *)&v6 preferredFocusEnvironments];
  }

  return v4;
}

- (SBSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end