@interface SBControlCenterModuleTransientOverlayViewController
- (BOOL)_shouldBlurBackground;
- (BOOL)handleHomeButtonPress;
- (SBControlCenterModuleTransientOverlayViewController)init;
- (SBControlCenterModuleTransientOverlayViewController)initWithCoder:(id)a3;
- (SBControlCenterModuleTransientOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBControlCenterModuleTransientOverlayViewController)initWithWindowScene:(id)a3 moduleIdentifier:(id)a4 presentationOptions:(id)a5;
- (SBControlCenterModuleTransientOverlayViewControllerDelegate)delegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (void)_animateTransitionFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 isAnimated:(BOOL)a6 otherAnimations:(id)a7 completion:(id)a8;
- (void)_dismiss;
- (void)viewDidLoad;
@end

@implementation SBControlCenterModuleTransientOverlayViewController

- (SBControlCenterModuleTransientOverlayViewController)initWithWindowScene:(id)a3 moduleIdentifier:(id)a4 presentationOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    [SBControlCenterModuleTransientOverlayViewController initWithWindowScene:a2 moduleIdentifier:self presentationOptions:?];
  }

  v21.receiver = self;
  v21.super_class = SBControlCenterModuleTransientOverlayViewController;
  v12 = [(SBTransientOverlayViewController *)&v21 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = [v9 controlCenterController];
    v14 = [v13 viewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = MEMORY[0x277CFC898];
    v17 = v15;
    v18 = [[v16 alloc] initWithModuleIdentifier:v10 presentationOptions:v11 mainViewController:v17];

    moduleOverlayViewController = v12->_moduleOverlayViewController;
    v12->_moduleOverlayViewController = v18;

    [(CCUIModuleAlertViewController *)v12->_moduleOverlayViewController setDelegate:v12];
  }

  return v12;
}

- (SBControlCenterModuleTransientOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithModuleIdentifier_presentationOptions_);
  [v6 handleFailureInMethod:a2 object:self file:@"SBControlCenterModuleTransientOverlayViewController.m" lineNumber:68 description:{@"%s is unavailable; use %@ instead", "-[SBControlCenterModuleTransientOverlayViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (SBControlCenterModuleTransientOverlayViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModuleIdentifier_presentationOptions_);
  [v5 handleFailureInMethod:a2 object:self file:@"SBControlCenterModuleTransientOverlayViewController.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[SBControlCenterModuleTransientOverlayViewController initWithCoder:]", v6}];

  return 0;
}

- (SBControlCenterModuleTransientOverlayViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithModuleIdentifier_presentationOptions_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBControlCenterModuleTransientOverlayViewController.m" lineNumber:76 description:{@"%s is unavailable; use %@ instead", "-[SBControlCenterModuleTransientOverlayViewController init]", v5}];

  return 0;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBControlCenterModuleTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidLoad];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [(SBControlCenterModuleTransientOverlayViewController *)self bs_addChildViewController:self->_moduleOverlayViewController withSuperview:v3];
  v4 = [(CCUIModuleAlertViewController *)self->_moduleOverlayViewController view];
  [v4 setAutoresizingMask:18];
  [v4 setHidden:1];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
}

- (void)_dismiss
{
  v3 = [(SBControlCenterModuleTransientOverlayViewController *)self delegate];
  [v3 controlCenterModuleTransientOverlayViewControllerNeedsDismissal:self];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = [(SBControlCenterModuleTransientOverlayViewController *)self _shouldBlurBackground];
  v4 = [(CCUIModuleAlertViewController *)self->_moduleOverlayViewController view];
  v5 = [(SBTransientOverlayViewController *)self contentView];
  v6 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v10[3] = &unk_2783B39D0;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v13 = v3;
  v7 = v4;
  v8 = v5;
  [(SBTransientOverlayBlockTransitionCoordinator *)v6 setStartTransitionHandler:v10];

  return v6;
}

void __107__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v4[177];
  v7 = [v3 isAnimated];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
  v13[3] = &unk_2783A9D10;
  v8 = *(a1 + 48);
  v17 = *(a1 + 56);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
  v11[3] = &unk_2783A9398;
  v12 = v16;
  v10 = v16;
  [v4 _animateTransitionFromViewController:v4 toViewController:v6 containerView:v5 isAnimated:v7 otherAnimations:v13 completion:v11];
}

uint64_t __107__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 40) + 1416) setBackgroundViewWeighting:1.0];
  }

  v2 = *(a1 + 48);

  return [v2 performAlongsideTransitions];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = [(SBControlCenterModuleTransientOverlayViewController *)self _shouldBlurBackground];
  v4 = [(CCUIModuleAlertViewController *)self->_moduleOverlayViewController view];
  v5 = [(SBTransientOverlayViewController *)self contentView];
  v6 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v10[3] = &unk_2783B39D0;
  v10[4] = self;
  v11 = v5;
  v13 = v3;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(SBTransientOverlayBlockTransitionCoordinator *)v6 setStartTransitionHandler:v10];

  return v6;
}

void __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v4[177];
  v7 = [v3 isAnimated];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
  v12[3] = &unk_2783A97D8;
  v14 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v13 = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
  v9[3] = &unk_2783A8BF0;
  v10 = *(a1 + 48);
  v11 = v13;
  v8 = v13;
  [v4 _animateTransitionFromViewController:v6 toViewController:v4 containerView:v5 isAnimated:v7 otherAnimations:v12 completion:v9];
}

uint64_t __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 1416) setBackgroundViewWeighting:0.0];
  }

  v2 = *(a1 + 40);

  return [v2 performAlongsideTransitions];
}

uint64_t __104__SBControlCenterModuleTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

- (BOOL)handleHomeButtonPress
{
  moduleOverlayViewController = self->_moduleOverlayViewController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SBControlCenterModuleTransientOverlayViewController_handleHomeButtonPress__block_invoke;
  v4[3] = &unk_2783A9398;
  v4[4] = self;
  [(CCUIModuleAlertViewController *)moduleOverlayViewController dismissModulePresentedContentAnimated:1 completion:v4];
  return 1;
}

uint64_t __76__SBControlCenterModuleTransientOverlayViewController_handleHomeButtonPress__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _dismiss];
  }

  return result;
}

- (BOOL)_shouldBlurBackground
{
  v2 = [(SBControlCenterModuleTransientOverlayViewController *)self presentationOptions];
  v3 = [v2 blurBackground];

  return v3;
}

- (void)_animateTransitionFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 isAnimated:(BOOL)a6 otherAnimations:(id)a7 completion:(id)a8
{
  v10 = a6;
  v12 = a4;
  v13 = a7;
  v14 = a8;
  moduleOverlayViewController = self->_moduleOverlayViewController;
  v16 = [(CCUIModuleAlertViewController *)moduleOverlayViewController moduleAlertView];
  memset(&v32, 0, sizeof(v32));
  v17 = moduleOverlayViewController == v12;
  if (moduleOverlayViewController == v12)
  {
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v32.a = *MEMORY[0x277CBF2C0];
    *&v32.c = v18;
    *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v32, 0.8, 0.8);
  }

  v19 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke;
  v29[3] = &unk_2783A9F58;
  v20 = v16;
  v30 = v20;
  v31 = v17;
  [v19 performWithoutAnimation:v29];
  if (v10)
  {
    v21 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke_2;
    v24[3] = &unk_2783B39F8;
    v25 = v20;
    v28 = v17;
    v27 = v32;
    v26 = v13;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke_3;
    v22[3] = &unk_2783AE778;
    v23 = v14;
    [v21 _animateUsingSpringWithTension:0 friction:v24 interactive:v22 animations:500.0 completion:30.0];
  }

  else
  {
    if (v13)
    {
      v13[2](v13);
    }

    if (v14)
    {
      (*(v14 + 2))(v14, 1);
    }
  }
}

uint64_t __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    CGAffineTransformMakeScale(&v7, 0.8, 0.8);
  }

  else
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v7.a = *MEMORY[0x277CBF2C0];
    *&v7.c = v5;
    *&v7.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  return [v4 setTransform:&v7];
}

uint64_t __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(a1 + 96))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v5;
  v7[2] = *(a1 + 80);
  [v4 setTransform:v7];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __161__SBControlCenterModuleTransientOverlayViewController__animateTransitionFromViewController_toViewController_containerView_isAnimated_otherAnimations_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (SBControlCenterModuleTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithWindowScene:(uint64_t)a1 moduleIdentifier:(uint64_t)a2 presentationOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBControlCenterModuleTransientOverlayViewController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"moduleIdentifier"}];
}

@end