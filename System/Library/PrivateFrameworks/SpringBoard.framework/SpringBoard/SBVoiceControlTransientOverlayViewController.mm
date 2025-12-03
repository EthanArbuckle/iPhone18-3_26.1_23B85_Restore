@interface SBVoiceControlTransientOverlayViewController
- (BOOL)shouldAutorotate;
- (NSString)coverSheetIdentifier;
- (SBVoiceControlTransientOverlayViewController)initWithSource:(id)source;
- (SBVoiceControlTransientOverlayViewControllerDelegate)voiceControlDelegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (void)beginIgnoringAppearanceUpdates;
- (void)dealloc;
- (void)endIgnoringAppearanceUpdates;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)voiceControlViewControllerRequestsDismissal:(id)dismissal;
@end

@implementation SBVoiceControlTransientOverlayViewController

- (SBVoiceControlTransientOverlayViewController)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = SBVoiceControlTransientOverlayViewController;
  v5 = [(SBTransientOverlayViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[SBVoiceControlViewController alloc] initWithSource:sourceCopy];
    contentViewController = v5->_contentViewController;
    v5->_contentViewController = v6;

    [(SBVoiceControlViewController *)v5->_contentViewController setVoiceControlDelegate:v5];
    [(SBVoiceControlViewController *)v5->_contentViewController setInterfaceOrientation:[(SBTransientOverlayViewController *)v5 containerOrientation]];
  }

  return v5;
}

- (void)dealloc
{
  parentViewController = [(SBVoiceControlViewController *)self->_contentViewController parentViewController];

  if (parentViewController == self)
  {
    [(SBVoiceControlViewController *)self->_contentViewController willMoveToParentViewController:0];
    if ([(SBVoiceControlViewController *)self->_contentViewController isViewLoaded])
    {
      view = [(SBVoiceControlViewController *)self->_contentViewController view];
      [view removeFromSuperview];
    }

    [(SBVoiceControlViewController *)self->_contentViewController removeFromParentViewController];
  }

  v5.receiver = self;
  v5.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 dealloc];
}

- (BOOL)shouldAutorotate
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay"))
  {
    return 1;
  }

  contentViewController = self->_contentViewController;

  return [(SBVoiceControlViewController *)contentViewController shouldAutorotate];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidAppear:?];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBVoiceControlViewController *)self->_contentViewController viewDidAppear:appearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidDisappear:?];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBVoiceControlViewController *)self->_contentViewController viewDidDisappear:disappearCopy];
    WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);
    [WeakRetained voiceControlTransientOverlayViewControllerDidDisappear:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v22 viewDidLayoutSubviews];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(SBVoiceControlViewController *)self->_contentViewController view];
  [view setFrame:{v5, v7, v9, v11}];

  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(_UIBackdropView *)self->_backdropView setFrame:v15, v17, v19, v21];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v8 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
  backdropView = self->_backdropView;
  self->_backdropView = v3;

  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView addSubview:self->_backdropView];

  contentView = [(SBTransientOverlayViewController *)self contentView];
  [(SBVoiceControlTransientOverlayViewController *)self addChildViewController:self->_contentViewController];
  view = [(SBVoiceControlViewController *)self->_contentViewController view];
  [contentView addSubview:view];

  [(SBVoiceControlViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBVoiceControlTransientOverlayViewController *)&v5 viewWillAppear:?];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBVoiceControlViewController *)self->_contentViewController viewWillAppear:appearCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBVoiceControlTransientOverlayViewController *)&v5 viewWillDisappear:?];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBVoiceControlViewController *)self->_contentViewController viewWillDisappear:disappearCopy];
  }
}

- (void)beginIgnoringAppearanceUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v6.receiver = self;
  v6.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 beginIgnoringAppearanceUpdates];
  isIgnoringAppearanceUpdates2 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (!isIgnoringAppearanceUpdates && isIgnoringAppearanceUpdates2)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin ignoring appearance changes...", buf, 0xCu);
    }
  }
}

- (void)endIgnoringAppearanceUpdates
{
  v16 = *MEMORY[0x277D85DE8];
  isIgnoringAppearanceUpdates = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  v9.receiver = self;
  v9.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v9 endIgnoringAppearanceUpdates];
  isIgnoringAppearanceUpdates2 = [(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates];
  if (isIgnoringAppearanceUpdates && !isIgnoringAppearanceUpdates2)
  {
    _appearState = [(SBVoiceControlViewController *)self->_contentViewController _appearState];
    _appearState2 = [(SBVoiceControlTransientOverlayViewController *)self _appearState];
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v12 = 2048;
      v13 = _appearState;
      v14 = 2048;
      v15 = _appearState2;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ended ignoring appearance changes. Content appear state: %td, container appear state: %td", buf, 0x20u);
    }

    if (_appearState2 != _appearState)
    {
      if (_appearState2 - 1 < 2)
      {
        if (_appearState - 3 <= 0xFFFFFFFD)
        {
          [(SBVoiceControlViewController *)self->_contentViewController viewWillAppear:0];
        }

        if (_appearState2 == 2)
        {
          [(SBVoiceControlViewController *)self->_contentViewController viewDidAppear:0];
        }
      }

      else if (_appearState2 == 3 || !_appearState2)
      {
        if (_appearState && _appearState != 3)
        {
          [(SBVoiceControlViewController *)self->_contentViewController viewWillDisappear:0];
        }

        if (!_appearState2)
        {
          [(SBVoiceControlViewController *)self->_contentViewController viewDidDisappear:0];
          WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);
          [WeakRetained voiceControlTransientOverlayViewControllerDidDisappear:self];
        }
      }
    }
  }
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = [v3 isAnimated];
  if (v5)
  {
    dispatch_group_enter(v4);
    v6 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v18[3] = &unk_2783A92D8;
    v7 = v3;
    v8 = *(a1 + 32);
    v19 = v7;
    v20 = v8;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v16[3] = &unk_2783A8BF0;
    v16[4] = v8;
    v17 = v4;
    [v6 animateWithDuration:v18 animations:v16 completion:0.3];
  }

  else
  {
    [v3 performAlongsideTransitions];
  }

  dispatch_group_enter(v4);
  v9 = *(*(a1 + 32) + 1424);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4;
  v14[3] = &unk_2783A9398;
  v15 = v4;
  v10 = v4;
  [v9 performDismissalTransitionAnimated:v5 completionHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5;
  v12[3] = &unk_2783A8C18;
  v13 = v3;
  v11 = v3;
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v12);
}

uint64_t __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performAlongsideTransitions];
  v2 = *(*(a1 + 40) + 1416);

  return [v2 transitionToPrivateStyle:-2];
}

void __97__SBVoiceControlTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1416) transitionComplete];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2040];
  v6 = [MEMORY[0x277D75348] colorWithRed:0.031372549 green:0.262745098 blue:0.560784314 alpha:1.0];
  [v5 setColorTint:v6];

  v7 = [v3 isAnimated];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 contentView];
    v10 = MEMORY[0x277D75D18];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v30[3] = &unk_2783A8C18;
    v11 = v9;
    v31 = v11;
    [v10 performWithoutAnimation:v30];
    dispatch_group_enter(v4);
    v12 = MEMORY[0x277D75D18];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v25[3] = &unk_2783A9BD8;
    v13 = v3;
    v14 = *(a1 + 32);
    v26 = v13;
    v27 = v14;
    v28 = v5;
    v29 = v11;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v23[3] = &unk_2783A8BF0;
    v23[4] = *(a1 + 32);
    v24 = v4;
    v15 = v11;
    [v12 animateWithDuration:v25 animations:v23 completion:0.3];
  }

  else
  {
    [v8[177] transitionToSettings:v5];
    [*(*(a1 + 32) + 1416) transitionComplete];
    [v3 performAlongsideTransitions];
  }

  dispatch_group_enter(v4);
  v16 = *(*(a1 + 32) + 1424);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5;
  v21[3] = &unk_2783A9398;
  v22 = v4;
  v17 = v4;
  [v16 performPresentationTransitionAnimated:v7 completionHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_6;
  v19[3] = &unk_2783A8C18;
  v20 = v3;
  v18 = v3;
  dispatch_group_notify(v17, MEMORY[0x277D85CD0], v19);
}

uint64_t __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) performAlongsideTransitions];
  [*(*(a1 + 40) + 1416) transitionToSettings:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 setAlpha:1.0];
}

void __100__SBVoiceControlTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1416) transitionComplete];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (void)setContainerOrientation:(int64_t)orientation
{
  v3.receiver = self;
  v3.super_class = SBVoiceControlTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 setContainerOrientation:orientation];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)voiceControlViewControllerRequestsDismissal:(id)dismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);
  [WeakRetained voiceControlTransientOverlayViewControllerRequestsDismissal:self];
}

- (SBVoiceControlTransientOverlayViewControllerDelegate)voiceControlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);

  return WeakRetained;
}

@end