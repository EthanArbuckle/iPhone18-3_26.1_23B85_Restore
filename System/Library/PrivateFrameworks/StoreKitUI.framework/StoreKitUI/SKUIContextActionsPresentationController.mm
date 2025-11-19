@interface SKUIContextActionsPresentationController
- (SKUIContextActionsPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation SKUIContextActionsPresentationController

- (SKUIContextActionsPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsPresentationController initWithPresentedViewController:presentingViewController:];
  }

  v13.receiver = self;
  v13.super_class = SKUIContextActionsPresentationController;
  v8 = [(SKUIContextActionsPresentationController *)&v13 initWithPresentedViewController:v6 presentingViewController:v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(UIVisualEffectView *)v9 setAutoresizingMask:18];
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
    [(UIVisualEffectView *)v9 setBackgroundColor:v10];

    backgroundView = v8->_backgroundView;
    v8->_backgroundView = v9;
  }

  return v8;
}

- (void)presentationTransitionWillBegin
{
  v26.receiver = self;
  v26.super_class = SKUIContextActionsPresentationController;
  [(SKUIContextActionsPresentationController *)&v26 presentationTransitionWillBegin];
  v3 = [(SKUIContextActionsPresentationController *)self presentedViewController];
  v4 = [(SKUIContextActionsPresentationController *)self containerView];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 statusBar];

  LODWORD(v5) = [v3 isOrbPresentation];
  v7 = [(SKUIContextActionsPresentationController *)self backgroundView];
  [v4 addSubview:v7];

  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SKUIContextActionsPresentationController *)self backgroundView];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(SKUIContextActionsPresentationController *)self backgroundView];
  [v17 setAlpha:0.0];

  if (v5)
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v18 = [(SKUIContextActionsPresentationController *)self backgroundView];
    [v4 insertSubview:v6 belowSubview:v18];
  }

  v19 = [(SKUIContextActionsPresentationController *)self presentedViewController];
  v20 = [v19 transitionCoordinator];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__SKUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke;
  v25[3] = &unk_2781F8348;
  v25[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SKUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke_2;
  v22[3] = &unk_2781FB740;
  v23 = v6;
  v24 = self;
  v21 = v6;
  [v20 animateAlongsideTransition:v25 completion:v22];
}

void __75__SKUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  v3 = [v2 backgroundColor];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) backgroundView];
    [v6 setAlpha:1.0];
  }
}

void __75__SKUIContextActionsPresentationController_presentationTransitionWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 statusBarWindow];
    [v4 addSubview:*(a1 + 32)];

    v5 = [*(a1 + 40) backgroundView];
    [v5 setAlpha:0.0];
  }
}

- (void)dismissalTransitionWillBegin
{
  v14.receiver = self;
  v14.super_class = SKUIContextActionsPresentationController;
  [(SKUIContextActionsPresentationController *)&v14 dismissalTransitionWillBegin];
  v3 = [(SKUIContextActionsPresentationController *)self presentedViewController];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 statusBar];

  v6 = [v3 isOrbPresentation];
  v7 = [(SKUIContextActionsPresentationController *)self presentedViewController];
  v8 = [v7 transitionCoordinator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SKUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke;
  v13[3] = &unk_2781F8348;
  v13[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SKUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke_2;
  v10[3] = &unk_2781FB968;
  v12 = v6;
  v11 = v5;
  v9 = v5;
  [v8 animateAlongsideTransition:v13 completion:v10];
}

void __72__SKUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) dismissalAnimations];

  if (v3)
  {
    v4 = [*(a1 + 32) dismissalAnimations];
    v4[2]();
  }
}

void __72__SKUIContextActionsPresentationController_dismissalTransitionWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0 && *(a1 + 40) == 1)
  {
    [MEMORY[0x277D75DA0] _synchronizeDrawing];
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [v4 statusBarWindow];
    [v3 addSubview:*(a1 + 32)];
  }
}

- (void)initWithPresentedViewController:presentingViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsPresentationController initWithPresentedViewController:presentingViewController:]";
}

@end