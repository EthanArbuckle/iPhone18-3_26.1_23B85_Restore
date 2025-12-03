@interface SMUFocusedSheetPresentationController
- (SMUFocusedSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation SMUFocusedSheetPresentationController

- (SMUFocusedSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v10.receiver = self;
  v10.super_class = SMUFocusedSheetPresentationController;
  v4 = [(SMUFocusedSheetPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = [MEMORY[0x277D75210] effectWithStyle:5];
    backgroundBlurEffect = v4->_backgroundBlurEffect;
    v4->_backgroundBlurEffect = v5;

    v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    blurredBackgroundView = v4->_blurredBackgroundView;
    v4->_blurredBackgroundView = v7;

    [(UIVisualEffectView *)v4->_blurredBackgroundView setUserInteractionEnabled:0];
    [(UIVisualEffectView *)v4->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

- (void)presentationTransitionWillBegin
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v35 presentationTransitionWillBegin];
  containerView = [(SMUFocusedSheetPresentationController *)self containerView];
  blurredBackgroundView = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  [containerView addSubview:blurredBackgroundView];

  v18 = MEMORY[0x277CCAAD0];
  blurredBackgroundView2 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  leadingAnchor = [blurredBackgroundView2 leadingAnchor];
  containerView2 = [(SMUFocusedSheetPresentationController *)self containerView];
  leadingAnchor2 = [containerView2 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v26;
  blurredBackgroundView3 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  trailingAnchor = [blurredBackgroundView3 trailingAnchor];
  containerView3 = [(SMUFocusedSheetPresentationController *)self containerView];
  trailingAnchor2 = [containerView3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v21;
  blurredBackgroundView4 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  topAnchor = [blurredBackgroundView4 topAnchor];
  containerView4 = [(SMUFocusedSheetPresentationController *)self containerView];
  topAnchor2 = [containerView4 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[2] = v7;
  blurredBackgroundView5 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  bottomAnchor = [blurredBackgroundView5 bottomAnchor];
  containerView5 = [(SMUFocusedSheetPresentationController *)self containerView];
  bottomAnchor2 = [containerView5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v18 activateConstraints:v13];

  presentingViewController = [(SMUFocusedSheetPresentationController *)self presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  backgroundBlurEffect = [(SMUFocusedSheetPresentationController *)self backgroundBlurEffect];
  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__SMUFocusedSheetPresentationController_presentationTransitionWillBegin__block_invoke;
  v31[3] = &unk_277D97D60;
  objc_copyWeak(&v33, &location);
  v17 = backgroundBlurEffect;
  v32 = v17;
  [transitionCoordinator animateAlongsideTransition:v31 completion:0];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __72__SMUFocusedSheetPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained blurredBackgroundView];
  [v2 setEffect:*(a1 + 32)];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  v6.receiver = self;
  v6.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v6 presentationTransitionDidEnd:?];
  if (!end)
  {
    blurredBackgroundView = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
    [blurredBackgroundView removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v8 dismissalTransitionWillBegin];
  presentingViewController = [(SMUFocusedSheetPresentationController *)self presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SMUFocusedSheetPresentationController_dismissalTransitionWillBegin__block_invoke;
  v5[3] = &unk_277D97D88;
  objc_copyWeak(&v6, &location);
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__SMUFocusedSheetPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained blurredBackgroundView];
  [v1 setEffect:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  v6.receiver = self;
  v6.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v6 dismissalTransitionDidEnd:?];
  if (!end)
  {
    blurredBackgroundView = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
    [blurredBackgroundView removeFromSuperview];
  }
}

@end