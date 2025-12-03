@interface SBSwitcherViewController
- (SBSwitcherViewControllerDelegate)delegate;
- (id)preferredFocusEnvironments;
- (int64_t)_overrideInterfaceOrientationMechanics;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  view = [(SBSwitcherViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  contentWrapperView = self->_contentWrapperView;
  self->_contentWrapperView = v5;

  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setAutoresizingMask:18];
  view2 = [(SBSwitcherViewController *)self view];
  [view2 addSubview:self->_contentWrapperView];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewDidLoadForSwitcherViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBSwitcherViewController;
  [(SBSwitcherViewController *)&v6 viewWillAppear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewWillAppearForSwitcherViewController:self animated:appearCopy];
}

- (id)preferredFocusEnvironments
{
  childViewControllers = [(SBSwitcherViewController *)self childViewControllers];

  if (childViewControllers)
  {
    childViewControllers2 = [(SBSwitcherViewController *)self childViewControllers];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBSwitcherViewController;
    childViewControllers2 = [(SBSwitcherViewController *)&v6 preferredFocusEnvironments];
  }

  return childViewControllers2;
}

- (SBSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end