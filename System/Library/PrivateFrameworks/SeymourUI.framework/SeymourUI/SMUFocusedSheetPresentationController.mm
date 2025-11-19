@interface SMUFocusedSheetPresentationController
- (SMUFocusedSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation SMUFocusedSheetPresentationController

- (SMUFocusedSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v10.receiver = self;
  v10.super_class = SMUFocusedSheetPresentationController;
  v4 = [(SMUFocusedSheetPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v3 = [(SMUFocusedSheetPresentationController *)self containerView];
  v4 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  [v3 addSubview:v4];

  v18 = MEMORY[0x277CCAAD0];
  v30 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  v28 = [v30 leadingAnchor];
  v29 = [(SMUFocusedSheetPresentationController *)self containerView];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v36[0] = v26;
  v25 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  v23 = [v25 trailingAnchor];
  v24 = [(SMUFocusedSheetPresentationController *)self containerView];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v36[1] = v21;
  v20 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  v19 = [v20 topAnchor];
  v5 = [(SMUFocusedSheetPresentationController *)self containerView];
  v6 = [v5 topAnchor];
  v7 = [v19 constraintEqualToAnchor:v6];
  v36[2] = v7;
  v8 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
  v9 = [v8 bottomAnchor];
  v10 = [(SMUFocusedSheetPresentationController *)self containerView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v36[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v18 activateConstraints:v13];

  v14 = [(SMUFocusedSheetPresentationController *)self presentingViewController];
  v15 = [v14 transitionCoordinator];

  v16 = [(SMUFocusedSheetPresentationController *)self backgroundBlurEffect];
  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__SMUFocusedSheetPresentationController_presentationTransitionWillBegin__block_invoke;
  v31[3] = &unk_277D97D60;
  objc_copyWeak(&v33, &location);
  v17 = v16;
  v32 = v17;
  [v15 animateAlongsideTransition:v31 completion:0];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __72__SMUFocusedSheetPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained blurredBackgroundView];
  [v2 setEffect:*(a1 + 32)];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v6 presentationTransitionDidEnd:?];
  if (!a3)
  {
    v5 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
    [v5 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v8 dismissalTransitionWillBegin];
  v3 = [(SMUFocusedSheetPresentationController *)self presentingViewController];
  v4 = [v3 transitionCoordinator];

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SMUFocusedSheetPresentationController_dismissalTransitionWillBegin__block_invoke;
  v5[3] = &unk_277D97D88;
  objc_copyWeak(&v6, &location);
  [v4 animateAlongsideTransition:v5 completion:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__SMUFocusedSheetPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained blurredBackgroundView];
  [v1 setEffect:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SMUFocusedSheetPresentationController;
  [(SMUFocusedSheetPresentationController *)&v6 dismissalTransitionDidEnd:?];
  if (!a3)
  {
    v5 = [(SMUFocusedSheetPresentationController *)self blurredBackgroundView];
    [v5 removeFromSuperview];
  }
}

@end